///////////////////////////////////////////////////////////////////////////////
//
// (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//     
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

///////////////////////////////////////////////////////////////////////////////
//
// File name:    srio_gt_wrapper_v6_4x.v
// Rev:          5.6
// Description:  This module instances the GTX tiles to implement the
//               required four transceivers which perform the PMA functions
//               of the Serial RapidIO core.
//
///////////////////////////////////////////////////////////////////////////////

`resetall
`timescale 1 ps / 1 ps

module srio_gt_wrapper_v6_4x
  #(
    parameter Tcq = 100
  )
  ( input         REFCLK,
    input         RXUSRCLK,
    input         RXUSRCLK2,
    input         TXUSRCLK,
    input         TXUSRCLK2,
    input         GTXRESET,
    input         RXBUFRST,

    input         RXN0,
    input         RXN1,
    input         RXN2,
    input         RXN3,
    input         RXP0,
    input         RXP1,
    input         RXP2,
    input         RXP3,

    input         TXINHIBIT_02,
    input         TXINHIBIT_13,
    input         ENCHANSYNC,
    input  [15:0] TXDATA0,
    input  [15:0] TXDATA1,
    input  [15:0] TXDATA2,
    input  [15:0] TXDATA3,
    input  [1:0]  TXCHARISK0,
    input  [1:0]  TXCHARISK1,
    input  [1:0]  TXCHARISK2,
    input  [1:0]  TXCHARISK3,

    output        TXN0,
    output        TXN1,
    output        TXN2,
    output        TXN3,
    output        TXP0,
    output        TXP1,
    output        TXP2,
    output        TXP3,

    output        PLLLKDET,
    output [15:0] RXDATA0,
    output [15:0] RXDATA1,
    output [15:0] RXDATA2,
    output [15:0] RXDATA3,
    output [1:0]  RXCHARISK0,
    output [1:0]  RXCHARISK1,
    output [1:0]  RXCHARISK2,
    output [1:0]  RXCHARISK3,
    output [1:0]  RXDISPERR0,
    output [1:0]  RXDISPERR1,
    output [1:0]  RXDISPERR2,
    output [1:0]  RXDISPERR3,
    output [1:0]  RXNOTINTABLE0,
    output [1:0]  RXNOTINTABLE1,
    output [1:0]  RXNOTINTABLE2,
    output [1:0]  RXNOTINTABLE3,
    output reg    RXBUFERR,
    output        CHBONDDONE0,
    output        CHBONDDONE1,
    output        CHBONDDONE2,
    output        CHBONDDONE3
  );

wire        GND;
wire [63:0] GND_VEC;
wire        VCC;
wire [1:0]  TXCHARISK0_swap;
wire [1:0]  TXCHARISK1_swap;
wire [1:0]  TXCHARISK2_swap;
wire [1:0]  TXCHARISK3_swap;
wire [1:0]  RXCHARISK0_swap;
wire [1:0]  RXCHARISK1_swap;
wire [1:0]  RXCHARISK2_swap;
wire [1:0]  RXCHARISK3_swap;
wire [1:0]  RXDISPERR0_swap;
wire [1:0]  RXDISPERR1_swap;
wire [1:0]  RXDISPERR2_swap;
wire [1:0]  RXDISPERR3_swap;
wire [1:0]  RXNOTINTABLE0_swap;
wire [1:0]  RXNOTINTABLE1_swap;
wire [1:0]  RXNOTINTABLE2_swap;
wire [1:0]  RXNOTINTABLE3_swap;
wire        rxresetdone0;
wire        rxresetdone1;
wire        rxresetdone2;
wire        rxresetdone3;
wire        txresetdone0;
wire        txresetdone1;
wire        txresetdone2;
wire        txresetdone3;
wire [3:0]  rxchanbondo0;
wire [3:0]  rxchanbondo2;
wire [2:0]  RXBUFSTATUS0;
wire [2:0]  RXBUFSTATUS1;
wire [2:0]  RXBUFSTATUS2;
wire [2:0]  RXBUFSTATUS3;
wire [1:0]  TXBUFSTATUS0;
wire [1:0]  TXBUFSTATUS1;
wire [1:0]  TXBUFSTATUS2;
wire [1:0]  TXBUFSTATUS3;

reg         txreset0;
reg         txreset1;
reg         txreset2;
reg         txreset3;
reg         rxbuferr0;
reg         rxbuferr1;
reg         rxbuferr2;
reg         rxbuferr3;
reg         rxcdrreset0;
reg         rxcdrreset1;
reg         rxcdrreset2;
reg         rxcdrreset3;
reg         txinhibit02_q;
reg         txinhibit13_q;
reg         fall_txinhibit02;
reg         fall_txinhibit13;
reg         fall_txinhibit02_q;
reg         fall_txinhibit13_q;


assign GND     = 1'b0;
assign GND_VEC = 64'h0000000000000000;
assign VCC     = 1'b1;

// Bit order must be reversed
assign TXCHARISK0_swap[0] = TXCHARISK0[1];
assign TXCHARISK0_swap[1] = TXCHARISK0[0];
assign TXCHARISK1_swap[0] = TXCHARISK1[1];
assign TXCHARISK1_swap[1] = TXCHARISK1[0];
assign TXCHARISK2_swap[0] = TXCHARISK2[1];
assign TXCHARISK2_swap[1] = TXCHARISK2[0];
assign TXCHARISK3_swap[0] = TXCHARISK3[1];
assign TXCHARISK3_swap[1] = TXCHARISK3[0];

assign RXCHARISK0[0] = RXCHARISK0_swap[1] && ~(RXDISPERR0_swap[1] || RXNOTINTABLE0_swap[1]);
assign RXCHARISK0[1] = RXCHARISK0_swap[0] && ~(RXDISPERR0_swap[0] || RXNOTINTABLE0_swap[0]);
assign RXCHARISK1[0] = RXCHARISK1_swap[1] && ~(RXDISPERR1_swap[1] || RXNOTINTABLE1_swap[1]);
assign RXCHARISK1[1] = RXCHARISK1_swap[0] && ~(RXDISPERR1_swap[0] || RXNOTINTABLE1_swap[0]);
assign RXCHARISK2[0] = RXCHARISK2_swap[1] && ~(RXDISPERR2_swap[1] || RXNOTINTABLE2_swap[1]);
assign RXCHARISK2[1] = RXCHARISK2_swap[0] && ~(RXDISPERR2_swap[0] || RXNOTINTABLE2_swap[0]);
assign RXCHARISK3[0] = RXCHARISK3_swap[1] && ~(RXDISPERR3_swap[1] || RXNOTINTABLE3_swap[1]);
assign RXCHARISK3[1] = RXCHARISK3_swap[0] && ~(RXDISPERR3_swap[0] || RXNOTINTABLE3_swap[0]);

assign RXDISPERR0[0] = RXDISPERR0_swap[1] || ~rxresetdone0;
assign RXDISPERR0[1] = RXDISPERR0_swap[0] || ~rxresetdone0;
assign RXDISPERR1[0] = RXDISPERR1_swap[1] || ~rxresetdone1;
assign RXDISPERR1[1] = RXDISPERR1_swap[0] || ~rxresetdone1;
assign RXDISPERR2[0] = RXDISPERR2_swap[1] || ~rxresetdone2;
assign RXDISPERR2[1] = RXDISPERR2_swap[0] || ~rxresetdone2;
assign RXDISPERR3[0] = RXDISPERR3_swap[1] || ~rxresetdone3;
assign RXDISPERR3[1] = RXDISPERR3_swap[0] || ~rxresetdone3;

assign RXNOTINTABLE0[0] = RXNOTINTABLE0_swap[1];
assign RXNOTINTABLE0[1] = RXNOTINTABLE0_swap[0];
assign RXNOTINTABLE1[0] = RXNOTINTABLE1_swap[1];
assign RXNOTINTABLE1[1] = RXNOTINTABLE1_swap[0];
assign RXNOTINTABLE2[0] = RXNOTINTABLE2_swap[1];
assign RXNOTINTABLE2[1] = RXNOTINTABLE2_swap[0];
assign RXNOTINTABLE3[0] = RXNOTINTABLE3_swap[1];
assign RXNOTINTABLE3[1] = RXNOTINTABLE3_swap[0];


// Indicate RXBUFERR on a per lane bases when the RX Buffer either overflows
// or underflows.
  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxbuferr0 <= #Tcq 1'b0;
    else
      rxbuferr0 <= #Tcq (RXBUFSTATUS0 == 3'b101) || (RXBUFSTATUS0 == 3'b110);
  end

  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxbuferr1 <= #Tcq 1'b0;
    else
      rxbuferr1 <= #Tcq (RXBUFSTATUS1 == 3'b101) || (RXBUFSTATUS1 == 3'b110);
  end

  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxbuferr2 <= #Tcq 1'b0;
    else
      rxbuferr2 <= #Tcq (RXBUFSTATUS2 == 3'b101) || (RXBUFSTATUS2 == 3'b110);
  end

  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxbuferr3 <= #Tcq 1'b0;
    else
      rxbuferr3 <= #Tcq (RXBUFSTATUS3 == 3'b101) || (RXBUFSTATUS3 == 3'b110);
  end

// Drive main RXBUFERR to the core from Lane 2 if Lane 0 is in
// elecidle, otherwise generate RXBUFERR from a Lane 0 Rx Buffer
// Error.  RXBUFERR will be issued if the core is in x4 mode
// (indicated by CHBONDDONE on all four lanes) and a Rx Buffer
// Error occurs on any of the lanes.
  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      RXBUFERR <= #Tcq 1'b0;
    else begin
      if (fall_txinhibit02_q || fall_txinhibit13_q) 
        RXBUFERR <= 1'b1;
      else if (CHBONDDONE0 && CHBONDDONE1 && CHBONDDONE2 && CHBONDDONE3)
        RXBUFERR <= #Tcq rxbuferr0 || rxbuferr1 || rxbuferr2 || rxbuferr3;
      else
        RXBUFERR <= #Tcq rxbuferr0;
    end
  end

// Reset the RXCDRRESET when the lane indicates that a RXBUFERR occurred,
// or there is a resulting RXBUFRST from the core indicating that Lane 0
// or Lane 2 received a RXBUFERR.
  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxcdrreset0 <= #Tcq 1'b0;
    else
      rxcdrreset0 <= #Tcq RXBUFRST;
  end

  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxcdrreset1 <= #Tcq 1'b0;
    else
      rxcdrreset1 <= #Tcq RXBUFRST;
  end

  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxcdrreset2 <= #Tcq 1'b0;
    else
      rxcdrreset2 <= #Tcq RXBUFRST;
  end

  always @(posedge RXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      rxcdrreset3 <= #Tcq 1'b0;
    else
      rxcdrreset3 <= #Tcq RXBUFRST;
  end


// Determine falling edge of TXINHIBIT and force a TXRESET
  always @(posedge TXUSRCLK2) begin
    txinhibit02_q <= #Tcq TXINHIBIT_02;
    txinhibit13_q <= #Tcq TXINHIBIT_13;
  end

  always @(posedge TXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET) begin
      fall_txinhibit02    <= #Tcq 1'b0;
      fall_txinhibit13    <= #Tcq 1'b0;
      fall_txinhibit02_q  <= #Tcq 1'b0;
      fall_txinhibit13_q  <= #Tcq 1'b0;
    end
    else begin
      fall_txinhibit02    <= #Tcq txinhibit02_q && ~TXINHIBIT_02;
      fall_txinhibit13    <= #Tcq txinhibit13_q && ~TXINHIBIT_13;
      fall_txinhibit02_q  <= #Tcq fall_txinhibit02;
      fall_txinhibit13_q  <= #Tcq fall_txinhibit13;
    end
  end

// Issue TXRESET when TXBUFSTATUS indicates that the TX Buffer has either
// overflowed or underflowed OR upon coming out of TXINHIBIT.
  always @(posedge TXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      txreset0 <= #Tcq 1'b0;
    else
      txreset0 <= #Tcq txresetdone0 & (TXBUFSTATUS0[1] || fall_txinhibit02_q);
  end

  always @(posedge TXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      txreset1 <= #Tcq 1'b0;
    else
      txreset1 <= #Tcq txresetdone1 & (TXBUFSTATUS1[1] || fall_txinhibit02_q);
  end

  always @(posedge TXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      txreset2 <= #Tcq 1'b0;
    else
      txreset2 <= #Tcq txresetdone2 & (TXBUFSTATUS2[1] || fall_txinhibit02_q);
  end

  always @(posedge TXUSRCLK2 or posedge GTXRESET) begin
    if (GTXRESET)
      txreset3 <= #Tcq 1'b0;
    else
      txreset3 <= #Tcq txresetdone3 & (TXBUFSTATUS3[1] || fall_txinhibit02_q);
  end


  GTX_WRAPPER #
  (
      // Simulation attributes
      .WRAPPER_SIM_GTXRESET_SPEEDUP (1)
  )
  gtx_wrapper
  (
      //_________________________________________________________________________
      //_________________________________________________________________________
      //GTX0  (Location)

      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX0_LOOPBACK_IN           (GND_VEC[2:0]),
      .GTX0_RXPOWERDOWN_IN        (GND_VEC[1:0]),
      .GTX0_TXPOWERDOWN_IN        (GND_VEC[1:0]),
      //--------------------- Receive Ports - 8b10b Decoder ----------------------
      .GTX0_RXCHARISCOMMA_OUT     (),
      .GTX0_RXCHARISK_OUT         (RXCHARISK0_swap[1:0]),
      .GTX0_RXDISPERR_OUT         (RXDISPERR0_swap),
      .GTX0_RXNOTINTABLE_OUT      (RXNOTINTABLE0_swap),
      //----------------- Receive Ports - Channel Bonding Ports ------------------
      .GTX0_RXCHANBONDSEQ_OUT     (),
      .GTX0_RXCHBONDI_IN        ({4{GND}}),
      .GTX0_RXCHBONDLEVEL_IN    (3'b010),
      .GTX0_RXCHBONDMASTER_IN   (VCC),
      .GTX0_RXCHBONDO_OUT       (rxchanbondo0),
      .GTX0_RXCHBONDSLAVE_IN    (GND),
      .GTX0_RXENCHANSYNC_IN     (ENCHANSYNC),
      //----------------- Receive Ports - Clock Correction Ports -----------------
      .GTX0_RXCLKCORCNT_OUT       (),
      //------------- Receive Ports - Comma Detection and Alignment --------------
      .GTX0_RXBYTEISALIGNED_OUT   (),
      .GTX0_RXBYTEREALIGN_OUT     (),
      .GTX0_RXCOMMADET_OUT        (),
      .GTX0_RXENMCOMMAALIGN_IN    (VCC),
      .GTX0_RXENPCOMMAALIGN_IN    (VCC),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX0_RXDATA_OUT            ({RXDATA0[7:0], RXDATA0[15:8]}),
      .GTX0_RXRESET_IN            (GND),
      .GTX0_RXUSRCLK2_IN          (RXUSRCLK2),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX0_RXCDRRESET_IN         (rxcdrreset0),
      .GTX0_RXELECIDLE_OUT        (),
      .GTX0_RXN_IN                (RXN0),
      .GTX0_RXP_IN                (RXP0),
      //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
      .GTX0_RXBUFRESET_IN         (GND),
      .GTX0_RXBUFSTATUS_OUT       (RXBUFSTATUS0),
      .GTX0_RXCHANISALIGNED_OUT   (CHBONDDONE0),
      .GTX0_RXCHANREALIGN_OUT     (),
      //------------- Receive Ports - RX Loss-of-sync State Machine --------------
      .GTX0_RXLOSSOFSYNC_OUT      (),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX0_GTXRXRESET_IN         (GTXRESET),
      .GTX0_MGTREFCLKRX_IN        (REFCLK),
      .GTX0_PLLRXRESET_IN         (GND),
      .GTX0_RXPLLLKDET_OUT        (PLLLKDET),
      .GTX0_RXRESETDONE_OUT       (rxresetdone0),
      //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
      .GTX0_TXCHARISK_IN          (TXCHARISK0_swap),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX0_TXDATA_IN             ({TXDATA0[7:0], TXDATA0[15:8]}),
      .GTX0_TXOUTCLK_OUT          (),
      .GTX0_TXRESET_IN            (txreset0),
      .GTX0_TXUSRCLK2_IN          (RXUSRCLK2),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX0_TXINHIBIT_IN          (TXINHIBIT_02),
      .GTX0_TXN_OUT               (TXN0),
      .GTX0_TXP_OUT               (TXP0),
      //----------- Transmit Ports - TX Elastic Buffer and Phase Alignment ------------
      .GTX0_TXBUFSTATUS_OUT       (TXBUFSTATUS0),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX0_GTXTXRESET_IN         (GTXRESET),
      .GTX0_TXRESETDONE_OUT       (txresetdone0),


      //_________________________________________________________________________
      //_________________________________________________________________________
      //GTX1  (Location)

      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX1_LOOPBACK_IN           (GND_VEC[2:0]),
      .GTX1_RXPOWERDOWN_IN        (GND_VEC[1:0]),
      .GTX1_TXPOWERDOWN_IN        (GND_VEC[1:0]),
      //--------------------- Receive Ports - 8b10b Decoder ----------------------
      .GTX1_RXCHARISCOMMA_OUT     (),
      .GTX1_RXCHARISK_OUT         (RXCHARISK1_swap[1:0]),
      .GTX1_RXDISPERR_OUT         (RXDISPERR1_swap),
      .GTX1_RXNOTINTABLE_OUT      (RXNOTINTABLE1_swap),
      //----------------- Receive Ports - Channel Bonding Ports ------------------
      .GTX1_RXCHANBONDSEQ_OUT     (),
      .GTX1_RXCHBONDI_IN        (rxchanbondo2),
      .GTX1_RXCHBONDLEVEL_IN    (3'b000),
      .GTX1_RXCHBONDMASTER_IN   (GND),
      .GTX1_RXCHBONDO_OUT       (),
      .GTX1_RXCHBONDSLAVE_IN    (VCC),
      .GTX1_RXENCHANSYNC_IN     (VCC),
      //----------------- Receive Ports - Clock Correction Ports -----------------
      .GTX1_RXCLKCORCNT_OUT       (),
      //------------- Receive Ports - Comma Detection and Alignment --------------
      .GTX1_RXBYTEISALIGNED_OUT   (),
      .GTX1_RXBYTEREALIGN_OUT     (),
      .GTX1_RXCOMMADET_OUT        (),
      .GTX1_RXENMCOMMAALIGN_IN    (VCC),
      .GTX1_RXENPCOMMAALIGN_IN    (VCC),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX1_RXDATA_OUT            ({RXDATA1[7:0], RXDATA1[15:8]}),
      .GTX1_RXRESET_IN            (GND),
      .GTX1_RXUSRCLK2_IN          (RXUSRCLK2),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX1_RXCDRRESET_IN         (rxcdrreset1),
      .GTX1_RXELECIDLE_OUT        (),
      .GTX1_RXN_IN                (RXN1),
      .GTX1_RXP_IN                (RXP1),
      //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
      .GTX1_RXBUFRESET_IN         (GND),
      .GTX1_RXBUFSTATUS_OUT       (RXBUFSTATUS1),
      .GTX1_RXCHANISALIGNED_OUT   (CHBONDDONE1),
      .GTX1_RXCHANREALIGN_OUT     (),
      //------------- Receive Ports - RX Loss-of-sync State Machine --------------
      .GTX1_RXLOSSOFSYNC_OUT      (),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX1_GTXRXRESET_IN         (GTXRESET),
      .GTX1_MGTREFCLKRX_IN        (REFCLK),
      .GTX1_PLLRXRESET_IN         (GND),
      .GTX1_RXPLLLKDET_OUT        (),
      .GTX1_RXRESETDONE_OUT       (rxresetdone1),
      //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
      .GTX1_TXCHARISK_IN          (TXCHARISK1_swap),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX1_TXDATA_IN             ({TXDATA1[7:0], TXDATA1[15:8]}),
      .GTX1_TXOUTCLK_OUT          (),
      .GTX1_TXRESET_IN            (txreset1),
      .GTX1_TXUSRCLK2_IN          (RXUSRCLK2),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX1_TXINHIBIT_IN          (TXINHIBIT_13),
      .GTX1_TXN_OUT               (TXN1),
      .GTX1_TXP_OUT               (TXP1),
      //----------- Transmit Ports - TX Elastic Buffer and Phase Alignment ------------
      .GTX1_TXBUFSTATUS_OUT       (TXBUFSTATUS1),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX1_GTXTXRESET_IN         (GTXRESET),
      .GTX1_TXRESETDONE_OUT       (txresetdone1),

      //_________________________________________________________________________
      //_________________________________________________________________________
      //GTX2  (Location)

      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX2_LOOPBACK_IN           (GND_VEC[2:0]),
      .GTX2_RXPOWERDOWN_IN        (GND_VEC[1:0]),
      .GTX2_TXPOWERDOWN_IN        (GND_VEC[1:0]),
      //--------------------- Receive Ports - 8b10b Decoder ----------------------
      .GTX2_RXCHARISCOMMA_OUT     (),
      .GTX2_RXCHARISK_OUT         (RXCHARISK2_swap[1:0]),
      .GTX2_RXDISPERR_OUT         (RXDISPERR2_swap),
      .GTX2_RXNOTINTABLE_OUT      (RXNOTINTABLE2_swap),
      //----------------- Receive Ports - Channel Bonding Ports ------------------
      .GTX2_RXCHANBONDSEQ_OUT     (),
      .GTX2_RXCHBONDI_IN        (rxchanbondo0),
      .GTX2_RXCHBONDLEVEL_IN    (3'b001),
      .GTX2_RXCHBONDMASTER_IN   (GND),
      .GTX2_RXCHBONDO_OUT       (rxchanbondo2),
      .GTX2_RXCHBONDSLAVE_IN    (VCC),
      .GTX2_RXENCHANSYNC_IN     (VCC),
      //----------------- Receive Ports - Clock Correction Ports -----------------
      .GTX2_RXCLKCORCNT_OUT       (),
      //------------- Receive Ports - Comma Detection and Alignment --------------
      .GTX2_RXBYTEISALIGNED_OUT   (),
      .GTX2_RXBYTEREALIGN_OUT     (),
      .GTX2_RXCOMMADET_OUT        (),
      .GTX2_RXENMCOMMAALIGN_IN    (VCC),
      .GTX2_RXENPCOMMAALIGN_IN    (VCC),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX2_RXDATA_OUT            ({RXDATA2[7:0], RXDATA2[15:8]}),
      .GTX2_RXRESET_IN            (GND),
      .GTX2_RXUSRCLK2_IN          (RXUSRCLK2),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX2_RXCDRRESET_IN         (rxcdrreset2),
      .GTX2_RXELECIDLE_OUT        (),
      .GTX2_RXN_IN                (RXN2),
      .GTX2_RXP_IN                (RXP2),
      //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
      .GTX2_RXBUFRESET_IN         (GND),
      .GTX2_RXBUFSTATUS_OUT       (RXBUFSTATUS2),
      .GTX2_RXCHANISALIGNED_OUT   (CHBONDDONE2),
      .GTX2_RXCHANREALIGN_OUT     (),
      //------------- Receive Ports - RX Loss-of-sync State Machine --------------
      .GTX2_RXLOSSOFSYNC_OUT      (),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX2_GTXRXRESET_IN         (GTXRESET),
      .GTX2_MGTREFCLKRX_IN        (REFCLK),
      .GTX2_PLLRXRESET_IN         (GND),
      .GTX2_RXPLLLKDET_OUT        (),
      .GTX2_RXRESETDONE_OUT       (rxresetdone2),
      //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
      .GTX2_TXCHARISK_IN          (TXCHARISK2_swap),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX2_TXDATA_IN             ({TXDATA2[7:0], TXDATA2[15:8]}),
      .GTX2_TXOUTCLK_OUT          (),
      .GTX2_TXRESET_IN            (txreset2),
      .GTX2_TXUSRCLK2_IN          (RXUSRCLK2),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX2_TXINHIBIT_IN          (TXINHIBIT_02),
      .GTX2_TXN_OUT               (TXN2),
      .GTX2_TXP_OUT               (TXP2),
      //----------- Transmit Ports - TX Elastic Buffer and Phase Alignment ------------
      .GTX2_TXBUFSTATUS_OUT       (TXBUFSTATUS2),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX2_GTXTXRESET_IN         (GTXRESET),
      .GTX2_TXRESETDONE_OUT       (txresetdone2),

      //_________________________________________________________________________
      //_________________________________________________________________________
      //GTX3  (Location)

      //---------------------- Loopback and Powerdown Ports ----------------------
      .GTX3_LOOPBACK_IN           (GND_VEC[2:0]),
      .GTX3_RXPOWERDOWN_IN        (GND_VEC[1:0]),
      .GTX3_TXPOWERDOWN_IN        (GND_VEC[1:0]),
      //--------------------- Receive Ports - 8b10b Decoder ----------------------
      .GTX3_RXCHARISCOMMA_OUT     (),
      .GTX3_RXCHARISK_OUT         (RXCHARISK3_swap[1:0]),
      .GTX3_RXDISPERR_OUT         (RXDISPERR3_swap),
      .GTX3_RXNOTINTABLE_OUT      (RXNOTINTABLE3_swap),
      //----------------- Receive Ports - Channel Bonding Ports ------------------
      .GTX3_RXCHANBONDSEQ_OUT     (),
      .GTX3_RXCHBONDI_IN          (rxchanbondo2),
      .GTX3_RXCHBONDLEVEL_IN      (3'b000),
      .GTX3_RXCHBONDMASTER_IN     (GND),
      .GTX3_RXCHBONDO_OUT         (),
      .GTX3_RXCHBONDSLAVE_IN      (VCC),
      .GTX3_RXENCHANSYNC_IN       (VCC),
      //----------------- Receive Ports - Clock Correction Ports -----------------
      .GTX3_RXCLKCORCNT_OUT       (),
      //------------- Receive Ports - Comma Detection and Alignment --------------
      .GTX3_RXBYTEISALIGNED_OUT   (),
      .GTX3_RXBYTEREALIGN_OUT     (),
      .GTX3_RXCOMMADET_OUT        (),
      .GTX3_RXENMCOMMAALIGN_IN    (VCC),
      .GTX3_RXENPCOMMAALIGN_IN    (VCC),
      //----------------- Receive Ports - RX Data Path interface -----------------
      .GTX3_RXDATA_OUT            ({RXDATA3[7:0], RXDATA3[15:8]}),
      .GTX3_RXRESET_IN            (GND),
      .GTX3_RXUSRCLK2_IN          (RXUSRCLK2),
      //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
      .GTX3_RXCDRRESET_IN         (rxcdrreset3),
      .GTX3_RXELECIDLE_OUT        (),
      .GTX3_RXN_IN                (RXN3),
      .GTX3_RXP_IN                (RXP3),
      //------ Receive Ports - RX Elastic Buffer and Phase Alignment Ports -------
      .GTX3_RXBUFRESET_IN         (GND),
      .GTX3_RXBUFSTATUS_OUT       (RXBUFSTATUS3),
      .GTX3_RXCHANISALIGNED_OUT   (CHBONDDONE3),
      .GTX3_RXCHANREALIGN_OUT     (),
      //------------- Receive Ports - RX Loss-of-sync State Machine --------------
      .GTX3_RXLOSSOFSYNC_OUT      (),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX3_GTXRXRESET_IN         (GTXRESET),
      .GTX3_MGTREFCLKRX_IN        (REFCLK),
      .GTX3_PLLRXRESET_IN         (GND),
      .GTX3_RXPLLLKDET_OUT        (),
      .GTX3_RXRESETDONE_OUT       (rxresetdone3),
      //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
      .GTX3_TXCHARISK_IN          (TXCHARISK3_swap),
      //---------------- Transmit Ports - TX Data Path interface -----------------
      .GTX3_TXDATA_IN             ({TXDATA3[7:0], TXDATA3[15:8]}),
      .GTX3_TXOUTCLK_OUT          (),
      .GTX3_TXRESET_IN            (txreset3),
      .GTX3_TXUSRCLK2_IN          (RXUSRCLK2),
      //------------- Transmit Ports - TX Driver and OOB signalling --------------
      .GTX3_TXINHIBIT_IN          (TXINHIBIT_13),
      .GTX3_TXN_OUT               (TXN3),
      .GTX3_TXP_OUT               (TXP3),
      //----------- Transmit Ports - TX Elastic Buffer and Phase Alignment ------------
      .GTX3_TXBUFSTATUS_OUT       (TXBUFSTATUS3),
      //------------------- Receive Ports - RX PLL Ports --------------------
      .GTX3_GTXTXRESET_IN         (GTXRESET),
      .GTX3_TXRESETDONE_OUT       (txresetdone3)
  );

endmodule
