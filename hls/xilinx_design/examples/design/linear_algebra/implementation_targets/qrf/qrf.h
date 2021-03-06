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

#ifndef QRF_H
#define QRF_H

#include "hls_linear_algebra.h"

const int A_ROWS = 16;
const int A_COLS = 16;

// Define input/output types
// typedef float MATRIX_IN_T;
// typedef float MATRIX_OUT_T;
typedef hls::x_complex<float> MATRIX_IN_T;
typedef hls::x_complex<float> MATRIX_OUT_T;

// Define configuration class for each implementation "target"
struct QRF_CONFIG_SMALL : hls::qrf_traits<A_ROWS,A_COLS,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int CALC_ROT_II = 8;
  static const int UPDATE_II= 8;
};
struct QRF_CONFIG_FAST : hls::qrf_traits<A_ROWS,A_COLS,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int UPDATE_II= 2;
};
struct QRF_CONFIG_FASTER : hls::qrf_traits<A_ROWS,A_COLS,MATRIX_IN_T,MATRIX_OUT_T>{
  static const int UPDATE_II= 2;
  static const int UNROLL_FACTOR= 2;
};
// Declare top-level functions for each implementation "target"
void qrf_small(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                     MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                     MATRIX_OUT_T R[A_ROWS][A_COLS]);
void qrf_balanced(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                        MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                        MATRIX_OUT_T R[A_ROWS][A_COLS]);
void qrf_fast(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                    MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                    MATRIX_OUT_T R[A_ROWS][A_COLS]);
void qrf_faster(const MATRIX_IN_T  A[A_ROWS][A_COLS],
                      MATRIX_OUT_T Q[A_ROWS][A_ROWS],
                      MATRIX_OUT_T R[A_ROWS][A_COLS]);

#endif

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
