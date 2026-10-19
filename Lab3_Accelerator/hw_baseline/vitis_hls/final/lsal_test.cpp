#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <unistd.h>
#include <assert.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>

#include "ap_int.h"
#include <algorithm>
#include "lsal.h" 

#define N 32
#define M 65536
#define diag_len 32
#define DIAG N + M - 1

const ap_int<8> GAP_i = -1;
const ap_int<8> GAP_d = -1;
const ap_int<8> MATCH = 2;
const ap_int<8> MISS_MATCH = -1;
const ap_uint<2> CENTER = 0;
const ap_uint<2> NORTH = 1;
const ap_uint<2> NORTH_WEST = 2;
const ap_uint<2> WEST = 3;

/***************************************************************************************
 * This is the golden code which runs in the CPU (and is the same code that you developed for x86 / Arm) 
 * It will be used to verify the correct functionality of the HW implementation.  
 * Its usefulness is mainly when you perform software emulation (sw_emu).
 ***************************************************************************************/
void compute_matrices_sw(
    char *string1, char *string2,
    int *max_index, int *similarity_matrix, short *direction_matrix)
{
    int max_value = 0;
    int max_pos = 0;

	int val0 = (string1[0] == string2[0]) ? MATCH : MISS_MATCH;
	short dir0 = NORTH_WEST;

	if (val0 <= 0) {
		val0 = 0;
		dir0 = CENTER;
	}

	similarity_matrix[0] = val0;
	direction_matrix[0] = dir0;
	max_value = val0;

    for (int i = 1; i < DIAG; ++i) {

		int elem_start = std::max(0, i - N + 1);
        int elem_end = std::min(i, M - 1);
		int offset = elem_end - elem_start + 1;

        for (int j = 0; j < offset; ++j) {
            int idx = i * N + j;
            int idx_up = (i - 1) * N + j;
			int idx_2up = (i - 2) * N + j;

            int north = similarity_matrix[idx_up];
            int west;
            int northwest;

			if(j > 0) { west = similarity_matrix[idx_up - 1]; northwest = similarity_matrix[idx_2up - 1]; }
			else      { west = 0; northwest = 0; }

            int match_score = (string1[j] == string2[elem_end - j]) ? MATCH : MISS_MATCH;

            int diag_score = northwest + match_score;
            int up_score = north + GAP_d;
            int left_score = west + GAP_i;

            int val = left_score;
			short dir = WEST;

			if (up_score >= val) { val = up_score; dir = NORTH; }
			if (diag_score >= val) { val = diag_score; dir = NORTH_WEST; }
			if (val <= 0) { val = 0; dir = CENTER; }

            similarity_matrix[idx] = val;
            direction_matrix[idx] = dir;

            if (val > max_value) {
                max_value = val;
                max_pos = (i - j) * N + j;
            }
        }
    }

    *max_index = max_pos;
}

void char_array_to_bits_packed(char *input, char_t *packed, int elem) {
    for (int i = 0; i < elem; ++i) {
        switch (input[i]) {
            case 'A': packed[i] = 0; break;
            case 'T': packed[i] = 1; break;
            case 'C': packed[i] = 2; break;
            case 'G': packed[i] = 3; break;
            default:  packed[i] = 0; break;
        }
    }
}

int rand_lim(int limit) {
	int divisor = RAND_MAX / (limit + 1);
	int retval;
	do {
		retval = rand() / divisor;
	} while (retval > limit);
	return retval;
}

void fillRandom(char* string, int dimension) {
	static const char possibleLetters[] = "ATCG";
	string[0] = '-';
	for (int i = 0; i < dimension; i++) {
		int randomNum = rand_lim(3);
		string[i] = possibleLetters[randomNum];
	}
}

int load_file_to_memory(const char *filename, char **result) {
	size_t size = 0;
	FILE *f = fopen(filename, "rb");
	if (f == NULL) {
		*result = NULL;
		return -1;
	}
	fseek(f, 0, SEEK_END);
	size = ftell(f);
	fseek(f, 0, SEEK_SET);
	*result = (char *) malloc(size + 1);
	if (size != fread(*result, sizeof(char), size, f)) {
		free(*result);
		return -2;
	}
	fclose(f);
	(*result)[size] = 0;
	return size;
}

int main(int argc, char** argv) {
	printf("starting HOST code \n");
	fflush(stdout);
	int err;
	int matrix_size_hw;
	int matrix_size_sw;

    if (argc != 1) {
		printf("%s <Query Size N> <DataBase Size M>\n", argv[0]);
		return EXIT_FAILURE;
	}
	
    if (N <= 0 || M <= 0) {
    	printf("N and M should be positive numbers. \n");
		return EXIT_FAILURE;
	}

	matrix_size_sw = matrix_size_hw = N * DIAG;

	char *query = (char *) malloc(sizeof(char) * N);
	char *database = (char *) malloc(sizeof(char) * M);
	dir_mat_t *direction_matrix = (dir_mat_t *) malloc(matrix_size_hw * sizeof(dir_mat_t) / N);
	index_t *max_index = (index_t *) malloc(sizeof(index_t));

	char_t *packed_query = (char_t *) malloc(N * sizeof(char_t));
	char_t *packed_database = (char_t *) malloc(M * sizeof(char_t));

	printf("array defined! \n");

    fflush(stdout);

	fillRandom(query, N);
	fillRandom(database, M);

	char_array_to_bits_packed(query, packed_query, N);
	char_array_to_bits_packed(database, packed_database, M);

	memset(direction_matrix, 0, matrix_size_hw * sizeof(dir_mat_t) / N);

	compute_matrices(packed_query, packed_database, max_index, direction_matrix); ///

	printf("hardware ended\n");

	fflush(stdout); ////////

	int *similarity_matrix_sw = (int *) malloc(sizeof(int) * matrix_size_sw);
	short *direction_matrix_sw = (short *) malloc(sizeof(short) * matrix_size_sw);
	int *max_index_sw = (int *) malloc(sizeof(int));

	for(int i = 0; i < matrix_size_sw; i++){
		similarity_matrix_sw[i] = 0;
	}
	compute_matrices_sw(query, database, max_index_sw, similarity_matrix_sw, direction_matrix_sw);

	printf("both ended\n");

	int DIRECTIONS_PER_WORD = N;

	for (int d = 0; d < M + N - 1; d++) {
	    int elem_start = std::max(0, d - N + 1);
	    int elem_end   = std::min(d, M - 1);
	    int num_elems  = elem_end - elem_start + 1;

	    for (int e = 0; e < num_elems; e++) {
	        int i = d * N + e;

	        int word_idx = i / DIRECTIONS_PER_WORD;
	        int bit_offset = (i % DIRECTIONS_PER_WORD) * 2;

	        dir_t hw_val = direction_matrix[word_idx].range(bit_offset + 1, bit_offset);
	        int sw_val = direction_matrix_sw[i];

	        if ((int)hw_val != sw_val) {
	            printf("Mismatch at SW index %d (Diag %d, Pos %d): SW = %d, HW = %d\n",
	                   i, d, e, sw_val, (int)hw_val);
	            return EXIT_FAILURE;
	        }
	    }
	}

	printf("computation ended!- RESULTS CORRECT \n");

    free(query);
    free(database);
	free(direction_matrix);
	free(max_index);
	free(similarity_matrix_sw);
	free(direction_matrix_sw);
	free(max_index_sw);

	return EXIT_SUCCESS;
}

