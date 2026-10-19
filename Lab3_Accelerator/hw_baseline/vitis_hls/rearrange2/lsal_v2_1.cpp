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
    ap_uint<512>* string1,
    ap_uint<512>* string2,
    int* max_index,
    ap_uint<512>* similarity_matrix,
    ap_uint<128>* direction_matrix
) {
    #pragma HLS INTERFACE m_axi port=string1 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=string2 bundle=gmem1
    #pragma HLS INTERFACE m_axi port=similarity_matrix bundle=gmem0
    #pragma HLS INTERFACE m_axi port=direction_matrix bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=max_index
    #pragma HLS INTERFACE s_axilite port=return

    // 1. Local sequence buffers
    ap_uint<2> string1_buf[N];
    ap_uint<2> string2_buf[M];
	#pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=16
	#pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=32
	//#pragma HLS bind_storage variable=string2_buf type=ram_2p

    memcpy(string1_buf, string1, N * sizeof(ap_uint<512>) / 256);
    memcpy(string2_buf, string2, M * sizeof(ap_uint<512>) / 256);

    ap_uint<8> diag_curr[diag_len] = {0};
    ap_uint<8> diag_prev[diag_len] = {0};
    ap_uint<8> diag_prevprev[diag_len] = {0};

    ap_uint<2> dir_curr[diag_len] = {0};


	#pragma HLS ARRAY_PARTITION variable=diag_curr cyclic factor=8 dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prev cyclic factor=8 dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev cyclic factor=8 dim=1
    #pragma HLS ARRAY_PARTITION variable=dir_curr cyclic factor=8 dim=1

    ap_uint<8> max_value = 0;
    int max_pos = 0;

	ap_int<8> val0 = (string1_buf[0] == string2_buf[0]) ? MATCH : MISS_MATCH;
	ap_uint<2> dir0 = NORTH_WEST;

	if (0 >= val0) { val0 = 0; dir0 = CENTER; }

	diag_prev[0] = val0;
	dir_curr[0] = dir0;

	max_value = val0;
	ap_uint<512> diag_word0 = 0;
	ap_uint<128> dir_word0 = 0;

	Pack0: for (int j = 0; j < N; ++j) {
		#pragma HLS UNROLL
		diag_word0.range(j * 8 + 7, j * 8) = diag_prev[j];
		dir_word0.range(j * 2 + 1, j * 2) = dir_curr[j];
	}

    memcpy(&similarity_matrix[0], &diag_word0, diag_len*sizeof(ap_uint<512>)/64);
    memcpy(&direction_matrix[0], &dir_word0, diag_len*sizeof(ap_uint<128>)/64);

    Diag: for (int i = 1; i < N + M; ++i) {
        int elem_start = std::max(0, i - N);
        int elem_end = std::min(i - 1, M - 1);

        ap_uint<8> local_max_val = 0;
        int local_max_pos = 0;

        Compute: for (int j = 0; j < diag_len; ++j) {
            ap_uint<8> north = diag_prev[j];
            ap_uint<8> west;
            ap_uint<8> northwest;

            if(j != 0) { west = diag_prev[j - 1]; northwest = diag_prevprev[j - 1]; }
            else       { west = ap_uint<8>(0);    northwest = ap_uint<8>(0);        }

            int idx = std::max(0, i - j);

            ap_int<8> match = (string1_buf[j] == string2_buf[idx]) ? MATCH : MISS_MATCH;
            ap_int<8> diag_score = northwest + match;
            ap_int<8> up_score = north + GAP_d;
            ap_int<8> left_score = west + GAP_i;

            ap_int<8> val = left_score;
            ap_uint<2> dir = WEST;

            if (up_score >= val) { val = up_score; dir = NORTH; }
            if (diag_score >= val) { val = diag_score; dir = NORTH_WEST; }
            if (0 >= val) { val = 0; dir = CENTER; }

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

        ap_uint<512> diag_word = 0;
        ap_uint<128> dir_word = 0;

        Pack: for (int j = 0; j < diag_len; ++j) {
            #pragma HLS UNROLL
            diag_word.range(j * 8 + 7, j * 8) = diag_curr[j];
            dir_word.range(j * 2 + 1, j * 2) = dir_curr[j];
        }

        memcpy(&similarity_matrix[i - 1], &diag_word, diag_len*sizeof(ap_uint<512>)/64);
        memcpy(&direction_matrix[i - 1], &dir_word, diag_len*sizeof(ap_uint<128>)/64);

        for (int j = 0; j < N; ++j) {
            #pragma HLS UNROLL
            diag_prevprev[j] = diag_prev[j];
            diag_prev[j] = diag_curr[j];
        }
    }

    *max_index = max_pos;
}
