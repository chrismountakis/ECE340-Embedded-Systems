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
    #pragma HLS ARRAY_PARTITION variable=string1_buf complete

    ap_uint<2> string2_buf[M];
	#pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=16


    memcpy(string1_buf, string1, N * sizeof(ap_uint<2>));
    memcpy(string2_buf, string2, M * sizeof(ap_uint<2>));

    ap_uint<7> diag_curr[diag_len] = {0};
    ap_uint<7> diag_prev[diag_len] = {0};
    ap_uint<7> diag_prevprev[diag_len] = {0};
    ap_uint<2> dir_curr[diag_len] = {0};

    #pragma HLS ARRAY_PARTITION variable=diag_curr complete
    #pragma HLS ARRAY_PARTITION variable=diag_prev complete
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev complete
    #pragma HLS ARRAY_PARTITION variable=dir_curr complete

    ap_uint<7> max_value = 0;
    ap_uint<21> max_pos = 0;

    ap_uint<2> sliding_buf[diag_len] = {0};
    #pragma HLS ARRAY_PARTITION variable=sliding_buf complete

    sliding_buf[diag_len - 1] = string2_buf[0];
    ap_uint<16> last_elem = 0;

    Diag: for (int i = 0; i < N + M - 1; ++i) {
        #pragma HLS PIPELINE II=1

        ap_uint<16> elem_start = (i >= N - 1) ? (i - (N - 1)) : 0;
        ap_uint<16> elem_end   = (i < M) ? i : M - 1;
        ap_uint<6> offset = elem_end - elem_start;

        bool shift = (elem_end > last_elem);

        if(shift) {
			for (int j = 0; j < diag_len - 1; ++j) {
				#pragma HLS UNROLL
				sliding_buf[j] = sliding_buf[j + 1];
			}

            sliding_buf[diag_len - 1] = string2_buf[elem_end];
            last_elem = elem_end;
        }

        ap_uint<7> local_max_val = 0;
        ap_uint<21> local_max_pos = 0;

        Compute: for (int j = 0; j < diag_len; ++j) {
            ap_uint<7> north = diag_prev[j];
            ap_uint<7> west = (j != 0) ? diag_prev[j - 1] : ap_uint<7>(0);
            ap_uint<7> northwest = (j != 0) ? diag_prevprev[j - 1] : ap_uint<7>(0);

            ap_int<7> match = (string1_buf[j] == sliding_buf[(diag_len - 1) - j]) ? MATCH : MISS_MATCH;

            ap_int<7> diag_score = northwest + match;
            ap_int<7> up_score = north + GAP_d;
            ap_int<7> left_score = west + GAP_i;

            bool valid_diag = (diag_score > 0);
            bool valid_up   = (up_score   > 0);
            bool valid_left = (left_score > 0);

            ap_int<7> val;
            ap_uint<2> dir;

            if ((!valid_diag && !valid_up && !valid_left) || (offset < j)) {
                val = 0;
                dir = CENTER;
            } else if (diag_score >= up_score && diag_score >= left_score) {
                val = diag_score;
                dir = NORTH_WEST;
            } else if (up_score >= left_score) {
                val = up_score;
                dir = NORTH;
            } else {
                val = left_score;
                dir = WEST;
            }

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
            #pragma HLS UNROLL
            dir_word.range(k * 2 + 1, k * 2) = dir_curr[k];
        }

        memcpy(&direction_matrix[i], &dir_word, sizeof(dir_word));

        for (int j = 0; j < diag_len; ++j) {
            #pragma HLS UNROLL
            diag_prevprev[j] = diag_prev[j];
            diag_prev[j] = diag_curr[j];
        }
    }

    *max_index = max_pos;
}
