/*****************************************************************************
 *
 *     Author: Xilinx, Inc.
 *
 *     This text contains proprietary, confidential information of
 *     Xilinx, Inc. , is distributed by under license from Xilinx,
 *     Inc., and may be used, copied and/or disclosed only pursuant to
 *     the terms of a valid license agreement with Xilinx, Inc.
 *
 *     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"
 *     AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND
 *     SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,
 *     OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
 *     APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION
 *     THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,
 *     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE
 *     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY
 *     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE
 *     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
 *     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF
 *     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *     FOR A PARTICULAR PURPOSE.
 *
 *     Xilinx products are not intended for use in life support appliances,
 *     devices, or systems. Use in such applications is expressly prohibited.
 *
 *     (c) Copyright 2013-2014 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

#include "qrf.h"

// The top-level functions for each implementation "target": small, balanced, fast, faster, tradeoff
// o Function return must be "void" to use the set_directive_top

void qrf_small(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                     MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                     MATRIX_OUT_T R[A_ROWS][A_COLS]) {
  MATRIX_IN_T  a_i[A_ROWS][A_COLS];
  MATRIX_OUT_T q_i[A_ROWS][A_ROWS];
  MATRIX_OUT_T r_i[A_ROWS][A_COLS];
  
  // Copy input data to local memory
  a_row_loop : for (int r=0;r<A_ROWS;r++)
    a_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      a_i[r][c] = A[r][c];

  // Call QR Factorization, Q is produced such that Q*R = A
  const bool TRANSPOSED_Q = false;
  hls::qrf_top<TRANSPOSED_Q, A_ROWS, A_COLS, QRF_CONFIG_SMALL, MATRIX_IN_T, MATRIX_OUT_T>(a_i, q_i, r_i);

  // Copy local memory contents to outputs
  r_row_loop : for (int r=0;r<A_ROWS;r++)
    r_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      R[r][c] = r_i[r][c];
  q_row_loop : for (int r=0;r<A_ROWS;r++)
    q_col_loop : for (int c=0;c<A_ROWS;c++)
      #pragma HLS PIPELINE
      Q[r][c] = q_i[r][c];
}

void qrf_balanced(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                        MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                        MATRIX_OUT_T R[A_ROWS][A_COLS]) {
  MATRIX_IN_T  a_i[A_ROWS][A_COLS];
  MATRIX_OUT_T q_i[A_ROWS][A_ROWS];
  MATRIX_OUT_T r_i[A_ROWS][A_COLS];
  
  // Copy input data to local memory
  a_row_loop : for (int r=0;r<A_ROWS;r++)
    a_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      a_i[r][c] = A[r][c];

  // Call QR Factorization, Q is produced such that Q*R = A
  const bool TRANSPOSED_Q = false;
  hls::qrf<TRANSPOSED_Q, A_ROWS, A_COLS, MATRIX_IN_T, MATRIX_OUT_T>(a_i, q_i, r_i);

  // Copy local memory contents to outputs
  r_row_loop : for (int r=0;r<A_ROWS;r++)
    r_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      R[r][c] = r_i[r][c];
  q_row_loop : for (int r=0;r<A_ROWS;r++)
    q_col_loop : for (int c=0;c<A_ROWS;c++)
      #pragma HLS PIPELINE
      Q[r][c] = q_i[r][c];
}

void qrf_fast(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                    MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                    MATRIX_OUT_T R[A_ROWS][A_COLS]) {
  MATRIX_IN_T  a_i[A_ROWS][A_COLS];
  MATRIX_OUT_T q_i[A_ROWS][A_ROWS];
  MATRIX_OUT_T r_i[A_ROWS][A_COLS];
  
  // Copy input data to local memory
  a_row_loop : for (int r=0;r<A_ROWS;r++)
    a_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      a_i[r][c] = A[r][c];

  // Call QR Factorization, Q is produced such that Q*R = A
  const bool TRANSPOSED_Q = false;
  hls::qrf_top<TRANSPOSED_Q, A_ROWS, A_COLS, QRF_CONFIG_FAST, MATRIX_IN_T, MATRIX_OUT_T>(a_i, q_i, r_i);

  // Copy local memory contents to outputs
  r_row_loop : for (int r=0;r<A_ROWS;r++)
    r_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      R[r][c] = r_i[r][c];
  q_row_loop : for (int r=0;r<A_ROWS;r++)
    q_col_loop : for (int c=0;c<A_ROWS;c++)
      #pragma HLS PIPELINE
      Q[r][c] = q_i[r][c];
}

void qrf_faster(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                      MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                      MATRIX_OUT_T R[A_ROWS][A_COLS]) {
  MATRIX_IN_T  a_i[A_ROWS][A_COLS];
  MATRIX_OUT_T q_i[A_ROWS][A_ROWS];
  MATRIX_OUT_T r_i[A_ROWS][A_COLS];
  
  // Copy input data to local memory
  a_row_loop : for (int r=0;r<A_ROWS;r++)
    a_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      a_i[r][c] = A[r][c];

  // Call QR Factorization, Q is produced such that Q*R = A
  const bool TRANSPOSED_Q = false;
  hls::qrf_top<TRANSPOSED_Q, A_ROWS, A_COLS, QRF_CONFIG_FASTER, MATRIX_IN_T, MATRIX_OUT_T>(a_i, q_i, r_i);

  // Copy local memory contents to outputs
  r_row_loop : for (int r=0;r<A_ROWS;r++)
    r_col_loop : for (int c=0;c<A_COLS;c++)
      #pragma HLS PIPELINE
      R[r][c] = r_i[r][c];
  q_row_loop : for (int r=0;r<A_ROWS;r++)
    q_col_loop : for (int c=0;c<A_ROWS;c++)
      #pragma HLS PIPELINE
      Q[r][c] = q_i[r][c];
}


// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
