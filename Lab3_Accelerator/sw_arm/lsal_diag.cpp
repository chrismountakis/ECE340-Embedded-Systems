#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h>
#include <unistd.h>
#include <assert.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <algorithm>
#include <vector>


// #define N 256
// #define M 2048

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
 *           max_index is the location of the highest similiarity score
 *           similarity and direction matrices. Note that these two matrices are initialized with zeros.
 **********************************************************************************************/

void compute_matrices(
    char *string1, char *string2,
    int *max_index, int *similarity_matrix, short *direction_matrix, int N, int M)
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
		
    for (int i = 1; i < (N + M - 1); ++i) {

		int j_lo = std::max(0, i - M + 1);
        int j_hi = std::min(i, N - 1);

        for (int j = j_lo; j <= j_hi; ++j) {
            int idx = i * N + j;
            int idx_up = (i - 1) * N + j;

            int north = similarity_matrix[idx_up];
            int west = 0;
            int northwest = 0;

			if (j > 0) {
                west = similarity_matrix[idx_up - 1];
                if (i >= 2) {
                    int idx_2up = (i - 2) * N + j;
                    northwest = similarity_matrix[idx_2up - 1];
                }
            }

            int match_score = (string1[j] == string2[i - j]) ? MATCH : MISS_MATCH;

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
                max_pos = (i - j) * N + j; // idx;  
            }
        }
    }

    *max_index = max_pos;
}


/************************************************************************/

/*
 return a random number in [0, limit].
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

/* ******************************************************************/
int main(int argc, char** argv) {

    clock_t t1, t2;

	if (argc != 3) {
		printf("%s <Query Size N> <DataBase Size M>\n", argv[0]);
		return EXIT_FAILURE;
	}
 
    printf("Starting Local Alignment Code \n");
	fflush(stdout);

	/* Typically, M >> N */
	int N = atoi(argv[1]); 
    int M = atoi(argv[2]);

    char *query = (char*) malloc(sizeof(char) * N);
	char *database = (char*) malloc(sizeof(char) * M);
	int *similarity_matrix = (int*) malloc(sizeof(int) * (N + M - 1) * N);
	short *direction_matrix = (short*) malloc(sizeof(short) * (N + M - 1) * N);
	int *max_index = (int *) malloc(sizeof(int));

/* Create the two input strings by calling a random number generator */
	fillRandom(query, N);
	fillRandom(database, M);

	memset(similarity_matrix, 0, sizeof(int) * (N + M - 1) * N);
	memset(direction_matrix, 0, sizeof(short) * (N + M - 1) * N);

    t1 = clock();
	compute_matrices(query, database, max_index, similarity_matrix, direction_matrix, N, M);
	t2 = clock();

    printf(" max index is in position (%d, %d) \n", max_index[0]/N, max_index[0]%N );
	printf(" execution time of LSAL SW algorithm is %f sec \n", (double)(t2-t1) / CLOCKS_PER_SEC);
	
	free(similarity_matrix);
	free(direction_matrix);
	free(max_index);

    // printf("cnt_ops=%d, cnt_bytes=%d\n", cnt_ops, cnt_bytes);
	return EXIT_SUCCESS;
}

