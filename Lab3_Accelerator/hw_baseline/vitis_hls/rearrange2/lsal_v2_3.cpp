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
    #pragma HLS INTERFACE m_axi port=string1 depth=1 bundle=gmem
    #pragma HLS INTERFACE m_axi port=string2 depth=1 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=direction_matrix depth=1 bundle=gmem1
    #pragma HLS INTERFACE s_axilite port=max_index
    #pragma HLS INTERFACE s_axilite port=return

    ap_uint<2> string1_buf[N];
    #pragma HLS ARRAY_PARTITION variable=string1_buf complete dim=1

    ap_uint<2> string2_buf[M];
	#pragma HLS ARRAY_RESHAPE variable=string2_buf block factor=64 dim=1

    // Load strings into BRAM/local memory
    LoadString1: for (int i = 0; i < N; ++i) {
        #pragma HLS PIPELINE
        string1_buf[i] = string1[i];
    }

    LoadString2: for (int i = 0; i < M; ++i) {
        #pragma HLS PIPELINE
        string2_buf[i] = string2[i];
    }

    ap_uint<8> diag_curr[diag_len] = {0};
    ap_uint<8> diag_prev[diag_len] = {0};
    ap_uint<8> diag_prevprev[diag_len] = {0};
    ap_uint<2> dir_curr[diag_len] = {0};

    #pragma HLS ARRAY_PARTITION variable=diag_curr complete dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prev complete dim=1
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev complete dim=1
    #pragma HLS ARRAY_PARTITION variable=dir_curr complete dim=1

    ap_uint<8> max_value = 0;
    ap_uint<22> max_pos = 0;

    // Initial cell
    ap_int<8> val0 = (string1_buf[0] == string2_buf[0]) ? MATCH : MISS_MATCH;
    ap_uint<2> dir0 = NORTH_WEST;
    if (val0 <= 0) { val0 = 0; dir0 = CENTER; }

    diag_prev[0] = val0;
    dir_curr[0] = dir0;
    max_value = val0;

    // Initial direction matrix pack
    memcpy(&direction_matrix[0], &dir_curr, diag_len * sizeof(ap_uint<128>) / 64);

    Diag: for (int i = 1; i < N + M - 1; ++i) {
        #pragma HLS PIPELINE II=1

        ap_uint<8> local_max_val = 0;
        ap_uint<22> local_max_pos = 0;

        ap_uint<2> string2_diag[diag_len];
        #pragma HLS ARRAY_PARTITION variable=string2_diag block factor=4 dim=1

        PreloadString2: for (int j = 0; j < diag_len; ++j) {
            int idx = std::max(0, i - j);
            if (idx < M) {
                string2_diag[j] = string2_buf[idx];
            } else {
                string2_diag[j] = ap_uint<2>(0); // or some neutral value
            }
        }

        // Step 2: compute cell values using local buffer
        Compute: for (int j = 0; j < diag_len; ++j) {
            ap_uint<8> north = diag_prev[j];
            ap_uint<8> west = (j != 0) ? diag_prev[j - 1] : ap_uint<8>(0);
            ap_uint<8> northwest = (j != 0) ? diag_prevprev[j - 1] : ap_uint<8>(0);

            ap_int<8> match = (string1_buf[j] == string2_diag[j]) ? MATCH : MISS_MATCH;
            ap_int<8> diag_score = northwest + match;
            ap_int<8> up_score = north + GAP_d;
            ap_int<8> left_score = west + GAP_i;

            ap_int<8> val = left_score;
            ap_uint<2> dir = WEST;

            if (up_score >= left_score && up_score > diag_score && up_score > 0) {
                val = up_score; dir = NORTH;
            }
            if (diag_score >= left_score && diag_score >= up_score && diag_score > 0) {
                val = diag_score; dir = NORTH_WEST;
            }
            if (left_score <= 0 && up_score <= 0 && diag_score <= 0) {
                val = 0; dir = CENTER;
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

        ap_uint<128> packed = 0;
        PackLoop: for (int k = 0; k < diag_len; ++k) {
            #pragma HLS UNROLL
            packed.range(k * 2 + 1, k * 2) = dir_curr[k];
        }

        memcpy(&direction_matrix[i], &packed, diag_len * sizeof(ap_uint<128>) / 64);

        for (int j = 0; j < diag_len; ++j) {
            #pragma HLS UNROLL
            diag_prevprev[j] = diag_prev[j];
            diag_prev[j] = diag_curr[j];
        }
    }

    *max_index = max_pos;
}
