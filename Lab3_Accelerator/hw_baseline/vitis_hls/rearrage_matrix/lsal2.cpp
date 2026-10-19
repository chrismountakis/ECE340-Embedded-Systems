#define N 64
#define M 65536
#define diag_len 64

#include "ap_int.h"
#include <algorithm>
#include <cstring>

const short GAP_i = -1;
const short GAP_d = -1;
const short MATCH = 2;
const short MISS_MATCH = -1;
const short CENTER = 0;
const short NORTH = 1;
const short NORTH_WEST = 2;
const short WEST = 3;

// static long int cnt_ops=0;
// static long int cnt_bytes=0;

/**********************************************************************************************
 * LSAL algorithm
 * Inputs:
 *          string1 is the query[N]
 *          string2 is the database[M]
 *          input sizes N, M
 * Outputs:
 *           max_index is the location of the highest similarity score
 *           similarity and direction matrices. Note that these two matrices are initialized with zeros.
 **********************************************************************************************/
void compute_matrices(
    char *string1, char *string2,
    int *max_index, int *similarity_matrix, short *direction_matrix)
{

	#pragma HLS INTERFACE m_axi port=string1 bundle=gmem0
    #pragma HLS INTERFACE m_axi port=string2 bundle=gmem1
	#pragma HLS INTERFACE m_axi port=similarity_matrix offset=slave bundle=gmem0
	#pragma HLS INTERFACE m_axi port=direction_matrix offset=slave bundle=gmem1
	#pragma HLS INTERFACE s_axilite port=return

    // Local buffers (partitioned for parallel access)
    char string1_buf[N];
    char string2_buf[M];
    #pragma HLS ARRAY_PARTITION variable=string1_buf cyclic factor=8
    #pragma HLS ARRAY_PARTITION variable=string2_buf cyclic factor=8

    // Diagonal buffers (3 rows, partitioned for parallel access)
    int diag_buf_0[diag_len];
    int diag_buf_1[diag_len];
    int diag_buf_2[diag_len];
    short dir_buf_0[diag_len];
    short dir_buf_1[diag_len];
    short dir_buf_2[diag_len];

    // Partition the buffers to allow parallel access
    #pragma HLS ARRAY_PARTITION variable=diag_buf_0 complete
    #pragma HLS ARRAY_PARTITION variable=diag_buf_1 complete
    #pragma HLS ARRAY_PARTITION variable=diag_buf_2 complete
    #pragma HLS ARRAY_PARTITION variable=dir_buf_0 complete
    #pragma HLS ARRAY_PARTITION variable=dir_buf_1 complete
    #pragma HLS ARRAY_PARTITION variable=dir_buf_2 complete

    // Copy data to bram (16385 cycles)
    memcpy(string1_buf, string1, N * sizeof(char));
    memcpy(string2_buf, string2, M * sizeof(char));

    int max_value = 0;
    int max_pos = 0;

    // Pointers for diagonal buffers (rotate across three buffers)
    int* diag_prevprev = diag_buf_0;
    int* diag_prev = diag_buf_1;
    int* diag_curr = diag_buf_2;

    short* dir_prevprev = dir_buf_0;
    short* dir_prev = dir_buf_1;
    short* dir_curr = dir_buf_2;

    Diag: for (int k = 1; k < N + M; ++k) {
        int i_start = std::max(0, k - N);
        int i_end = std::min(k - 1, M - 1);

        // Compute current diagonal
        Compute: for (int i = i_start; i <= i_end; ++i) {
            #pragma HLS loop_tripcount min=1 max=64
            int j = k - i - 1;

            // Load the diagonal values using the pointers
            int north = (i != 0) ? diag_prev[j] : 0;
            int west = (j != 0) ? diag_prev[j - 1] : 0;
            int northwest = (i != 0 && j != 0) ? diag_prevprev[j - 1] : 0;

            int match = (string1_buf[j] == string2_buf[i]) ? MATCH : MISS_MATCH;
            int diag_score = northwest + match;
            int up_score = north + GAP_d;
            int left_score = west + GAP_i;

            int val = left_score;
            short dir = WEST;

            if (val <= up_score) { val = up_score; dir = NORTH; }
            if (val <= diag_score) { val = diag_score; dir = NORTH_WEST; }
            if (val <= 0) { val = 0; dir = CENTER; }

            diag_curr[j] = val;
            dir_curr[j] = dir;

            if (val > max_value) {
                max_value = val;
                max_pos = i * N + j;
            }
        }

        // Flush CURRENT diagonal to DDR
		int diag_index = k - 1;
		int offset = diag_index * diag_len;

		Store: for (int i = 0; i < diag_len; ++i) {
		    #pragma HLS PIPELINE II=1
		    similarity_matrix[offset + i] = diag_curr[i];
		    direction_matrix[offset + i] = dir_curr[i];
		}


		/*
		memcpy(&similarity_matrix[offset], diag_curr, diag_len * sizeof(int));
		memcpy(&direction_matrix[offset], dir_curr, diag_len * sizeof(int));
		*/



        // Rotate pointers (no data movement)
        int* tmp_diag = diag_prevprev;
        diag_prevprev = diag_prev;
        diag_prev = diag_curr;
        diag_curr = tmp_diag;

        short* tmp_dir = dir_prevprev;
        dir_prevprev = dir_prev;
        dir_prev = dir_curr;
        dir_curr = tmp_dir;
    }

    *max_index = max_pos;
}
