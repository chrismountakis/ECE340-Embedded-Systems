#ifndef __LSAL_H__
#define __LSAL_H__

typedef ap_uint<2>  char_t;
typedef ap_uint<2>  dir_t;
typedef ap_int<7>   score_int_t;
typedef ap_uint<7>  score_t;
typedef ap_uint<5>  offset_t;
typedef ap_uint<16> db_idx_t;
typedef ap_uint<21> index_t;
typedef ap_uint<64> dir_mat_t;

// Prototype of top level function for C-synthesis
void compute_matrices(
    char_t *string1,
    char_t *string2,
    index_t *max_index,
    dir_mat_t *direction_matrix
);

#endif // __LSAL_H__

