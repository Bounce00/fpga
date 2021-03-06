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
 *     (c) Copyright 2015 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

#ifndef CHOLESKY_H
#define CHOLESKY_H

#include "hls_linear_algebra.h"

const unsigned ROWS_COLS_A = 16;
const unsigned LOWER_TRIANGULAR = true;

// Define input/output types
typedef hls::x_complex<float> MATRIX_IN_T;
typedef hls::x_complex<float> MATRIX_OUT_T;

// Define configuration class for each implementation "target"
struct CHOLESKY_CONFIG_SMALL : hls::cholesky_traits<LOWER_TRIANGULAR,ROWS_COLS_A,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int ARCH = 0;
};
struct CHOLESKY_CONFIG_FAST : hls::cholesky_traits<LOWER_TRIANGULAR,ROWS_COLS_A,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int ARCH = 2;
};
struct CHOLESKY_CONFIG_FASTER : hls::cholesky_traits<LOWER_TRIANGULAR,ROWS_COLS_A,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int ARCH = 2;
  static const int UNROLL_FACTOR = 2;
};
struct CHOLESKY_CONFIG_ALT_BALANCED : hls::cholesky_traits<LOWER_TRIANGULAR,ROWS_COLS_A,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int ARCH = 2;
  static const int INNER_II = 4;
  static const int ARCH2_ZERO_LOOP = false;
};
// Declare top-level functions for each implementation "target"
void cholesky_small(MATRIX_IN_T  A[ROWS_COLS_A][ROWS_COLS_A],
                    MATRIX_OUT_T L[ROWS_COLS_A][ROWS_COLS_A],
                    int& passfail);
void cholesky_balanced(MATRIX_IN_T  A[ROWS_COLS_A][ROWS_COLS_A],
                       MATRIX_OUT_T L[ROWS_COLS_A][ROWS_COLS_A],
                       int& passfail);
void cholesky_alt_balanced(MATRIX_IN_T  A[ROWS_COLS_A][ROWS_COLS_A],
                           MATRIX_OUT_T L[ROWS_COLS_A][ROWS_COLS_A],
                           int& passfail);
void cholesky_fast(MATRIX_IN_T  A[ROWS_COLS_A][ROWS_COLS_A],
                   MATRIX_OUT_T L[ROWS_COLS_A][ROWS_COLS_A],
                   int& passfail);
void cholesky_faster(MATRIX_IN_T  A[ROWS_COLS_A][ROWS_COLS_A],
                     MATRIX_OUT_T L[ROWS_COLS_A][ROWS_COLS_A],
                     int& passfail);

#endif

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
