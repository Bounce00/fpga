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

#ifndef CHOLESKY_INVERSE_H
#define CHOLESKY_INVERSE_H

#include "hls_linear_algebra.h"

const unsigned ROWS_COLS_A = 3;

typedef float MATRIX_IN_T;
typedef float MATRIX_OUT_T;

typedef hls::cholesky_inverse_traits<ROWS_COLS_A, MATRIX_IN_T, MATRIX_OUT_T> DEFAULT_CHOL_INV_TRAITS;

struct CHOL_INV_CONFIG : DEFAULT_CHOL_INV_TRAITS {
  struct CHOLESKY_TRAITS : hls::cholesky_traits<false,ROWS_COLS_A, MATRIX_IN_T, DEFAULT_CHOL_INV_TRAITS::CHOLESKY_OUT> {
    static const int ARCH = 2;
  };
  struct BACK_SUBSTITUTE_TRAITS : hls::back_substitute_traits<ROWS_COLS_A,DEFAULT_CHOL_INV_TRAITS::CHOLESKY_OUT,DEFAULT_CHOL_INV_TRAITS::BACK_SUBSTITUTE_OUT> {
    static const int ARCH = 1;
  };
  struct MATRIX_MULTIPLY_TRAITS : hls::matrix_multiply_traits<hls::NoTranspose,hls::ConjugateTranspose,ROWS_COLS_A,ROWS_COLS_A,ROWS_COLS_A,ROWS_COLS_A,DEFAULT_CHOL_INV_TRAITS::BACK_SUBSTITUTE_OUT,MATRIX_OUT_T> {
    static const int ARCH = 1;
  };
};

int cholesky_alt_inverse_top(MATRIX_IN_T  A[ROWS_COLS_A][ROWS_COLS_A],
                             MATRIX_OUT_T InverseA[ROWS_COLS_A][ROWS_COLS_A]);

#endif

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689