#include <stdio.h>
#include <stdlib.h>
#include "timer_util.h"
#include <xil_printf.h>

// Image dimensions
#define H 4096    // Height
#define W 4096    // Width
#define D 3     // Depth (e.g., RGB channels)

// Filter dimensions
#define F 2     // Filter height and width
#define FD 3    // Filter depth (same as input depth)

// Convolution parameters
#define S 1     // Stride
#define P 0     // Padding

#define OUT_H ((H - F + 2 * P) / S + 1)
#define OUT_W ((W - F + 2 * P) / S + 1)

int input[H][W][D];
int filter[F][F][FD] = {
    {
        {1, 0, 0},
        {0, 1, 0}
    },
    {
        {0, 0, 1},
        {1, 0, 0}
    }
};
int output[OUT_H][OUT_W][D];  // Output 3D array (height, width, channels)

void initialize_input(int input[H][W][D]) {
    srand(42);
    for (int i = 0; i < H; i++) {
        for (int j = 0; j < W; j++) {
            for (int d = 0; d < D; d++) {
                input[i][j][d] = rand() % 10;
            }
        }
    }
}

void conv_3d(int input[H][W][D], int filter[F][F][FD], int output[OUT_H][OUT_W][D]) {
    // Loop over height
    for (int i = 0; i < OUT_H; i++) {
        // Loop over width
        for (int j = 0; j < OUT_W; j++) {
            // Loop over depth (channels)
            for (int d = 0; d < D; d++) {
                int sum = 0;
                for (int ki = 0; ki < F; ki++) { // Filter height
                    for (int kj = 0; kj < F; kj++) { // Filter width
                        int y = i + ki;
                        int x = j + kj;

                        sum += input[y][x][d] * filter[ki][kj][d];
                    }
                }
                output[i][j][d] = sum;
            }
        }
    }
}

int main() {
    CORE_TICKS total_time;
    secs_ret secs_passed;

    start_time();

    initialize_input(input);
    conv_3d(input, filter, output);

    stop_time();

    total_time = get_time();
    secs_passed = time_in_secs(total_time);
    xil_printf("Seconds Passed: %u\r\n", secs_passed);

    return 0;
}
