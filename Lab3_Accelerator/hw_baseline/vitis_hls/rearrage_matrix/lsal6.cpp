#define N 64
#define M 65536
#define diag_len 64

#include "ap_int.h"
#include "hls_stream.h"
#include <cstring>
#include <algorithm>

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

    ap_uint<2> string1_buf[N];
    ap_uint<2> string2_buf[M];

    #pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=32
    #pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=32

    // Load strings from memory
    memcpy(string1_buf, string1, N * sizeof(ap_uint<512>) / 256);
    memcpy(string2_buf, string2, M * sizeof(ap_uint<512>) / 256);

    ap_uint<8> diag_prev[diag_len] = {0};
    ap_uint<8> diag_prevprev[diag_len] = {0};
    ap_uint<8> diag_curr[diag_len];

    #pragma HLS ARRAY_PARTITION variable=diag_prev cyclic factor=32
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev cyclic factor=32
    #pragma HLS ARRAY_PARTITION variable=diag_curr cyclic factor=32

    int max_value = 0;
    int max_pos = 0;

    Diag: for (int k = 1; k < N + M; ++k) {
        int i_start = std::max(0, k - N);
        int i_end = std::min(k - 1, M - 1);

        ap_uint<512> diag_word = 0;
        ap_uint<512> dir_word = 0;

        Compute: for (int i = 0; i < diag_len; ++i) {
            int idx = i;
            if (idx < i_start || idx > i_end) {
                diag_curr[idx] = 0;
                continue;
            }

            int j = k - idx - 1;

            ap_uint<8> up   = diag_prev[idx];
            ap_uint<8> left = (idx > 0) ? diag_prev[idx - 1] : ap_uint<8>(0);
            ap_uint<8> diag = (idx > 0) ? diag_prevprev[idx - 1] : ap_uint<8>(0);

            ap_int<8> match = (string1_buf[j] == string2_buf[idx]) ? MATCH : MISS_MATCH;
            ap_int<8> diag_score = diag + match;
            ap_int<8> up_score   = up + GAP_d;
            ap_int<8> left_score = left + GAP_i;

            ap_int<8> val = left_score;
            ap_uint<2> dir = WEST;

            if (up_score >= val)       { val = up_score; dir = NORTH; }
            if (diag_score >= val)     { val = diag_score; dir = NORTH_WEST; }
            if (0 >= val)              { val = 0;         dir = CENTER; }

            diag_curr[idx] = val;

            diag_word.range(j * 8 + 7, j * 8) = val;
            dir_word.range(j * 2 + 1, j * 2) = dir;

            if (val > max_value) {
                max_value = val;
                max_pos = idx * N + j;
            }
        }

        // Update buffers for next iteration
        for (int i = 0; i < diag_len; ++i) {
            #pragma HLS UNROLL
            diag_prevprev[i] = diag_prev[i];
            diag_prev[i] = diag_curr[i];
        }

        similarity_matrix[k - 1] = diag_word;
        direction_matrix[k - 1] = dir_word;
    }

    *max_index = max_pos;
}
