#define N 32
#define M 65536
#define diag_len 32

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
    ap_uint<21> *max_index,
    ap_uint<64> *direction_matrix
) {

    #pragma HLS INTERFACE m_axi port=string1 depth=1 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=string2 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=direction_matrix depth=1 bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=max_index
    #pragma HLS INTERFACE s_axilite port=return


    ap_uint<2> string1_buf[N];
    #pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=2 dim=1

    ap_uint<2> string2_buf[M];
	#pragma HLS ARRAY_PARTITION variable=string2_buf dim=1 factor=8 cyclic
    //#pragma HLS ARRAY_RESHAPE variable=string2_buf block factor=32 dim=1

    /*
    LoadString1: for (int i = 0; i < N; ++i) {
		string1_buf[i] = string1[i];
    }

    LoadString2: for (int i = 0; i < M; ++i) {
        string2_buf[i] = string2[i];
    }
	*/

    // UNCOMMENT THIS
    memcpy(string1_buf, string1, N * sizeof(ap_uint<2>));
    memcpy(string2_buf, string2, M * sizeof(ap_uint<2>));

    ap_uint<7> diag_curr[diag_len] = {0};
    ap_uint<7> diag_prev[diag_len] = {0};
    ap_uint<7> diag_prevprev[diag_len] = {0};
    ap_uint<2> dir_curr[diag_len] = {0};

    #pragma HLS ARRAY_PARTITION variable=diag_curr cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=diag_prev cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev cyclic factor=2
    #pragma HLS ARRAY_PARTITION variable=dir_curr cyclic factor=16

    ap_uint<7> max_value = 0;
    ap_uint<21> max_pos = 0;

    ap_int<7> val0 = (string1_buf[0] == string2_buf[0]) ? MATCH : MISS_MATCH;
    ap_uint<2> dir0 = NORTH_WEST;

    if (val0 <= 0) { val0 = 0; dir0 = CENTER; }

    diag_prev[0] = val0;
    dir_curr[0] = dir0;
    max_value = val0;

    ap_uint<64> dir_word0 = 0;

	Pack0: for (int j = 0; j < N; ++j) {
		#pragma HLS PIPELINE II=1
		dir_word0.range(j * 2 + 1, j * 2) = dir_curr[j];
	}
    memcpy(&direction_matrix[0], &dir_word0, diag_len*sizeof(ap_uint<128>)/64);

    Diag: for (int i = 1; i < N + M - 1; ++i) {
		#pragma HLS PIPELINE II=1

    	ap_uint<16> elem_start = (i >= N - 1) ? ap_uint<16>(i - N + 1) : ap_uint<16>(0);  //int elem_start = std::max(0, i - N + 1);
    	ap_uint<16> elem_end = (i < M) ? ap_uint<16>(i) : ap_uint<16>(M - 1);             //int elem_end = std::min(i, M - 1);
        ap_uint<6> offset = elem_end - elem_start + 1;

        ap_uint<7> local_max_val = 0;
        ap_uint<21> local_max_pos = 0;

        // 2^6 = N
        Compute: for (int j = 0; j < diag_len; ++j) {
            ap_uint<7> north = diag_prev[j];
            ap_uint<7> west;
            ap_uint<7> northwest;

            if(j != 0) { west = diag_prev[j - 1]; northwest = diag_prevprev[j - 1]; }
            else       { west = ap_uint<7>(0);    northwest = ap_uint<7>(0);        }

            //west = (j != 0) ? diag_prev[j - 1] : ap_uint<8>(0);;
            //northwest = (j != 0) ? diag_prevprev[j - 1] : ap_uint<8>(0);;

            // M = 2^16
            ap_uint<16> idx = (elem_end >= j) ? ap_uint<16>(elem_end - j) : ap_uint<16>(0);  //int idx = std::max(0, elem_end - j);

			ap_int<7> match = (string1_buf[j] == string2_buf[idx]) ? MATCH : MISS_MATCH;
			ap_int<7> diag_score = northwest + match;
			ap_int<7> up_score = north + GAP_d;
			ap_int<7> left_score = west + GAP_i;

			//                             uses more luts
			/*
			ap_int<8> val = left_score;
			ap_uint<2> dir = WEST;

			if(up_score >= left_score && up_score > diag_score && up_score > 0) { val = up_score; dir = NORTH; }
			if(diag_score >= left_score && diag_score >= up_score && diag_score > 0) { val = diag_score; dir = NORTH_WEST; }
			if((left_score <= 0 && up_score <= 0 && diag_score <= 0) || (j >= offset)) { val = 0; dir = CENTER; }
			*/

			bool valid_diag = (diag_score > 0);
			bool valid_up   = (up_score   > 0);
			bool valid_left = (left_score > 0);

			ap_int<7> val;
			ap_uint<2> dir;

			if ((!valid_diag && !valid_up && !valid_left) || (j >= offset)) { val = 0; dir = CENTER; }
			else if (diag_score >= up_score && diag_score >= left_score) { val = diag_score; dir = NORTH_WEST; }
			else if (up_score >= left_score) { val = up_score; dir = NORTH; }
			else { val = left_score; dir = WEST; }

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

        ap_uint<64> dir_word = 0;
        PackLoop: for (int k = 0; k < diag_len; ++k) {
            dir_word.range(k * 2 + 1, k * 2) = dir_curr[k];
        }

        memcpy(&direction_matrix[i], &dir_word, diag_len*sizeof(ap_uint<128>)/64);

        for (int j = 0; j < N; ++j) {
			diag_prevprev[j] = diag_prev[j];
			diag_prev[j] = diag_curr[j];
        }
    }

    *max_index = max_pos;
}
