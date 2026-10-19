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
#include <omp.h>

const short GAP_i = -1;
const short GAP_d = -1;
const short MATCH = 2;
const short MISS_MATCH = -1;
const short CENTER = 0;
const short NORTH = 1;
const short NORTH_WEST = 2;
const short WEST = 3;

void compute_matrices(
    char *string1, char *string2,
    int *max_index, int *similarity_matrix, short *direction_matrix,
    int N, int M, int num_threads) 
{
    int max_value = 0;
    int max_pos = 0;

    omp_set_num_threads(num_threads);  
    //printf("Threads used: %d\n", num_threads);

    std::vector<int> thread_max_values(num_threads, 0);
    std::vector<int> thread_max_positions(num_threads, 0);

    // Initialize [0,0]
    int val0 = (string1[0] == string2[0]) ? MATCH : MISS_MATCH;
    short dir0 = (val0 > 0) ? NORTH_WEST : CENTER;
    similarity_matrix[0] = std::max(val0, 0);
    direction_matrix[0] = dir0;
    max_value = similarity_matrix[0];

    #pragma omp parallel
    {
        int tid = omp_get_thread_num();
        int local_max = similarity_matrix[0];
        int local_max_pos = 0;

        for (int i = 1; i < (N + M - 1); ++i) {
            int j_lo = std::max(0, i - M + 1);
            int j_hi = std::min(i, N - 1);

            #pragma omp for
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

                if (val > local_max) {
                    local_max = val;
                    local_max_pos = (i - j) * N + j;
                }
            }
        }

        thread_max_values[tid] = local_max;
        thread_max_positions[tid] = local_max_pos;
    }

    // Final reduction
    for (int t = 0; t < num_threads; ++t) {
        if (thread_max_values[t] > max_value) {
            max_value = thread_max_values[t];
            max_pos = thread_max_positions[t];
        }
    }

    *max_index = max_pos;
}


// Generate random number [0, limit]
int rand_lim(int limit) {
    int divisor = RAND_MAX / (limit + 1);
    int retval;
    do {
        retval = rand() / divisor;
    } while (retval > limit);
    return retval;
}

// Fill string with random ATCG chars
void fillRandom(char* string, int dimension) {
    static const char possibleLetters[] = "ATCG";
    for (int i = 0; i < dimension; i++) {
        string[i] = possibleLetters[rand_lim(3)];
    }
}

int main(int argc, char** argv) {
    if (argc != 4) {
        printf("%s <Query Size N> <Database Size M> <Num Threads>\n", argv[0]);
        return EXIT_FAILURE;
    }

    int N = atoi(argv[1]);
    int M = atoi(argv[2]);
    int num_threads = atoi(argv[3]);

    char *query = (char*) malloc(sizeof(char) * N);
    char *database = (char*) malloc(sizeof(char) * M);
    int *similarity_matrix = (int*) malloc(sizeof(int) * (N + M - 1) * N);
    short *direction_matrix = (short*) malloc(sizeof(short) * (N + M - 1) * N);
    int *max_index = (int*) malloc(sizeof(int));

    fillRandom(query, N);
    fillRandom(database, M);

	/*
    memset(similarity_matrix, 0, sizeof(int) * (N + M - 1) * N);
    memset(direction_matrix, 0, sizeof(short) * (N + M - 1) * N);

    clock_t t1 = clock();
    compute_matrices(query, database, max_index, similarity_matrix, direction_matrix, N, M, num_threads);
    clock_t t2 = clock();

	printf(" max index is in position (%d, %d) \n", max_index[0]/N, max_index[0]%N );
    printf(" execution time of LSAL SW algorithm is %f sec \n", (double)((t2 - t1) / num_threads) / CLOCKS_PER_SEC);
	*/
	
	
	#define NUM_RUNS 100
	double total_time = 0.0;
	for (int run = 0; run < NUM_RUNS; ++run) {
        memset(similarity_matrix, 0, sizeof(int) * (N + M - 1) * N);
        memset(direction_matrix, 0, sizeof(short) * (N + M - 1) * N);

        clock_t t1 = clock();
        compute_matrices(query, database, max_index, similarity_matrix, direction_matrix, N, M, num_threads);
        clock_t t2 = clock();

        double run_time = ((double)(t2 - t1) / num_threads) / CLOCKS_PER_SEC;
        total_time += run_time;
    }
	printf(" max index is in position (%d, %d)\n", max_index[0]/N, max_index[0]%N );
    printf(" average execution time over %d runs: %f sec\n", NUM_RUNS, total_time / NUM_RUNS);
	
	

    free(query);
    free(database);
    free(similarity_matrix);
    free(direction_matrix);
    free(max_index);

    return EXIT_SUCCESS;
}
