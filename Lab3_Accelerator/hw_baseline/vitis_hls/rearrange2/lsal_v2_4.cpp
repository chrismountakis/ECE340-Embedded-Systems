#define N 64
#define M 65536
#define diag_len 64

#include "ap_int.h"
#include <algorithm>
#include <cstring>
#include "hls_stream.h"

const ap_int<8> GAP_i = -1;
const ap_int<8> GAP_d = -1;
const ap_int<8> MATCH = 2;
const ap_int<8> MISS_MATCH = -1;
const ap_uint<2> CENTER = 0;
const ap_uint<2> NORTH = 1;
const ap_uint<2> NORTH_WEST = 2;
const ap_uint<2> WEST = 3;

void compute_matrices(
    ap_uint<2> *string1,
    ap_uint<2> *string2,
    ap_uint<22> *max_index,
    ap_uint<128> *direction_matrix
) {
    #pragma HLS INTERFACE m_axi port=string1 depth=1 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=string2 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=direction_matrix depth=1 bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=max_index
    #pragma HLS INTERFACE s_axilite port=return

    ap_uint<2> string1_buf[N] = {0};
    #pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=2

    ap_uint<2> string2_buf[M];
    #pragma HLS ARRAY_RESHAPE variable=string2_buf block factor=16 dim=1

    // TEMP
    LoadString1: for (int i = 0; i < N; ++i) {
		string1_buf[i] = string1[i];
    }

    LoadString2: for (int i = 0; i < M; ++i) {
        string2_buf[i] = string2[i];
    }

    //memcpy(string1_buf, string1, N * sizeof(ap_uint<2>));
    //memcpy(string2_buf, string2, M * sizeof(ap_uint<2>));


    ap_uint<8> diag_curr[diag_len] = {0};
    ap_uint<8> diag_prev[diag_len] = {0};
    ap_uint<8> diag_prevprev[diag_len] = {0};
    ap_uint<2> dir_curr[diag_len] = {0};

    #pragma HLS ARRAY_PARTITION variable=diag_curr cyclic factor=2 dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prev cyclic factor=2 dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev cyclic factor=2 dim=1
    #pragma HLS ARRAY_PARTITION variable=dir_curr cyclic factor=2 dim=1

    ap_uint<8> max_value = 0;
    ap_uint<22> max_pos = 0;

    ap_int<8> val0 = (string1_buf[0] == string2_buf[0]) ? MATCH : MISS_MATCH;
    ap_uint<2> dir0 = NORTH_WEST;

    if (val0 <= 0) { val0 = 0; dir0 = CENTER; }

    diag_prev[0] = val0;
    dir_curr[0] = dir0;

    max_value = val0;

    memcpy(&direction_matrix[0], &dir_curr, diag_len*sizeof(ap_uint<128>)/64);

    Diag: for (int i = 1; i < N + M - 1; ++i) {
		#pragma HLS PIPELINE II=1

        int elem_start = std::max(0, i - N + 1);
        int elem_end = std::min(i, M - 1);
        int offset = elem_end - elem_start + 1;

        ap_uint<8> local_max_val = 0;
        ap_uint<22> local_max_pos = 0;

        //Compute: for (int j = diag_len - 1; j > -1; --j) {
        Compute: for (int j = 0; j < diag_len; ++j) {
            ap_uint<8> north = diag_prev[j];
            ap_uint<8> west;
            ap_uint<8> northwest;

            if(j != 0) { west = diag_prev[j - 1]; northwest = diag_prevprev[j - 1]; }
            else       { west = ap_uint<8>(0);    northwest = ap_uint<8>(0);        }

            int idx = std::max(0, elem_end - j);

			ap_int<8> match = (string1_buf[j] == string2_buf[idx]) ? MATCH : MISS_MATCH;
			ap_int<8> diag_score = northwest + match;
			ap_int<8> up_score = north + GAP_d;
			ap_int<8> left_score = west + GAP_i;

			ap_int<8> val = left_score;
			ap_uint<2> dir = WEST;

			if(up_score >= left_score && up_score > diag_score && up_score > 0) { val = up_score; dir = NORTH; }
			if(diag_score >= left_score && diag_score >= up_score && diag_score > 0) { val = diag_score; dir = NORTH_WEST; }
			if((left_score <= 0 && up_score <= 0 && diag_score <= 0) || (j >= offset)) { val = 0; dir = CENTER; }

			diag_curr[j] = val;
			dir_curr[j] = dir;

			if (val > local_max_val) {
				local_max_val = val;
				local_max_pos = i * N + j;
			}
        }

        if (local_max_val > max_value) {
            max_value = local_max_val;
            max_pos = local_max_pos;
        }

        ap_uint<128> packed = 0;
        PackLoop: for (int k = 0; k < diag_len; ++k) {
            #pragma HLS UNROLL
            packed.range(k * 2 + 1, k * 2) = dir_curr[k];
        }

        memcpy(&direction_matrix[i], &packed, diag_len*sizeof(ap_uint<128>)/64);

        for (int j = 0; j < N; ++j) {
            #pragma HLS UNROLL
			diag_prevprev[j] = diag_prev[j];
			diag_prev[j] = diag_curr[j];
        }
    }

    *max_index = max_pos;
}
