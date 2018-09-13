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
 *     (c) Copyright 2014 Xilinx Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

//Example testbench for the HLS DSP library QAM_DEMOD function

#include "qam_demod.h"

int main() {
  //define golden data based on parameters from qam_mod_top.h
  const hls::QPSK::t_star QPSK_GOLD[4] = {{ 1, 1},{ 1,-1},{-1, 1},{-1,-1}};
  const hls::QAM16::t_star QAM16_GOLD[16] = { { 1, 1}, { 1, 3}, { 3, 1}, { 3, 3},
                                              { 1,-1}, { 1,-3}, { 3,-1}, { 3,-3},
                                              {-1, 1}, {-1, 3}, {-3, 1}, {-3, 3},
                                              {-1,-1}, {-1,-3}, {-3,-1}, {-3,-3}
  };

  const hls::QAM64::t_star QAM64_GOLD[64] = {
    { 3, 3}, { 3, 1}, { 1, 3}, { 1, 1},
    { 3, 5}, { 3, 7}, { 1, 5}, { 1, 7},
    { 5, 3}, { 5, 1}, { 7, 3}, { 7, 1},
    { 5, 5}, { 5, 7}, { 7, 5}, { 7, 7},
    { 3,-3}, { 3,-1}, { 1,-3}, { 1,-1},
    { 3,-5}, { 3,-7}, { 1,-5}, { 1,-7},
    { 5,-3}, { 5,-1}, { 7,-3}, { 7,-1},
    { 5,-5}, { 5,-7}, { 7,-5}, { 7,-7},
    {-3, 3}, {-3, 1}, {-1, 3}, {-1, 1},
    {-3, 5}, {-3, 7}, {-1, 5}, {-1, 7},
    {-5, 3}, {-5, 1}, {-7, 3}, {-7, 1},
    {-5, 5}, {-5, 7}, {-7, 5}, {-7, 7},
    {-3,-3}, {-3,-1}, {-1,-3}, {-1,-1},
    {-3,-5}, {-3,-7}, {-1,-5}, {-1,-7},
    {-5,-3}, {-5,-1}, {-7,-3}, {-7,-1},
    {-5,-5}, {-5,-7}, {-7,-5}, {-7,-7}
  };

  typedef std::complex< ap_int<INPUT_WIDTH> > t_local_in;
  typedef CONSTELLATION::t_symbol t_local_out;
  hls::stream< t_local_in  > InputData("Input Data");
  hls::stream< t_local_out > OutputData("Output Data");
  t_local_in                 sampleIn;
  t_local_out                sampleOut;

  const int pointsPerAxis = 1 << (hls::qam_demod<CONSTELLATION,INPUT_WIDTH>::get_symbol_width()/2);
  const int offset = 1 - pointsPerAxis; //it just is! QPSK -> -1, QAM16 -> -3. QAM64 -> -7
  int shift;
  std::cout << "points per axis = " << pointsPerAxis << std::endl;
  std::cout << "offset = " << offset << std::endl;

  for (int y = 0; y < pointsPerAxis; y++) {
    for (int x = 0; x < pointsPerAxis; x++) {
      /////////////////////
      //Create the stimulus
      /////////////////////
      shift = INPUT_WIDTH - CONSTELLATION::SYMBOL_WIDTH/2-1; //the -1 is because a factor of 2 is in the X*2 following.
      sampleIn.real((x*2 + offset) << shift);
      sampleIn.imag((y*2 + offset) << shift);

      InputData << sampleIn;

      ///////////////////
      //Execute the model
      ///////////////////
      qam_demod_top(InputData, OutputData);

      /////////////////
      //Test the output
      /////////////////
      if (OutputData.size() != 0) {
        sampleOut = OutputData.read();

        switch(CONSTELLATION::QAMTYPE) {
        case 0:
          if (sampleIn.real() != QPSK_GOLD[sampleOut].real() || sampleIn.imag() != QPSK_GOLD[sampleOut].imag()) {
            std::cout << "ERROR: mismatch in sample. Got " << sampleOut << " from real = " << x << " imag = " << y << std::endl;
            return 1;
          }
          break;
        case 1:
          if (sampleIn.real() != QAM16_GOLD[sampleOut].real() || sampleIn.imag() != QAM16_GOLD[sampleOut].imag()) {
            std::cout << "ERROR: mismatch in sample. Got " << sampleOut << " from real = " << x << " imag = " << y << std::endl;
            return 1;
          }
          break;
        case 2:
          if (sampleIn.real() != QAM64_GOLD[sampleOut].real() || sampleIn.imag() != QAM64_GOLD[sampleOut].imag()) {
            std::cout << "ERROR: mismatch in sample. Got " << sampleOut << " from real = " << x << " imag = " << y << std::endl;
            return 1;
          }
          break;
        default:
          std::cout << "ERROR: Invalid QAMTYPE" << std::endl;
          return 2;
        }
      } //end if OutputData.size
    } //end for x
  } //end for y
  //Report out
  std::cout << "Test completed: PASS" << std::endl;
  return 0;

} //end of function main

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
