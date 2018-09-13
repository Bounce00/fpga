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

//Example testbench for the HLS DSP library QAM_MOD function

#include "qam_mod.h"

//Parameters of test

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

  typedef CONSTELLATION::t_symbol t_local_in;
  typedef hls::qam_mod<CONSTELLATION, OUTPUT_WIDTH>::t_iq t_local_out;
  hls::stream< t_local_in >   InputData("Input Data");
  hls::stream< t_local_out >  OutputData("Output Data");
  t_local_out                 sampleOut;


  for (int i = 0; i < (1<<CONSTELLATION::SYMBOL_WIDTH); i++) {
    /////////////////////
    //Create the stimulus
    /////////////////////
    InputData << (t_local_in)i;

    ///////////////////
    //Execute the model
    ///////////////////
    qam_mod_top(InputData, OutputData);

    /////////////////
    //Test the output
    /////////////////
    if (OutputData.size() != 0) {
      sampleOut = OutputData.read();

      switch(CONSTELLATION::QAMTYPE) {
      case 0:
        if (sampleOut.real() >> (OUTPUT_WIDTH-CONSTELLATION::STAR_WIDTH) != QPSK_GOLD[i].real() ||
            sampleOut.imag() >> (OUTPUT_WIDTH-CONSTELLATION::STAR_WIDTH) != QPSK_GOLD[i].imag() ){
          std::cout << "ERROR: mismatch in sample " << i << " Got " << sampleOut.real() << "," << sampleOut.imag() << " expected " << QPSK_GOLD[i].real() << "," << QPSK_GOLD[i].imag() << std::endl;
          return 1;
        }
        break;
      case 1:
        if (sampleOut.real() >> (OUTPUT_WIDTH-CONSTELLATION::STAR_WIDTH) != QAM16_GOLD[i].real() ||
            sampleOut.imag() >> (OUTPUT_WIDTH-CONSTELLATION::STAR_WIDTH) != QAM16_GOLD[i].imag() ){
          std::cout << "ERROR: mismatch in sample " << i << " Got " << sampleOut.real() << "," << sampleOut.imag() << " expected " << QAM16_GOLD[i].real() << "," << QAM16_GOLD[i].imag() << std::endl;
          return 1;
        }
        break;
      case 2:
        if (sampleOut.real() >> (OUTPUT_WIDTH-CONSTELLATION::STAR_WIDTH) != QAM64_GOLD[i].real() ||
            sampleOut.imag() >> (OUTPUT_WIDTH-CONSTELLATION::STAR_WIDTH) != QAM64_GOLD[i].imag() ){
          std::cout << "ERROR: mismatch in sample " << i << " Got " << sampleOut.real() << "," << sampleOut.imag() << " expected " << QAM64_GOLD[i].real() << "," << QAM64_GOLD[i].imag() << std::endl;
          return 1;
        }
        break;
      default:
        std::cout << "ERROR: Invalid QAMTYPE" << std::endl;
        return 2;
      }//end of switch(CONSTELLATION::QAMTYPE)
    } //end of if OutputData.size() != 0
  }//end of for i
  //Report out
  std::cout << "Test completed: PASS" << std::endl;
  return 0;

} //end of function main

// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
