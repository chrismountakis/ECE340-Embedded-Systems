#define N 64
#define M 65536
#define diag_len 64

#include "ap_int.h"
#include <algorithm>
#include <cstring>

const ap_int<8> GAP_i = -1;
const ap_int<8> GAP_d = -1;
const ap_int<8> MATCH = 2;
const ap_int<8> MISS_MATCH = -1;
const ap_uint<2> CENTER = 0;
const ap_uint<2> NORTH = 1;
const ap_uint<2> NORTH_WEST = 2;
const ap_uint<2> WEST = 3;

void compute_matrices(
    ap_uint<2>* string1,
    ap_uint<2>* string2,
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

    memcpy(string1_buf, string1, N * sizeof(ap_uint<2>));
    memcpy(string2_buf, string2, M * sizeof(ap_uint<2>));

    // 2. EXPLICITLY SEPARATED BUFFERS (no rotation)
    ap_uint<512> diag_curr, diag_prev, diag_prevprev;
    ap_uint<512> dir_curr, dir_prev, dir_prevprev;
    #pragma HLS ARRAY_PARTITION variable=diag_curr complete
    #pragma HLS ARRAY_PARTITION variable=diag_prev complete
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev complete

    // 3. Burst write tracking
    //ap_uint<512> sim_burst_buf[3];
    int burst_idx = 0;

    int max_value = 0;
    int max_pos = 0;

    Diag: for (int k = 1; k < N + M; ++k) {
        //#pragma HLS PIPELINE II=1
        int i_start = std::max(0, k - N);
        int i_end = std::min(k - 1, M - 1);

        Compute: for (int i = i_start; i <= i_end; ++i) {
			#pragma HLS LOOP_TRIPCOUNT min=1 max=64
            int j = k - i - 1;

            // 4. READ FROM EXPLICIT PREV BUFFERS (no dependencies)
            ap_int<8> north     = (i != 0)     ? diag_prev.range(j*8+7, j*8) : 0;
            ap_int<8> west      = (j != 0)     ? diag_prev.range((j-1)*8+7, (j-1)*8) : 0;
            ap_int<8> northwest = (i != 0 && j != 0) ? diag_prevprev.range((j-1)*8+7, (j-1)*8) : 0;

            // 5. SCORE CALCULATION
            ap_int<8> match = (string1_buf[j] == string2_buf[i]) ? MATCH : MISS_MATCH;
            ap_int<8> val = west + GAP_i;
            ap_uint<2> dir = WEST;

            ap_int<8> up_score = north + GAP_d;
            if (val <= up_score) { val = up_score; dir = NORTH; }

            ap_int<8> diag_score = northwest + match;
            if (val <= diag_score) { val = diag_score; dir = NORTH_WEST; }
            if (val <= 0) { val = 0; dir = CENTER; }

            // 6. WRITE TO EXPLICIT CURRENT BUFFER
            diag_curr.range(j*8+7, j*8) = val;
            dir_curr.range(j*2+1, j*2) = dir;

            if (val > max_value) {
                max_value = val;
                max_pos = i * N + j;
            }
        }

        // 7. ALWAYS WRITE CURRENT DIAGONAL (no conditions)
        memcpy(&similarity_matrix[k-1], &diag_curr, 64);


        // 9. EXPLICIT BUFFER ROTATION (no modulo indexing)
        diag_prevprev = diag_prev;
        diag_prev = diag_curr;
        dir_prevprev = dir_prev;
        dir_prev = dir_curr;
    }

    *max_index = max_pos;
}
