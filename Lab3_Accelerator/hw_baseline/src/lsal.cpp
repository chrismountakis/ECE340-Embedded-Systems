#define N 32
#define M 65536

#include "ap_int.h"
#include <cstring>

const ap_int<8> GAP_i = -1;
const ap_int<8> GAP_d = -1;
const ap_int<8> MATCH = 2;
const ap_int<8> MISS_MATCH = -1;
const ap_uint<2> CENTER = 0;
const ap_uint<2> NORTH = 1;
const ap_uint<2> NORTH_WEST = 2;
const ap_uint<2> WEST = 3;

#if N == 32
typedef ap_uint<64> dir_mat_t;
typedef ap_uint<5> n_index_t;
typedef ap_uint<7> score_t;
typedef ap_int<8> score_int_t;
#elif N == 64
typedef ap_uint<128> dir_mat_t;
typedef ap_uint<6> n_index_t;
typedef ap_uint<8> score_t;
typedef ap_int<9> score_int_t;
#elif N == 128
typedef ap_uint<256> dir_mat_t;
typedef ap_uint<7> n_index_t;
typedef ap_uint<9> score_t;
typedef ap_int<10> score_int_t;
#endif

#if M <= (1 << 16)
typedef ap_uint<16> m_index_t;
#elif M <= (1 << 17)
typedef ap_uint<17> m_index_t;
#elif M <= (1 << 18)
typedef ap_uint<18> m_index_t;
#elif M <= (1 << 19)
typedef ap_uint<19> m_index_t;
#elif M <= (1 << 20)
typedef ap_uint<20> m_index_t;
#endif

typedef ap_uint<64> query_t;
typedef ap_uint<64> db_t;
typedef ap_uint<32> index_t;
typedef ap_uint<2> char_t;
typedef ap_uint<2> dir_t;

extern "C" {
    void compute_matrices(
        query_t *string1,
        db_t *string2,
        index_t *max_index,
        dir_mat_t *direction_matrix
    ) {

        query_t string1_buf[N / 32];
        db_t string2_buf[M / 32];

        memcpy(string1_buf, string1, N * sizeof(ap_uint<64>) / 32);
        memcpy(string2_buf, string2, M * sizeof(ap_uint<64>) / 32);
        #pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=1
        #pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=4

        score_t diag_curr[N] = {0};
        score_t diag_prev[N] = {0};
        score_t diag_prevprev[N] = {0};
        dir_t dir_curr[N] = {0};

        #pragma HLS ARRAY_PARTITION variable=diag_curr cyclic factor=2
        #pragma HLS ARRAY_PARTITION variable=diag_prev cyclic factor=2
        #pragma HLS ARRAY_PARTITION variable=diag_prevprev cyclic factor=2
        #pragma HLS ARRAY_PARTITION variable=dir_curr cyclic factor=2

        score_t max_value = 0;
        index_t max_pos = 0;

        char_t sliding_buf[N] = {0};
        #pragma HLS ARRAY_PARTITION variable=sliding_buf cyclic factor=2

        sliding_buf[N - 1] = string2_buf[0];

        Diag: for (int i = 0; i < N + M - 1; ++i) {
            #pragma HLS PIPELINE II=1

            // valid j on this anti-diagonal
            int j_lo = (i >= M) ? (i - (M - 1)) : 0;
            int j_hi = (i < N) ? i : N - 1;

            // keep shifting after the database ends so sliding_buf[N - 1 - j] = string2[i - j]
            if (i != 0) {
                for (int j = 0; j < N - 1; ++j) {
                    #pragma HLS UNROLL
                    sliding_buf[j] = sliding_buf[j + 1];
                }

                ap_uint<6> bit_offset = (i % 32) * 2;
                sliding_buf[N - 1] = (i < M) ? char_t(string2_buf[(i % M) / 32].range(bit_offset + 1, bit_offset)) : char_t(0);
            }

            score_t local_max_val = 0;
            n_index_t local_max_pos = 0;

            Compute: for (int j = 0; j < N; ++j) {
                score_t north = diag_prev[j];
                score_t west = (j != 0) ? diag_prev[j - 1] : score_t(0);
                score_t northwest = (j != 0) ? diag_prevprev[j - 1] : score_t(0);

                ap_uint<6> offset_bits = (j % 32) * 2;
                char_t a = string1_buf[j / 32].range(offset_bits + 1, offset_bits);
                char_t b = sliding_buf[(N - 1) - j];

                score_int_t match = (a == b) ? MATCH : MISS_MATCH;

                score_int_t diag_score = northwest + match;
                score_int_t up_score = north + GAP_d;
                score_int_t left_score = west + GAP_i;

                bool valid_diag = (diag_score > 0);
                bool valid_up = (up_score > 0);
                bool valid_left = (left_score > 0);

                score_int_t val;
                dir_t dir;

                if ((!valid_diag && !valid_up && !valid_left) || (j < j_lo) || (j > j_hi)) {
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
                    local_max_pos = j;
                }
            }

            if (local_max_val > max_value) {
                max_value = local_max_val;
                max_pos = i * N + local_max_pos;
            }

            dir_mat_t dir_word = 0;
            PackLoop:
            for (int k = 0; k < N; ++k) {
                #pragma HLS UNROLL
                dir_word.range(k * 2 + 1, k * 2) = dir_curr[k];
            }

            memcpy(&direction_matrix[i], &dir_word, sizeof(dir_word));

            for (int j = 0; j < N; ++j) {
                #pragma HLS UNROLL
                diag_prevprev[j] = diag_prev[j];
                diag_prev[j] = diag_curr[j];
            }
        }

        *max_index = max_pos;
    }
}
