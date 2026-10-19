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

    int index = 0;
    int i = 0;
	int j = 0;

    int north = 0;
	int west = 0;
	int northwest = 0;
	int max_value = -1;
	int max_pos = -1;
	int match;

	for(index = 0; index < N; index++) {
		north = northwest = 0;
		if(index == 0) {
			west = 0;
		}
		else {
			west = similarity_matrix[index - 1];
		}

		match = ( string1[index] == string2[0] ) ? MATCH : MISS_MATCH;

		int diag_score = northwest + match;
        int up_score = north + GAP_d;
        int left_score = west + GAP_i;

        int val = left_score;
        short dir = WEST;

		if (val <= up_score) { val = up_score; dir = NORTH; }
		if (val <= diag_score) { val = diag_score; dir = NORTH_WEST; }
		if (val <= 0) { val = 0; dir = CENTER; }

		similarity_matrix[index] = val;
		direction_matrix[index] = dir; 

		if (val > max_value) {
            max_value = val;
            max_pos = index;
        }
	}

	//Here the real computation starts. Place your code whenever is required. 
	// Scan the N*M array row-wise starting from the second row.
   	for(index = N; index < N*M; index++) 
	{
   	  	i = index % N; // column index
	  	j = index / N; // row index

		north = similarity_matrix[index - N];

   	   	if (i == 0) 
		{  
			// first column. 
			west = 0;
			northwest = 0;
		} else 
		{      
			west = similarity_matrix[index - 1];
			northwest = similarity_matrix[index - N - 1];
		}
            

    	match = ( string1[i] == string2[j] ) ? MATCH : MISS_MATCH; 

		int diag_score = northwest + match;
        int up_score = north + GAP_d;
        int left_score = west + GAP_i;

        int val = left_score;
        short dir = WEST;

		if (val <= up_score) { val = up_score; dir = NORTH; }
		if (val <= diag_score) { val = diag_score; dir = NORTH_WEST; }
		if (val <= 0) { val = 0; dir = CENTER; }

		similarity_matrix[index] = val;
		direction_matrix[index] = dir; 

		if (val > max_value) {
            max_value = val;
            max_pos = index;
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
	int *similarity_matrix = (int*) malloc(sizeof(int) * N * M);
	short *direction_matrix = (short*) malloc(sizeof(short) * N * M);
	int *max_index = (int *) malloc(sizeof(int));

/* Create the two input strings by calling a random number generator */
	fillRandom(query, N);
	fillRandom(database, M);

	memset(similarity_matrix, 0, sizeof(int) * N * M);
	memset(direction_matrix, 0, sizeof(short) * N * M);

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
