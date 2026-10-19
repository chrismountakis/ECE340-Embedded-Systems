/********************************************************************************
 * The Host code running in the Arm CPU. Make sure to study and understand the OpenCL API code
 * 
 ********************************************************************************/

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

#include <algorithm>
#include <ap_int.h>

#define N 32
#define M 65536
#define DIAG (N + M - 1)
const short GAP_i = -1;
const short GAP_d = -1;
const short MATCH = 2;
const short MISS_MATCH = -1;
const short CENTER = 0;
const short NORTH = 1;
const short NORTH_WEST = 2;
const short WEST = 3;

extern void compute_matrices(
    ap_uint<2>* string1, ap_uint<2>* string2,
    ap_uint<21>* max_index, ap_uint<64>* direction_matrix
);

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

    // Initialize [0,0] entry
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

/*
template <int BITS>
void char_array_to_bits_packed(char *input, ap_uint<BITS> *packed, int elem) {
    int values_per_word = BITS / 2; // each char is 2 bits

    for (int i = 0; i < elem; ++i) {
        int word_idx = i / values_per_word;
        int bit_offset = (i % values_per_word) * 2;

        ap_uint<2> bits;
        switch (input[i]) {
            case 'A': bits = 0; break;
            case 'T': bits = 1; break;
            case 'C': bits = 2; break;
            case 'G': bits = 3; break;
            default:  bits = 0; break;
        }

        packed[word_idx].range(bit_offset + 1, bit_offset) = bits;
    }
}*/


void char_array_to_bits_packed(char *input, ap_uint<2> *packed, int elem) {
    for (int i = 0; i < elem; ++i) {

        ap_uint<2> bits;
        switch (input[i]) {
            case 'A': bits = 0; break;
            case 'T': bits = 1; break;
            case 'C': bits = 2; break;
            case 'G': bits = 3; break;
            default:  bits = 0; break;
        }

        packed[i] = bits;
    }
}


/*
 return a random number between 0 and limit inclusive.
 */
int rand_lim(int limit) {

	int divisor = RAND_MAX / (limit + 1);
	int retval;

	do {
		retval = rand() / divisor;
	} while (retval > limit);

	return retval;
}

/*
 Fill the string with random values
 */
void fillRandom(char* string, int dimension) {
	//fill the string with random letters..
	static const char possibleLetters[] = "ATCG";

	string[0] = '-';

	int i;
	for (i = 0; i < dimension; i++) {
		int randomNum = rand_lim(3);
		string[i] = possibleLetters[randomNum];
	}

}

int load_file_to_memory(const char *filename, char **result) {
	size_t size = 0;
	FILE *f = fopen(filename, "rb");
	if (f == NULL) {
		*result = NULL;
		return -1; // -1 means file opening fail
	}
	fseek(f, 0, SEEK_END);
	size = ftell(f);
	fseek(f, 0, SEEK_SET);
	*result = (char *) malloc(size + 1);
	if (size != fread(*result, sizeof(char), size, f)) {
		free(*result);
		return -2; // -2 means file reading fail
	}
	fclose(f);
	(*result)[size] = 0;
	return size;
}

/*******************************************************************************
 *   Host program running on the Arm CPU. 
 *   The code is written using the OpenCL API. 
 *   We have provided multiple comments for you to understand where each thing  
*******************************************************************************/
int main(int argc, char** argv) {
	printf("starting HOST code \n");
	fflush(stdout);
	int err; // error code returned from api calls
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

    //matrix_size_sw = N*M;
	matrix_size_sw = matrix_size_hw = N * DIAG; // N * num_diags

	char *query = (char *) malloc(sizeof(char) * N);
	char *database = (char *) malloc(sizeof(char) * M);
	ap_uint<64> *direction_matrix = (ap_uint<64> *) malloc(sizeof(ap_uint<128>) * matrix_size_hw / 64);
	ap_uint<21> *max_index = (ap_uint<21> *) malloc(sizeof(ap_uint<21>));

	//ap_uint<128> *packed_query = (ap_uint<128> *) malloc(N * sizeof(ap_uint<128>) / 64);
	//ap_uint<512> *packed_database = (ap_uint<512> *) malloc(M * sizeof(ap_uint<512>) / 256);
	ap_uint<2> *packed_query = (ap_uint<2> *) malloc(N * sizeof(ap_uint<2>));
	ap_uint<2> *packed_database = (ap_uint<2> *) malloc(M * sizeof(ap_uint<2>));

	printf("array defined! \n");
    fflush(stdout);

	fillRandom(query, N);
	fillRandom(database, M);

	// map chars to bits
	//char_array_to_bits_packed<128>(query, packed_query, N);
	//char_array_to_bits_packed<512>(database, packed_database, M);
	char_array_to_bits_packed(query, packed_query, N);
	char_array_to_bits_packed(database, packed_database, M);

	memset(direction_matrix, 0, matrix_size_hw * sizeof(ap_uint<128>) / 64);

	compute_matrices(packed_query, packed_database, max_index, direction_matrix);

/**************************************************************
 * Run the same algorithm in the Host Unit and compare for verification
 **************************************************************/
	int *similarity_matrix_sw = (int *) malloc(sizeof(int) * matrix_size_sw);
	short *direction_matrix_sw = (short *) malloc(sizeof(short) * matrix_size_sw);
	int *max_index_sw = (int *) malloc(sizeof(int));

	for(int i = 0; i < matrix_size_sw; i++){
		similarity_matrix_sw[i] = 0;
	}
	compute_matrices_sw(query, database, max_index_sw, similarity_matrix_sw, direction_matrix_sw);

	printf("both ended\n");

	//printf(" execution time is %lf ms \n", executionTime);

	int DIRECTIONS_PER_WORD = 64 / 2; // 64

	for (int d = 0; d < M + N - 1; d++) { // diagonal index
	    int elem_start = std::max(0, d - N + 1);
	    int elem_end   = std::min(d, M - 1);
	    int num_elems  = elem_end - elem_start + 1;

	    for (int e = 0; e < num_elems; e++) {
	        int i = d * N + e;

	        int word_idx = i / DIRECTIONS_PER_WORD;
	        int bit_offset = (i % DIRECTIONS_PER_WORD) * 2;

	        ap_uint<2> hw_val = direction_matrix[word_idx].range(bit_offset + 1, bit_offset);
	        int sw_val = direction_matrix_sw[i];

	        //printf("\nsw: %d, hw: %d\n", sw_val, (int)hw_val);

	        if (hw_val != sw_val) {
	            printf("Mismatch at SW index %d (Diag %d, Pos %d): SW = %d, HW = %d\n",
	                   i, d, e, sw_val, (int)hw_val);
	            return EXIT_FAILURE;
	        }
	    }
	}

	printf("computation ended!- RESULTS CORRECT \n");

	/**************************************************************
	 * Clean up everything and, then, shutdown 
	 **************************************************************/
    
    free(query);
    free(database);
	free(direction_matrix);
	free(max_index);
	free(similarity_matrix_sw);
	free(direction_matrix_sw);
	free(max_index_sw);

	return EXIT_SUCCESS;
}
