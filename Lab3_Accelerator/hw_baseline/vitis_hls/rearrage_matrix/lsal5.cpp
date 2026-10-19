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
    ap_uint<512>* direction_matrix
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
	#pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=32
    #pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=32

    memcpy(string1_buf, string1, N * sizeof(ap_uint<512>) / 256);
    memcpy(string2_buf, string2, M * sizeof(ap_uint<512>) / 256);

    // 2. Diagonal buffers (use arrays instead of packed bitstreams)
    ap_uint<8> diag_curr[diag_len] = {0};
    ap_uint<8> diag_prev[diag_len] = {0};

    ap_uint<8> diag_prevprev[diag_len] = {0};
    ap_uint<2> dir_curr[diag_len] = {0};
    ap_uint<2> dir_prev[diag_len] = {0};
    ap_uint<2> dir_prevprev[diag_len] = {0};

    /*
    #pragma HLS ARRAY_PARTITION variable=diag_curr complete dim=0
    #pragma HLS ARRAY_PARTITION variable=diag_prev complete dim=0
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev complete dim=0
    #pragma HLS ARRAY_PARTITION variable=dir_curr complete dim=0
    #pragma HLS ARRAY_PARTITION variable=dir_prev complete dim=0
    #pragma HLS ARRAY_PARTITION variable=dir_prevprev complete dim=0
    */

	#pragma HLS ARRAY_PARTITION variable=diag_curr cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prev cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=dir_curr cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=dir_prev cyclic factor=16 dim=1
    #pragma HLS ARRAY_PARTITION variable=dir_prevprev cyclic factor=16 dim=1


    int max_value = 0;
    int max_pos = 0;

    Diag: for (int k = 1; k < N + M; ++k) {
        int i_start = std::max(0, k - N);
        int i_end = std::min(k - 1, M - 1);

        Compute: for (int i = 0; i <= diag_len; ++i) {
            if(i<i_start || i>i_end) { continue; }

            int j = k - i - 1;

            ap_uint<8> north = (i != 0) ? diag_prev[j] : ap_uint<8>(0);
            ap_uint<8> west = (j != 0) ? diag_prev[j - 1] : ap_uint<8>(0);
            ap_uint<8> northwest = (i != 0 && j != 0) ? diag_prevprev[j - 1] : ap_uint<8>(0);

            ap_int<8> match = (string1_buf[j] == string2_buf[i]) ? MATCH : MISS_MATCH;
            ap_int<8> diag_score = northwest + match;
            ap_int<8> up_score = north + GAP_d;
            ap_int<8> left_score = west + GAP_i;

            ap_int<8> val = left_score;
            ap_uint<2> dir = WEST;

            if (up_score >= val) { val = up_score; dir = NORTH; }
            if (diag_score >= val) { val = diag_score; dir = NORTH_WEST; }
            if (0 >= val) { val = 0; dir = CENTER; }

            /*
            ap_int<8> scores[3] = {up_score, diag_score, 0};
            ap_uint<2> dirs[3] = {NORTH, NORTH_WEST, CENTER};
            ap_int<8> val = left_score;
            ap_uint<2> dir = WEST;

            // Priority encoder for max score (simpler control logic in HLS)
            Compare: for (int s = 0; s < 3; ++s) {
                #pragma HLS UNROLL
                if (scores[s] > val) {
                    val = scores[s];
                    dir = dirs[s];
                }
            }
            */

            diag_curr[j] = val;
            dir_curr[j] = dir;

            if (val > max_value) {
                max_value = val;
                max_pos = i * N + j;
            }
        }

        // Pack current buffers into 512-bit values for memory write
        ap_uint<512> diag_word = 0;
        ap_uint<512> dir_word = 0;

        Pack: for (int j = 0; j < N; ++j) {
            #pragma HLS UNROLL
            diag_word.range(j * 8 + 7, j * 8) = diag_curr[j];
            dir_word.range(j * 2 + 1, j * 2) = dir_curr[j];
        }

        memcpy(&similarity_matrix[k - 1], &diag_word, diag_len*sizeof(ap_uint<512>)/64);
        direction_matrix[k - 1] = dir_word;

        // Rotate buffers manually (no modulo index)
        for (int j = 0; j < N; ++j) {
            #pragma HLS UNROLL
            diag_prevprev[j] = diag_prev[j];
            diag_prev[j] = diag_curr[j];
            dir_prevprev[j] = dir_prev[j];
            dir_prev[j] = dir_curr[j];
        }
    }

    *max_index = max_pos;
}
