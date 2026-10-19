#include <cstring>
#include "ap_int.h"
#include <algorithm>
#include "hls_stream.h"

#define N 32
#define M 65536
#define diag_len 32

const ap_int<8> GAP_i = -1;
const ap_int<8> GAP_d = -1;
const ap_int<8> MATCH = 2;
const ap_int<8> MISS_MATCH = -1;
const ap_uint<2> CENTER = 0;
const ap_uint<2> NORTH = 1;
const ap_uint<2> NORTH_WEST = 2;
const ap_uint<2> WEST = 3;

typedef ap_uint<2>  char_t;
typedef ap_uint<2>  dir_t;
typedef ap_int<7>   score_int_t;
typedef ap_uint<7>  score_t;
typedef ap_uint<5>  offset_t;
typedef ap_uint<16> db_idx_t;
typedef ap_uint<21> index_t;
typedef ap_uint<64> dir_mat_t;

void compute_matrices(
	char_t *string1,
	char_t *string2,
	index_t *max_index,
	dir_mat_t *direction_matrix
) {
	#pragma HLS INTERFACE m_axi port=string1 depth=1 bundle=gmem0
	#pragma HLS INTERFACE m_axi port=string2 bundle=gmem0
	#pragma HLS INTERFACE m_axi port=direction_matrix depth=1 bundle=gmem1
	#pragma HLS INTERFACE s_axilite port=max_index
	#pragma HLS INTERFACE s_axilite port=return

	char_t string1_buf[N];
	#pragma HLS ARRAY_PARTITION variable=string1_buf complete

	char_t string2_buf[M];
	#pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=16

	memcpy(string1_buf, string1, N * sizeof(char_t));
	memcpy(string2_buf, string2, M * sizeof(char_t));

	score_t diag_curr[diag_len] = {0};
	score_t diag_prev[diag_len] = {0};
	score_t diag_prevprev[diag_len] = {0};
	dir_t dir_curr[diag_len] = {0};

	#pragma HLS ARRAY_PARTITION variable=diag_curr complete
	#pragma HLS ARRAY_PARTITION variable=diag_prev complete
	#pragma HLS ARRAY_PARTITION variable=diag_prevprev complete
	#pragma HLS ARRAY_PARTITION variable=dir_curr complete

	score_t max_value = 0;
	index_t max_pos = 0;

	char_t sliding_buf[diag_len] = {0};
	#pragma HLS ARRAY_PARTITION variable=sliding_buf complete

	sliding_buf[diag_len - 1] = string2_buf[0];
	db_idx_t last_elem = 0;

	Diag: for (int i = 0; i < N + M - 1; ++i) {
		#pragma HLS PIPELINE II=1

		db_idx_t elem_start = (i >= N - 1) ? (i - (N - 1)) : 0;
		db_idx_t elem_end   = (i < M) ? i : M - 1;
		offset_t offset = elem_end - elem_start;

		bool shift = (elem_end > last_elem);

		if(shift) {
			for (int j = 0; j < diag_len - 1; ++j) {
				#pragma HLS UNROLL
				sliding_buf[j] = sliding_buf[j + 1];
			}
			sliding_buf[diag_len - 1] = string2_buf[elem_end];
			last_elem = elem_end;
		}

		score_t local_max_val = 0;
		index_t local_max_pos = 0;

		Compute: for (int j = 0; j < diag_len; ++j) {
			score_t north = diag_prev[j];
			score_t west = (j != 0) ? diag_prev[j - 1] : score_t(0);
			score_t northwest = (j != 0) ? diag_prevprev[j - 1] : score_t(0);

			score_int_t match = (string1_buf[j] == sliding_buf[(diag_len - 1) - j]) ? MATCH : MISS_MATCH;

			score_int_t diag_score = northwest + match;
			score_int_t up_score = north + GAP_d;
			score_int_t left_score = west + GAP_i;

			bool valid_diag = (diag_score > 0);
			bool valid_up = (up_score > 0);
			bool valid_left = (left_score > 0);

			score_int_t val;
			dir_t dir;

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


