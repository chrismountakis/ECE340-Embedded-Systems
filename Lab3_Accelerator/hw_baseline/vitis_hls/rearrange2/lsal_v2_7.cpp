#define N 32
#define M 65536
#define DIAG_LEN N
#define DIAG N + M - 1

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
typedef ap_uint<64> query_t;
typedef ap_uint<64> dir_mat_t;
typedef ap_uint<7> score_t;
typedef ap_int<7> score_int_t;
typedef ap_uint<21> index_t;
typedef ap_uint<5> offset_t;
#elif N == 64
typedef ap_uint<128> query_t;
typedef ap_uint<128> dir_mat_t;
typedef ap_uint<8> score_t;
typedef ap_int<8> score_int_t;
typedef ap_uint<22> index_t;
typedef ap_uint<6> offset_t;
#elif N == 128
typedef ap_uint<256> query_t;
typedef ap_uint<256> dir_mat_t;
typedef ap_uint<9> score_t;
typedef ap_int<9> score_int_t;
typedef ap_uint<23> index_t;
typedef ap_uint<7> offset_t;
#endif

#if M <= (1 << 16)
typedef ap_uint<16> m_index_t;
#elif M <= (1 << 17)
typedef ap_uint<17> m_index_t;
#elif M <= (1 << 18)
typedef ap_uint<18> m_index_t;
#endif

typedef ap_uint<512> db_t;
typedef ap_uint<2> direction_t;

void compute_matrices(
    query_t *string1,
    db_t *string2,
    index_t *max_index,
    dir_mat_t *direction_matrix
) {
    #pragma HLS INTERFACE m_axi port=string2 depth=1 bundle=gmem
    #pragma HLS INTERFACE m_axi port=direction_matrix depth=1 bundle=gmem0
    #pragma HLS INTERFACE s_axilite port=max_index
    #pragma HLS INTERFACE s_axilite port=return

    query_t string1_buf;

    db_t string2_buf[M / 256];
    //#pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=2

    memcpy(&string1_buf, string1, sizeof(query_t));
    memcpy(string2_buf, string2, (M / 256) * sizeof(db_t));

    score_t diag_curr[DIAG_LEN] = {0};
    score_t diag_prev[DIAG_LEN] = {0};
    score_t diag_prevprev[DIAG_LEN] = {0};
    direction_t dir_curr[DIAG_LEN] = {0};
    direction_t sliding_buf[DIAG_LEN] = {0};

    #pragma HLS ARRAY_PARTITION variable=diag_curr complete
    #pragma HLS ARRAY_PARTITION variable=diag_prev complete
    #pragma HLS ARRAY_PARTITION variable=diag_prevprev complete
    #pragma HLS ARRAY_PARTITION variable=dir_curr complete
    #pragma HLS ARRAY_PARTITION variable=sliding_buf complete

    sliding_buf[DIAG_LEN - 1] = string2_buf[0].range(1, 0);
    m_index_t last_elem = 0;

    score_t max_value = 0;
    index_t max_pos = 0;

    Diag: for (int i = 0; i < DIAG; ++i) {
        #pragma HLS PIPELINE II=1

        m_index_t elem_start = (i >= N - 1) ? (i - (N - 1)) : 0;
        m_index_t elem_end   = (i < M) ? i : M - 1;
        offset_t offset = elem_end - elem_start;

        bool shift = (elem_end > last_elem);
        if (shift) {
            for (int j = 0; j < DIAG_LEN - 1; ++j) {
                #pragma HLS UNROLL
                sliding_buf[j] = sliding_buf[j + 1];
            }

            int word_idx = elem_end / 256;
            int bit_offset = (elem_end % 256) * 2;
            sliding_buf[DIAG_LEN - 1] = string2_buf[word_idx].range(bit_offset + 1, bit_offset);
            last_elem = elem_end;
        }

        score_t local_max_val = 0;
        index_t local_max_pos = 0;

        Compute: for (int j = 0; j < DIAG_LEN; ++j) {
            score_t north     = diag_prev[j];
            score_t west      = (j != 0) ? diag_prev[j - 1] : score_t(0);
            score_t northwest = (j != 0) ? diag_prevprev[j - 1] : score_t(0);

            bool match = (string1_buf.range(j * 2 + 1, j * 2) == sliding_buf[(DIAG_LEN - 1) - j]);
            score_int_t match_score = match ? MATCH : MISS_MATCH;

            score_int_t diag_score = northwest + match_score;
            score_int_t up_score   = north + GAP_d;
            score_int_t left_score = west + GAP_i;

            bool valid_diag = (diag_score > 0);
            bool valid_up   = (up_score > 0);
            bool valid_left = (left_score > 0);

            score_t val;
            direction_t dir;

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

        dir_mat_t dir_word = 0;
        PackLoop: for (int k = 0; k < DIAG_LEN; ++k) {
            #pragma HLS UNROLL
            dir_word.range(k * 2 + 1, k * 2) = dir_curr[k];
        }

        memcpy(&direction_matrix[i], &dir_word, sizeof(dir_word));

        for (int k = 0; k < DIAG_LEN; ++k) {
            #pragma HLS UNROLL
            diag_prevprev[k] = diag_prev[k];
            diag_prev[k] = diag_curr[k];
        }
    }

    *max_index = max_pos;
}
