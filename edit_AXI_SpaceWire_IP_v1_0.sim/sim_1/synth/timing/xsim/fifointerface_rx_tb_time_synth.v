// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Nov  4 15:41:35 2022
// Host        : stl56jc-MS-7C95 running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/stl56jc/Dokumente/Code/axi_spw_ip_repo/edit_AXI_SpaceWire_IP_v1_0.sim/sim_1/synth/timing/xsim/fifointerface_rx_tb_time_synth.v
// Design      : AXI_SpaceWire_IP_v1_0
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD1
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

(* C_S00_AXI_TX_ADDR_WIDTH = "3" *) (* C_S00_AXI_TX_ARUSER_WIDTH = "0" *) (* C_S00_AXI_TX_AWUSER_WIDTH = "0" *) 
(* C_S00_AXI_TX_BUSER_WIDTH = "0" *) (* C_S00_AXI_TX_DATA_WIDTH = "32" *) (* C_S00_AXI_TX_ID_WIDTH = "1" *) 
(* C_S00_AXI_TX_RUSER_WIDTH = "0" *) (* C_S00_AXI_TX_WUSER_WIDTH = "0" *) (* C_S01_AXI_RX_ADDR_WIDTH = "3" *) 
(* C_S01_AXI_RX_ARUSER_WIDTH = "0" *) (* C_S01_AXI_RX_AWUSER_WIDTH = "0" *) (* C_S01_AXI_RX_BUSER_WIDTH = "0" *) 
(* C_S01_AXI_RX_DATA_WIDTH = "32" *) (* C_S01_AXI_RX_ID_WIDTH = "1" *) (* C_S01_AXI_RX_RUSER_WIDTH = "0" *) 
(* C_S01_AXI_RX_WUSER_WIDTH = "0" *) (* C_S02_AXI_REG_ADDR_WIDTH = "5" *) (* C_S02_AXI_REG_DATA_WIDTH = "32" *) 
(* rxchunk = "1" *) (* rxfifosize_bits = "11" *) (* txfifosize_bits = "11" *) 
(* NotValidForBitStream *)
module AXI_SpaceWire_IP_v1_0
   (clk_logic,
    rxclk,
    txclk,
    rst_logic,
    tc_in,
    tc_out,
    spw_di,
    spw_si,
    spw_do,
    spw_so,
    s00_axi_tx_aclk,
    s00_axi_tx_aresetn,
    s00_axi_tx_awid,
    s00_axi_tx_awaddr,
    s00_axi_tx_awlen,
    s00_axi_tx_awsize,
    s00_axi_tx_awburst,
    s00_axi_tx_awlock,
    s00_axi_tx_awcache,
    s00_axi_tx_awprot,
    s00_axi_tx_awqos,
    s00_axi_tx_awregion,
    s00_axi_tx_awvalid,
    s00_axi_tx_awready,
    s00_axi_tx_wdata,
    s00_axi_tx_wstrb,
    s00_axi_tx_wlast,
    s00_axi_tx_wvalid,
    s00_axi_tx_wready,
    s00_axi_tx_bid,
    s00_axi_tx_bresp,
    s00_axi_tx_bvalid,
    s00_axi_tx_bready,
    s00_axi_tx_arid,
    s00_axi_tx_araddr,
    s00_axi_tx_arlen,
    s00_axi_tx_arsize,
    s00_axi_tx_arburst,
    s00_axi_tx_arlock,
    s00_axi_tx_arcache,
    s00_axi_tx_arprot,
    s00_axi_tx_arqos,
    s00_axi_tx_arregion,
    s00_axi_tx_arvalid,
    s00_axi_tx_arready,
    s00_axi_tx_rid,
    s00_axi_tx_rdata,
    s00_axi_tx_rresp,
    s00_axi_tx_rlast,
    s00_axi_tx_rvalid,
    s00_axi_tx_rready,
    s01_axi_rx_aclk,
    s01_axi_rx_aresetn,
    s01_axi_rx_awid,
    s01_axi_rx_awaddr,
    s01_axi_rx_awlen,
    s01_axi_rx_awsize,
    s01_axi_rx_awburst,
    s01_axi_rx_awlock,
    s01_axi_rx_awcache,
    s01_axi_rx_awprot,
    s01_axi_rx_awqos,
    s01_axi_rx_awregion,
    s01_axi_rx_awvalid,
    s01_axi_rx_awready,
    s01_axi_rx_wdata,
    s01_axi_rx_wstrb,
    s01_axi_rx_wlast,
    s01_axi_rx_wvalid,
    s01_axi_rx_wready,
    s01_axi_rx_bid,
    s01_axi_rx_bresp,
    s01_axi_rx_bvalid,
    s01_axi_rx_bready,
    s01_axi_rx_arid,
    s01_axi_rx_araddr,
    s01_axi_rx_arlen,
    s01_axi_rx_arsize,
    s01_axi_rx_arburst,
    s01_axi_rx_arlock,
    s01_axi_rx_arcache,
    s01_axi_rx_arprot,
    s01_axi_rx_arqos,
    s01_axi_rx_arregion,
    s01_axi_rx_arvalid,
    s01_axi_rx_arready,
    s01_axi_rx_rid,
    s01_axi_rx_rdata,
    s01_axi_rx_rresp,
    s01_axi_rx_rlast,
    s01_axi_rx_rvalid,
    s01_axi_rx_rready,
    s02_axi_reg_aclk,
    s02_axi_reg_aresetn,
    s02_axi_reg_awaddr,
    s02_axi_reg_awprot,
    s02_axi_reg_awvalid,
    s02_axi_reg_awready,
    s02_axi_reg_wdata,
    s02_axi_reg_wstrb,
    s02_axi_reg_wvalid,
    s02_axi_reg_wready,
    s02_axi_reg_bresp,
    s02_axi_reg_bvalid,
    s02_axi_reg_bready,
    s02_axi_reg_araddr,
    s02_axi_reg_arprot,
    s02_axi_reg_arvalid,
    s02_axi_reg_arready,
    s02_axi_reg_rdata,
    s02_axi_reg_rresp,
    s02_axi_reg_rvalid,
    s02_axi_reg_rready);
  input clk_logic;
  input rxclk;
  input txclk;
  input rst_logic;
  input tc_in;
  output tc_out;
  input spw_di;
  input spw_si;
  output spw_do;
  output spw_so;
  input s00_axi_tx_aclk;
  input s00_axi_tx_aresetn;
  input [0:0]s00_axi_tx_awid;
  input [2:0]s00_axi_tx_awaddr;
  input [7:0]s00_axi_tx_awlen;
  input [2:0]s00_axi_tx_awsize;
  input [1:0]s00_axi_tx_awburst;
  input s00_axi_tx_awlock;
  input [3:0]s00_axi_tx_awcache;
  input [2:0]s00_axi_tx_awprot;
  input [3:0]s00_axi_tx_awqos;
  input [3:0]s00_axi_tx_awregion;
  input s00_axi_tx_awvalid;
  output s00_axi_tx_awready;
  input [31:0]s00_axi_tx_wdata;
  input [3:0]s00_axi_tx_wstrb;
  input s00_axi_tx_wlast;
  input s00_axi_tx_wvalid;
  output s00_axi_tx_wready;
  output [0:0]s00_axi_tx_bid;
  output [1:0]s00_axi_tx_bresp;
  output s00_axi_tx_bvalid;
  input s00_axi_tx_bready;
  input [0:0]s00_axi_tx_arid;
  input [2:0]s00_axi_tx_araddr;
  input [7:0]s00_axi_tx_arlen;
  input [2:0]s00_axi_tx_arsize;
  input [1:0]s00_axi_tx_arburst;
  input s00_axi_tx_arlock;
  input [3:0]s00_axi_tx_arcache;
  input [2:0]s00_axi_tx_arprot;
  input [3:0]s00_axi_tx_arqos;
  input [3:0]s00_axi_tx_arregion;
  input s00_axi_tx_arvalid;
  output s00_axi_tx_arready;
  output [0:0]s00_axi_tx_rid;
  output [31:0]s00_axi_tx_rdata;
  output [1:0]s00_axi_tx_rresp;
  output s00_axi_tx_rlast;
  output s00_axi_tx_rvalid;
  input s00_axi_tx_rready;
  input s01_axi_rx_aclk;
  input s01_axi_rx_aresetn;
  input [0:0]s01_axi_rx_awid;
  input [2:0]s01_axi_rx_awaddr;
  input [7:0]s01_axi_rx_awlen;
  input [2:0]s01_axi_rx_awsize;
  input [1:0]s01_axi_rx_awburst;
  input s01_axi_rx_awlock;
  input [3:0]s01_axi_rx_awcache;
  input [2:0]s01_axi_rx_awprot;
  input [3:0]s01_axi_rx_awqos;
  input [3:0]s01_axi_rx_awregion;
  input s01_axi_rx_awvalid;
  output s01_axi_rx_awready;
  input [31:0]s01_axi_rx_wdata;
  input [3:0]s01_axi_rx_wstrb;
  input s01_axi_rx_wlast;
  input s01_axi_rx_wvalid;
  output s01_axi_rx_wready;
  output [0:0]s01_axi_rx_bid;
  output [1:0]s01_axi_rx_bresp;
  output s01_axi_rx_bvalid;
  input s01_axi_rx_bready;
  input [0:0]s01_axi_rx_arid;
  input [2:0]s01_axi_rx_araddr;
  input [7:0]s01_axi_rx_arlen;
  input [2:0]s01_axi_rx_arsize;
  input [1:0]s01_axi_rx_arburst;
  input s01_axi_rx_arlock;
  input [3:0]s01_axi_rx_arcache;
  input [2:0]s01_axi_rx_arprot;
  input [3:0]s01_axi_rx_arqos;
  input [3:0]s01_axi_rx_arregion;
  input s01_axi_rx_arvalid;
  output s01_axi_rx_arready;
  output [0:0]s01_axi_rx_rid;
  output [31:0]s01_axi_rx_rdata;
  output [1:0]s01_axi_rx_rresp;
  output s01_axi_rx_rlast;
  output s01_axi_rx_rvalid;
  input s01_axi_rx_rready;
  input s02_axi_reg_aclk;
  input s02_axi_reg_aresetn;
  input [4:0]s02_axi_reg_awaddr;
  input [2:0]s02_axi_reg_awprot;
  input s02_axi_reg_awvalid;
  output s02_axi_reg_awready;
  input [31:0]s02_axi_reg_wdata;
  input [3:0]s02_axi_reg_wstrb;
  input s02_axi_reg_wvalid;
  output s02_axi_reg_wready;
  output [1:0]s02_axi_reg_bresp;
  output s02_axi_reg_bvalid;
  input s02_axi_reg_bready;
  input [4:0]s02_axi_reg_araddr;
  input [2:0]s02_axi_reg_arprot;
  input s02_axi_reg_arvalid;
  output s02_axi_reg_arready;
  output [31:0]s02_axi_reg_rdata;
  output [1:0]s02_axi_reg_rresp;
  output s02_axi_reg_rvalid;
  input s02_axi_reg_rready;

  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_1;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_19;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_20;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_21;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_22;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_23;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_24;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_25;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_26;
  wire AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_27;
  wire AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_0;
  wire AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_2;
  wire clk_logic;
  wire clk_logic_IBUF;
  wire clk_logic_IBUF_BUFG;
  wire [3:0]divcnt;
  wire \link_inst/p_0_in8_in ;
  wire \link_inst/p_0_in9_in ;
  wire [7:7]p_1_out;
  wire \recvo[gotnull] ;
  wire rst_logic;
  wire rst_logic_IBUF;
  wire rxclk;
  wire rxclk_IBUF;
  wire rxclk_IBUF_BUFG;
  wire s00_axi_tx_aclk;
  wire s00_axi_tx_aclk_IBUF;
  wire s00_axi_tx_aclk_IBUF_BUFG;
  wire [2:0]s00_axi_tx_araddr;
  wire [2:2]s00_axi_tx_araddr_IBUF;
  wire [1:0]s00_axi_tx_arburst;
  wire [1:0]s00_axi_tx_arburst_IBUF;
  wire s00_axi_tx_aresetn;
  wire s00_axi_tx_aresetn_IBUF;
  wire [0:0]s00_axi_tx_arid;
  wire [7:0]s00_axi_tx_arlen;
  wire [7:0]s00_axi_tx_arlen_IBUF;
  wire s00_axi_tx_arready;
  wire s00_axi_tx_arready_OBUF;
  wire s00_axi_tx_arvalid;
  wire s00_axi_tx_arvalid_IBUF;
  wire [2:0]s00_axi_tx_awaddr;
  wire [2:2]s00_axi_tx_awaddr_IBUF;
  wire [1:0]s00_axi_tx_awburst;
  wire [1:0]s00_axi_tx_awburst_IBUF;
  wire [0:0]s00_axi_tx_awid;
  wire [7:0]s00_axi_tx_awlen;
  wire [7:0]s00_axi_tx_awlen_IBUF;
  wire s00_axi_tx_awready;
  wire s00_axi_tx_awready_OBUF;
  wire s00_axi_tx_awvalid;
  wire s00_axi_tx_awvalid_IBUF;
  wire [0:0]s00_axi_tx_bid;
  wire [0:0]s00_axi_tx_bid_OBUF;
  wire s00_axi_tx_bready;
  wire s00_axi_tx_bready_IBUF;
  wire [1:0]s00_axi_tx_bresp;
  wire s00_axi_tx_bvalid;
  wire s00_axi_tx_bvalid_OBUF;
  wire [31:0]s00_axi_tx_rdata;
  wire [31:0]s00_axi_tx_rdata_OBUF;
  wire [0:0]s00_axi_tx_rid;
  wire [0:0]s00_axi_tx_rid_OBUF;
  wire s00_axi_tx_rlast;
  wire s00_axi_tx_rlast_OBUF;
  wire s00_axi_tx_rready;
  wire s00_axi_tx_rready_IBUF;
  wire [1:0]s00_axi_tx_rresp;
  wire s00_axi_tx_rvalid;
  wire s00_axi_tx_rvalid_OBUF;
  wire [31:0]s00_axi_tx_wdata;
  wire [31:0]s00_axi_tx_wdata_IBUF;
  wire s00_axi_tx_wlast;
  wire s00_axi_tx_wlast_IBUF;
  wire s00_axi_tx_wready;
  wire s00_axi_tx_wready_OBUF;
  wire [3:0]s00_axi_tx_wstrb;
  wire [3:0]s00_axi_tx_wstrb_IBUF;
  wire s00_axi_tx_wvalid;
  wire s00_axi_tx_wvalid_IBUF;
  wire s01_axi_rx_aclk;
  wire s01_axi_rx_aclk_IBUF;
  wire s01_axi_rx_aclk_IBUF_BUFG;
  wire [2:0]s01_axi_rx_araddr;
  wire [2:2]s01_axi_rx_araddr_IBUF;
  wire [1:0]s01_axi_rx_arburst;
  wire [1:0]s01_axi_rx_arburst_IBUF;
  wire s01_axi_rx_aresetn;
  wire s01_axi_rx_aresetn_IBUF;
  wire [0:0]s01_axi_rx_arid;
  wire [7:0]s01_axi_rx_arlen;
  wire [7:0]s01_axi_rx_arlen_IBUF;
  wire s01_axi_rx_arready;
  wire s01_axi_rx_arready_OBUF;
  wire s01_axi_rx_arvalid;
  wire s01_axi_rx_arvalid_IBUF;
  wire [0:0]s01_axi_rx_awid;
  wire s01_axi_rx_awready;
  wire s01_axi_rx_awready_OBUF;
  wire s01_axi_rx_awvalid;
  wire s01_axi_rx_awvalid_IBUF;
  wire [0:0]s01_axi_rx_bid;
  wire [0:0]s01_axi_rx_bid_OBUF;
  wire s01_axi_rx_bready;
  wire s01_axi_rx_bready_IBUF;
  wire [1:0]s01_axi_rx_bresp;
  wire s01_axi_rx_bvalid;
  wire s01_axi_rx_bvalid_OBUF;
  wire [31:0]s01_axi_rx_rdata;
  wire [10:0]s01_axi_rx_rdata_OBUF;
  wire [0:0]s01_axi_rx_rid;
  wire [0:0]s01_axi_rx_rid_OBUF;
  wire s01_axi_rx_rlast;
  wire s01_axi_rx_rlast_OBUF;
  wire s01_axi_rx_rready;
  wire s01_axi_rx_rready_IBUF;
  wire [1:0]s01_axi_rx_rresp;
  wire s01_axi_rx_rvalid;
  wire s01_axi_rx_rvalid_OBUF;
  wire s01_axi_rx_wlast;
  wire s01_axi_rx_wlast_IBUF;
  wire s01_axi_rx_wready;
  wire s01_axi_rx_wready_OBUF;
  wire s01_axi_rx_wvalid;
  wire s01_axi_rx_wvalid_IBUF;
  wire s02_axi_reg_aclk;
  wire s02_axi_reg_aclk_IBUF;
  wire s02_axi_reg_aclk_IBUF_BUFG;
  wire [4:0]s02_axi_reg_araddr;
  wire [4:2]s02_axi_reg_araddr_IBUF;
  wire s02_axi_reg_aresetn;
  wire s02_axi_reg_aresetn_IBUF;
  wire s02_axi_reg_arready;
  wire s02_axi_reg_arready_OBUF;
  wire s02_axi_reg_arvalid;
  wire s02_axi_reg_arvalid_IBUF;
  wire [4:0]s02_axi_reg_awaddr;
  wire [4:2]s02_axi_reg_awaddr_IBUF;
  wire s02_axi_reg_awready;
  wire s02_axi_reg_awready_OBUF;
  wire s02_axi_reg_awvalid;
  wire s02_axi_reg_awvalid_IBUF;
  wire s02_axi_reg_bready;
  wire s02_axi_reg_bready_IBUF;
  wire [1:0]s02_axi_reg_bresp;
  wire s02_axi_reg_bvalid;
  wire s02_axi_reg_bvalid_OBUF;
  wire [31:0]s02_axi_reg_rdata;
  wire [31:0]s02_axi_reg_rdata_OBUF;
  wire s02_axi_reg_rready;
  wire s02_axi_reg_rready_IBUF;
  wire [1:0]s02_axi_reg_rresp;
  wire s02_axi_reg_rvalid;
  wire s02_axi_reg_rvalid_OBUF;
  wire [31:0]s02_axi_reg_wdata;
  wire [31:0]s02_axi_reg_wdata_IBUF;
  wire s02_axi_reg_wready;
  wire s02_axi_reg_wready_OBUF;
  wire [3:0]s02_axi_reg_wstrb;
  wire [3:0]s02_axi_reg_wstrb_IBUF;
  wire s02_axi_reg_wvalid;
  wire s02_axi_reg_wvalid_IBUF;
  wire [1:0]s_ctrl_in;
  wire [1:0]s_ctrl_out;
  wire s_errcred;
  wire s_errdisc;
  wire s_erresc;
  wire s_errpar;
  wire s_linkdis;
  wire \s_pulse_reg[1]_i_1_n_0 ;
  wire \s_pulse_reg_reg_n_0_[0] ;
  wire s_rst_pulse;
  wire s_rxflag;
  wire s_rxhalff;
  wire s_rxread;
  wire s_rxvalid;
  wire s_tc_in;
  wire s_tc_in_i_1_n_0;
  wire s_tc_out;
  wire [5:0]s_time_in;
  wire [5:0]s_time_out;
  wire [7:0]s_txdata;
  wire [7:1]s_txdivcnt;
  wire s_txflag;
  wire s_txhalff;
  wire s_txwrite;
  wire spw_di;
  wire spw_di_IBUF;
  wire spw_do;
  wire spw_do_OBUF;
  wire spw_si;
  wire spw_si_IBUF;
  wire spw_so;
  wire spw_so_OBUF;
  wire spwstream_inst_n_23;
  wire spwstream_inst_n_27;
  wire spwstream_inst_n_4;
  wire tc_in;
  wire tc_in_IBUF;
  wire tc_out;
  wire tc_out_OBUF;
  wire txclk;
  wire txclk_IBUF;
  wire txclk_IBUF_BUFG;
  wire [8:0]v_write;
  wire wen3_out;
  wire \xmiti[fct_in] ;

initial begin
 $sdf_annotate("fifointerface_rx_tb_time_synth.sdf",,,,"tool_control");
end
  AXI_SpaceWire_IP_v1_0_S00_AXI_TX AXI_SpaceWire_IP_v1_0_S00_AXI_TX_inst
       (.CLK(clk_logic_IBUF_BUFG),
        .D(s00_axi_tx_arlen_IBUF),
        .DIPADIP(s_txflag),
        .Q(s_txdata),
        .WEA(wen3_out),
        .\axi_arburst_reg[1]_0 (s00_axi_tx_arburst_IBUF),
        .\axi_awburst_reg[1]_0 (s00_axi_tx_awburst_IBUF),
        .\axi_awlen_reg[7]_0 (s00_axi_tx_awlen_IBUF),
        .s00_axi_tx_aclk_IBUF_BUFG(s00_axi_tx_aclk_IBUF_BUFG),
        .s00_axi_tx_araddr_IBUF(s00_axi_tx_araddr_IBUF),
        .s00_axi_tx_aresetn_IBUF(s00_axi_tx_aresetn_IBUF),
        .s00_axi_tx_arready_OBUF(s00_axi_tx_arready_OBUF),
        .s00_axi_tx_arvalid_IBUF(s00_axi_tx_arvalid_IBUF),
        .s00_axi_tx_awaddr_IBUF(s00_axi_tx_awaddr_IBUF),
        .s00_axi_tx_awready_OBUF(s00_axi_tx_awready_OBUF),
        .s00_axi_tx_awvalid_IBUF(s00_axi_tx_awvalid_IBUF),
        .s00_axi_tx_bready_IBUF(s00_axi_tx_bready_IBUF),
        .s00_axi_tx_bvalid_OBUF(s00_axi_tx_bvalid_OBUF),
        .s00_axi_tx_rdata_OBUF(s00_axi_tx_rdata_OBUF),
        .s00_axi_tx_rlast_OBUF(s00_axi_tx_rlast_OBUF),
        .s00_axi_tx_rready_IBUF(s00_axi_tx_rready_IBUF),
        .s00_axi_tx_rvalid_OBUF(s00_axi_tx_rvalid_OBUF),
        .s00_axi_tx_wdata_IBUF(s00_axi_tx_wdata_IBUF),
        .s00_axi_tx_wlast_IBUF(s00_axi_tx_wlast_IBUF),
        .s00_axi_tx_wready_OBUF(s00_axi_tx_wready_OBUF),
        .s00_axi_tx_wstrb_IBUF(s00_axi_tx_wstrb_IBUF),
        .s00_axi_tx_wvalid_IBUF(s00_axi_tx_wvalid_IBUF),
        .s_txwrite(s_txwrite),
        .spwwrapperstate_reg_0(spwstream_inst_n_4));
  AXI_SpaceWire_IP_v1_0_S01_AXI_RX AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst
       (.CLK(clk_logic_IBUF_BUFG),
        .D(v_write),
        .DOPBDOP(s_rxflag),
        .E(p_1_out),
        .Q({AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_19,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_20,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_21,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_22,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_23,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_24,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_25,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_26,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_27}),
        .\axi_arburst_reg[1]_0 (s01_axi_rx_arburst_IBUF),
        .\axi_arlen_reg[7]_0 (s01_axi_rx_arlen_IBUF),
        .rst_logic_IBUF(rst_logic_IBUF),
        .s01_axi_rx_aclk_IBUF_BUFG(s01_axi_rx_aclk_IBUF_BUFG),
        .s01_axi_rx_araddr_IBUF(s01_axi_rx_araddr_IBUF),
        .s01_axi_rx_aresetn_IBUF(s01_axi_rx_aresetn_IBUF),
        .s01_axi_rx_arready_OBUF(s01_axi_rx_arready_OBUF),
        .s01_axi_rx_arvalid_IBUF(s01_axi_rx_arvalid_IBUF),
        .s01_axi_rx_awready_OBUF(s01_axi_rx_awready_OBUF),
        .s01_axi_rx_awvalid_IBUF(s01_axi_rx_awvalid_IBUF),
        .s01_axi_rx_bready_IBUF(s01_axi_rx_bready_IBUF),
        .s01_axi_rx_bvalid_OBUF(s01_axi_rx_bvalid_OBUF),
        .s01_axi_rx_rdata_OBUF(s01_axi_rx_rdata_OBUF),
        .s01_axi_rx_rlast_OBUF(s01_axi_rx_rlast_OBUF),
        .s01_axi_rx_rready_IBUF(s01_axi_rx_rready_IBUF),
        .s01_axi_rx_rvalid_OBUF(s01_axi_rx_rvalid_OBUF),
        .s01_axi_rx_wlast_IBUF(s01_axi_rx_wlast_IBUF),
        .s01_axi_rx_wready_OBUF(s01_axi_rx_wready_OBUF),
        .s01_axi_rx_wvalid_IBUF(s01_axi_rx_wvalid_IBUF),
        .s_rxread(s_rxread),
        .s_rxvalid(s_rxvalid),
        .\spwwrapper.openPacket_reg_0 (AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_1));
  AXI_SpaceWire_IP_v1_0_S02_AXI_REG AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst
       (.CLK(s02_axi_reg_aclk_IBUF_BUFG),
        .D({divcnt[3],divcnt[0]}),
        .Q({s_txdivcnt[7:4],s_txdivcnt[2:1]}),
        .S_AXI_ARREADY(s02_axi_reg_arready_OBUF),
        .S_AXI_AWREADY(s02_axi_reg_awready_OBUF),
        .S_AXI_WREADY(s02_axi_reg_wready_OBUF),
        .\axi_araddr_reg[4]_0 (s02_axi_reg_araddr_IBUF),
        .\axi_awaddr_reg[4]_0 (s02_axi_reg_awaddr_IBUF),
        .\axi_rdata_reg[31]_0 (s02_axi_reg_rdata_OBUF),
        .\ctrl_in_reg[1]_0 ({s_ctrl_in,s_time_in}),
        .\line3_reg[9]_0 ({s_ctrl_out,s_time_out}),
        .\line4_reg[0]_0 ({spwstream_inst_n_23,\link_inst/p_0_in8_in ,\link_inst/p_0_in9_in }),
        .\line4_reg[17]_0 (clk_logic_IBUF_BUFG),
        .\line4_reg[17]_1 ({s_txhalff,s_rxhalff,s_errcred,s_erresc,s_errpar,s_errdisc}),
        .linkdis(s_linkdis),
        .\r_reg[txdivnorm] (spwstream_inst_n_27),
        .\r_reg[xmit_fct_in] (AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_0),
        .\recvo[gotnull] (\recvo[gotnull] ),
        .s02_axi_reg_aresetn_IBUF(s02_axi_reg_aresetn_IBUF),
        .s02_axi_reg_arvalid_IBUF(s02_axi_reg_arvalid_IBUF),
        .s02_axi_reg_awvalid_IBUF(s02_axi_reg_awvalid_IBUF),
        .s02_axi_reg_bready_IBUF(s02_axi_reg_bready_IBUF),
        .s02_axi_reg_bvalid_OBUF(s02_axi_reg_bvalid_OBUF),
        .s02_axi_reg_rready_IBUF(s02_axi_reg_rready_IBUF),
        .s02_axi_reg_rvalid_OBUF(s02_axi_reg_rvalid_OBUF),
        .s02_axi_reg_wstrb_IBUF(s02_axi_reg_wstrb_IBUF),
        .s02_axi_reg_wvalid_IBUF(s02_axi_reg_wvalid_IBUF),
        .\slv_reg2_reg[31]_0 (s02_axi_reg_wdata_IBUF),
        .\txdivcnt_reg[6]_0 (AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_2),
        .\xmiti[fct_in] (\xmiti[fct_in] ));
  BUFG clk_logic_IBUF_BUFG_inst
       (.I(clk_logic_IBUF),
        .O(clk_logic_IBUF_BUFG));
  IBUF clk_logic_IBUF_inst
       (.I(clk_logic),
        .O(clk_logic_IBUF));
  IBUF rst_logic_IBUF_inst
       (.I(rst_logic),
        .O(rst_logic_IBUF));
  BUFG rxclk_IBUF_BUFG_inst
       (.I(rxclk_IBUF),
        .O(rxclk_IBUF_BUFG));
  IBUF rxclk_IBUF_inst
       (.I(rxclk),
        .O(rxclk_IBUF));
  BUFG s00_axi_tx_aclk_IBUF_BUFG_inst
       (.I(s00_axi_tx_aclk_IBUF),
        .O(s00_axi_tx_aclk_IBUF_BUFG));
  IBUF s00_axi_tx_aclk_IBUF_inst
       (.I(s00_axi_tx_aclk),
        .O(s00_axi_tx_aclk_IBUF));
  IBUF \s00_axi_tx_araddr_IBUF[2]_inst 
       (.I(s00_axi_tx_araddr[2]),
        .O(s00_axi_tx_araddr_IBUF));
  IBUF \s00_axi_tx_arburst_IBUF[0]_inst 
       (.I(s00_axi_tx_arburst[0]),
        .O(s00_axi_tx_arburst_IBUF[0]));
  IBUF \s00_axi_tx_arburst_IBUF[1]_inst 
       (.I(s00_axi_tx_arburst[1]),
        .O(s00_axi_tx_arburst_IBUF[1]));
  IBUF s00_axi_tx_aresetn_IBUF_inst
       (.I(s00_axi_tx_aresetn),
        .O(s00_axi_tx_aresetn_IBUF));
  IBUF \s00_axi_tx_arid_IBUF[0]_inst 
       (.I(s00_axi_tx_arid),
        .O(s00_axi_tx_rid_OBUF));
  IBUF \s00_axi_tx_arlen_IBUF[0]_inst 
       (.I(s00_axi_tx_arlen[0]),
        .O(s00_axi_tx_arlen_IBUF[0]));
  IBUF \s00_axi_tx_arlen_IBUF[1]_inst 
       (.I(s00_axi_tx_arlen[1]),
        .O(s00_axi_tx_arlen_IBUF[1]));
  IBUF \s00_axi_tx_arlen_IBUF[2]_inst 
       (.I(s00_axi_tx_arlen[2]),
        .O(s00_axi_tx_arlen_IBUF[2]));
  IBUF \s00_axi_tx_arlen_IBUF[3]_inst 
       (.I(s00_axi_tx_arlen[3]),
        .O(s00_axi_tx_arlen_IBUF[3]));
  IBUF \s00_axi_tx_arlen_IBUF[4]_inst 
       (.I(s00_axi_tx_arlen[4]),
        .O(s00_axi_tx_arlen_IBUF[4]));
  IBUF \s00_axi_tx_arlen_IBUF[5]_inst 
       (.I(s00_axi_tx_arlen[5]),
        .O(s00_axi_tx_arlen_IBUF[5]));
  IBUF \s00_axi_tx_arlen_IBUF[6]_inst 
       (.I(s00_axi_tx_arlen[6]),
        .O(s00_axi_tx_arlen_IBUF[6]));
  IBUF \s00_axi_tx_arlen_IBUF[7]_inst 
       (.I(s00_axi_tx_arlen[7]),
        .O(s00_axi_tx_arlen_IBUF[7]));
  OBUF s00_axi_tx_arready_OBUF_inst
       (.I(s00_axi_tx_arready_OBUF),
        .O(s00_axi_tx_arready));
  IBUF s00_axi_tx_arvalid_IBUF_inst
       (.I(s00_axi_tx_arvalid),
        .O(s00_axi_tx_arvalid_IBUF));
  IBUF \s00_axi_tx_awaddr_IBUF[2]_inst 
       (.I(s00_axi_tx_awaddr[2]),
        .O(s00_axi_tx_awaddr_IBUF));
  IBUF \s00_axi_tx_awburst_IBUF[0]_inst 
       (.I(s00_axi_tx_awburst[0]),
        .O(s00_axi_tx_awburst_IBUF[0]));
  IBUF \s00_axi_tx_awburst_IBUF[1]_inst 
       (.I(s00_axi_tx_awburst[1]),
        .O(s00_axi_tx_awburst_IBUF[1]));
  IBUF \s00_axi_tx_awid_IBUF[0]_inst 
       (.I(s00_axi_tx_awid),
        .O(s00_axi_tx_bid_OBUF));
  IBUF \s00_axi_tx_awlen_IBUF[0]_inst 
       (.I(s00_axi_tx_awlen[0]),
        .O(s00_axi_tx_awlen_IBUF[0]));
  IBUF \s00_axi_tx_awlen_IBUF[1]_inst 
       (.I(s00_axi_tx_awlen[1]),
        .O(s00_axi_tx_awlen_IBUF[1]));
  IBUF \s00_axi_tx_awlen_IBUF[2]_inst 
       (.I(s00_axi_tx_awlen[2]),
        .O(s00_axi_tx_awlen_IBUF[2]));
  IBUF \s00_axi_tx_awlen_IBUF[3]_inst 
       (.I(s00_axi_tx_awlen[3]),
        .O(s00_axi_tx_awlen_IBUF[3]));
  IBUF \s00_axi_tx_awlen_IBUF[4]_inst 
       (.I(s00_axi_tx_awlen[4]),
        .O(s00_axi_tx_awlen_IBUF[4]));
  IBUF \s00_axi_tx_awlen_IBUF[5]_inst 
       (.I(s00_axi_tx_awlen[5]),
        .O(s00_axi_tx_awlen_IBUF[5]));
  IBUF \s00_axi_tx_awlen_IBUF[6]_inst 
       (.I(s00_axi_tx_awlen[6]),
        .O(s00_axi_tx_awlen_IBUF[6]));
  IBUF \s00_axi_tx_awlen_IBUF[7]_inst 
       (.I(s00_axi_tx_awlen[7]),
        .O(s00_axi_tx_awlen_IBUF[7]));
  OBUF s00_axi_tx_awready_OBUF_inst
       (.I(s00_axi_tx_awready_OBUF),
        .O(s00_axi_tx_awready));
  IBUF s00_axi_tx_awvalid_IBUF_inst
       (.I(s00_axi_tx_awvalid),
        .O(s00_axi_tx_awvalid_IBUF));
  OBUF \s00_axi_tx_bid_OBUF[0]_inst 
       (.I(s00_axi_tx_bid_OBUF),
        .O(s00_axi_tx_bid));
  IBUF s00_axi_tx_bready_IBUF_inst
       (.I(s00_axi_tx_bready),
        .O(s00_axi_tx_bready_IBUF));
  OBUF \s00_axi_tx_bresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s00_axi_tx_bresp[0]));
  OBUF \s00_axi_tx_bresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s00_axi_tx_bresp[1]));
  OBUF s00_axi_tx_bvalid_OBUF_inst
       (.I(s00_axi_tx_bvalid_OBUF),
        .O(s00_axi_tx_bvalid));
  OBUF \s00_axi_tx_rdata_OBUF[0]_inst 
       (.I(s00_axi_tx_rdata_OBUF[0]),
        .O(s00_axi_tx_rdata[0]));
  OBUF \s00_axi_tx_rdata_OBUF[10]_inst 
       (.I(s00_axi_tx_rdata_OBUF[10]),
        .O(s00_axi_tx_rdata[10]));
  OBUF \s00_axi_tx_rdata_OBUF[11]_inst 
       (.I(s00_axi_tx_rdata_OBUF[11]),
        .O(s00_axi_tx_rdata[11]));
  OBUF \s00_axi_tx_rdata_OBUF[12]_inst 
       (.I(s00_axi_tx_rdata_OBUF[12]),
        .O(s00_axi_tx_rdata[12]));
  OBUF \s00_axi_tx_rdata_OBUF[13]_inst 
       (.I(s00_axi_tx_rdata_OBUF[13]),
        .O(s00_axi_tx_rdata[13]));
  OBUF \s00_axi_tx_rdata_OBUF[14]_inst 
       (.I(s00_axi_tx_rdata_OBUF[14]),
        .O(s00_axi_tx_rdata[14]));
  OBUF \s00_axi_tx_rdata_OBUF[15]_inst 
       (.I(s00_axi_tx_rdata_OBUF[15]),
        .O(s00_axi_tx_rdata[15]));
  OBUF \s00_axi_tx_rdata_OBUF[16]_inst 
       (.I(s00_axi_tx_rdata_OBUF[16]),
        .O(s00_axi_tx_rdata[16]));
  OBUF \s00_axi_tx_rdata_OBUF[17]_inst 
       (.I(s00_axi_tx_rdata_OBUF[17]),
        .O(s00_axi_tx_rdata[17]));
  OBUF \s00_axi_tx_rdata_OBUF[18]_inst 
       (.I(s00_axi_tx_rdata_OBUF[18]),
        .O(s00_axi_tx_rdata[18]));
  OBUF \s00_axi_tx_rdata_OBUF[19]_inst 
       (.I(s00_axi_tx_rdata_OBUF[19]),
        .O(s00_axi_tx_rdata[19]));
  OBUF \s00_axi_tx_rdata_OBUF[1]_inst 
       (.I(s00_axi_tx_rdata_OBUF[1]),
        .O(s00_axi_tx_rdata[1]));
  OBUF \s00_axi_tx_rdata_OBUF[20]_inst 
       (.I(s00_axi_tx_rdata_OBUF[20]),
        .O(s00_axi_tx_rdata[20]));
  OBUF \s00_axi_tx_rdata_OBUF[21]_inst 
       (.I(s00_axi_tx_rdata_OBUF[21]),
        .O(s00_axi_tx_rdata[21]));
  OBUF \s00_axi_tx_rdata_OBUF[22]_inst 
       (.I(s00_axi_tx_rdata_OBUF[22]),
        .O(s00_axi_tx_rdata[22]));
  OBUF \s00_axi_tx_rdata_OBUF[23]_inst 
       (.I(s00_axi_tx_rdata_OBUF[23]),
        .O(s00_axi_tx_rdata[23]));
  OBUF \s00_axi_tx_rdata_OBUF[24]_inst 
       (.I(s00_axi_tx_rdata_OBUF[24]),
        .O(s00_axi_tx_rdata[24]));
  OBUF \s00_axi_tx_rdata_OBUF[25]_inst 
       (.I(s00_axi_tx_rdata_OBUF[25]),
        .O(s00_axi_tx_rdata[25]));
  OBUF \s00_axi_tx_rdata_OBUF[26]_inst 
       (.I(s00_axi_tx_rdata_OBUF[26]),
        .O(s00_axi_tx_rdata[26]));
  OBUF \s00_axi_tx_rdata_OBUF[27]_inst 
       (.I(s00_axi_tx_rdata_OBUF[27]),
        .O(s00_axi_tx_rdata[27]));
  OBUF \s00_axi_tx_rdata_OBUF[28]_inst 
       (.I(s00_axi_tx_rdata_OBUF[28]),
        .O(s00_axi_tx_rdata[28]));
  OBUF \s00_axi_tx_rdata_OBUF[29]_inst 
       (.I(s00_axi_tx_rdata_OBUF[29]),
        .O(s00_axi_tx_rdata[29]));
  OBUF \s00_axi_tx_rdata_OBUF[2]_inst 
       (.I(s00_axi_tx_rdata_OBUF[2]),
        .O(s00_axi_tx_rdata[2]));
  OBUF \s00_axi_tx_rdata_OBUF[30]_inst 
       (.I(s00_axi_tx_rdata_OBUF[30]),
        .O(s00_axi_tx_rdata[30]));
  OBUF \s00_axi_tx_rdata_OBUF[31]_inst 
       (.I(s00_axi_tx_rdata_OBUF[31]),
        .O(s00_axi_tx_rdata[31]));
  OBUF \s00_axi_tx_rdata_OBUF[3]_inst 
       (.I(s00_axi_tx_rdata_OBUF[3]),
        .O(s00_axi_tx_rdata[3]));
  OBUF \s00_axi_tx_rdata_OBUF[4]_inst 
       (.I(s00_axi_tx_rdata_OBUF[4]),
        .O(s00_axi_tx_rdata[4]));
  OBUF \s00_axi_tx_rdata_OBUF[5]_inst 
       (.I(s00_axi_tx_rdata_OBUF[5]),
        .O(s00_axi_tx_rdata[5]));
  OBUF \s00_axi_tx_rdata_OBUF[6]_inst 
       (.I(s00_axi_tx_rdata_OBUF[6]),
        .O(s00_axi_tx_rdata[6]));
  OBUF \s00_axi_tx_rdata_OBUF[7]_inst 
       (.I(s00_axi_tx_rdata_OBUF[7]),
        .O(s00_axi_tx_rdata[7]));
  OBUF \s00_axi_tx_rdata_OBUF[8]_inst 
       (.I(s00_axi_tx_rdata_OBUF[8]),
        .O(s00_axi_tx_rdata[8]));
  OBUF \s00_axi_tx_rdata_OBUF[9]_inst 
       (.I(s00_axi_tx_rdata_OBUF[9]),
        .O(s00_axi_tx_rdata[9]));
  OBUF \s00_axi_tx_rid_OBUF[0]_inst 
       (.I(s00_axi_tx_rid_OBUF),
        .O(s00_axi_tx_rid));
  OBUF s00_axi_tx_rlast_OBUF_inst
       (.I(s00_axi_tx_rlast_OBUF),
        .O(s00_axi_tx_rlast));
  IBUF s00_axi_tx_rready_IBUF_inst
       (.I(s00_axi_tx_rready),
        .O(s00_axi_tx_rready_IBUF));
  OBUF \s00_axi_tx_rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s00_axi_tx_rresp[0]));
  OBUF \s00_axi_tx_rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s00_axi_tx_rresp[1]));
  OBUF s00_axi_tx_rvalid_OBUF_inst
       (.I(s00_axi_tx_rvalid_OBUF),
        .O(s00_axi_tx_rvalid));
  IBUF \s00_axi_tx_wdata_IBUF[0]_inst 
       (.I(s00_axi_tx_wdata[0]),
        .O(s00_axi_tx_wdata_IBUF[0]));
  IBUF \s00_axi_tx_wdata_IBUF[10]_inst 
       (.I(s00_axi_tx_wdata[10]),
        .O(s00_axi_tx_wdata_IBUF[10]));
  IBUF \s00_axi_tx_wdata_IBUF[11]_inst 
       (.I(s00_axi_tx_wdata[11]),
        .O(s00_axi_tx_wdata_IBUF[11]));
  IBUF \s00_axi_tx_wdata_IBUF[12]_inst 
       (.I(s00_axi_tx_wdata[12]),
        .O(s00_axi_tx_wdata_IBUF[12]));
  IBUF \s00_axi_tx_wdata_IBUF[13]_inst 
       (.I(s00_axi_tx_wdata[13]),
        .O(s00_axi_tx_wdata_IBUF[13]));
  IBUF \s00_axi_tx_wdata_IBUF[14]_inst 
       (.I(s00_axi_tx_wdata[14]),
        .O(s00_axi_tx_wdata_IBUF[14]));
  IBUF \s00_axi_tx_wdata_IBUF[15]_inst 
       (.I(s00_axi_tx_wdata[15]),
        .O(s00_axi_tx_wdata_IBUF[15]));
  IBUF \s00_axi_tx_wdata_IBUF[16]_inst 
       (.I(s00_axi_tx_wdata[16]),
        .O(s00_axi_tx_wdata_IBUF[16]));
  IBUF \s00_axi_tx_wdata_IBUF[17]_inst 
       (.I(s00_axi_tx_wdata[17]),
        .O(s00_axi_tx_wdata_IBUF[17]));
  IBUF \s00_axi_tx_wdata_IBUF[18]_inst 
       (.I(s00_axi_tx_wdata[18]),
        .O(s00_axi_tx_wdata_IBUF[18]));
  IBUF \s00_axi_tx_wdata_IBUF[19]_inst 
       (.I(s00_axi_tx_wdata[19]),
        .O(s00_axi_tx_wdata_IBUF[19]));
  IBUF \s00_axi_tx_wdata_IBUF[1]_inst 
       (.I(s00_axi_tx_wdata[1]),
        .O(s00_axi_tx_wdata_IBUF[1]));
  IBUF \s00_axi_tx_wdata_IBUF[20]_inst 
       (.I(s00_axi_tx_wdata[20]),
        .O(s00_axi_tx_wdata_IBUF[20]));
  IBUF \s00_axi_tx_wdata_IBUF[21]_inst 
       (.I(s00_axi_tx_wdata[21]),
        .O(s00_axi_tx_wdata_IBUF[21]));
  IBUF \s00_axi_tx_wdata_IBUF[22]_inst 
       (.I(s00_axi_tx_wdata[22]),
        .O(s00_axi_tx_wdata_IBUF[22]));
  IBUF \s00_axi_tx_wdata_IBUF[23]_inst 
       (.I(s00_axi_tx_wdata[23]),
        .O(s00_axi_tx_wdata_IBUF[23]));
  IBUF \s00_axi_tx_wdata_IBUF[24]_inst 
       (.I(s00_axi_tx_wdata[24]),
        .O(s00_axi_tx_wdata_IBUF[24]));
  IBUF \s00_axi_tx_wdata_IBUF[25]_inst 
       (.I(s00_axi_tx_wdata[25]),
        .O(s00_axi_tx_wdata_IBUF[25]));
  IBUF \s00_axi_tx_wdata_IBUF[26]_inst 
       (.I(s00_axi_tx_wdata[26]),
        .O(s00_axi_tx_wdata_IBUF[26]));
  IBUF \s00_axi_tx_wdata_IBUF[27]_inst 
       (.I(s00_axi_tx_wdata[27]),
        .O(s00_axi_tx_wdata_IBUF[27]));
  IBUF \s00_axi_tx_wdata_IBUF[28]_inst 
       (.I(s00_axi_tx_wdata[28]),
        .O(s00_axi_tx_wdata_IBUF[28]));
  IBUF \s00_axi_tx_wdata_IBUF[29]_inst 
       (.I(s00_axi_tx_wdata[29]),
        .O(s00_axi_tx_wdata_IBUF[29]));
  IBUF \s00_axi_tx_wdata_IBUF[2]_inst 
       (.I(s00_axi_tx_wdata[2]),
        .O(s00_axi_tx_wdata_IBUF[2]));
  IBUF \s00_axi_tx_wdata_IBUF[30]_inst 
       (.I(s00_axi_tx_wdata[30]),
        .O(s00_axi_tx_wdata_IBUF[30]));
  IBUF \s00_axi_tx_wdata_IBUF[31]_inst 
       (.I(s00_axi_tx_wdata[31]),
        .O(s00_axi_tx_wdata_IBUF[31]));
  IBUF \s00_axi_tx_wdata_IBUF[3]_inst 
       (.I(s00_axi_tx_wdata[3]),
        .O(s00_axi_tx_wdata_IBUF[3]));
  IBUF \s00_axi_tx_wdata_IBUF[4]_inst 
       (.I(s00_axi_tx_wdata[4]),
        .O(s00_axi_tx_wdata_IBUF[4]));
  IBUF \s00_axi_tx_wdata_IBUF[5]_inst 
       (.I(s00_axi_tx_wdata[5]),
        .O(s00_axi_tx_wdata_IBUF[5]));
  IBUF \s00_axi_tx_wdata_IBUF[6]_inst 
       (.I(s00_axi_tx_wdata[6]),
        .O(s00_axi_tx_wdata_IBUF[6]));
  IBUF \s00_axi_tx_wdata_IBUF[7]_inst 
       (.I(s00_axi_tx_wdata[7]),
        .O(s00_axi_tx_wdata_IBUF[7]));
  IBUF \s00_axi_tx_wdata_IBUF[8]_inst 
       (.I(s00_axi_tx_wdata[8]),
        .O(s00_axi_tx_wdata_IBUF[8]));
  IBUF \s00_axi_tx_wdata_IBUF[9]_inst 
       (.I(s00_axi_tx_wdata[9]),
        .O(s00_axi_tx_wdata_IBUF[9]));
  IBUF s00_axi_tx_wlast_IBUF_inst
       (.I(s00_axi_tx_wlast),
        .O(s00_axi_tx_wlast_IBUF));
  OBUF s00_axi_tx_wready_OBUF_inst
       (.I(s00_axi_tx_wready_OBUF),
        .O(s00_axi_tx_wready));
  IBUF \s00_axi_tx_wstrb_IBUF[0]_inst 
       (.I(s00_axi_tx_wstrb[0]),
        .O(s00_axi_tx_wstrb_IBUF[0]));
  IBUF \s00_axi_tx_wstrb_IBUF[1]_inst 
       (.I(s00_axi_tx_wstrb[1]),
        .O(s00_axi_tx_wstrb_IBUF[1]));
  IBUF \s00_axi_tx_wstrb_IBUF[2]_inst 
       (.I(s00_axi_tx_wstrb[2]),
        .O(s00_axi_tx_wstrb_IBUF[2]));
  IBUF \s00_axi_tx_wstrb_IBUF[3]_inst 
       (.I(s00_axi_tx_wstrb[3]),
        .O(s00_axi_tx_wstrb_IBUF[3]));
  IBUF s00_axi_tx_wvalid_IBUF_inst
       (.I(s00_axi_tx_wvalid),
        .O(s00_axi_tx_wvalid_IBUF));
  BUFG s01_axi_rx_aclk_IBUF_BUFG_inst
       (.I(s01_axi_rx_aclk_IBUF),
        .O(s01_axi_rx_aclk_IBUF_BUFG));
  IBUF s01_axi_rx_aclk_IBUF_inst
       (.I(s01_axi_rx_aclk),
        .O(s01_axi_rx_aclk_IBUF));
  IBUF \s01_axi_rx_araddr_IBUF[2]_inst 
       (.I(s01_axi_rx_araddr[2]),
        .O(s01_axi_rx_araddr_IBUF));
  IBUF \s01_axi_rx_arburst_IBUF[0]_inst 
       (.I(s01_axi_rx_arburst[0]),
        .O(s01_axi_rx_arburst_IBUF[0]));
  IBUF \s01_axi_rx_arburst_IBUF[1]_inst 
       (.I(s01_axi_rx_arburst[1]),
        .O(s01_axi_rx_arburst_IBUF[1]));
  IBUF s01_axi_rx_aresetn_IBUF_inst
       (.I(s01_axi_rx_aresetn),
        .O(s01_axi_rx_aresetn_IBUF));
  IBUF \s01_axi_rx_arid_IBUF[0]_inst 
       (.I(s01_axi_rx_arid),
        .O(s01_axi_rx_rid_OBUF));
  IBUF \s01_axi_rx_arlen_IBUF[0]_inst 
       (.I(s01_axi_rx_arlen[0]),
        .O(s01_axi_rx_arlen_IBUF[0]));
  IBUF \s01_axi_rx_arlen_IBUF[1]_inst 
       (.I(s01_axi_rx_arlen[1]),
        .O(s01_axi_rx_arlen_IBUF[1]));
  IBUF \s01_axi_rx_arlen_IBUF[2]_inst 
       (.I(s01_axi_rx_arlen[2]),
        .O(s01_axi_rx_arlen_IBUF[2]));
  IBUF \s01_axi_rx_arlen_IBUF[3]_inst 
       (.I(s01_axi_rx_arlen[3]),
        .O(s01_axi_rx_arlen_IBUF[3]));
  IBUF \s01_axi_rx_arlen_IBUF[4]_inst 
       (.I(s01_axi_rx_arlen[4]),
        .O(s01_axi_rx_arlen_IBUF[4]));
  IBUF \s01_axi_rx_arlen_IBUF[5]_inst 
       (.I(s01_axi_rx_arlen[5]),
        .O(s01_axi_rx_arlen_IBUF[5]));
  IBUF \s01_axi_rx_arlen_IBUF[6]_inst 
       (.I(s01_axi_rx_arlen[6]),
        .O(s01_axi_rx_arlen_IBUF[6]));
  IBUF \s01_axi_rx_arlen_IBUF[7]_inst 
       (.I(s01_axi_rx_arlen[7]),
        .O(s01_axi_rx_arlen_IBUF[7]));
  OBUF s01_axi_rx_arready_OBUF_inst
       (.I(s01_axi_rx_arready_OBUF),
        .O(s01_axi_rx_arready));
  IBUF s01_axi_rx_arvalid_IBUF_inst
       (.I(s01_axi_rx_arvalid),
        .O(s01_axi_rx_arvalid_IBUF));
  IBUF \s01_axi_rx_awid_IBUF[0]_inst 
       (.I(s01_axi_rx_awid),
        .O(s01_axi_rx_bid_OBUF));
  OBUF s01_axi_rx_awready_OBUF_inst
       (.I(s01_axi_rx_awready_OBUF),
        .O(s01_axi_rx_awready));
  IBUF s01_axi_rx_awvalid_IBUF_inst
       (.I(s01_axi_rx_awvalid),
        .O(s01_axi_rx_awvalid_IBUF));
  OBUF \s01_axi_rx_bid_OBUF[0]_inst 
       (.I(s01_axi_rx_bid_OBUF),
        .O(s01_axi_rx_bid));
  IBUF s01_axi_rx_bready_IBUF_inst
       (.I(s01_axi_rx_bready),
        .O(s01_axi_rx_bready_IBUF));
  OBUF \s01_axi_rx_bresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_bresp[0]));
  OBUF \s01_axi_rx_bresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_bresp[1]));
  OBUF s01_axi_rx_bvalid_OBUF_inst
       (.I(s01_axi_rx_bvalid_OBUF),
        .O(s01_axi_rx_bvalid));
  OBUF \s01_axi_rx_rdata_OBUF[0]_inst 
       (.I(s01_axi_rx_rdata_OBUF[0]),
        .O(s01_axi_rx_rdata[0]));
  OBUF \s01_axi_rx_rdata_OBUF[10]_inst 
       (.I(s01_axi_rx_rdata_OBUF[10]),
        .O(s01_axi_rx_rdata[10]));
  OBUF \s01_axi_rx_rdata_OBUF[11]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[11]));
  OBUF \s01_axi_rx_rdata_OBUF[12]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[12]));
  OBUF \s01_axi_rx_rdata_OBUF[13]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[13]));
  OBUF \s01_axi_rx_rdata_OBUF[14]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[14]));
  OBUF \s01_axi_rx_rdata_OBUF[15]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[15]));
  OBUF \s01_axi_rx_rdata_OBUF[16]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[16]));
  OBUF \s01_axi_rx_rdata_OBUF[17]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[17]));
  OBUF \s01_axi_rx_rdata_OBUF[18]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[18]));
  OBUF \s01_axi_rx_rdata_OBUF[19]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[19]));
  OBUF \s01_axi_rx_rdata_OBUF[1]_inst 
       (.I(s01_axi_rx_rdata_OBUF[1]),
        .O(s01_axi_rx_rdata[1]));
  OBUF \s01_axi_rx_rdata_OBUF[20]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[20]));
  OBUF \s01_axi_rx_rdata_OBUF[21]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[21]));
  OBUF \s01_axi_rx_rdata_OBUF[22]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[22]));
  OBUF \s01_axi_rx_rdata_OBUF[23]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[23]));
  OBUF \s01_axi_rx_rdata_OBUF[24]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[24]));
  OBUF \s01_axi_rx_rdata_OBUF[25]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[25]));
  OBUF \s01_axi_rx_rdata_OBUF[26]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[26]));
  OBUF \s01_axi_rx_rdata_OBUF[27]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[27]));
  OBUF \s01_axi_rx_rdata_OBUF[28]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[28]));
  OBUF \s01_axi_rx_rdata_OBUF[29]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[29]));
  OBUF \s01_axi_rx_rdata_OBUF[2]_inst 
       (.I(s01_axi_rx_rdata_OBUF[2]),
        .O(s01_axi_rx_rdata[2]));
  OBUF \s01_axi_rx_rdata_OBUF[30]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[30]));
  OBUF \s01_axi_rx_rdata_OBUF[31]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rdata[31]));
  OBUF \s01_axi_rx_rdata_OBUF[3]_inst 
       (.I(s01_axi_rx_rdata_OBUF[3]),
        .O(s01_axi_rx_rdata[3]));
  OBUF \s01_axi_rx_rdata_OBUF[4]_inst 
       (.I(s01_axi_rx_rdata_OBUF[4]),
        .O(s01_axi_rx_rdata[4]));
  OBUF \s01_axi_rx_rdata_OBUF[5]_inst 
       (.I(s01_axi_rx_rdata_OBUF[5]),
        .O(s01_axi_rx_rdata[5]));
  OBUF \s01_axi_rx_rdata_OBUF[6]_inst 
       (.I(s01_axi_rx_rdata_OBUF[6]),
        .O(s01_axi_rx_rdata[6]));
  OBUF \s01_axi_rx_rdata_OBUF[7]_inst 
       (.I(s01_axi_rx_rdata_OBUF[7]),
        .O(s01_axi_rx_rdata[7]));
  OBUF \s01_axi_rx_rdata_OBUF[8]_inst 
       (.I(s01_axi_rx_rdata_OBUF[8]),
        .O(s01_axi_rx_rdata[8]));
  OBUF \s01_axi_rx_rdata_OBUF[9]_inst 
       (.I(s01_axi_rx_rdata_OBUF[9]),
        .O(s01_axi_rx_rdata[9]));
  OBUF \s01_axi_rx_rid_OBUF[0]_inst 
       (.I(s01_axi_rx_rid_OBUF),
        .O(s01_axi_rx_rid));
  OBUF s01_axi_rx_rlast_OBUF_inst
       (.I(s01_axi_rx_rlast_OBUF),
        .O(s01_axi_rx_rlast));
  IBUF s01_axi_rx_rready_IBUF_inst
       (.I(s01_axi_rx_rready),
        .O(s01_axi_rx_rready_IBUF));
  OBUF \s01_axi_rx_rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rresp[0]));
  OBUF \s01_axi_rx_rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s01_axi_rx_rresp[1]));
  OBUF s01_axi_rx_rvalid_OBUF_inst
       (.I(s01_axi_rx_rvalid_OBUF),
        .O(s01_axi_rx_rvalid));
  IBUF s01_axi_rx_wlast_IBUF_inst
       (.I(s01_axi_rx_wlast),
        .O(s01_axi_rx_wlast_IBUF));
  OBUF s01_axi_rx_wready_OBUF_inst
       (.I(s01_axi_rx_wready_OBUF),
        .O(s01_axi_rx_wready));
  IBUF s01_axi_rx_wvalid_IBUF_inst
       (.I(s01_axi_rx_wvalid),
        .O(s01_axi_rx_wvalid_IBUF));
  BUFG s02_axi_reg_aclk_IBUF_BUFG_inst
       (.I(s02_axi_reg_aclk_IBUF),
        .O(s02_axi_reg_aclk_IBUF_BUFG));
  IBUF s02_axi_reg_aclk_IBUF_inst
       (.I(s02_axi_reg_aclk),
        .O(s02_axi_reg_aclk_IBUF));
  IBUF \s02_axi_reg_araddr_IBUF[2]_inst 
       (.I(s02_axi_reg_araddr[2]),
        .O(s02_axi_reg_araddr_IBUF[2]));
  IBUF \s02_axi_reg_araddr_IBUF[3]_inst 
       (.I(s02_axi_reg_araddr[3]),
        .O(s02_axi_reg_araddr_IBUF[3]));
  IBUF \s02_axi_reg_araddr_IBUF[4]_inst 
       (.I(s02_axi_reg_araddr[4]),
        .O(s02_axi_reg_araddr_IBUF[4]));
  IBUF s02_axi_reg_aresetn_IBUF_inst
       (.I(s02_axi_reg_aresetn),
        .O(s02_axi_reg_aresetn_IBUF));
  OBUF s02_axi_reg_arready_OBUF_inst
       (.I(s02_axi_reg_arready_OBUF),
        .O(s02_axi_reg_arready));
  IBUF s02_axi_reg_arvalid_IBUF_inst
       (.I(s02_axi_reg_arvalid),
        .O(s02_axi_reg_arvalid_IBUF));
  IBUF \s02_axi_reg_awaddr_IBUF[2]_inst 
       (.I(s02_axi_reg_awaddr[2]),
        .O(s02_axi_reg_awaddr_IBUF[2]));
  IBUF \s02_axi_reg_awaddr_IBUF[3]_inst 
       (.I(s02_axi_reg_awaddr[3]),
        .O(s02_axi_reg_awaddr_IBUF[3]));
  IBUF \s02_axi_reg_awaddr_IBUF[4]_inst 
       (.I(s02_axi_reg_awaddr[4]),
        .O(s02_axi_reg_awaddr_IBUF[4]));
  OBUF s02_axi_reg_awready_OBUF_inst
       (.I(s02_axi_reg_awready_OBUF),
        .O(s02_axi_reg_awready));
  IBUF s02_axi_reg_awvalid_IBUF_inst
       (.I(s02_axi_reg_awvalid),
        .O(s02_axi_reg_awvalid_IBUF));
  IBUF s02_axi_reg_bready_IBUF_inst
       (.I(s02_axi_reg_bready),
        .O(s02_axi_reg_bready_IBUF));
  OBUF \s02_axi_reg_bresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s02_axi_reg_bresp[0]));
  OBUF \s02_axi_reg_bresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s02_axi_reg_bresp[1]));
  OBUF s02_axi_reg_bvalid_OBUF_inst
       (.I(s02_axi_reg_bvalid_OBUF),
        .O(s02_axi_reg_bvalid));
  OBUF \s02_axi_reg_rdata_OBUF[0]_inst 
       (.I(s02_axi_reg_rdata_OBUF[0]),
        .O(s02_axi_reg_rdata[0]));
  OBUF \s02_axi_reg_rdata_OBUF[10]_inst 
       (.I(s02_axi_reg_rdata_OBUF[10]),
        .O(s02_axi_reg_rdata[10]));
  OBUF \s02_axi_reg_rdata_OBUF[11]_inst 
       (.I(s02_axi_reg_rdata_OBUF[11]),
        .O(s02_axi_reg_rdata[11]));
  OBUF \s02_axi_reg_rdata_OBUF[12]_inst 
       (.I(s02_axi_reg_rdata_OBUF[12]),
        .O(s02_axi_reg_rdata[12]));
  OBUF \s02_axi_reg_rdata_OBUF[13]_inst 
       (.I(s02_axi_reg_rdata_OBUF[13]),
        .O(s02_axi_reg_rdata[13]));
  OBUF \s02_axi_reg_rdata_OBUF[14]_inst 
       (.I(s02_axi_reg_rdata_OBUF[14]),
        .O(s02_axi_reg_rdata[14]));
  OBUF \s02_axi_reg_rdata_OBUF[15]_inst 
       (.I(s02_axi_reg_rdata_OBUF[15]),
        .O(s02_axi_reg_rdata[15]));
  OBUF \s02_axi_reg_rdata_OBUF[16]_inst 
       (.I(s02_axi_reg_rdata_OBUF[16]),
        .O(s02_axi_reg_rdata[16]));
  OBUF \s02_axi_reg_rdata_OBUF[17]_inst 
       (.I(s02_axi_reg_rdata_OBUF[17]),
        .O(s02_axi_reg_rdata[17]));
  OBUF \s02_axi_reg_rdata_OBUF[18]_inst 
       (.I(s02_axi_reg_rdata_OBUF[18]),
        .O(s02_axi_reg_rdata[18]));
  OBUF \s02_axi_reg_rdata_OBUF[19]_inst 
       (.I(s02_axi_reg_rdata_OBUF[19]),
        .O(s02_axi_reg_rdata[19]));
  OBUF \s02_axi_reg_rdata_OBUF[1]_inst 
       (.I(s02_axi_reg_rdata_OBUF[1]),
        .O(s02_axi_reg_rdata[1]));
  OBUF \s02_axi_reg_rdata_OBUF[20]_inst 
       (.I(s02_axi_reg_rdata_OBUF[20]),
        .O(s02_axi_reg_rdata[20]));
  OBUF \s02_axi_reg_rdata_OBUF[21]_inst 
       (.I(s02_axi_reg_rdata_OBUF[21]),
        .O(s02_axi_reg_rdata[21]));
  OBUF \s02_axi_reg_rdata_OBUF[22]_inst 
       (.I(s02_axi_reg_rdata_OBUF[22]),
        .O(s02_axi_reg_rdata[22]));
  OBUF \s02_axi_reg_rdata_OBUF[23]_inst 
       (.I(s02_axi_reg_rdata_OBUF[23]),
        .O(s02_axi_reg_rdata[23]));
  OBUF \s02_axi_reg_rdata_OBUF[24]_inst 
       (.I(s02_axi_reg_rdata_OBUF[24]),
        .O(s02_axi_reg_rdata[24]));
  OBUF \s02_axi_reg_rdata_OBUF[25]_inst 
       (.I(s02_axi_reg_rdata_OBUF[25]),
        .O(s02_axi_reg_rdata[25]));
  OBUF \s02_axi_reg_rdata_OBUF[26]_inst 
       (.I(s02_axi_reg_rdata_OBUF[26]),
        .O(s02_axi_reg_rdata[26]));
  OBUF \s02_axi_reg_rdata_OBUF[27]_inst 
       (.I(s02_axi_reg_rdata_OBUF[27]),
        .O(s02_axi_reg_rdata[27]));
  OBUF \s02_axi_reg_rdata_OBUF[28]_inst 
       (.I(s02_axi_reg_rdata_OBUF[28]),
        .O(s02_axi_reg_rdata[28]));
  OBUF \s02_axi_reg_rdata_OBUF[29]_inst 
       (.I(s02_axi_reg_rdata_OBUF[29]),
        .O(s02_axi_reg_rdata[29]));
  OBUF \s02_axi_reg_rdata_OBUF[2]_inst 
       (.I(s02_axi_reg_rdata_OBUF[2]),
        .O(s02_axi_reg_rdata[2]));
  OBUF \s02_axi_reg_rdata_OBUF[30]_inst 
       (.I(s02_axi_reg_rdata_OBUF[30]),
        .O(s02_axi_reg_rdata[30]));
  OBUF \s02_axi_reg_rdata_OBUF[31]_inst 
       (.I(s02_axi_reg_rdata_OBUF[31]),
        .O(s02_axi_reg_rdata[31]));
  OBUF \s02_axi_reg_rdata_OBUF[3]_inst 
       (.I(s02_axi_reg_rdata_OBUF[3]),
        .O(s02_axi_reg_rdata[3]));
  OBUF \s02_axi_reg_rdata_OBUF[4]_inst 
       (.I(s02_axi_reg_rdata_OBUF[4]),
        .O(s02_axi_reg_rdata[4]));
  OBUF \s02_axi_reg_rdata_OBUF[5]_inst 
       (.I(s02_axi_reg_rdata_OBUF[5]),
        .O(s02_axi_reg_rdata[5]));
  OBUF \s02_axi_reg_rdata_OBUF[6]_inst 
       (.I(s02_axi_reg_rdata_OBUF[6]),
        .O(s02_axi_reg_rdata[6]));
  OBUF \s02_axi_reg_rdata_OBUF[7]_inst 
       (.I(s02_axi_reg_rdata_OBUF[7]),
        .O(s02_axi_reg_rdata[7]));
  OBUF \s02_axi_reg_rdata_OBUF[8]_inst 
       (.I(s02_axi_reg_rdata_OBUF[8]),
        .O(s02_axi_reg_rdata[8]));
  OBUF \s02_axi_reg_rdata_OBUF[9]_inst 
       (.I(s02_axi_reg_rdata_OBUF[9]),
        .O(s02_axi_reg_rdata[9]));
  IBUF s02_axi_reg_rready_IBUF_inst
       (.I(s02_axi_reg_rready),
        .O(s02_axi_reg_rready_IBUF));
  OBUF \s02_axi_reg_rresp_OBUF[0]_inst 
       (.I(1'b0),
        .O(s02_axi_reg_rresp[0]));
  OBUF \s02_axi_reg_rresp_OBUF[1]_inst 
       (.I(1'b0),
        .O(s02_axi_reg_rresp[1]));
  OBUF s02_axi_reg_rvalid_OBUF_inst
       (.I(s02_axi_reg_rvalid_OBUF),
        .O(s02_axi_reg_rvalid));
  IBUF \s02_axi_reg_wdata_IBUF[0]_inst 
       (.I(s02_axi_reg_wdata[0]),
        .O(s02_axi_reg_wdata_IBUF[0]));
  IBUF \s02_axi_reg_wdata_IBUF[10]_inst 
       (.I(s02_axi_reg_wdata[10]),
        .O(s02_axi_reg_wdata_IBUF[10]));
  IBUF \s02_axi_reg_wdata_IBUF[11]_inst 
       (.I(s02_axi_reg_wdata[11]),
        .O(s02_axi_reg_wdata_IBUF[11]));
  IBUF \s02_axi_reg_wdata_IBUF[12]_inst 
       (.I(s02_axi_reg_wdata[12]),
        .O(s02_axi_reg_wdata_IBUF[12]));
  IBUF \s02_axi_reg_wdata_IBUF[13]_inst 
       (.I(s02_axi_reg_wdata[13]),
        .O(s02_axi_reg_wdata_IBUF[13]));
  IBUF \s02_axi_reg_wdata_IBUF[14]_inst 
       (.I(s02_axi_reg_wdata[14]),
        .O(s02_axi_reg_wdata_IBUF[14]));
  IBUF \s02_axi_reg_wdata_IBUF[15]_inst 
       (.I(s02_axi_reg_wdata[15]),
        .O(s02_axi_reg_wdata_IBUF[15]));
  IBUF \s02_axi_reg_wdata_IBUF[16]_inst 
       (.I(s02_axi_reg_wdata[16]),
        .O(s02_axi_reg_wdata_IBUF[16]));
  IBUF \s02_axi_reg_wdata_IBUF[17]_inst 
       (.I(s02_axi_reg_wdata[17]),
        .O(s02_axi_reg_wdata_IBUF[17]));
  IBUF \s02_axi_reg_wdata_IBUF[18]_inst 
       (.I(s02_axi_reg_wdata[18]),
        .O(s02_axi_reg_wdata_IBUF[18]));
  IBUF \s02_axi_reg_wdata_IBUF[19]_inst 
       (.I(s02_axi_reg_wdata[19]),
        .O(s02_axi_reg_wdata_IBUF[19]));
  IBUF \s02_axi_reg_wdata_IBUF[1]_inst 
       (.I(s02_axi_reg_wdata[1]),
        .O(s02_axi_reg_wdata_IBUF[1]));
  IBUF \s02_axi_reg_wdata_IBUF[20]_inst 
       (.I(s02_axi_reg_wdata[20]),
        .O(s02_axi_reg_wdata_IBUF[20]));
  IBUF \s02_axi_reg_wdata_IBUF[21]_inst 
       (.I(s02_axi_reg_wdata[21]),
        .O(s02_axi_reg_wdata_IBUF[21]));
  IBUF \s02_axi_reg_wdata_IBUF[22]_inst 
       (.I(s02_axi_reg_wdata[22]),
        .O(s02_axi_reg_wdata_IBUF[22]));
  IBUF \s02_axi_reg_wdata_IBUF[23]_inst 
       (.I(s02_axi_reg_wdata[23]),
        .O(s02_axi_reg_wdata_IBUF[23]));
  IBUF \s02_axi_reg_wdata_IBUF[24]_inst 
       (.I(s02_axi_reg_wdata[24]),
        .O(s02_axi_reg_wdata_IBUF[24]));
  IBUF \s02_axi_reg_wdata_IBUF[25]_inst 
       (.I(s02_axi_reg_wdata[25]),
        .O(s02_axi_reg_wdata_IBUF[25]));
  IBUF \s02_axi_reg_wdata_IBUF[26]_inst 
       (.I(s02_axi_reg_wdata[26]),
        .O(s02_axi_reg_wdata_IBUF[26]));
  IBUF \s02_axi_reg_wdata_IBUF[27]_inst 
       (.I(s02_axi_reg_wdata[27]),
        .O(s02_axi_reg_wdata_IBUF[27]));
  IBUF \s02_axi_reg_wdata_IBUF[28]_inst 
       (.I(s02_axi_reg_wdata[28]),
        .O(s02_axi_reg_wdata_IBUF[28]));
  IBUF \s02_axi_reg_wdata_IBUF[29]_inst 
       (.I(s02_axi_reg_wdata[29]),
        .O(s02_axi_reg_wdata_IBUF[29]));
  IBUF \s02_axi_reg_wdata_IBUF[2]_inst 
       (.I(s02_axi_reg_wdata[2]),
        .O(s02_axi_reg_wdata_IBUF[2]));
  IBUF \s02_axi_reg_wdata_IBUF[30]_inst 
       (.I(s02_axi_reg_wdata[30]),
        .O(s02_axi_reg_wdata_IBUF[30]));
  IBUF \s02_axi_reg_wdata_IBUF[31]_inst 
       (.I(s02_axi_reg_wdata[31]),
        .O(s02_axi_reg_wdata_IBUF[31]));
  IBUF \s02_axi_reg_wdata_IBUF[3]_inst 
       (.I(s02_axi_reg_wdata[3]),
        .O(s02_axi_reg_wdata_IBUF[3]));
  IBUF \s02_axi_reg_wdata_IBUF[4]_inst 
       (.I(s02_axi_reg_wdata[4]),
        .O(s02_axi_reg_wdata_IBUF[4]));
  IBUF \s02_axi_reg_wdata_IBUF[5]_inst 
       (.I(s02_axi_reg_wdata[5]),
        .O(s02_axi_reg_wdata_IBUF[5]));
  IBUF \s02_axi_reg_wdata_IBUF[6]_inst 
       (.I(s02_axi_reg_wdata[6]),
        .O(s02_axi_reg_wdata_IBUF[6]));
  IBUF \s02_axi_reg_wdata_IBUF[7]_inst 
       (.I(s02_axi_reg_wdata[7]),
        .O(s02_axi_reg_wdata_IBUF[7]));
  IBUF \s02_axi_reg_wdata_IBUF[8]_inst 
       (.I(s02_axi_reg_wdata[8]),
        .O(s02_axi_reg_wdata_IBUF[8]));
  IBUF \s02_axi_reg_wdata_IBUF[9]_inst 
       (.I(s02_axi_reg_wdata[9]),
        .O(s02_axi_reg_wdata_IBUF[9]));
  OBUF s02_axi_reg_wready_OBUF_inst
       (.I(s02_axi_reg_wready_OBUF),
        .O(s02_axi_reg_wready));
  IBUF \s02_axi_reg_wstrb_IBUF[0]_inst 
       (.I(s02_axi_reg_wstrb[0]),
        .O(s02_axi_reg_wstrb_IBUF[0]));
  IBUF \s02_axi_reg_wstrb_IBUF[1]_inst 
       (.I(s02_axi_reg_wstrb[1]),
        .O(s02_axi_reg_wstrb_IBUF[1]));
  IBUF \s02_axi_reg_wstrb_IBUF[2]_inst 
       (.I(s02_axi_reg_wstrb[2]),
        .O(s02_axi_reg_wstrb_IBUF[2]));
  IBUF \s02_axi_reg_wstrb_IBUF[3]_inst 
       (.I(s02_axi_reg_wstrb[3]),
        .O(s02_axi_reg_wstrb_IBUF[3]));
  IBUF s02_axi_reg_wvalid_IBUF_inst
       (.I(s02_axi_reg_wvalid),
        .O(s02_axi_reg_wvalid_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    s_pulse_reg
       (.C(s_tc_out),
        .CE(1'b1),
        .CLR(s_rst_pulse),
        .D(1'b1),
        .Q(tc_out_OBUF));
  LUT2 #(
    .INIT(4'h8)) 
    \s_pulse_reg[1]_i_1 
       (.I0(\s_pulse_reg_reg_n_0_[0] ),
        .I1(tc_out_OBUF),
        .O(\s_pulse_reg[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_pulse_reg_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(tc_out_OBUF),
        .Q(\s_pulse_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_pulse_reg_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\s_pulse_reg[1]_i_1_n_0 ),
        .Q(s_rst_pulse),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_tc_in_i_1
       (.I0(tc_in_IBUF),
        .I1(s_tc_in),
        .O(s_tc_in_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_tc_in_reg
       (.C(clk_logic_IBUF_BUFG),
        .CE(1'b1),
        .D(s_tc_in_i_1_n_0),
        .Q(s_tc_in),
        .R(1'b0));
  IBUF spw_di_IBUF_inst
       (.I(spw_di),
        .O(spw_di_IBUF));
  OBUF spw_do_OBUF_inst
       (.I(spw_do_OBUF),
        .O(spw_do));
  IBUF spw_si_IBUF_inst
       (.I(spw_si),
        .O(spw_si_IBUF));
  OBUF spw_so_OBUF_inst
       (.I(spw_so_OBUF),
        .O(spw_so));
  spwstream spwstream_inst
       (.D(v_write),
        .DIPADIP(s_txflag),
        .DOPBDOP(s_rxflag),
        .E(p_1_out),
        .\FSM_onehot_r_reg[state][3] ({spwstream_inst_n_23,\link_inst/p_0_in8_in ,\link_inst/p_0_in9_in }),
        .Q(s_txdata),
        .WEA(wen3_out),
        .linkdis(s_linkdis),
        .\r_reg[pend_time][7] ({s_ctrl_in,s_time_in}),
        .\r_reg[timercnt][0] (AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_0),
        .\r_reg[timereg][7] ({s_ctrl_out,s_time_out}),
        .\r_reg[txdivnorm] (AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_2),
        .\r_reg[txdivreg][3] ({divcnt[3],divcnt[0]}),
        .\r_reg[txdivreg][7] ({s_txdivcnt[7:4],s_txdivcnt[2:1]}),
        .\r_reg[txdivsafe] (spwstream_inst_n_27),
        .\r_reg[txfull]_0 (spwstream_inst_n_4),
        .\r_reg[txhalff]_0 ({s_txhalff,s_rxhalff,s_errcred,s_erresc,s_errpar,s_errdisc}),
        .\recvo[gotnull] (\recvo[gotnull] ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .rxclk_IBUF_BUFG(rxclk_IBUF_BUFG),
        .s_rxread(s_rxread),
        .s_rxvalid(s_rxvalid),
        .s_tc_in(s_tc_in),
        .s_tc_out(s_tc_out),
        .s_txwrite(s_txwrite),
        .spw_di_IBUF(spw_di_IBUF),
        .spw_do_OBUF(spw_do_OBUF),
        .spw_si_IBUF(spw_si_IBUF),
        .spw_so_OBUF(spw_so_OBUF),
        .\spwwrapper.v_write_reg[8] ({AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_19,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_20,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_21,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_22,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_23,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_24,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_25,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_26,AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_27}),
        .\spwwrapper.v_write_reg[8]_0 (AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_1),
        .syncdff_ff2_reg(clk_logic_IBUF_BUFG),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG),
        .\xmiti[fct_in] (\xmiti[fct_in] ));
  IBUF tc_in_IBUF_inst
       (.I(tc_in),
        .O(tc_in_IBUF));
  OBUF tc_out_OBUF_inst
       (.I(tc_out_OBUF),
        .O(tc_out));
  BUFG txclk_IBUF_BUFG_inst
       (.I(txclk_IBUF),
        .O(txclk_IBUF_BUFG));
  IBUF txclk_IBUF_inst
       (.I(txclk),
        .O(txclk_IBUF));
endmodule

module AXI_SpaceWire_IP_v1_0_S00_AXI_TX
   (s_txwrite,
    DIPADIP,
    s00_axi_tx_wready_OBUF,
    s00_axi_tx_rvalid_OBUF,
    s00_axi_tx_arready_OBUF,
    s00_axi_tx_awready_OBUF,
    s00_axi_tx_bvalid_OBUF,
    s00_axi_tx_rlast_OBUF,
    WEA,
    s00_axi_tx_rdata_OBUF,
    Q,
    CLK,
    s00_axi_tx_aclk_IBUF_BUFG,
    s00_axi_tx_aresetn_IBUF,
    s00_axi_tx_rready_IBUF,
    spwwrapperstate_reg_0,
    s00_axi_tx_awvalid_IBUF,
    s00_axi_tx_arvalid_IBUF,
    s00_axi_tx_wstrb_IBUF,
    s00_axi_tx_wvalid_IBUF,
    s00_axi_tx_wlast_IBUF,
    s00_axi_tx_awaddr_IBUF,
    s00_axi_tx_bready_IBUF,
    s00_axi_tx_araddr_IBUF,
    D,
    \axi_awburst_reg[1]_0 ,
    \axi_awlen_reg[7]_0 ,
    \axi_arburst_reg[1]_0 ,
    s00_axi_tx_wdata_IBUF);
  output s_txwrite;
  output [0:0]DIPADIP;
  output s00_axi_tx_wready_OBUF;
  output s00_axi_tx_rvalid_OBUF;
  output s00_axi_tx_arready_OBUF;
  output s00_axi_tx_awready_OBUF;
  output s00_axi_tx_bvalid_OBUF;
  output s00_axi_tx_rlast_OBUF;
  output [0:0]WEA;
  output [31:0]s00_axi_tx_rdata_OBUF;
  output [7:0]Q;
  input CLK;
  input s00_axi_tx_aclk_IBUF_BUFG;
  input s00_axi_tx_aresetn_IBUF;
  input s00_axi_tx_rready_IBUF;
  input spwwrapperstate_reg_0;
  input s00_axi_tx_awvalid_IBUF;
  input s00_axi_tx_arvalid_IBUF;
  input [3:0]s00_axi_tx_wstrb_IBUF;
  input s00_axi_tx_wvalid_IBUF;
  input s00_axi_tx_wlast_IBUF;
  input [0:0]s00_axi_tx_awaddr_IBUF;
  input s00_axi_tx_bready_IBUF;
  input [0:0]s00_axi_tx_araddr_IBUF;
  input [7:0]D;
  input [1:0]\axi_awburst_reg[1]_0 ;
  input [7:0]\axi_awlen_reg[7]_0 ;
  input [1:0]\axi_arburst_reg[1]_0 ;
  input [31:0]s00_axi_tx_wdata_IBUF;

  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1_n_0 ;
  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1_n_0 ;
  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[10] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[11] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[12] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[13] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[14] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[15] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[9] ;
  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ;
  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg ;
  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ;
  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg ;
  wire CLK;
  wire [7:0]D;
  wire [0:0]DIPADIP;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_0;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_1;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_2;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_3;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_32;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_33;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_34;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_35;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_4;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_5;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_6;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_7;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_8;
  wire L;
  wire [7:0]Q;
  wire RST;
  wire [0:0]WEA;
  wire axi_araddr1;
  wire axi_araddr13_out;
  wire axi_araddr3__3;
  wire axi_araddr3_carry_i_1_n_0;
  wire axi_araddr3_carry_i_2_n_0;
  wire axi_araddr3_carry_i_3_n_0;
  wire axi_araddr3_carry_i_4_n_0;
  wire axi_araddr3_carry_i_5_n_0;
  wire axi_araddr3_carry_i_6_n_0;
  wire axi_araddr3_carry_i_7_n_0;
  wire axi_araddr3_carry_i_8_n_0;
  wire axi_araddr3_carry_n_1;
  wire axi_araddr3_carry_n_2;
  wire axi_araddr3_carry_n_3;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[2]_i_2_n_0 ;
  wire [1:0]axi_arburst;
  wire [1:0]\axi_arburst_reg[1]_0 ;
  wire \axi_arlen_cntr[0]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire \axi_arlen_reg_n_0_[0] ;
  wire \axi_arlen_reg_n_0_[1] ;
  wire \axi_arlen_reg_n_0_[2] ;
  wire \axi_arlen_reg_n_0_[3] ;
  wire \axi_arlen_reg_n_0_[4] ;
  wire \axi_arlen_reg_n_0_[5] ;
  wire \axi_arlen_reg_n_0_[6] ;
  wire \axi_arlen_reg_n_0_[7] ;
  wire axi_arready_i_1__0_n_0;
  wire axi_arready_i_2_n_0;
  wire axi_arready_i_3_n_0;
  wire axi_arready_i_4_n_0;
  wire axi_arready_i_5_n_0;
  wire axi_arready_i_6_n_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire axi_awaddr1;
  wire axi_awaddr3__3;
  wire axi_awaddr3_carry_i_1_n_0;
  wire axi_awaddr3_carry_i_2_n_0;
  wire axi_awaddr3_carry_i_3_n_0;
  wire axi_awaddr3_carry_i_4_n_0;
  wire axi_awaddr3_carry_i_5_n_0;
  wire axi_awaddr3_carry_i_6_n_0;
  wire axi_awaddr3_carry_i_7_n_0;
  wire axi_awaddr3_carry_i_8_n_0;
  wire axi_awaddr3_carry_n_1;
  wire axi_awaddr3_carry_n_2;
  wire axi_awaddr3_carry_n_3;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[2]_i_2_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire [1:0]axi_awburst;
  wire [1:0]\axi_awburst_reg[1]_0 ;
  wire \axi_awlen_cntr[0]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_1_n_0 ;
  wire \axi_awlen_cntr[7]_i_4_n_0 ;
  wire [7:0]axi_awlen_cntr_reg;
  wire [7:0]\axi_awlen_reg[7]_0 ;
  wire \axi_awlen_reg_n_0_[0] ;
  wire \axi_awlen_reg_n_0_[1] ;
  wire \axi_awlen_reg_n_0_[2] ;
  wire \axi_awlen_reg_n_0_[3] ;
  wire \axi_awlen_reg_n_0_[4] ;
  wire \axi_awlen_reg_n_0_[5] ;
  wire \axi_awlen_reg_n_0_[6] ;
  wire \axi_awlen_reg_n_0_[7] ;
  wire axi_awready_i_1__0_n_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1__0_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rvalid_i_1__0_n_0;
  wire axi_wready_i_1__0_n_0;
  wire [10:0]p_0_in;
  wire [10:0]p_0_in__0;
  wire p_11_in;
  wire [10:0]p_1_in;
  wire [7:1]plusOp;
  wire [7:1]plusOp__0;
  wire s00_axi_tx_aclk_IBUF_BUFG;
  wire [0:0]s00_axi_tx_araddr_IBUF;
  wire s00_axi_tx_aresetn_IBUF;
  wire s00_axi_tx_arready_OBUF;
  wire s00_axi_tx_arvalid_IBUF;
  wire [0:0]s00_axi_tx_awaddr_IBUF;
  wire s00_axi_tx_awready_OBUF;
  wire s00_axi_tx_awvalid_IBUF;
  wire s00_axi_tx_bready_IBUF;
  wire s00_axi_tx_bvalid_OBUF;
  wire [31:0]s00_axi_tx_rdata_OBUF;
  wire s00_axi_tx_rlast_OBUF;
  wire s00_axi_tx_rready_IBUF;
  wire s00_axi_tx_rvalid_OBUF;
  wire [31:0]s00_axi_tx_wdata_IBUF;
  wire s00_axi_tx_wlast_IBUF;
  wire s00_axi_tx_wready_OBUF;
  wire [3:0]s00_axi_tx_wstrb_IBUF;
  wire s00_axi_tx_wvalid_IBUF;
  wire s_fifo_di;
  wire \s_fifo_space_reg[10]_i_4_n_0 ;
  wire \s_fifo_space_reg[10]_i_5_n_0 ;
  wire \s_fifo_space_reg[10]_i_6_n_0 ;
  wire \s_fifo_space_reg[10]_i_7_n_0 ;
  wire \s_fifo_space_reg[10]_i_8_n_0 ;
  wire \s_fifo_space_reg[10]_i_9_n_0 ;
  wire \s_fifo_space_reg[3]_i_10_n_0 ;
  wire \s_fifo_space_reg[3]_i_11_n_0 ;
  wire \s_fifo_space_reg[3]_i_4_n_0 ;
  wire \s_fifo_space_reg[3]_i_5_n_0 ;
  wire \s_fifo_space_reg[3]_i_6_n_0 ;
  wire \s_fifo_space_reg[3]_i_7_n_0 ;
  wire \s_fifo_space_reg[3]_i_8_n_0 ;
  wire \s_fifo_space_reg[3]_i_9_n_0 ;
  wire \s_fifo_space_reg[7]_i_10_n_0 ;
  wire \s_fifo_space_reg[7]_i_11_n_0 ;
  wire \s_fifo_space_reg[7]_i_4_n_0 ;
  wire \s_fifo_space_reg[7]_i_5_n_0 ;
  wire \s_fifo_space_reg[7]_i_6_n_0 ;
  wire \s_fifo_space_reg[7]_i_7_n_0 ;
  wire \s_fifo_space_reg[7]_i_8_n_0 ;
  wire \s_fifo_space_reg[7]_i_9_n_0 ;
  wire \s_fifo_space_reg_reg[10]_i_2_n_2 ;
  wire \s_fifo_space_reg_reg[10]_i_2_n_3 ;
  wire \s_fifo_space_reg_reg[10]_i_3_n_2 ;
  wire \s_fifo_space_reg_reg[10]_i_3_n_3 ;
  wire \s_fifo_space_reg_reg[10]_i_3_n_5 ;
  wire \s_fifo_space_reg_reg[10]_i_3_n_6 ;
  wire \s_fifo_space_reg_reg[10]_i_3_n_7 ;
  wire \s_fifo_space_reg_reg[3]_i_2_n_0 ;
  wire \s_fifo_space_reg_reg[3]_i_2_n_1 ;
  wire \s_fifo_space_reg_reg[3]_i_2_n_2 ;
  wire \s_fifo_space_reg_reg[3]_i_2_n_3 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_0 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_1 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_2 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_3 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_4 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_5 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_6 ;
  wire \s_fifo_space_reg_reg[3]_i_3_n_7 ;
  wire \s_fifo_space_reg_reg[7]_i_2_n_0 ;
  wire \s_fifo_space_reg_reg[7]_i_2_n_1 ;
  wire \s_fifo_space_reg_reg[7]_i_2_n_2 ;
  wire \s_fifo_space_reg_reg[7]_i_2_n_3 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_0 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_1 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_2 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_3 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_4 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_5 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_6 ;
  wire \s_fifo_space_reg_reg[7]_i_3_n_7 ;
  wire \s_fifo_space_reg_reg_n_0_[0] ;
  wire \s_fifo_space_reg_reg_n_0_[10] ;
  wire \s_fifo_space_reg_reg_n_0_[1] ;
  wire \s_fifo_space_reg_reg_n_0_[2] ;
  wire \s_fifo_space_reg_reg_n_0_[3] ;
  wire \s_fifo_space_reg_reg_n_0_[4] ;
  wire \s_fifo_space_reg_reg_n_0_[5] ;
  wire \s_fifo_space_reg_reg_n_0_[6] ;
  wire \s_fifo_space_reg_reg_n_0_[7] ;
  wire \s_fifo_space_reg_reg_n_0_[8] ;
  wire \s_fifo_space_reg_reg_n_0_[9] ;
  wire s_fifo_wren1_out;
  wire s_fifo_wren_reg_n_0;
  wire \s_rdcounter[10]_i_3_n_0 ;
  wire \s_rdcounter[4]_i_2_n_0 ;
  wire \s_rdcounter[5]_i_2_n_0 ;
  wire \s_rdcounter[8]_i_2_n_0 ;
  wire \s_rdcounter_reg_n_0_[0] ;
  wire \s_rdcounter_reg_n_0_[10] ;
  wire \s_rdcounter_reg_n_0_[1] ;
  wire \s_rdcounter_reg_n_0_[2] ;
  wire \s_rdcounter_reg_n_0_[3] ;
  wire \s_rdcounter_reg_n_0_[4] ;
  wire \s_rdcounter_reg_n_0_[5] ;
  wire \s_rdcounter_reg_n_0_[6] ;
  wire \s_rdcounter_reg_n_0_[7] ;
  wire \s_rdcounter_reg_n_0_[8] ;
  wire \s_rdcounter_reg_n_0_[9] ;
  wire [10:0]s_size;
  wire s_size1__6;
  wire s_size1_carry__0_i_1_n_0;
  wire s_size1_carry__0_i_2_n_0;
  wire s_size1_carry__0_i_3_n_0;
  wire s_size1_carry__0_i_4_n_0;
  wire s_size1_carry__0_n_3;
  wire s_size1_carry_i_1_n_0;
  wire s_size1_carry_i_2_n_0;
  wire s_size1_carry_i_3_n_0;
  wire s_size1_carry_i_4_n_0;
  wire s_size1_carry_i_5_n_0;
  wire s_size1_carry_i_6_n_0;
  wire s_size1_carry_i_7_n_0;
  wire s_size1_carry_i_8_n_0;
  wire s_size1_carry_n_0;
  wire s_size1_carry_n_1;
  wire s_size1_carry_n_2;
  wire s_size1_carry_n_3;
  wire s_txwrite;
  wire \s_wrcounter[10]_i_3_n_0 ;
  wire \s_wrcounter[4]_i_2_n_0 ;
  wire \s_wrcounter[5]_i_2_n_0 ;
  wire \s_wrcounter[8]_i_2_n_0 ;
  wire \s_wrcounter_reg_n_0_[0] ;
  wire \s_wrcounter_reg_n_0_[10] ;
  wire \s_wrcounter_reg_n_0_[1] ;
  wire \s_wrcounter_reg_n_0_[2] ;
  wire \s_wrcounter_reg_n_0_[3] ;
  wire \s_wrcounter_reg_n_0_[4] ;
  wire \s_wrcounter_reg_n_0_[5] ;
  wire \s_wrcounter_reg_n_0_[6] ;
  wire \s_wrcounter_reg_n_0_[7] ;
  wire \s_wrcounter_reg_n_0_[8] ;
  wire \s_wrcounter_reg_n_0_[9] ;
  wire spwwrapperstate;
  wire spwwrapperstate_reg_0;
  wire \txdata[7]_i_1_n_0 ;
  wire [3:0]NLW_axi_araddr3_carry_O_UNCONNECTED;
  wire [3:0]NLW_axi_awaddr3_carry_O_UNCONNECTED;
  wire [3:2]\NLW_s_fifo_space_reg_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_fifo_space_reg_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_s_fifo_space_reg_reg[10]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_fifo_space_reg_reg[10]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_s_size1_carry_O_UNCONNECTED;
  wire [3:2]NLW_s_size1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_s_size1_carry__0_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[0] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[1] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[2] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[3] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[4] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[5] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[6] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[7] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_1 
       (.I0(s00_axi_tx_wstrb_IBUF[0]),
        .I1(s00_axi_tx_wvalid_IBUF),
        .I2(s00_axi_tx_wready_OBUF),
        .I3(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0 ),
        .O(s_fifo_di));
  LUT4 #(
    .INIT(16'hB888)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2 
       (.I0(L),
        .I1(axi_arv_arr_flag),
        .I2(axi_awv_awr_flag),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[0]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[1]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[2]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[3]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[4]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[5]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[6]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(s_fifo_di),
        .D(s00_axi_tx_wdata_IBUF[7]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[10] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[10] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1 
       (.I0(L),
        .I1(axi_arv_arr_flag),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[8] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1 
       (.I0(\s_fifo_space_reg_reg_n_0_[9] ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[9] ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][11] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[11] ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [3]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][12] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[12] ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [4]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][13] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[13] ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [5]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][14] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[14] ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [6]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][15] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[15] ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [7]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1 
       (.I0(s00_axi_tx_wstrb_IBUF[1]),
        .I1(s00_axi_tx_wvalid_IBUF),
        .I2(s00_axi_tx_wready_OBUF),
        .I3(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0 ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[10] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[10]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[11] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[11]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[12] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[12]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[13] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[13]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[14] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[14]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[15] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[15]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[8] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[8]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[9] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[9]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][16] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [0]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [0]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][17] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [1]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [1]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][18] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [2]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [2]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][19] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [3]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [3]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][20] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [4]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [4]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][21] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [5]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [5]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][22] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [6]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [6]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][23] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [7]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [7]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1 
       (.I0(s00_axi_tx_wstrb_IBUF[2]),
        .I1(s00_axi_tx_wvalid_IBUF),
        .I2(s00_axi_tx_wready_OBUF),
        .I3(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0 ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[16] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[16]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[17] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[17]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[18] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[18]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[19] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[19]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[20] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[20]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[21] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[21]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[22] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[22]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[23] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[23]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][24] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [0]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [0]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][25] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [1]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [1]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][26] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [2]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [2]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][27] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [3]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [3]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][28] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [4]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [4]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][29] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [5]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [5]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][30] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [6]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [6]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][31] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [7]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [7]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1 
       (.I0(s00_axi_tx_wstrb_IBUF[3]),
        .I1(s00_axi_tx_wvalid_IBUF),
        .I2(s00_axi_tx_wready_OBUF),
        .I3(\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0 ),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[24] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[24]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[25] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[25]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[26] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[26]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[27] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[27]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[28] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[28]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[29] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[29]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[30] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[30]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[31] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0 ),
        .D(s00_axi_tx_wdata_IBUF[31]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg [7]),
        .R(1'b0));
  unimacro_FIFO_DUALCLOCK_MACRO_14 FIFO_DUALCLOCK_MACRO_inst_TX
       (.CLK(CLK),
        .D({FIFO_DUALCLOCK_MACRO_inst_TX_n_0,FIFO_DUALCLOCK_MACRO_inst_TX_n_1,FIFO_DUALCLOCK_MACRO_inst_TX_n_2,FIFO_DUALCLOCK_MACRO_inst_TX_n_3,FIFO_DUALCLOCK_MACRO_inst_TX_n_4,FIFO_DUALCLOCK_MACRO_inst_TX_n_5,FIFO_DUALCLOCK_MACRO_inst_TX_n_6,FIFO_DUALCLOCK_MACRO_inst_TX_n_7}),
        .DOP(FIFO_DUALCLOCK_MACRO_inst_TX_n_8),
        .E(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .Q({\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1] ,\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0] }),
        .SR(RST),
        .\bl.fifo_18_inst_bl.fifo_18_bl_0 (FIFO_DUALCLOCK_MACRO_inst_TX_n_32),
        .\bl.fifo_18_inst_bl.fifo_18_bl_1 (FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .\bl.fifo_18_inst_bl.fifo_18_bl_2 (s_txwrite),
        .\bl.fifo_18_inst_bl.fifo_18_bl_3 (s_fifo_wren_reg_n_0),
        .\bl.fifo_18_inst_bl.fifo_18_bl_4 (\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8] ),
        .s00_axi_tx_aclk_IBUF_BUFG(s00_axi_tx_aclk_IBUF_BUFG),
        .s00_axi_tx_aresetn_IBUF(s00_axi_tx_aresetn_IBUF),
        .s00_axi_tx_wvalid_IBUF(s00_axi_tx_wvalid_IBUF),
        .\s_rdcounter_reg[10] (p_0_in),
        .\s_rdcounter_reg[10]_0 ({\s_rdcounter_reg_n_0_[10] ,\s_rdcounter_reg_n_0_[9] ,\s_rdcounter_reg_n_0_[8] ,\s_rdcounter_reg_n_0_[7] ,\s_rdcounter_reg_n_0_[6] ,\s_rdcounter_reg_n_0_[5] ,\s_rdcounter_reg_n_0_[4] ,\s_rdcounter_reg_n_0_[3] ,\s_rdcounter_reg_n_0_[2] ,\s_rdcounter_reg_n_0_[1] ,\s_rdcounter_reg_n_0_[0] }),
        .\s_rdcounter_reg[4] (\s_rdcounter[4]_i_2_n_0 ),
        .\s_rdcounter_reg[5] (\s_rdcounter[5]_i_2_n_0 ),
        .\s_rdcounter_reg[6] (\s_rdcounter[8]_i_2_n_0 ),
        .\s_rdcounter_reg[9] (\s_rdcounter[10]_i_3_n_0 ),
        .\s_wrcounter_reg[10] (p_0_in__0),
        .\s_wrcounter_reg[10]_0 ({\s_wrcounter_reg_n_0_[10] ,\s_wrcounter_reg_n_0_[9] ,\s_wrcounter_reg_n_0_[8] ,\s_wrcounter_reg_n_0_[7] ,\s_wrcounter_reg_n_0_[6] ,\s_wrcounter_reg_n_0_[5] ,\s_wrcounter_reg_n_0_[4] ,\s_wrcounter_reg_n_0_[3] ,\s_wrcounter_reg_n_0_[2] ,\s_wrcounter_reg_n_0_[1] ,\s_wrcounter_reg_n_0_[0] }),
        .\s_wrcounter_reg[10]_1 (\s_wrcounter[10]_i_3_n_0 ),
        .\s_wrcounter_reg[10]_2 (s00_axi_tx_wready_OBUF),
        .\s_wrcounter_reg[10]_3 (\axi_awaddr_reg_n_0_[2] ),
        .\s_wrcounter_reg[4] (\s_wrcounter[4]_i_2_n_0 ),
        .\s_wrcounter_reg[5] (\s_wrcounter[5]_i_2_n_0 ),
        .\s_wrcounter_reg[6] (\s_wrcounter[8]_i_2_n_0 ),
        .spwwrapperstate(spwwrapperstate),
        .spwwrapperstate_reg(FIFO_DUALCLOCK_MACRO_inst_TX_n_33),
        .spwwrapperstate_reg_0(spwwrapperstate_reg_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 axi_araddr3_carry
       (.CI(1'b0),
        .CO({axi_araddr3__3,axi_araddr3_carry_n_1,axi_araddr3_carry_n_2,axi_araddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_araddr3_carry_i_1_n_0,axi_araddr3_carry_i_2_n_0,axi_araddr3_carry_i_3_n_0,axi_araddr3_carry_i_4_n_0}),
        .O(NLW_axi_araddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_araddr3_carry_i_5_n_0,axi_araddr3_carry_i_6_n_0,axi_araddr3_carry_i_7_n_0,axi_araddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_1
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_reg_n_0_[7] ),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_araddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_2
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(\axi_arlen_reg_n_0_[5] ),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_araddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_3
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_araddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_4
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(axi_arlen_cntr_reg[0]),
        .O(axi_araddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_5
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_araddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_6
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_araddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_7
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_araddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_8
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(\axi_arlen_reg_n_0_[0] ),
        .O(axi_araddr3_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAA03AAFFAAFCAA00)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_tx_araddr_IBUF),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .I2(axi_arburst[0]),
        .I3(axi_araddr13_out),
        .I4(\axi_araddr[2]_i_2_n_0 ),
        .I5(L),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \axi_araddr[2]_i_2 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(s00_axi_tx_rready_IBUF),
        .I2(axi_araddr3__3),
        .I3(axi_arburst[0]),
        .I4(axi_arburst[1]),
        .O(\axi_araddr[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(L),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arburst_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(\axi_arburst_reg[1]_0 [0]),
        .Q(axi_arburst[0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arburst_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(\axi_arburst_reg[1]_0 [1]),
        .Q(axi_arburst[1]),
        .R(RST));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_1 
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_tx_arvalid_IBUF),
        .I2(s00_axi_tx_arready_OBUF),
        .O(axi_araddr13_out));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[2]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[4]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[1]),
        .I4(axi_arlen_cntr_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(\axi_arlen_cntr[7]_i_4_n_0 ),
        .O(plusOp[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_tx_arvalid_IBUF),
        .I2(s00_axi_tx_arready_OBUF),
        .I3(s00_axi_tx_aresetn_IBUF),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(axi_araddr3__3),
        .I1(s00_axi_tx_rready_IBUF),
        .I2(s00_axi_tx_rvalid_OBUF),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_cntr[7]_i_4_n_0 ),
        .I2(axi_arlen_cntr_reg[6]),
        .O(plusOp[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_4 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(\axi_arlen_cntr[0]_i_1_n_0 ),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[0]),
        .Q(\axi_arlen_reg_n_0_[0] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[1]),
        .Q(\axi_arlen_reg_n_0_[1] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[2]),
        .Q(\axi_arlen_reg_n_0_[2] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[3]),
        .Q(\axi_arlen_reg_n_0_[3] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[4]),
        .Q(\axi_arlen_reg_n_0_[4] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[5]),
        .Q(\axi_arlen_reg_n_0_[5] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[6]),
        .Q(\axi_arlen_reg_n_0_[6] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_araddr13_out),
        .D(D[7]),
        .Q(\axi_arlen_reg_n_0_[7] ),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFF100010)) 
    axi_arready_i_1__0
       (.I0(axi_awv_awr_flag),
        .I1(axi_arv_arr_flag),
        .I2(s00_axi_tx_arvalid_IBUF),
        .I3(s00_axi_tx_arready_OBUF),
        .I4(axi_arready_i_2_n_0),
        .O(axi_arready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    axi_arready_i_2
       (.I0(axi_arready_i_3_n_0),
        .I1(axi_arready_i_4_n_0),
        .I2(axi_arready_i_5_n_0),
        .I3(axi_arready_i_6_n_0),
        .I4(s00_axi_tx_rready_IBUF),
        .I5(s00_axi_tx_rvalid_OBUF),
        .O(axi_arready_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_3
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_arready_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_4
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(\axi_arlen_reg_n_0_[0] ),
        .O(axi_arready_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_5
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_arready_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_6
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_arready_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_arready_i_1__0_n_0),
        .Q(s00_axi_tx_arready_OBUF),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h50505350)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_arready_i_2_n_0),
        .I1(axi_awv_awr_flag),
        .I2(axi_arv_arr_flag),
        .I3(s00_axi_tx_arvalid_IBUF),
        .I4(s00_axi_tx_arready_OBUF),
        .O(axi_arv_arr_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arv_arr_flag_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(RST));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 axi_awaddr3_carry
       (.CI(1'b0),
        .CO({axi_awaddr3__3,axi_awaddr3_carry_n_1,axi_awaddr3_carry_n_2,axi_awaddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_awaddr3_carry_i_1_n_0,axi_awaddr3_carry_i_2_n_0,axi_awaddr3_carry_i_3_n_0,axi_awaddr3_carry_i_4_n_0}),
        .O(NLW_axi_awaddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_awaddr3_carry_i_5_n_0,axi_awaddr3_carry_i_6_n_0,axi_awaddr3_carry_i_7_n_0,axi_awaddr3_carry_i_8_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_1
       (.I0(axi_awlen_cntr_reg[7]),
        .I1(\axi_awlen_reg_n_0_[7] ),
        .I2(\axi_awlen_reg_n_0_[6] ),
        .I3(axi_awlen_cntr_reg[6]),
        .O(axi_awaddr3_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_2
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(\axi_awlen_reg_n_0_[5] ),
        .I2(\axi_awlen_reg_n_0_[4] ),
        .I3(axi_awlen_cntr_reg[4]),
        .O(axi_awaddr3_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_3
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(\axi_awlen_reg_n_0_[3] ),
        .I2(\axi_awlen_reg_n_0_[2] ),
        .I3(axi_awlen_cntr_reg[2]),
        .O(axi_awaddr3_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_awaddr3_carry_i_4
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(\axi_awlen_reg_n_0_[1] ),
        .I2(\axi_awlen_reg_n_0_[0] ),
        .I3(axi_awlen_cntr_reg[0]),
        .O(axi_awaddr3_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_5
       (.I0(\axi_awlen_reg_n_0_[7] ),
        .I1(axi_awlen_cntr_reg[7]),
        .I2(\axi_awlen_reg_n_0_[6] ),
        .I3(axi_awlen_cntr_reg[6]),
        .O(axi_awaddr3_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_6
       (.I0(\axi_awlen_reg_n_0_[5] ),
        .I1(axi_awlen_cntr_reg[5]),
        .I2(\axi_awlen_reg_n_0_[4] ),
        .I3(axi_awlen_cntr_reg[4]),
        .O(axi_awaddr3_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_7
       (.I0(\axi_awlen_reg_n_0_[3] ),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(\axi_awlen_reg_n_0_[2] ),
        .I3(axi_awlen_cntr_reg[2]),
        .O(axi_awaddr3_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_awaddr3_carry_i_8
       (.I0(\axi_awlen_reg_n_0_[1] ),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(\axi_awlen_reg_n_0_[0] ),
        .O(axi_awaddr3_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAA03AAFFAAFCAA00)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_tx_awaddr_IBUF),
        .I1(\axi_awlen_reg_n_0_[0] ),
        .I2(axi_awburst[0]),
        .I3(p_11_in),
        .I4(\axi_awaddr[2]_i_2_n_0 ),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \axi_awaddr[2]_i_2 
       (.I0(s00_axi_tx_wvalid_IBUF),
        .I1(s00_axi_tx_wready_OBUF),
        .I2(axi_awaddr3__3),
        .I3(axi_awburst[0]),
        .I4(axi_awburst[1]),
        .O(\axi_awaddr[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(RST));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_awburst[1]_i_1 
       (.I0(s00_axi_tx_awready_OBUF),
        .I1(s00_axi_tx_awvalid_IBUF),
        .I2(axi_awv_awr_flag),
        .O(p_11_in));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awburst_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awburst_reg[1]_0 [0]),
        .Q(axi_awburst[0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awburst_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awburst_reg[1]_0 [1]),
        .Q(axi_awburst[1]),
        .R(RST));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awlen_cntr[0]_i_1 
       (.I0(axi_awlen_cntr_reg[0]),
        .O(\axi_awlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[1]_i_1 
       (.I0(axi_awlen_cntr_reg[1]),
        .I1(axi_awlen_cntr_reg[0]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_awlen_cntr[2]_i_1 
       (.I0(axi_awlen_cntr_reg[2]),
        .I1(axi_awlen_cntr_reg[0]),
        .I2(axi_awlen_cntr_reg[1]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_awlen_cntr[3]_i_1 
       (.I0(axi_awlen_cntr_reg[3]),
        .I1(axi_awlen_cntr_reg[1]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[2]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_awlen_cntr[4]_i_1 
       (.I0(axi_awlen_cntr_reg[4]),
        .I1(axi_awlen_cntr_reg[2]),
        .I2(axi_awlen_cntr_reg[0]),
        .I3(axi_awlen_cntr_reg[1]),
        .I4(axi_awlen_cntr_reg[3]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axi_awlen_cntr[5]_i_1 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(plusOp__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_awlen_cntr[6]_i_1 
       (.I0(axi_awlen_cntr_reg[6]),
        .I1(\axi_awlen_cntr[7]_i_4_n_0 ),
        .O(plusOp__0[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_awlen_cntr[7]_i_1 
       (.I0(axi_awv_awr_flag),
        .I1(s00_axi_tx_awvalid_IBUF),
        .I2(s00_axi_tx_awready_OBUF),
        .I3(s00_axi_tx_aresetn_IBUF),
        .O(\axi_awlen_cntr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_awlen_cntr[7]_i_2 
       (.I0(axi_awaddr3__3),
        .I1(s00_axi_tx_wready_OBUF),
        .I2(s00_axi_tx_wvalid_IBUF),
        .O(axi_awaddr1));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_awlen_cntr[7]_i_3 
       (.I0(axi_awlen_cntr_reg[7]),
        .I1(\axi_awlen_cntr[7]_i_4_n_0 ),
        .I2(axi_awlen_cntr_reg[6]),
        .O(plusOp__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_awlen_cntr[7]_i_4 
       (.I0(axi_awlen_cntr_reg[5]),
        .I1(axi_awlen_cntr_reg[3]),
        .I2(axi_awlen_cntr_reg[1]),
        .I3(axi_awlen_cntr_reg[0]),
        .I4(axi_awlen_cntr_reg[2]),
        .I5(axi_awlen_cntr_reg[4]),
        .O(\axi_awlen_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(\axi_awlen_cntr[0]_i_1_n_0 ),
        .Q(axi_awlen_cntr_reg[0]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[1]),
        .Q(axi_awlen_cntr_reg[1]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[2]),
        .Q(axi_awlen_cntr_reg[2]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[3]),
        .Q(axi_awlen_cntr_reg[3]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[4]),
        .Q(axi_awlen_cntr_reg[4]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[5]),
        .Q(axi_awlen_cntr_reg[5]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[6]),
        .Q(axi_awlen_cntr_reg[6]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_cntr_reg[7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(axi_awaddr1),
        .D(plusOp__0[7]),
        .Q(axi_awlen_cntr_reg[7]),
        .R(\axi_awlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [0]),
        .Q(\axi_awlen_reg_n_0_[0] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [1]),
        .Q(\axi_awlen_reg_n_0_[1] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [2]),
        .Q(\axi_awlen_reg_n_0_[2] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [3]),
        .Q(\axi_awlen_reg_n_0_[3] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [4]),
        .Q(\axi_awlen_reg_n_0_[4] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [5]),
        .Q(\axi_awlen_reg_n_0_[5] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [6]),
        .Q(\axi_awlen_reg_n_0_[6] ),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awlen_reg[7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(p_11_in),
        .D(\axi_awlen_reg[7]_0 [7]),
        .Q(\axi_awlen_reg_n_0_[7] ),
        .R(RST));
  LUT6 #(
    .INIT(64'hCCDC001000100010)) 
    axi_awready_i_1__0
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_tx_awready_OBUF),
        .I2(s00_axi_tx_awvalid_IBUF),
        .I3(axi_awv_awr_flag),
        .I4(s00_axi_tx_wlast_IBUF),
        .I5(s00_axi_tx_wready_OBUF),
        .O(axi_awready_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_awready_i_1__0_n_0),
        .Q(s00_axi_tx_awready_OBUF),
        .R(RST));
  LUT6 #(
    .INIT(64'h77777777000F0000)) 
    axi_awv_awr_flag_i_1
       (.I0(s00_axi_tx_wlast_IBUF),
        .I1(s00_axi_tx_wready_OBUF),
        .I2(axi_arv_arr_flag),
        .I3(s00_axi_tx_awready_OBUF),
        .I4(s00_axi_tx_awvalid_IBUF),
        .I5(axi_awv_awr_flag),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awv_awr_flag_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(RST));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1__0
       (.I0(s00_axi_tx_bready_IBUF),
        .I1(s00_axi_tx_bvalid_OBUF),
        .I2(axi_awv_awr_flag),
        .I3(s00_axi_tx_wvalid_IBUF),
        .I4(s00_axi_tx_wlast_IBUF),
        .I5(s00_axi_tx_wready_OBUF),
        .O(axi_bvalid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_bvalid_i_1__0_n_0),
        .Q(s00_axi_tx_bvalid_OBUF),
        .R(RST));
  LUT6 #(
    .INIT(64'h0000000044044400)) 
    axi_rlast_i_1
       (.I0(axi_araddr13_out),
        .I1(s00_axi_tx_aresetn_IBUF),
        .I2(s00_axi_tx_rready_IBUF),
        .I3(axi_rlast0),
        .I4(s00_axi_tx_rlast_OBUF),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    axi_rlast_i_2
       (.I0(axi_arready_i_3_n_0),
        .I1(axi_arready_i_4_n_0),
        .I2(axi_arready_i_5_n_0),
        .I3(axi_arready_i_6_n_0),
        .I4(axi_arv_arr_flag),
        .I5(s00_axi_tx_rlast_OBUF),
        .O(axi_rlast0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rlast_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(s00_axi_tx_rlast_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1__0
       (.I0(axi_arv_arr_flag),
        .I1(s00_axi_tx_rready_IBUF),
        .I2(s00_axi_tx_rvalid_OBUF),
        .O(axi_rvalid_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_rvalid_i_1__0_n_0),
        .Q(s00_axi_tx_rvalid_OBUF),
        .R(RST));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1__0
       (.I0(s00_axi_tx_wvalid_IBUF),
        .I1(axi_awv_awr_flag),
        .I2(s00_axi_tx_wlast_IBUF),
        .I3(s00_axi_tx_wready_OBUF),
        .O(axi_wready_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_wready_i_1__0_n_0),
        .Q(s00_axi_tx_wready_OBUF),
        .R(RST));
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[0]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [0]),
        .O(s00_axi_tx_rdata_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[10]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [2]),
        .O(s00_axi_tx_rdata_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[11]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [3]),
        .O(s00_axi_tx_rdata_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[12]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [4]),
        .O(s00_axi_tx_rdata_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[13]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [5]),
        .O(s00_axi_tx_rdata_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[14]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [6]),
        .O(s00_axi_tx_rdata_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[15]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [7]),
        .O(s00_axi_tx_rdata_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[16]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [0]),
        .O(s00_axi_tx_rdata_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[17]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [1]),
        .O(s00_axi_tx_rdata_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[18]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [2]),
        .O(s00_axi_tx_rdata_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[19]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [3]),
        .O(s00_axi_tx_rdata_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[1]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [1]),
        .O(s00_axi_tx_rdata_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[20]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [4]),
        .O(s00_axi_tx_rdata_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[21]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [5]),
        .O(s00_axi_tx_rdata_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[22]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [6]),
        .O(s00_axi_tx_rdata_OBUF[22]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[23]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2 [7]),
        .O(s00_axi_tx_rdata_OBUF[23]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[24]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [0]),
        .O(s00_axi_tx_rdata_OBUF[24]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[25]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [1]),
        .O(s00_axi_tx_rdata_OBUF[25]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[26]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [2]),
        .O(s00_axi_tx_rdata_OBUF[26]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[27]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [3]),
        .O(s00_axi_tx_rdata_OBUF[27]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[28]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [4]),
        .O(s00_axi_tx_rdata_OBUF[28]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[29]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [5]),
        .O(s00_axi_tx_rdata_OBUF[29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[2]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [2]),
        .O(s00_axi_tx_rdata_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[30]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [6]),
        .O(s00_axi_tx_rdata_OBUF[30]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[31]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3 [7]),
        .O(s00_axi_tx_rdata_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[3]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [3]),
        .O(s00_axi_tx_rdata_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[4]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [4]),
        .O(s00_axi_tx_rdata_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[5]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [5]),
        .O(s00_axi_tx_rdata_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[6]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [6]),
        .O(s00_axi_tx_rdata_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[7]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [7]),
        .O(s00_axi_tx_rdata_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[8]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [0]),
        .O(s00_axi_tx_rdata_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s00_axi_tx_rdata_OBUF[9]_inst_i_1 
       (.I0(s00_axi_tx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [1]),
        .O(s00_axi_tx_rdata_OBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    s_fifo_rden_reg
       (.C(CLK),
        .CE(1'b1),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_32),
        .Q(s_txwrite),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[0]_i_1 
       (.I0(p_1_in[0]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[3]_i_3_n_7 ),
        .O(s_size[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[10]_i_1 
       (.I0(p_1_in[10]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[10]_i_3_n_5 ),
        .O(s_size[10]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[10]_i_4 
       (.I0(\s_rdcounter_reg_n_0_[10] ),
        .I1(\s_wrcounter_reg_n_0_[10] ),
        .O(\s_fifo_space_reg[10]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[10]_i_5 
       (.I0(\s_wrcounter_reg_n_0_[9] ),
        .I1(\s_rdcounter_reg_n_0_[9] ),
        .O(\s_fifo_space_reg[10]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[10]_i_6 
       (.I0(\s_wrcounter_reg_n_0_[8] ),
        .I1(\s_rdcounter_reg_n_0_[8] ),
        .O(\s_fifo_space_reg[10]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[10]_i_7 
       (.I0(\s_rdcounter_reg_n_0_[10] ),
        .I1(\s_wrcounter_reg_n_0_[10] ),
        .O(\s_fifo_space_reg[10]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[10]_i_8 
       (.I0(\s_wrcounter_reg_n_0_[9] ),
        .I1(\s_rdcounter_reg_n_0_[9] ),
        .O(\s_fifo_space_reg[10]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[10]_i_9 
       (.I0(\s_wrcounter_reg_n_0_[8] ),
        .I1(\s_rdcounter_reg_n_0_[8] ),
        .O(\s_fifo_space_reg[10]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[1]_i_1 
       (.I0(p_1_in[1]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[3]_i_3_n_6 ),
        .O(s_size[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[2]_i_1 
       (.I0(p_1_in[2]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[3]_i_3_n_5 ),
        .O(s_size[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[3]_i_1 
       (.I0(p_1_in[3]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[3]_i_3_n_4 ),
        .O(s_size[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_10 
       (.I0(\s_rdcounter_reg_n_0_[1] ),
        .I1(\s_wrcounter_reg_n_0_[1] ),
        .O(\s_fifo_space_reg[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_11 
       (.I0(\s_rdcounter_reg_n_0_[0] ),
        .I1(\s_wrcounter_reg_n_0_[0] ),
        .O(\s_fifo_space_reg[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_4 
       (.I0(\s_rdcounter_reg_n_0_[3] ),
        .I1(\s_wrcounter_reg_n_0_[3] ),
        .O(\s_fifo_space_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_5 
       (.I0(\s_rdcounter_reg_n_0_[2] ),
        .I1(\s_wrcounter_reg_n_0_[2] ),
        .O(\s_fifo_space_reg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_6 
       (.I0(\s_rdcounter_reg_n_0_[1] ),
        .I1(\s_wrcounter_reg_n_0_[1] ),
        .O(\s_fifo_space_reg[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_7 
       (.I0(\s_rdcounter_reg_n_0_[0] ),
        .I1(\s_wrcounter_reg_n_0_[0] ),
        .O(\s_fifo_space_reg[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_8 
       (.I0(\s_rdcounter_reg_n_0_[3] ),
        .I1(\s_wrcounter_reg_n_0_[3] ),
        .O(\s_fifo_space_reg[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[3]_i_9 
       (.I0(\s_rdcounter_reg_n_0_[2] ),
        .I1(\s_wrcounter_reg_n_0_[2] ),
        .O(\s_fifo_space_reg[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[4]_i_1 
       (.I0(p_1_in[4]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[7]_i_3_n_7 ),
        .O(s_size[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[5]_i_1 
       (.I0(p_1_in[5]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[7]_i_3_n_6 ),
        .O(s_size[5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[6]_i_1 
       (.I0(p_1_in[6]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[7]_i_3_n_5 ),
        .O(s_size[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[7]_i_1 
       (.I0(p_1_in[7]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[7]_i_3_n_4 ),
        .O(s_size[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_10 
       (.I0(\s_rdcounter_reg_n_0_[5] ),
        .I1(\s_wrcounter_reg_n_0_[5] ),
        .O(\s_fifo_space_reg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_11 
       (.I0(\s_rdcounter_reg_n_0_[4] ),
        .I1(\s_wrcounter_reg_n_0_[4] ),
        .O(\s_fifo_space_reg[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_4 
       (.I0(\s_rdcounter_reg_n_0_[7] ),
        .I1(\s_wrcounter_reg_n_0_[7] ),
        .O(\s_fifo_space_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_5 
       (.I0(\s_rdcounter_reg_n_0_[6] ),
        .I1(\s_wrcounter_reg_n_0_[6] ),
        .O(\s_fifo_space_reg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_6 
       (.I0(\s_rdcounter_reg_n_0_[5] ),
        .I1(\s_wrcounter_reg_n_0_[5] ),
        .O(\s_fifo_space_reg[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_7 
       (.I0(\s_rdcounter_reg_n_0_[4] ),
        .I1(\s_wrcounter_reg_n_0_[4] ),
        .O(\s_fifo_space_reg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_8 
       (.I0(\s_rdcounter_reg_n_0_[7] ),
        .I1(\s_wrcounter_reg_n_0_[7] ),
        .O(\s_fifo_space_reg[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_space_reg[7]_i_9 
       (.I0(\s_rdcounter_reg_n_0_[6] ),
        .I1(\s_wrcounter_reg_n_0_[6] ),
        .O(\s_fifo_space_reg[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[8]_i_1 
       (.I0(p_1_in[8]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[10]_i_3_n_7 ),
        .O(s_size[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_space_reg[9]_i_1 
       (.I0(p_1_in[9]),
        .I1(s_size1__6),
        .I2(\s_fifo_space_reg_reg[10]_i_3_n_6 ),
        .O(s_size[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[0]),
        .Q(\s_fifo_space_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[10]),
        .Q(\s_fifo_space_reg_reg_n_0_[10] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_fifo_space_reg_reg[10]_i_2 
       (.CI(\s_fifo_space_reg_reg[7]_i_2_n_0 ),
        .CO({\NLW_s_fifo_space_reg_reg[10]_i_2_CO_UNCONNECTED [3:2],\s_fifo_space_reg_reg[10]_i_2_n_2 ,\s_fifo_space_reg_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_rdcounter_reg_n_0_[9] ,\s_rdcounter_reg_n_0_[8] }),
        .O({\NLW_s_fifo_space_reg_reg[10]_i_2_O_UNCONNECTED [3],p_1_in[10:8]}),
        .S({1'b0,\s_fifo_space_reg[10]_i_4_n_0 ,\s_fifo_space_reg[10]_i_5_n_0 ,\s_fifo_space_reg[10]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_fifo_space_reg_reg[10]_i_3 
       (.CI(\s_fifo_space_reg_reg[7]_i_3_n_0 ),
        .CO({\NLW_s_fifo_space_reg_reg[10]_i_3_CO_UNCONNECTED [3:2],\s_fifo_space_reg_reg[10]_i_3_n_2 ,\s_fifo_space_reg_reg[10]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_rdcounter_reg_n_0_[9] ,\s_rdcounter_reg_n_0_[8] }),
        .O({\NLW_s_fifo_space_reg_reg[10]_i_3_O_UNCONNECTED [3],\s_fifo_space_reg_reg[10]_i_3_n_5 ,\s_fifo_space_reg_reg[10]_i_3_n_6 ,\s_fifo_space_reg_reg[10]_i_3_n_7 }),
        .S({1'b0,\s_fifo_space_reg[10]_i_7_n_0 ,\s_fifo_space_reg[10]_i_8_n_0 ,\s_fifo_space_reg[10]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[1]),
        .Q(\s_fifo_space_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[2]),
        .Q(\s_fifo_space_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[3]),
        .Q(\s_fifo_space_reg_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_fifo_space_reg_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\s_fifo_space_reg_reg[3]_i_2_n_0 ,\s_fifo_space_reg_reg[3]_i_2_n_1 ,\s_fifo_space_reg_reg[3]_i_2_n_2 ,\s_fifo_space_reg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_rdcounter_reg_n_0_[3] ,\s_rdcounter_reg_n_0_[2] ,\s_rdcounter_reg_n_0_[1] ,\s_rdcounter_reg_n_0_[0] }),
        .O(p_1_in[3:0]),
        .S({\s_fifo_space_reg[3]_i_4_n_0 ,\s_fifo_space_reg[3]_i_5_n_0 ,\s_fifo_space_reg[3]_i_6_n_0 ,\s_fifo_space_reg[3]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_fifo_space_reg_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\s_fifo_space_reg_reg[3]_i_3_n_0 ,\s_fifo_space_reg_reg[3]_i_3_n_1 ,\s_fifo_space_reg_reg[3]_i_3_n_2 ,\s_fifo_space_reg_reg[3]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_rdcounter_reg_n_0_[3] ,\s_rdcounter_reg_n_0_[2] ,\s_rdcounter_reg_n_0_[1] ,\s_rdcounter_reg_n_0_[0] }),
        .O({\s_fifo_space_reg_reg[3]_i_3_n_4 ,\s_fifo_space_reg_reg[3]_i_3_n_5 ,\s_fifo_space_reg_reg[3]_i_3_n_6 ,\s_fifo_space_reg_reg[3]_i_3_n_7 }),
        .S({\s_fifo_space_reg[3]_i_8_n_0 ,\s_fifo_space_reg[3]_i_9_n_0 ,\s_fifo_space_reg[3]_i_10_n_0 ,\s_fifo_space_reg[3]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[4]),
        .Q(\s_fifo_space_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[5]),
        .Q(\s_fifo_space_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[6]),
        .Q(\s_fifo_space_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[7]),
        .Q(\s_fifo_space_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_fifo_space_reg_reg[7]_i_2 
       (.CI(\s_fifo_space_reg_reg[3]_i_2_n_0 ),
        .CO({\s_fifo_space_reg_reg[7]_i_2_n_0 ,\s_fifo_space_reg_reg[7]_i_2_n_1 ,\s_fifo_space_reg_reg[7]_i_2_n_2 ,\s_fifo_space_reg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_rdcounter_reg_n_0_[7] ,\s_rdcounter_reg_n_0_[6] ,\s_rdcounter_reg_n_0_[5] ,\s_rdcounter_reg_n_0_[4] }),
        .O(p_1_in[7:4]),
        .S({\s_fifo_space_reg[7]_i_4_n_0 ,\s_fifo_space_reg[7]_i_5_n_0 ,\s_fifo_space_reg[7]_i_6_n_0 ,\s_fifo_space_reg[7]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_fifo_space_reg_reg[7]_i_3 
       (.CI(\s_fifo_space_reg_reg[3]_i_3_n_0 ),
        .CO({\s_fifo_space_reg_reg[7]_i_3_n_0 ,\s_fifo_space_reg_reg[7]_i_3_n_1 ,\s_fifo_space_reg_reg[7]_i_3_n_2 ,\s_fifo_space_reg_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_rdcounter_reg_n_0_[7] ,\s_rdcounter_reg_n_0_[6] ,\s_rdcounter_reg_n_0_[5] ,\s_rdcounter_reg_n_0_[4] }),
        .O({\s_fifo_space_reg_reg[7]_i_3_n_4 ,\s_fifo_space_reg_reg[7]_i_3_n_5 ,\s_fifo_space_reg_reg[7]_i_3_n_6 ,\s_fifo_space_reg_reg[7]_i_3_n_7 }),
        .S({\s_fifo_space_reg[7]_i_8_n_0 ,\s_fifo_space_reg[7]_i_9_n_0 ,\s_fifo_space_reg[7]_i_10_n_0 ,\s_fifo_space_reg[7]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[8]),
        .Q(\s_fifo_space_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_space_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(s_size[9]),
        .Q(\s_fifo_space_reg_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    s_fifo_wren_i_1
       (.I0(s00_axi_tx_wready_OBUF),
        .I1(s00_axi_tx_wvalid_IBUF),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .O(s_fifo_wren1_out));
  FDRE #(
    .INIT(1'b0)) 
    s_fifo_wren_reg
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_fifo_wren1_out),
        .Q(s_fifo_wren_reg_n_0),
        .R(RST));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_1
       (.I0(s_txwrite),
        .I1(spwwrapperstate_reg_0),
        .O(WEA));
  LUT4 #(
    .INIT(16'h0800)) 
    \s_rdcounter[10]_i_3 
       (.I0(\s_rdcounter_reg_n_0_[8] ),
        .I1(\s_rdcounter_reg_n_0_[7] ),
        .I2(\s_rdcounter[8]_i_2_n_0 ),
        .I3(\s_rdcounter_reg_n_0_[6] ),
        .O(\s_rdcounter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_rdcounter[4]_i_2 
       (.I0(\s_rdcounter_reg_n_0_[2] ),
        .I1(\s_rdcounter_reg_n_0_[1] ),
        .I2(\s_rdcounter_reg_n_0_[0] ),
        .I3(\s_rdcounter_reg_n_0_[3] ),
        .O(\s_rdcounter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_rdcounter[5]_i_2 
       (.I0(\s_rdcounter_reg_n_0_[3] ),
        .I1(\s_rdcounter_reg_n_0_[0] ),
        .I2(\s_rdcounter_reg_n_0_[1] ),
        .I3(\s_rdcounter_reg_n_0_[2] ),
        .I4(\s_rdcounter_reg_n_0_[4] ),
        .O(\s_rdcounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \s_rdcounter[8]_i_2 
       (.I0(\s_rdcounter_reg_n_0_[4] ),
        .I1(\s_rdcounter_reg_n_0_[2] ),
        .I2(\s_rdcounter_reg_n_0_[1] ),
        .I3(\s_rdcounter_reg_n_0_[0] ),
        .I4(\s_rdcounter_reg_n_0_[3] ),
        .I5(\s_rdcounter_reg_n_0_[5] ),
        .O(\s_rdcounter[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[0] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[0]),
        .Q(\s_rdcounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[10] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[10]),
        .Q(\s_rdcounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[1] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[1]),
        .Q(\s_rdcounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[2] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[2]),
        .Q(\s_rdcounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[3] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[3]),
        .Q(\s_rdcounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[4] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[4]),
        .Q(\s_rdcounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[5] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[5]),
        .Q(\s_rdcounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[6] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[6]),
        .Q(\s_rdcounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[7] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[7]),
        .Q(\s_rdcounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[8] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[8]),
        .Q(\s_rdcounter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[9] 
       (.C(CLK),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .D(p_0_in[9]),
        .Q(\s_rdcounter_reg_n_0_[9] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_size1_carry
       (.CI(1'b0),
        .CO({s_size1_carry_n_0,s_size1_carry_n_1,s_size1_carry_n_2,s_size1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({s_size1_carry_i_1_n_0,s_size1_carry_i_2_n_0,s_size1_carry_i_3_n_0,s_size1_carry_i_4_n_0}),
        .O(NLW_s_size1_carry_O_UNCONNECTED[3:0]),
        .S({s_size1_carry_i_5_n_0,s_size1_carry_i_6_n_0,s_size1_carry_i_7_n_0,s_size1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 s_size1_carry__0
       (.CI(s_size1_carry_n_0),
        .CO({NLW_s_size1_carry__0_CO_UNCONNECTED[3:2],s_size1__6,s_size1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,s_size1_carry__0_i_1_n_0,s_size1_carry__0_i_2_n_0}),
        .O(NLW_s_size1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,s_size1_carry__0_i_3_n_0,s_size1_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    s_size1_carry__0_i_1
       (.I0(\s_wrcounter_reg_n_0_[10] ),
        .I1(\s_rdcounter_reg_n_0_[10] ),
        .O(s_size1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    s_size1_carry__0_i_2
       (.I0(\s_rdcounter_reg_n_0_[9] ),
        .I1(\s_wrcounter_reg_n_0_[9] ),
        .I2(\s_wrcounter_reg_n_0_[8] ),
        .I3(\s_rdcounter_reg_n_0_[8] ),
        .O(s_size1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    s_size1_carry__0_i_3
       (.I0(\s_rdcounter_reg_n_0_[10] ),
        .I1(\s_wrcounter_reg_n_0_[10] ),
        .O(s_size1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_size1_carry__0_i_4
       (.I0(\s_wrcounter_reg_n_0_[9] ),
        .I1(\s_rdcounter_reg_n_0_[9] ),
        .I2(\s_wrcounter_reg_n_0_[8] ),
        .I3(\s_rdcounter_reg_n_0_[8] ),
        .O(s_size1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    s_size1_carry_i_1
       (.I0(\s_wrcounter_reg_n_0_[7] ),
        .I1(\s_rdcounter_reg_n_0_[7] ),
        .I2(\s_wrcounter_reg_n_0_[6] ),
        .I3(\s_rdcounter_reg_n_0_[6] ),
        .O(s_size1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    s_size1_carry_i_2
       (.I0(\s_wrcounter_reg_n_0_[5] ),
        .I1(\s_rdcounter_reg_n_0_[5] ),
        .I2(\s_wrcounter_reg_n_0_[4] ),
        .I3(\s_rdcounter_reg_n_0_[4] ),
        .O(s_size1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    s_size1_carry_i_3
       (.I0(\s_wrcounter_reg_n_0_[3] ),
        .I1(\s_rdcounter_reg_n_0_[3] ),
        .I2(\s_wrcounter_reg_n_0_[2] ),
        .I3(\s_rdcounter_reg_n_0_[2] ),
        .O(s_size1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    s_size1_carry_i_4
       (.I0(\s_wrcounter_reg_n_0_[1] ),
        .I1(\s_rdcounter_reg_n_0_[1] ),
        .I2(\s_wrcounter_reg_n_0_[0] ),
        .I3(\s_rdcounter_reg_n_0_[0] ),
        .O(s_size1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_size1_carry_i_5
       (.I0(\s_rdcounter_reg_n_0_[7] ),
        .I1(\s_wrcounter_reg_n_0_[7] ),
        .I2(\s_rdcounter_reg_n_0_[6] ),
        .I3(\s_wrcounter_reg_n_0_[6] ),
        .O(s_size1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_size1_carry_i_6
       (.I0(\s_rdcounter_reg_n_0_[5] ),
        .I1(\s_wrcounter_reg_n_0_[5] ),
        .I2(\s_rdcounter_reg_n_0_[4] ),
        .I3(\s_wrcounter_reg_n_0_[4] ),
        .O(s_size1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_size1_carry_i_7
       (.I0(\s_rdcounter_reg_n_0_[3] ),
        .I1(\s_wrcounter_reg_n_0_[3] ),
        .I2(\s_rdcounter_reg_n_0_[2] ),
        .I3(\s_wrcounter_reg_n_0_[2] ),
        .O(s_size1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    s_size1_carry_i_8
       (.I0(\s_rdcounter_reg_n_0_[1] ),
        .I1(\s_wrcounter_reg_n_0_[1] ),
        .I2(\s_rdcounter_reg_n_0_[0] ),
        .I3(\s_wrcounter_reg_n_0_[0] ),
        .O(s_size1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    \s_wrcounter[10]_i_3 
       (.I0(\s_wrcounter_reg_n_0_[8] ),
        .I1(\s_wrcounter_reg_n_0_[7] ),
        .I2(\s_wrcounter[8]_i_2_n_0 ),
        .I3(\s_wrcounter_reg_n_0_[6] ),
        .O(\s_wrcounter[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \s_wrcounter[4]_i_2 
       (.I0(\s_wrcounter_reg_n_0_[2] ),
        .I1(\s_wrcounter_reg_n_0_[1] ),
        .I2(\s_wrcounter_reg_n_0_[0] ),
        .I3(\s_wrcounter_reg_n_0_[3] ),
        .O(\s_wrcounter[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s_wrcounter[5]_i_2 
       (.I0(\s_wrcounter_reg_n_0_[3] ),
        .I1(\s_wrcounter_reg_n_0_[0] ),
        .I2(\s_wrcounter_reg_n_0_[1] ),
        .I3(\s_wrcounter_reg_n_0_[2] ),
        .I4(\s_wrcounter_reg_n_0_[4] ),
        .O(\s_wrcounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \s_wrcounter[8]_i_2 
       (.I0(\s_wrcounter_reg_n_0_[4] ),
        .I1(\s_wrcounter_reg_n_0_[2] ),
        .I2(\s_wrcounter_reg_n_0_[1] ),
        .I3(\s_wrcounter_reg_n_0_[0] ),
        .I4(\s_wrcounter_reg_n_0_[3] ),
        .I5(\s_wrcounter_reg_n_0_[5] ),
        .O(\s_wrcounter[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[0] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[0]),
        .Q(\s_wrcounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[10] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[10]),
        .Q(\s_wrcounter_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[1] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[1]),
        .Q(\s_wrcounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[2] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[2]),
        .Q(\s_wrcounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[3] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[3]),
        .Q(\s_wrcounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[4] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[4]),
        .Q(\s_wrcounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[5] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[5]),
        .Q(\s_wrcounter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[6] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[6]),
        .Q(\s_wrcounter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[7] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[7]),
        .Q(\s_wrcounter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[8] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[8]),
        .Q(\s_wrcounter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[9] 
       (.C(s00_axi_tx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .D(p_0_in__0[9]),
        .Q(\s_wrcounter_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    spwwrapperstate_reg
       (.C(CLK),
        .CE(1'b1),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_33),
        .Q(spwwrapperstate),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h1)) 
    \txdata[7]_i_1 
       (.I0(spwwrapperstate),
        .I1(spwwrapperstate_reg_0),
        .O(\txdata[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[0] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_7),
        .Q(Q[0]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[1] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_6),
        .Q(Q[1]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[2] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_5),
        .Q(Q[2]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[3] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_4),
        .Q(Q[3]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[4] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_3),
        .Q(Q[4]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[5] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .Q(Q[5]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[6] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_1),
        .Q(Q[6]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    \txdata_reg[7] 
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_0),
        .Q(Q[7]),
        .R(RST));
  FDRE #(
    .INIT(1'b0)) 
    txflag_reg
       (.C(CLK),
        .CE(\txdata[7]_i_1_n_0 ),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_8),
        .Q(DIPADIP),
        .R(RST));
endmodule

module AXI_SpaceWire_IP_v1_0_S01_AXI_RX
   (s_rxread,
    \spwwrapper.openPacket_reg_0 ,
    s01_axi_rx_wready_OBUF,
    s01_axi_rx_awready_OBUF,
    s01_axi_rx_rvalid_OBUF,
    s01_axi_rx_arready_OBUF,
    s01_axi_rx_bvalid_OBUF,
    s01_axi_rx_rlast_OBUF,
    s01_axi_rx_rdata_OBUF,
    Q,
    s01_axi_rx_aclk_IBUF_BUFG,
    rst_logic_IBUF,
    CLK,
    s_rxvalid,
    DOPBDOP,
    s01_axi_rx_aresetn_IBUF,
    s01_axi_rx_rready_IBUF,
    s01_axi_rx_arvalid_IBUF,
    s01_axi_rx_wvalid_IBUF,
    s01_axi_rx_wlast_IBUF,
    s01_axi_rx_awvalid_IBUF,
    s01_axi_rx_araddr_IBUF,
    s01_axi_rx_bready_IBUF,
    E,
    D,
    \axi_arlen_reg[7]_0 ,
    \axi_arburst_reg[1]_0 );
  output s_rxread;
  output \spwwrapper.openPacket_reg_0 ;
  output s01_axi_rx_wready_OBUF;
  output s01_axi_rx_awready_OBUF;
  output s01_axi_rx_rvalid_OBUF;
  output s01_axi_rx_arready_OBUF;
  output s01_axi_rx_bvalid_OBUF;
  output s01_axi_rx_rlast_OBUF;
  output [10:0]s01_axi_rx_rdata_OBUF;
  output [8:0]Q;
  input s01_axi_rx_aclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input CLK;
  input s_rxvalid;
  input [0:0]DOPBDOP;
  input s01_axi_rx_aresetn_IBUF;
  input s01_axi_rx_rready_IBUF;
  input s01_axi_rx_arvalid_IBUF;
  input s01_axi_rx_wvalid_IBUF;
  input s01_axi_rx_wlast_IBUF;
  input s01_axi_rx_awvalid_IBUF;
  input [0:0]s01_axi_rx_araddr_IBUF;
  input s01_axi_rx_bready_IBUF;
  input [0:0]E;
  input [8:0]D;
  input [7:0]\axi_arlen_reg[7]_0 ;
  input [1:0]\axi_arburst_reg[1]_0 ;

  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0_n_0 ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0_n_0 ;
  wire [2:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 ;
  wire CLK;
  wire [8:0]D;
  wire [0:0]DOPBDOP;
  wire [0:0]E;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_0;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_1;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_14;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_15;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_16;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_17;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_18;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_19;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_2;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_20;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_21;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_22;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_23;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_24;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_25;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_26;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_27;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_28;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_29;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_30;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_31;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_32;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_33;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_34;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_35;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_36;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_37;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_38;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_39;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_40;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_41;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_42;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_43;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_44;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_45;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_46;
  wire L;
  wire [8:0]Q;
  wire RSTB;
  wire axi_araddr1;
  wire axi_araddr110_out;
  wire axi_araddr3__3;
  wire axi_araddr3_carry_i_1__0_n_0;
  wire axi_araddr3_carry_i_2__0_n_0;
  wire axi_araddr3_carry_i_3__0_n_0;
  wire axi_araddr3_carry_i_4__0_n_0;
  wire axi_araddr3_carry_i_5__0_n_0;
  wire axi_araddr3_carry_i_6__0_n_0;
  wire axi_araddr3_carry_i_7__0_n_0;
  wire axi_araddr3_carry_i_8__0_n_0;
  wire axi_araddr3_carry_n_1;
  wire axi_araddr3_carry_n_2;
  wire axi_araddr3_carry_n_3;
  wire \axi_araddr[2]_i_1__0_n_0 ;
  wire \axi_araddr[2]_i_2__0_n_0 ;
  wire [1:0]axi_arburst;
  wire [1:0]\axi_arburst_reg[1]_0 ;
  wire \axi_arlen_cntr[0]_i_1__0_n_0 ;
  wire \axi_arlen_cntr[7]_i_1__0_n_0 ;
  wire \axi_arlen_cntr[7]_i_4__0_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire [7:0]\axi_arlen_reg[7]_0 ;
  wire \axi_arlen_reg_n_0_[0] ;
  wire \axi_arlen_reg_n_0_[1] ;
  wire \axi_arlen_reg_n_0_[2] ;
  wire \axi_arlen_reg_n_0_[3] ;
  wire \axi_arlen_reg_n_0_[4] ;
  wire \axi_arlen_reg_n_0_[5] ;
  wire \axi_arlen_reg_n_0_[6] ;
  wire \axi_arlen_reg_n_0_[7] ;
  wire axi_arready_i_1__1_n_0;
  wire axi_arready_i_2__0_n_0;
  wire axi_arready_i_3__0_n_0;
  wire axi_arready_i_4__0_n_0;
  wire axi_arready_i_5__0_n_0;
  wire axi_arready_i_6__0_n_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1__0_n_0;
  wire axi_awready_i_1__1_n_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1__0_n_0;
  wire axi_bvalid_i_1__1_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1__0_n_0;
  wire axi_rvalid_i_1__1_n_0;
  wire axi_wready_i_1__1_n_0;
  wire \calc_0.v[10]_i_3_n_0 ;
  wire \calc_0.v[4]_i_2_n_0 ;
  wire \calc_0.v[5]_i_2_n_0 ;
  wire \calc_0.v[8]_i_2_n_0 ;
  wire [10:0]\calc_0.v_reg ;
  wire [10:0]elements;
  wire elements1__6;
  wire elements1_carry__0_n_3;
  wire elements1_carry_n_0;
  wire elements1_carry_n_1;
  wire elements1_carry_n_2;
  wire elements1_carry_n_3;
  wire p_1_out0_carry__0_i_1_n_0;
  wire p_1_out0_carry__0_i_2_n_0;
  wire p_1_out0_carry__0_i_3_n_0;
  wire p_1_out0_carry__0_i_4_n_0;
  wire p_1_out0_carry__0_n_0;
  wire p_1_out0_carry__0_n_1;
  wire p_1_out0_carry__0_n_2;
  wire p_1_out0_carry__0_n_3;
  wire p_1_out0_carry__1_i_1_n_0;
  wire p_1_out0_carry__1_i_2_n_0;
  wire p_1_out0_carry__1_n_2;
  wire p_1_out0_carry__1_n_3;
  wire p_1_out0_carry_i_1_n_0;
  wire p_1_out0_carry_i_2_n_0;
  wire p_1_out0_carry_i_6_n_0;
  wire p_1_out0_carry_n_0;
  wire p_1_out0_carry_n_1;
  wire p_1_out0_carry_n_2;
  wire p_1_out0_carry_n_3;
  wire [7:1]plusOp__1;
  wire rst_logic_IBUF;
  wire s01_axi_rx_aclk_IBUF_BUFG;
  wire [0:0]s01_axi_rx_araddr_IBUF;
  wire s01_axi_rx_aresetn_IBUF;
  wire s01_axi_rx_arready_OBUF;
  wire s01_axi_rx_arvalid_IBUF;
  wire s01_axi_rx_awready_OBUF;
  wire s01_axi_rx_awvalid_IBUF;
  wire s01_axi_rx_bready_IBUF;
  wire s01_axi_rx_bvalid_OBUF;
  wire [10:0]s01_axi_rx_rdata_OBUF;
  wire s01_axi_rx_rlast_OBUF;
  wire s01_axi_rx_rready_IBUF;
  wire s01_axi_rx_rvalid_OBUF;
  wire s01_axi_rx_wlast_IBUF;
  wire s01_axi_rx_wready_OBUF;
  wire s01_axi_rx_wvalid_IBUF;
  wire \s_fifo_di_reg_n_0_[0] ;
  wire \s_fifo_di_reg_n_0_[1] ;
  wire \s_fifo_di_reg_n_0_[2] ;
  wire \s_fifo_di_reg_n_0_[3] ;
  wire \s_fifo_di_reg_n_0_[4] ;
  wire \s_fifo_di_reg_n_0_[5] ;
  wire \s_fifo_di_reg_n_0_[6] ;
  wire \s_fifo_di_reg_n_0_[7] ;
  wire \s_fifo_di_reg_n_0_[8] ;
  wire \s_fifo_elements_reg_reg_n_0_[0] ;
  wire \s_fifo_elements_reg_reg_n_0_[10] ;
  wire \s_fifo_elements_reg_reg_n_0_[1] ;
  wire \s_fifo_elements_reg_reg_n_0_[2] ;
  wire \s_fifo_elements_reg_reg_n_0_[3] ;
  wire \s_fifo_elements_reg_reg_n_0_[4] ;
  wire \s_fifo_elements_reg_reg_n_0_[5] ;
  wire \s_fifo_elements_reg_reg_n_0_[6] ;
  wire \s_fifo_elements_reg_reg_n_0_[7] ;
  wire \s_fifo_elements_reg_reg_n_0_[8] ;
  wire \s_fifo_elements_reg_reg_n_0_[9] ;
  wire s_fifo_wren_reg_n_0;
  wire [10:0]s_rdcounter;
  wire s_rxread;
  wire s_rxvalid;
  wire \spwwrapper.openPacket_i_1_n_0 ;
  wire \spwwrapper.openPacket_reg_0 ;
  wire [3:0]NLW_axi_araddr3_carry_O_UNCONNECTED;
  wire [3:0]NLW_elements1_carry_O_UNCONNECTED;
  wire [3:2]NLW_elements1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_elements1_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_p_1_out0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_p_1_out0_carry__1_O_UNCONNECTED;

  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_34),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_33),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_32),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_31),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_30),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_29),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_28),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_27),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0 
       (.I0(\s_fifo_elements_reg_reg_n_0_[10] ),
        .I1(L),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0 
       (.I0(\s_fifo_elements_reg_reg_n_0_[9] ),
        .I1(L),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0_n_0 ),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [1]),
        .R(1'b0));
  unimacro_FIFO_DUALCLOCK_MACRO FIFO_DUALCLOCK_MACRO_inst_TX
       (.\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ({\s_fifo_elements_reg_reg_n_0_[8] ,\s_fifo_elements_reg_reg_n_0_[7] ,\s_fifo_elements_reg_reg_n_0_[6] ,\s_fifo_elements_reg_reg_n_0_[5] ,\s_fifo_elements_reg_reg_n_0_[4] ,\s_fifo_elements_reg_reg_n_0_[3] ,\s_fifo_elements_reg_reg_n_0_[2] ,\s_fifo_elements_reg_reg_n_0_[1] ,\s_fifo_elements_reg_reg_n_0_[0] }),
        .CLK(CLK),
        .D(s_rdcounter),
        .DI({FIFO_DUALCLOCK_MACRO_inst_TX_n_14,FIFO_DUALCLOCK_MACRO_inst_TX_n_15,FIFO_DUALCLOCK_MACRO_inst_TX_n_16,FIFO_DUALCLOCK_MACRO_inst_TX_n_17}),
        .E(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .L(L),
        .Q({\s_fifo_di_reg_n_0_[8] ,\s_fifo_di_reg_n_0_[7] ,\s_fifo_di_reg_n_0_[6] ,\s_fifo_di_reg_n_0_[5] ,\s_fifo_di_reg_n_0_[4] ,\s_fifo_di_reg_n_0_[3] ,\s_fifo_di_reg_n_0_[2] ,\s_fifo_di_reg_n_0_[1] ,\s_fifo_di_reg_n_0_[0] }),
        .S({FIFO_DUALCLOCK_MACRO_inst_TX_n_18,FIFO_DUALCLOCK_MACRO_inst_TX_n_19,FIFO_DUALCLOCK_MACRO_inst_TX_n_20,FIFO_DUALCLOCK_MACRO_inst_TX_n_21}),
        .WRCOUNT({FIFO_DUALCLOCK_MACRO_inst_TX_n_0,FIFO_DUALCLOCK_MACRO_inst_TX_n_1}),
        .\bl.fifo_18_inst_bl.fifo_18_bl_0 ({FIFO_DUALCLOCK_MACRO_inst_TX_n_22,FIFO_DUALCLOCK_MACRO_inst_TX_n_23}),
        .\bl.fifo_18_inst_bl.fifo_18_bl_1 (FIFO_DUALCLOCK_MACRO_inst_TX_n_26),
        .\bl.fifo_18_inst_bl.fifo_18_bl_2 ({FIFO_DUALCLOCK_MACRO_inst_TX_n_27,FIFO_DUALCLOCK_MACRO_inst_TX_n_28,FIFO_DUALCLOCK_MACRO_inst_TX_n_29,FIFO_DUALCLOCK_MACRO_inst_TX_n_30,FIFO_DUALCLOCK_MACRO_inst_TX_n_31,FIFO_DUALCLOCK_MACRO_inst_TX_n_32,FIFO_DUALCLOCK_MACRO_inst_TX_n_33,FIFO_DUALCLOCK_MACRO_inst_TX_n_34}),
        .\bl.fifo_18_inst_bl.fifo_18_bl_3 (FIFO_DUALCLOCK_MACRO_inst_TX_n_35),
        .\bl.fifo_18_inst_bl.fifo_18_bl_4 (s_fifo_wren_reg_n_0),
        .\bl.fifo_18_inst_bl.fifo_18_bl_5 (s01_axi_rx_rvalid_OBUF),
        .\calc_0.v_reg[10] ({FIFO_DUALCLOCK_MACRO_inst_TX_n_24,FIFO_DUALCLOCK_MACRO_inst_TX_n_25}),
        .\calc_0.v_reg[10]_0 ({FIFO_DUALCLOCK_MACRO_inst_TX_n_36,FIFO_DUALCLOCK_MACRO_inst_TX_n_37,FIFO_DUALCLOCK_MACRO_inst_TX_n_38}),
        .\calc_0.v_reg[10]_1 (\calc_0.v_reg ),
        .\calc_0.v_reg[10]_2 (\calc_0.v[10]_i_3_n_0 ),
        .\calc_0.v_reg[3] ({FIFO_DUALCLOCK_MACRO_inst_TX_n_40,FIFO_DUALCLOCK_MACRO_inst_TX_n_41,FIFO_DUALCLOCK_MACRO_inst_TX_n_42}),
        .\calc_0.v_reg[4] (\calc_0.v[4]_i_2_n_0 ),
        .\calc_0.v_reg[5] (\calc_0.v[5]_i_2_n_0 ),
        .\calc_0.v_reg[6] (\calc_0.v[8]_i_2_n_0 ),
        .\calc_0.v_reg[7] ({FIFO_DUALCLOCK_MACRO_inst_TX_n_43,FIFO_DUALCLOCK_MACRO_inst_TX_n_44,FIFO_DUALCLOCK_MACRO_inst_TX_n_45,FIFO_DUALCLOCK_MACRO_inst_TX_n_46}),
        .\r_reg[rxfifo_rvalid] (FIFO_DUALCLOCK_MACRO_inst_TX_n_39),
        .rst_logic_IBUF(rst_logic_IBUF),
        .s01_axi_rx_aclk_IBUF_BUFG(s01_axi_rx_aclk_IBUF_BUFG),
        .s01_axi_rx_rready_IBUF(s01_axi_rx_rready_IBUF),
        .s_fifo_wren_reg(s_rxread),
        .s_rxvalid(s_rxvalid));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 axi_araddr3_carry
       (.CI(1'b0),
        .CO({axi_araddr3__3,axi_araddr3_carry_n_1,axi_araddr3_carry_n_2,axi_araddr3_carry_n_3}),
        .CYINIT(1'b1),
        .DI({axi_araddr3_carry_i_1__0_n_0,axi_araddr3_carry_i_2__0_n_0,axi_araddr3_carry_i_3__0_n_0,axi_araddr3_carry_i_4__0_n_0}),
        .O(NLW_axi_araddr3_carry_O_UNCONNECTED[3:0]),
        .S({axi_araddr3_carry_i_5__0_n_0,axi_araddr3_carry_i_6__0_n_0,axi_araddr3_carry_i_7__0_n_0,axi_araddr3_carry_i_8__0_n_0}));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_1__0
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_reg_n_0_[7] ),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_araddr3_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_2__0
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(\axi_arlen_reg_n_0_[5] ),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_araddr3_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_3__0
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_araddr3_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h44D4)) 
    axi_araddr3_carry_i_4__0
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(axi_arlen_cntr_reg[0]),
        .O(axi_araddr3_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_5__0
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_araddr3_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_6__0
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_araddr3_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_7__0
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_araddr3_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_araddr3_carry_i_8__0
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(\axi_arlen_reg_n_0_[0] ),
        .O(axi_araddr3_carry_i_8__0_n_0));
  LUT6 #(
    .INIT(64'hAA03AAFFAAFCAA00)) 
    \axi_araddr[2]_i_1__0 
       (.I0(s01_axi_rx_araddr_IBUF),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .I2(axi_arburst[0]),
        .I3(axi_araddr110_out),
        .I4(\axi_araddr[2]_i_2__0_n_0 ),
        .I5(L),
        .O(\axi_araddr[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \axi_araddr[2]_i_2__0 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(s01_axi_rx_rready_IBUF),
        .I2(axi_araddr3__3),
        .I3(axi_arburst[0]),
        .I4(axi_arburst[1]),
        .O(\axi_araddr[2]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1__0_n_0 ),
        .Q(L),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arburst_reg[0] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arburst_reg[1]_0 [0]),
        .Q(axi_arburst[0]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arburst_reg[1] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arburst_reg[1]_0 [1]),
        .Q(axi_arburst[1]),
        .R(RSTB));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen[7]_i_1__0 
       (.I0(s01_axi_rx_aresetn_IBUF),
        .O(RSTB));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_2 
       (.I0(axi_arv_arr_flag),
        .I1(s01_axi_rx_arvalid_IBUF),
        .I2(s01_axi_rx_arready_OBUF),
        .O(axi_araddr110_out));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1__0 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1__0 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .O(plusOp__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[2]_i_1__0 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .O(plusOp__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_arlen_cntr[3]_i_1__0 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[2]),
        .O(plusOp__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_arlen_cntr[4]_i_1__0 
       (.I0(axi_arlen_cntr_reg[4]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(axi_arlen_cntr_reg[1]),
        .I4(axi_arlen_cntr_reg[3]),
        .O(plusOp__1[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axi_arlen_cntr[5]_i_1__0 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(plusOp__1[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[6]_i_1__0 
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(\axi_arlen_cntr[7]_i_4__0_n_0 ),
        .O(plusOp__1[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1__0 
       (.I0(axi_arv_arr_flag),
        .I1(s01_axi_rx_arvalid_IBUF),
        .I2(s01_axi_rx_arready_OBUF),
        .I3(s01_axi_rx_aresetn_IBUF),
        .O(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2__0 
       (.I0(axi_araddr3__3),
        .I1(s01_axi_rx_rready_IBUF),
        .I2(s01_axi_rx_rvalid_OBUF),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[7]_i_3__0 
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_cntr[7]_i_4__0_n_0 ),
        .I2(axi_arlen_cntr_reg[6]),
        .O(plusOp__1[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \axi_arlen_cntr[7]_i_4__0 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .I4(axi_arlen_cntr_reg[2]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[0] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(\axi_arlen_cntr[0]_i_1__0_n_0 ),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[1] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[2] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[3] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[4] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[5] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[6] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[7] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp__1[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[0] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [0]),
        .Q(\axi_arlen_reg_n_0_[0] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[1] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [1]),
        .Q(\axi_arlen_reg_n_0_[1] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[2] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [2]),
        .Q(\axi_arlen_reg_n_0_[2] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[3] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [3]),
        .Q(\axi_arlen_reg_n_0_[3] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[4] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [4]),
        .Q(\axi_arlen_reg_n_0_[4] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[5] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [5]),
        .Q(\axi_arlen_reg_n_0_[5] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[6] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [6]),
        .Q(\axi_arlen_reg_n_0_[6] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[7] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(axi_araddr110_out),
        .D(\axi_arlen_reg[7]_0 [7]),
        .Q(\axi_arlen_reg_n_0_[7] ),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hFF100010)) 
    axi_arready_i_1__1
       (.I0(axi_awv_awr_flag),
        .I1(axi_arv_arr_flag),
        .I2(s01_axi_rx_arvalid_IBUF),
        .I3(s01_axi_rx_arready_OBUF),
        .I4(axi_arready_i_2__0_n_0),
        .O(axi_arready_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    axi_arready_i_2__0
       (.I0(axi_arready_i_3__0_n_0),
        .I1(axi_arready_i_4__0_n_0),
        .I2(axi_arready_i_5__0_n_0),
        .I3(axi_arready_i_6__0_n_0),
        .I4(s01_axi_rx_rready_IBUF),
        .I5(s01_axi_rx_rvalid_OBUF),
        .O(axi_arready_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_3__0
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_arready_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_4__0
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(\axi_arlen_reg_n_0_[0] ),
        .O(axi_arready_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_5__0
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_arready_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arready_i_6__0
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_arready_i_6__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_arready_i_1__1_n_0),
        .Q(s01_axi_rx_arready_OBUF),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h50505350)) 
    axi_arv_arr_flag_i_1__0
       (.I0(axi_arready_i_2__0_n_0),
        .I1(axi_awv_awr_flag),
        .I2(axi_arv_arr_flag),
        .I3(s01_axi_rx_arvalid_IBUF),
        .I4(s01_axi_rx_arready_OBUF),
        .O(axi_arv_arr_flag_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arv_arr_flag_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1__0_n_0),
        .Q(axi_arv_arr_flag),
        .R(RSTB));
  LUT6 #(
    .INIT(64'hCCDC001000100010)) 
    axi_awready_i_1__1
       (.I0(axi_arv_arr_flag),
        .I1(s01_axi_rx_awready_OBUF),
        .I2(s01_axi_rx_awvalid_IBUF),
        .I3(axi_awv_awr_flag),
        .I4(s01_axi_rx_wlast_IBUF),
        .I5(s01_axi_rx_wready_OBUF),
        .O(axi_awready_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_awready_i_1__1_n_0),
        .Q(s01_axi_rx_awready_OBUF),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h77777777000F0000)) 
    axi_awv_awr_flag_i_1__0
       (.I0(s01_axi_rx_wlast_IBUF),
        .I1(s01_axi_rx_wready_OBUF),
        .I2(axi_arv_arr_flag),
        .I3(s01_axi_rx_awready_OBUF),
        .I4(s01_axi_rx_awvalid_IBUF),
        .I5(axi_awv_awr_flag),
        .O(axi_awv_awr_flag_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awv_awr_flag_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1__0_n_0),
        .Q(axi_awv_awr_flag),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1__1
       (.I0(s01_axi_rx_bready_IBUF),
        .I1(s01_axi_rx_bvalid_OBUF),
        .I2(s01_axi_rx_wvalid_IBUF),
        .I3(axi_awv_awr_flag),
        .I4(s01_axi_rx_wlast_IBUF),
        .I5(s01_axi_rx_wready_OBUF),
        .O(axi_bvalid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_bvalid_i_1__1_n_0),
        .Q(s01_axi_rx_bvalid_OBUF),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h0000000044044400)) 
    axi_rlast_i_1__0
       (.I0(axi_araddr110_out),
        .I1(s01_axi_rx_aresetn_IBUF),
        .I2(s01_axi_rx_rready_IBUF),
        .I3(axi_rlast0),
        .I4(s01_axi_rx_rlast_OBUF),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    axi_rlast_i_2__0
       (.I0(axi_arready_i_3__0_n_0),
        .I1(axi_arready_i_4__0_n_0),
        .I2(axi_arready_i_5__0_n_0),
        .I3(axi_arready_i_6__0_n_0),
        .I4(axi_arv_arr_flag),
        .I5(s01_axi_rx_rlast_OBUF),
        .O(axi_rlast0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rlast_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_rlast_i_1__0_n_0),
        .Q(s01_axi_rx_rlast_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1__1
       (.I0(axi_arv_arr_flag),
        .I1(s01_axi_rx_rready_IBUF),
        .I2(s01_axi_rx_rvalid_OBUF),
        .O(axi_rvalid_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_rvalid_i_1__1_n_0),
        .Q(s01_axi_rx_rvalid_OBUF),
        .R(RSTB));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1__1
       (.I0(axi_awv_awr_flag),
        .I1(s01_axi_rx_wvalid_IBUF),
        .I2(s01_axi_rx_wlast_IBUF),
        .I3(s01_axi_rx_wready_OBUF),
        .O(axi_wready_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_wready_i_1__1_n_0),
        .Q(s01_axi_rx_wready_OBUF),
        .R(RSTB));
  LUT4 #(
    .INIT(16'h0800)) 
    \calc_0.v[10]_i_3 
       (.I0(\calc_0.v_reg [8]),
        .I1(\calc_0.v_reg [7]),
        .I2(\calc_0.v[8]_i_2_n_0 ),
        .I3(\calc_0.v_reg [6]),
        .O(\calc_0.v[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \calc_0.v[4]_i_2 
       (.I0(\calc_0.v_reg [2]),
        .I1(\calc_0.v_reg [1]),
        .I2(\calc_0.v_reg [0]),
        .I3(\calc_0.v_reg [3]),
        .O(\calc_0.v[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \calc_0.v[5]_i_2 
       (.I0(\calc_0.v_reg [3]),
        .I1(\calc_0.v_reg [0]),
        .I2(\calc_0.v_reg [1]),
        .I3(\calc_0.v_reg [2]),
        .I4(\calc_0.v_reg [4]),
        .O(\calc_0.v[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \calc_0.v[8]_i_2 
       (.I0(\calc_0.v_reg [4]),
        .I1(\calc_0.v_reg [2]),
        .I2(\calc_0.v_reg [1]),
        .I3(\calc_0.v_reg [0]),
        .I4(\calc_0.v_reg [3]),
        .I5(\calc_0.v_reg [5]),
        .O(\calc_0.v[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[0] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[0]),
        .Q(\calc_0.v_reg [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[10] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[10]),
        .Q(\calc_0.v_reg [10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[1] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[1]),
        .Q(\calc_0.v_reg [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[2] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[2]),
        .Q(\calc_0.v_reg [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[3] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[3]),
        .Q(\calc_0.v_reg [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[4] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[4]),
        .Q(\calc_0.v_reg [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[5] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[5]),
        .Q(\calc_0.v_reg [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[6] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[6]),
        .Q(\calc_0.v_reg [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[7] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[7]),
        .Q(\calc_0.v_reg [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[8] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[8]),
        .Q(\calc_0.v_reg [8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \calc_0.v_reg[9] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(FIFO_DUALCLOCK_MACRO_inst_TX_n_2),
        .D(s_rdcounter[9]),
        .Q(\calc_0.v_reg [9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 elements1_carry
       (.CI(1'b0),
        .CO({elements1_carry_n_0,elements1_carry_n_1,elements1_carry_n_2,elements1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({FIFO_DUALCLOCK_MACRO_inst_TX_n_14,FIFO_DUALCLOCK_MACRO_inst_TX_n_15,FIFO_DUALCLOCK_MACRO_inst_TX_n_16,FIFO_DUALCLOCK_MACRO_inst_TX_n_17}),
        .O(NLW_elements1_carry_O_UNCONNECTED[3:0]),
        .S({FIFO_DUALCLOCK_MACRO_inst_TX_n_18,FIFO_DUALCLOCK_MACRO_inst_TX_n_19,FIFO_DUALCLOCK_MACRO_inst_TX_n_20,FIFO_DUALCLOCK_MACRO_inst_TX_n_21}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 elements1_carry__0
       (.CI(elements1_carry_n_0),
        .CO({NLW_elements1_carry__0_CO_UNCONNECTED[3:2],elements1__6,elements1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,FIFO_DUALCLOCK_MACRO_inst_TX_n_22,FIFO_DUALCLOCK_MACRO_inst_TX_n_23}),
        .O(NLW_elements1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,FIFO_DUALCLOCK_MACRO_inst_TX_n_24,FIFO_DUALCLOCK_MACRO_inst_TX_n_25}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out0_carry
       (.CI(1'b0),
        .CO({p_1_out0_carry_n_0,p_1_out0_carry_n_1,p_1_out0_carry_n_2,p_1_out0_carry_n_3}),
        .CYINIT(FIFO_DUALCLOCK_MACRO_inst_TX_n_1),
        .DI({p_1_out0_carry_i_1_n_0,p_1_out0_carry_i_2_n_0,FIFO_DUALCLOCK_MACRO_inst_TX_n_0,elements1__6}),
        .O(elements[3:0]),
        .S({FIFO_DUALCLOCK_MACRO_inst_TX_n_40,FIFO_DUALCLOCK_MACRO_inst_TX_n_41,FIFO_DUALCLOCK_MACRO_inst_TX_n_42,p_1_out0_carry_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out0_carry__0
       (.CI(p_1_out0_carry_n_0),
        .CO({p_1_out0_carry__0_n_0,p_1_out0_carry__0_n_1,p_1_out0_carry__0_n_2,p_1_out0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({p_1_out0_carry__0_i_1_n_0,p_1_out0_carry__0_i_2_n_0,p_1_out0_carry__0_i_3_n_0,p_1_out0_carry__0_i_4_n_0}),
        .O(elements[7:4]),
        .S({FIFO_DUALCLOCK_MACRO_inst_TX_n_43,FIFO_DUALCLOCK_MACRO_inst_TX_n_44,FIFO_DUALCLOCK_MACRO_inst_TX_n_45,FIFO_DUALCLOCK_MACRO_inst_TX_n_46}));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry__0_i_1
       (.I0(\calc_0.v_reg [7]),
        .O(p_1_out0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry__0_i_2
       (.I0(\calc_0.v_reg [6]),
        .O(p_1_out0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry__0_i_3
       (.I0(\calc_0.v_reg [5]),
        .O(p_1_out0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry__0_i_4
       (.I0(\calc_0.v_reg [4]),
        .O(p_1_out0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 p_1_out0_carry__1
       (.CI(p_1_out0_carry__0_n_0),
        .CO({NLW_p_1_out0_carry__1_CO_UNCONNECTED[3:2],p_1_out0_carry__1_n_2,p_1_out0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_1_out0_carry__1_i_1_n_0,p_1_out0_carry__1_i_2_n_0}),
        .O({NLW_p_1_out0_carry__1_O_UNCONNECTED[3],elements[10:8]}),
        .S({1'b0,FIFO_DUALCLOCK_MACRO_inst_TX_n_36,FIFO_DUALCLOCK_MACRO_inst_TX_n_37,FIFO_DUALCLOCK_MACRO_inst_TX_n_38}));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry__1_i_1
       (.I0(\calc_0.v_reg [9]),
        .O(p_1_out0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry__1_i_2
       (.I0(\calc_0.v_reg [8]),
        .O(p_1_out0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry_i_1
       (.I0(\calc_0.v_reg [3]),
        .O(p_1_out0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    p_1_out0_carry_i_2
       (.I0(\calc_0.v_reg [2]),
        .O(p_1_out0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry_i_6
       (.I0(elements1__6),
        .I1(\calc_0.v_reg [0]),
        .O(p_1_out0_carry_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rxread_reg
       (.C(CLK),
        .CE(1'b1),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_39),
        .Q(s_rxread),
        .R(rst_logic_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[0]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [0]),
        .O(s01_axi_rx_rdata_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[10]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [2]),
        .O(s01_axi_rx_rdata_OBUF[10]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[1]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [1]),
        .O(s01_axi_rx_rdata_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[2]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [2]),
        .O(s01_axi_rx_rdata_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[3]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [3]),
        .O(s01_axi_rx_rdata_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[4]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [4]),
        .O(s01_axi_rx_rdata_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[5]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [5]),
        .O(s01_axi_rx_rdata_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[6]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [6]),
        .O(s01_axi_rx_rdata_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[7]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0 [7]),
        .O(s01_axi_rx_rdata_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[8]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [0]),
        .O(s01_axi_rx_rdata_OBUF[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \s01_axi_rx_rdata_OBUF[9]_inst_i_1 
       (.I0(s01_axi_rx_rvalid_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1 [1]),
        .O(s01_axi_rx_rdata_OBUF[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(\s_fifo_di_reg_n_0_[0] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(\s_fifo_di_reg_n_0_[1] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(\s_fifo_di_reg_n_0_[2] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(\s_fifo_di_reg_n_0_[3] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(\s_fifo_di_reg_n_0_[4] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(\s_fifo_di_reg_n_0_[5] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(\s_fifo_di_reg_n_0_[6] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(\s_fifo_di_reg_n_0_[7] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(\s_fifo_di_reg_n_0_[8] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[0] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[0]),
        .Q(\s_fifo_elements_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[10] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[10]),
        .Q(\s_fifo_elements_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[1] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[1]),
        .Q(\s_fifo_elements_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[2] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[2]),
        .Q(\s_fifo_elements_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[3] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[3]),
        .Q(\s_fifo_elements_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[4] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[4]),
        .Q(\s_fifo_elements_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[5] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[5]),
        .Q(\s_fifo_elements_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[6] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[6]),
        .Q(\s_fifo_elements_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[7] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[7]),
        .Q(\s_fifo_elements_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[8] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[8]),
        .Q(\s_fifo_elements_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[9] 
       (.C(s01_axi_rx_aclk_IBUF_BUFG),
        .CE(1'b1),
        .D(elements[9]),
        .Q(\s_fifo_elements_reg_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_fifo_wren_reg
       (.C(CLK),
        .CE(1'b1),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_26),
        .Q(s_fifo_wren_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA8AAABAA)) 
    \spwwrapper.openPacket_i_1 
       (.I0(\spwwrapper.openPacket_reg_0 ),
        .I1(rst_logic_IBUF),
        .I2(s_rxread),
        .I3(s_rxvalid),
        .I4(DOPBDOP),
        .O(\spwwrapper.openPacket_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.openPacket_reg 
       (.C(CLK),
        .CE(1'b1),
        .D(\spwwrapper.openPacket_i_1_n_0 ),
        .Q(\spwwrapper.openPacket_reg_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D[0]),
        .Q(Q[0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(D[1]),
        .Q(Q[1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(D[2]),
        .Q(Q[2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(D[3]),
        .Q(Q[3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(D[4]),
        .Q(Q[4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(D[5]),
        .Q(Q[5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(D[6]),
        .Q(Q[6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(D[7]),
        .Q(Q[7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(D[8]),
        .Q(Q[8]),
        .R(rst_logic_IBUF));
endmodule

module AXI_SpaceWire_IP_v1_0_S02_AXI_REG
   (\r_reg[xmit_fct_in] ,
    linkdis,
    \txdivcnt_reg[6]_0 ,
    Q,
    D,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    \ctrl_in_reg[1]_0 ,
    S_AXI_ARREADY,
    \axi_rdata_reg[31]_0 ,
    s02_axi_reg_rvalid_OBUF,
    s02_axi_reg_bvalid_OBUF,
    \xmiti[fct_in] ,
    \recvo[gotnull] ,
    \line4_reg[0]_0 ,
    \r_reg[txdivnorm] ,
    CLK,
    \axi_awaddr_reg[4]_0 ,
    \slv_reg2_reg[31]_0 ,
    \line4_reg[17]_0 ,
    \line3_reg[9]_0 ,
    \line4_reg[17]_1 ,
    \axi_araddr_reg[4]_0 ,
    s02_axi_reg_wvalid_IBUF,
    s02_axi_reg_awvalid_IBUF,
    s02_axi_reg_wstrb_IBUF,
    s02_axi_reg_arvalid_IBUF,
    s02_axi_reg_aresetn_IBUF,
    s02_axi_reg_bready_IBUF,
    s02_axi_reg_rready_IBUF);
  output \r_reg[xmit_fct_in] ;
  output linkdis;
  output \txdivcnt_reg[6]_0 ;
  output [5:0]Q;
  output [1:0]D;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [7:0]\ctrl_in_reg[1]_0 ;
  output S_AXI_ARREADY;
  output [31:0]\axi_rdata_reg[31]_0 ;
  output s02_axi_reg_rvalid_OBUF;
  output s02_axi_reg_bvalid_OBUF;
  input \xmiti[fct_in] ;
  input \recvo[gotnull] ;
  input [2:0]\line4_reg[0]_0 ;
  input \r_reg[txdivnorm] ;
  input CLK;
  input [2:0]\axi_awaddr_reg[4]_0 ;
  input [31:0]\slv_reg2_reg[31]_0 ;
  input \line4_reg[17]_0 ;
  input [7:0]\line3_reg[9]_0 ;
  input [5:0]\line4_reg[17]_1 ;
  input [2:0]\axi_araddr_reg[4]_0 ;
  input s02_axi_reg_wvalid_IBUF;
  input s02_axi_reg_awvalid_IBUF;
  input [3:0]s02_axi_reg_wstrb_IBUF;
  input s02_axi_reg_arvalid_IBUF;
  input s02_axi_reg_aresetn_IBUF;
  input s02_axi_reg_bready_IBUF;
  input s02_axi_reg_rready_IBUF;

  wire CLK;
  wire [1:0]D;
  wire [5:0]Q;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [2:0]\axi_araddr_reg[4]_0 ;
  wire axi_arready0;
  wire [4:2]axi_awaddr;
  wire [2:0]\axi_awaddr_reg[4]_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [7:0]\ctrl_in_reg[1]_0 ;
  wire [9:0]line3;
  wire [7:0]\line3_reg[9]_0 ;
  wire [17:0]line4;
  wire [2:0]\line4_reg[0]_0 ;
  wire \line4_reg[17]_0 ;
  wire [5:0]\line4_reg[17]_1 ;
  wire linkdis;
  wire p_0_in;
  wire [31:7]p_1_in;
  wire \r_reg[txdivnorm] ;
  wire \r_reg[xmit_fct_in] ;
  wire \recvo[gotnull] ;
  wire [31:0]reg_data_out;
  wire s02_axi_reg_aresetn_IBUF;
  wire s02_axi_reg_arvalid_IBUF;
  wire s02_axi_reg_awvalid_IBUF;
  wire s02_axi_reg_bready_IBUF;
  wire s02_axi_reg_bvalid_OBUF;
  wire s02_axi_reg_rready_IBUF;
  wire s02_axi_reg_rvalid_OBUF;
  wire [3:0]s02_axi_reg_wstrb_IBUF;
  wire s02_axi_reg_wvalid_IBUF;
  wire s_autostart;
  wire s_linkstart;
  wire [3:0]s_txdivcnt;
  wire [2:0]sel0;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire \slv_reg1_reg_n_0_[10] ;
  wire \slv_reg1_reg_n_0_[11] ;
  wire \slv_reg1_reg_n_0_[12] ;
  wire \slv_reg1_reg_n_0_[13] ;
  wire \slv_reg1_reg_n_0_[14] ;
  wire \slv_reg1_reg_n_0_[15] ;
  wire \slv_reg1_reg_n_0_[16] ;
  wire \slv_reg1_reg_n_0_[17] ;
  wire \slv_reg1_reg_n_0_[18] ;
  wire \slv_reg1_reg_n_0_[19] ;
  wire \slv_reg1_reg_n_0_[1] ;
  wire \slv_reg1_reg_n_0_[20] ;
  wire \slv_reg1_reg_n_0_[21] ;
  wire \slv_reg1_reg_n_0_[22] ;
  wire \slv_reg1_reg_n_0_[23] ;
  wire \slv_reg1_reg_n_0_[24] ;
  wire \slv_reg1_reg_n_0_[25] ;
  wire \slv_reg1_reg_n_0_[26] ;
  wire \slv_reg1_reg_n_0_[27] ;
  wire \slv_reg1_reg_n_0_[28] ;
  wire \slv_reg1_reg_n_0_[29] ;
  wire \slv_reg1_reg_n_0_[2] ;
  wire \slv_reg1_reg_n_0_[30] ;
  wire \slv_reg1_reg_n_0_[31] ;
  wire \slv_reg1_reg_n_0_[3] ;
  wire \slv_reg1_reg_n_0_[4] ;
  wire \slv_reg1_reg_n_0_[5] ;
  wire \slv_reg1_reg_n_0_[6] ;
  wire \slv_reg1_reg_n_0_[7] ;
  wire \slv_reg1_reg_n_0_[8] ;
  wire \slv_reg1_reg_n_0_[9] ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]\slv_reg2_reg[31]_0 ;
  wire \slv_reg2_reg_n_0_[0] ;
  wire \slv_reg2_reg_n_0_[10] ;
  wire \slv_reg2_reg_n_0_[11] ;
  wire \slv_reg2_reg_n_0_[12] ;
  wire \slv_reg2_reg_n_0_[13] ;
  wire \slv_reg2_reg_n_0_[14] ;
  wire \slv_reg2_reg_n_0_[15] ;
  wire \slv_reg2_reg_n_0_[16] ;
  wire \slv_reg2_reg_n_0_[17] ;
  wire \slv_reg2_reg_n_0_[18] ;
  wire \slv_reg2_reg_n_0_[19] ;
  wire \slv_reg2_reg_n_0_[1] ;
  wire \slv_reg2_reg_n_0_[20] ;
  wire \slv_reg2_reg_n_0_[21] ;
  wire \slv_reg2_reg_n_0_[22] ;
  wire \slv_reg2_reg_n_0_[23] ;
  wire \slv_reg2_reg_n_0_[24] ;
  wire \slv_reg2_reg_n_0_[25] ;
  wire \slv_reg2_reg_n_0_[26] ;
  wire \slv_reg2_reg_n_0_[27] ;
  wire \slv_reg2_reg_n_0_[28] ;
  wire \slv_reg2_reg_n_0_[29] ;
  wire \slv_reg2_reg_n_0_[2] ;
  wire \slv_reg2_reg_n_0_[30] ;
  wire \slv_reg2_reg_n_0_[31] ;
  wire \slv_reg2_reg_n_0_[3] ;
  wire \slv_reg2_reg_n_0_[4] ;
  wire \slv_reg2_reg_n_0_[5] ;
  wire \slv_reg2_reg_n_0_[6] ;
  wire \slv_reg2_reg_n_0_[7] ;
  wire \slv_reg2_reg_n_0_[8] ;
  wire \slv_reg2_reg_n_0_[9] ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;
  wire \txdivcnt_reg[6]_0 ;
  wire \xmiti[fct_in] ;

  LUT5 #(
    .INIT(32'hDDDDDFFF)) 
    \FSM_onehot_r[state][5]_i_6 
       (.I0(\xmiti[fct_in] ),
        .I1(linkdis),
        .I2(\recvo[gotnull] ),
        .I3(s_autostart),
        .I4(s_linkstart),
        .O(\r_reg[xmit_fct_in] ));
  FDRE #(
    .INIT(1'b0)) 
    autostart_reg
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(p_0_in),
        .Q(s_autostart),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFBF00BF00BF00)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s02_axi_reg_awvalid_IBUF),
        .I2(s02_axi_reg_wvalid_IBUF),
        .I3(aw_en_reg_n_0),
        .I4(s02_axi_reg_bready_IBUF),
        .I5(s02_axi_reg_bvalid_OBUF),
        .O(aw_en_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    aw_en_reg
       (.C(CLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[2] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(\axi_araddr_reg[4]_0 [0]),
        .Q(sel0[0]),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[3] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(\axi_araddr_reg[4]_0 [1]),
        .Q(sel0[1]),
        .S(axi_awready_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \axi_araddr_reg[4] 
       (.C(CLK),
        .CE(axi_arready0),
        .D(\axi_araddr_reg[4]_0 [2]),
        .Q(sel0[2]),
        .S(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s02_axi_reg_arvalid_IBUF),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[2] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[4]_0 [0]),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[3] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[4]_0 [1]),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_awaddr_reg[4] 
       (.C(CLK),
        .CE(axi_awready0),
        .D(\axi_awaddr_reg[4]_0 [2]),
        .Q(axi_awaddr[4]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s02_axi_reg_aresetn_IBUF),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_n_0),
        .I1(s02_axi_reg_wvalid_IBUF),
        .I2(s02_axi_reg_awvalid_IBUF),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s02_axi_reg_awvalid_IBUF),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s02_axi_reg_wvalid_IBUF),
        .I4(s02_axi_reg_bready_IBUF),
        .I5(s02_axi_reg_bvalid_OBUF),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s02_axi_reg_bvalid_OBUF),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[0]),
        .I4(sel0[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(line3[0]),
        .I1(\slv_reg2_reg_n_0_[0] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[0] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[10]),
        .I4(sel0[0]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h0505F4040000F404)) 
    \axi_rdata[10]_i_2 
       (.I0(sel0[2]),
        .I1(\slv_reg0_reg_n_0_[10] ),
        .I2(sel0[0]),
        .I3(\slv_reg1_reg_n_0_[10] ),
        .I4(sel0[1]),
        .I5(\slv_reg2_reg_n_0_[10] ),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[11]),
        .I4(sel0[0]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h0505F4040000F404)) 
    \axi_rdata[11]_i_2 
       (.I0(sel0[2]),
        .I1(\slv_reg0_reg_n_0_[11] ),
        .I2(sel0[0]),
        .I3(\slv_reg1_reg_n_0_[11] ),
        .I4(sel0[1]),
        .I5(\slv_reg2_reg_n_0_[11] ),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg2_reg_n_0_[12] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[12] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[12] ),
        .I5(sel0[2]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg2_reg_n_0_[13] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[13] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[13] ),
        .I5(sel0[2]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg2_reg_n_0_[14] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[14] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[14] ),
        .I5(sel0[2]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg2_reg_n_0_[15] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[15] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[15] ),
        .I5(sel0[2]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[16]),
        .I4(sel0[0]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'h0505F4040000F404)) 
    \axi_rdata[16]_i_2 
       (.I0(sel0[2]),
        .I1(\slv_reg0_reg_n_0_[16] ),
        .I2(sel0[0]),
        .I3(\slv_reg1_reg_n_0_[16] ),
        .I4(sel0[1]),
        .I5(\slv_reg2_reg_n_0_[16] ),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8A8ABA8A)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[17]),
        .I4(sel0[0]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h0505F4040000F404)) 
    \axi_rdata[17]_i_2 
       (.I0(sel0[2]),
        .I1(\slv_reg0_reg_n_0_[17] ),
        .I2(sel0[0]),
        .I3(\slv_reg1_reg_n_0_[17] ),
        .I4(sel0[1]),
        .I5(\slv_reg2_reg_n_0_[17] ),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg2_reg_n_0_[18] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[18] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[18] ),
        .I5(sel0[2]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg2_reg_n_0_[19] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[19] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[19] ),
        .I5(sel0[2]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[1]),
        .I4(sel0[0]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(line3[1]),
        .I1(\slv_reg2_reg_n_0_[1] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[1] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg2_reg_n_0_[20] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[20] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .I5(sel0[2]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg2_reg_n_0_[21] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[21] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .I5(sel0[2]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg2_reg_n_0_[22] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[22] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .I5(sel0[2]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg2_reg_n_0_[23] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[23] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .I5(sel0[2]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg2_reg_n_0_[24] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[24] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .I5(sel0[2]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg2_reg_n_0_[25] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[25] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .I5(sel0[2]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg2_reg_n_0_[26] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[26] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .I5(sel0[2]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg2_reg_n_0_[27] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[27] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .I5(sel0[2]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg2_reg_n_0_[28] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[28] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .I5(sel0[2]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg2_reg_n_0_[29] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[29] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .I5(sel0[2]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[2]),
        .I4(sel0[0]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(line3[2]),
        .I1(\slv_reg2_reg_n_0_[2] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[2] ),
        .I4(sel0[0]),
        .I5(p_0_in),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg2_reg_n_0_[30] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[30] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .I5(sel0[2]),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s02_axi_reg_arvalid_IBUF),
        .I2(s02_axi_reg_rvalid_OBUF),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg2_reg_n_0_[31] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[31] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .I5(sel0[2]),
        .O(reg_data_out[31]));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[2]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(line3[3]),
        .I1(\slv_reg2_reg_n_0_[3] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[3] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(\axi_rdata[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[2]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(line3[4]),
        .I1(\slv_reg2_reg_n_0_[4] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[4] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(\axi_rdata[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[2]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(line3[5]),
        .I1(\slv_reg2_reg_n_0_[5] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[5] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg2_reg_n_0_[6] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[6] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[6] ),
        .I5(sel0[2]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg2_reg_n_0_[7] ),
        .I1(sel0[1]),
        .I2(\slv_reg1_reg_n_0_[7] ),
        .I3(sel0[0]),
        .I4(\slv_reg0_reg_n_0_[7] ),
        .I5(sel0[2]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[8]),
        .I4(sel0[0]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(line3[8]),
        .I1(\slv_reg2_reg_n_0_[8] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[8] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[8] ),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A0A3A0A)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(line4[9]),
        .I4(sel0[0]),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(line3[9]),
        .I1(\slv_reg2_reg_n_0_[9] ),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg_n_0_[9] ),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg_n_0_[9] ),
        .O(\axi_rdata[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[0] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[10] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[11] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[12] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[13] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[14] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[15] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[16] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[17] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[18] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[19] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[1] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[20] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[21] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[22] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[23] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[24] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[25] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[26] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[27] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[28] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[29] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[2] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[30] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[31] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[3] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[4] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[5] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[6] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[7] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[8] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_rdata_reg[9] 
       (.C(CLK),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s02_axi_reg_arvalid_IBUF),
        .I1(S_AXI_ARREADY),
        .I2(s02_axi_reg_rvalid_OBUF),
        .I3(s02_axi_reg_rready_IBUF),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s02_axi_reg_rvalid_OBUF),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_n_0),
        .I1(s02_axi_reg_wvalid_IBUF),
        .I2(s02_axi_reg_awvalid_IBUF),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(CLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_in_reg[0] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[8] ),
        .Q(\ctrl_in_reg[1]_0 [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_in_reg[1] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[9] ),
        .Q(\ctrl_in_reg[1]_0 [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[0] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [0]),
        .Q(line3[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[1] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [1]),
        .Q(line3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[2] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [2]),
        .Q(line3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[3] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [3]),
        .Q(line3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[4] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [4]),
        .Q(line3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[5] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [5]),
        .Q(line3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[8] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [6]),
        .Q(line3[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line3_reg[9] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line3_reg[9]_0 [7]),
        .Q(line3[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[0] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[0]_0 [2]),
        .Q(line4[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[10] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[17]_1 [2]),
        .Q(line4[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[11] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[17]_1 [3]),
        .Q(line4[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[16] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[17]_1 [4]),
        .Q(line4[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[17] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[17]_1 [5]),
        .Q(line4[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[1] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[0]_0 [1]),
        .Q(line4[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[2] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[0]_0 [0]),
        .Q(line4[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[8] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[17]_1 [0]),
        .Q(line4[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line4_reg[9] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\line4_reg[17]_1 [1]),
        .Q(line4[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    linkdis_reg
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg0_reg_n_0_[0] ),
        .Q(linkdis),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    linkstart_reg
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg0_reg_n_0_[1] ),
        .Q(s_linkstart),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \r[txdivnorm]_i_2 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\line4_reg[0]_0 [0]),
        .I3(Q[2]),
        .I4(s_txdivcnt[3]),
        .I5(\r_reg[txdivnorm] ),
        .O(\txdivcnt_reg[6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r[txdivreg][0]_i_1 
       (.I0(s_txdivcnt[0]),
        .I1(\line4_reg[0]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r[txdivreg][3]_i_1 
       (.I0(s_txdivcnt[3]),
        .I1(\line4_reg[0]_0 [0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(s02_axi_reg_wstrb_IBUF[1]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(s02_axi_reg_wstrb_IBUF[2]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(s02_axi_reg_wstrb_IBUF[3]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s02_axi_reg_awvalid_IBUF),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s02_axi_reg_wvalid_IBUF),
        .O(slv_reg_wren__2));
  LUT5 #(
    .INIT(32'h00000020)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(s02_axi_reg_wstrb_IBUF[0]),
        .I3(axi_awaddr[2]),
        .I4(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[0] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[10] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[11] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[12] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[13] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[14] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[15] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[16] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[17] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[18] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[19] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[1] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[20] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[21] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[22] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[23] 
       (.C(CLK),
        .CE(p_1_in[23]),
        .D(\slv_reg2_reg[31]_0 [23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[24] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[25] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[26] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[27] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[28] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[29] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[2] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [2]),
        .Q(p_0_in),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[30] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[31] 
       (.C(CLK),
        .CE(p_1_in[31]),
        .D(\slv_reg2_reg[31]_0 [31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[3] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[4] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[5] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[6] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[7] 
       (.C(CLK),
        .CE(p_1_in[7]),
        .D(\slv_reg2_reg[31]_0 [7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[8] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg0_reg[9] 
       (.C(CLK),
        .CE(p_1_in[15]),
        .D(\slv_reg2_reg[31]_0 [9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s02_axi_reg_wstrb_IBUF[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s02_axi_reg_wstrb_IBUF[2]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s02_axi_reg_wstrb_IBUF[3]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .I4(s02_axi_reg_wstrb_IBUF[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[0] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[10] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [10]),
        .Q(\slv_reg1_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[11] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [11]),
        .Q(\slv_reg1_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[12] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [12]),
        .Q(\slv_reg1_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[13] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [13]),
        .Q(\slv_reg1_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[14] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [14]),
        .Q(\slv_reg1_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[15] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [15]),
        .Q(\slv_reg1_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[16] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [16]),
        .Q(\slv_reg1_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[17] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [17]),
        .Q(\slv_reg1_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[18] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [18]),
        .Q(\slv_reg1_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[19] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [19]),
        .Q(\slv_reg1_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[1] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [1]),
        .Q(\slv_reg1_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[20] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [20]),
        .Q(\slv_reg1_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[21] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [21]),
        .Q(\slv_reg1_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[22] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [22]),
        .Q(\slv_reg1_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[23] 
       (.C(CLK),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [23]),
        .Q(\slv_reg1_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[24] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [24]),
        .Q(\slv_reg1_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[25] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [25]),
        .Q(\slv_reg1_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[26] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [26]),
        .Q(\slv_reg1_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[27] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [27]),
        .Q(\slv_reg1_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[28] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [28]),
        .Q(\slv_reg1_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[29] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [29]),
        .Q(\slv_reg1_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[2] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [2]),
        .Q(\slv_reg1_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[30] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [30]),
        .Q(\slv_reg1_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[31] 
       (.C(CLK),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [31]),
        .Q(\slv_reg1_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[3] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [3]),
        .Q(\slv_reg1_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[4] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [4]),
        .Q(\slv_reg1_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[5] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [5]),
        .Q(\slv_reg1_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[6] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [6]),
        .Q(\slv_reg1_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[7] 
       (.C(CLK),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [7]),
        .Q(\slv_reg1_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[8] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [8]),
        .Q(\slv_reg1_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg1_reg[9] 
       (.C(CLK),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [9]),
        .Q(\slv_reg1_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s02_axi_reg_wstrb_IBUF[1]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s02_axi_reg_wstrb_IBUF[2]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s02_axi_reg_wstrb_IBUF[3]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[4]),
        .I2(axi_awaddr[2]),
        .I3(s02_axi_reg_wstrb_IBUF[0]),
        .I4(axi_awaddr[3]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[0] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [0]),
        .Q(\slv_reg2_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[10] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [10]),
        .Q(\slv_reg2_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[11] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [11]),
        .Q(\slv_reg2_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[12] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [12]),
        .Q(\slv_reg2_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[13] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [13]),
        .Q(\slv_reg2_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[14] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [14]),
        .Q(\slv_reg2_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[15] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [15]),
        .Q(\slv_reg2_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[16] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [16]),
        .Q(\slv_reg2_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[17] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [17]),
        .Q(\slv_reg2_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[18] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [18]),
        .Q(\slv_reg2_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[19] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [19]),
        .Q(\slv_reg2_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[1] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [1]),
        .Q(\slv_reg2_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[20] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [20]),
        .Q(\slv_reg2_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[21] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [21]),
        .Q(\slv_reg2_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[22] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [22]),
        .Q(\slv_reg2_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[23] 
       (.C(CLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [23]),
        .Q(\slv_reg2_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[24] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [24]),
        .Q(\slv_reg2_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[25] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [25]),
        .Q(\slv_reg2_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[26] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [26]),
        .Q(\slv_reg2_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[27] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [27]),
        .Q(\slv_reg2_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[28] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [28]),
        .Q(\slv_reg2_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[29] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [29]),
        .Q(\slv_reg2_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[2] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [2]),
        .Q(\slv_reg2_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[30] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [30]),
        .Q(\slv_reg2_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[31] 
       (.C(CLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [31]),
        .Q(\slv_reg2_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[3] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [3]),
        .Q(\slv_reg2_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[4] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [4]),
        .Q(\slv_reg2_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[5] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [5]),
        .Q(\slv_reg2_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[6] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [6]),
        .Q(\slv_reg2_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[7] 
       (.C(CLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [7]),
        .Q(\slv_reg2_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[8] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [8]),
        .Q(\slv_reg2_reg_n_0_[8] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \slv_reg2_reg[9] 
       (.C(CLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(\slv_reg2_reg[31]_0 [9]),
        .Q(\slv_reg2_reg_n_0_[9] ),
        .R(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_in_reg[0] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[0] ),
        .Q(\ctrl_in_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_in_reg[1] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[1] ),
        .Q(\ctrl_in_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_in_reg[2] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[2] ),
        .Q(\ctrl_in_reg[1]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_in_reg[3] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[3] ),
        .Q(\ctrl_in_reg[1]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_in_reg[4] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[4] ),
        .Q(\ctrl_in_reg[1]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \time_in_reg[5] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg2_reg_n_0_[5] ),
        .Q(\ctrl_in_reg[1]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[0] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[0] ),
        .Q(s_txdivcnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[1] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[1] ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[2] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[2] ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[3] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[3] ),
        .Q(s_txdivcnt[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[4] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[4] ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[5] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[5] ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[6] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[6] ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \txdivcnt_reg[7] 
       (.C(\line4_reg[17]_0 ),
        .CE(1'b1),
        .D(\slv_reg1_reg_n_0_[7] ),
        .Q(Q[5]),
        .R(1'b0));
endmodule

module spwlink
   (\r_reg[xmit_fct_in]_0 ,
    \r_reg[timerdone]__0 ,
    S,
    ADDRBWRADDR,
    \FSM_onehot_r_reg[state][5]_0 ,
    \r_reg[timercnt][9]_0 ,
    \r_reg[errcred]_0 ,
    linkdis_reg,
    \v[pend_data] ,
    \xmiti[txen] ,
    \r_reg[tx_credit][3]_0 ,
    \r_reg[allow_char]0 ,
    \r_reg[rx_credit][0]_0 ,
    E,
    SR,
    \linko[started]1 ,
    \FSM_onehot_r_reg[state][0]_0 ,
    \FSM_onehot_r_reg[state][1]_0 ,
    \v[rxeep]3_out ,
    \v[rxfifo_waddr]_0 ,
    \r_reg[rxfifo_waddr][0] ,
    \r_reg[rxfifo_waddr][0]_0 ,
    \r_reg[txfifo_raddr][0] ,
    \r_reg[txfifo_raddr][0]_0 ,
    \r_reg[txpacket] ,
    \FSM_onehot_r_reg[state][1]_1 ,
    \FSM_onehot_r_reg[state][3]_0 ,
    \FSM_onehot_r_reg[state][0]_1 ,
    \FSM_onehot_r_reg[state][0]_2 ,
    rst_logic_IBUF,
    \r_reg[tx_credit][5]_0 ,
    Q,
    O,
    \FSM_onehot_r_reg[state][0]_3 ,
    \FSM_onehot_r_reg[state][0]_4 ,
    \r_reg[timercnt][0]_0 ,
    \r_reg[timercnt][0]_1 ,
    \r_reg[timercnt][0]_2 ,
    \FSM_onehot_r_reg[state][1]_2 ,
    \recvo[tick_out] ,
    \recvo[rxchar] ,
    linkdis,
    \r_reg[txpacket]__0 ,
    \r_reg[txfifo_rvalid]__0 ,
    D,
    \r_reg[txdiscard]__0 ,
    \recvo[gotfct] ,
    \r_reg[allow_char]__0 ,
    \r_reg[pend_char]__0 ,
    \recvo[errpar] ,
    \recvo[erresc] ,
    \r_reg[sent_fct]__0 ,
    \r_reg[xmit_fct_in]_1 ,
    \r_reg[allow_fct]__0 ,
    \r_reg[pend_fct]__0 ,
    s_tc_in,
    \v[parity]14_out ,
    \r_reg[inact] ,
    \r_reg[txdivreg][7] ,
    \r_reg[rxfull]__0 ,
    \r_reg[rxeep]__0 ,
    \r_reg[rxeep] ,
    \r[rxfull]_i_17 ,
    s_mem_reg,
    \r_reg[txenreg]__0 ,
    \r_reg[txenreg] ,
    \r_reg[inact]__0 ,
    \r_reg[inbvalid] ,
    \FSM_onehot_r_reg[state][4]_0 ,
    \r_reg[rx_credit][0]_1 );
  output \r_reg[xmit_fct_in]_0 ;
  output \r_reg[timerdone]__0 ;
  output [0:0]S;
  output [0:0]ADDRBWRADDR;
  output [5:0]\FSM_onehot_r_reg[state][5]_0 ;
  output \r_reg[timercnt][9]_0 ;
  output [2:0]\r_reg[errcred]_0 ;
  output linkdis_reg;
  output \v[pend_data] ;
  output \xmiti[txen] ;
  output \r_reg[tx_credit][3]_0 ;
  output \r_reg[allow_char]0 ;
  output [0:0]\r_reg[rx_credit][0]_0 ;
  output [0:0]E;
  output [0:0]SR;
  output \linko[started]1 ;
  output [0:0]\FSM_onehot_r_reg[state][0]_0 ;
  output [5:0]\FSM_onehot_r_reg[state][1]_0 ;
  output \v[rxeep]3_out ;
  output [9:0]\v[rxfifo_waddr]_0 ;
  output [0:0]\r_reg[rxfifo_waddr][0] ;
  output [0:0]\r_reg[rxfifo_waddr][0]_0 ;
  output [0:0]\r_reg[txfifo_raddr][0] ;
  output [0:0]\r_reg[txfifo_raddr][0]_0 ;
  output \r_reg[txpacket] ;
  output \FSM_onehot_r_reg[state][1]_1 ;
  output \FSM_onehot_r_reg[state][3]_0 ;
  output \FSM_onehot_r_reg[state][0]_1 ;
  output \FSM_onehot_r_reg[state][0]_2 ;
  input rst_logic_IBUF;
  input \r_reg[tx_credit][5]_0 ;
  input [2:0]Q;
  input [1:0]O;
  input \FSM_onehot_r_reg[state][0]_3 ;
  input \FSM_onehot_r_reg[state][0]_4 ;
  input \r_reg[timercnt][0]_0 ;
  input \r_reg[timercnt][0]_1 ;
  input \r_reg[timercnt][0]_2 ;
  input \FSM_onehot_r_reg[state][1]_2 ;
  input \recvo[tick_out] ;
  input \recvo[rxchar] ;
  input linkdis;
  input \r_reg[txpacket]__0 ;
  input \r_reg[txfifo_rvalid]__0 ;
  input [0:0]D;
  input \r_reg[txdiscard]__0 ;
  input \recvo[gotfct] ;
  input \r_reg[allow_char]__0 ;
  input \r_reg[pend_char]__0 ;
  input \recvo[errpar] ;
  input \recvo[erresc] ;
  input \r_reg[sent_fct]__0 ;
  input [5:0]\r_reg[xmit_fct_in]_1 ;
  input \r_reg[allow_fct]__0 ;
  input \r_reg[pend_fct]__0 ;
  input s_tc_in;
  input \v[parity]14_out ;
  input \r_reg[inact] ;
  input [5:0]\r_reg[txdivreg][7] ;
  input \r_reg[rxfull]__0 ;
  input \r_reg[rxeep]__0 ;
  input \r_reg[rxeep] ;
  input [10:0]\r[rxfull]_i_17 ;
  input [0:0]s_mem_reg;
  input [0:0]\r_reg[txenreg]__0 ;
  input \r_reg[txenreg] ;
  input \r_reg[inact]__0 ;
  input \r_reg[inbvalid] ;
  input [2:0]\FSM_onehot_r_reg[state][4]_0 ;
  input [0:0]\r_reg[rx_credit][0]_1 ;

  wire [0:0]ADDRBWRADDR;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_r[state][0]_i_1_n_0 ;
  wire \FSM_onehot_r[state][0]_i_3_n_0 ;
  wire \FSM_onehot_r[state][1]_i_1_n_0 ;
  wire \FSM_onehot_r[state][1]_i_3_n_0 ;
  wire \FSM_onehot_r[state][1]_i_4_n_0 ;
  wire \FSM_onehot_r[state][5]_i_1_n_0 ;
  wire \FSM_onehot_r[state][5]_i_2_n_0 ;
  wire \FSM_onehot_r[state][5]_i_3_n_0 ;
  wire \FSM_onehot_r[state][5]_i_5_n_0 ;
  wire \FSM_onehot_r[state][5]_i_8_n_0 ;
  wire [0:0]\FSM_onehot_r_reg[state][0]_0 ;
  wire \FSM_onehot_r_reg[state][0]_1 ;
  wire \FSM_onehot_r_reg[state][0]_2 ;
  wire \FSM_onehot_r_reg[state][0]_3 ;
  wire \FSM_onehot_r_reg[state][0]_4 ;
  wire [5:0]\FSM_onehot_r_reg[state][1]_0 ;
  wire \FSM_onehot_r_reg[state][1]_1 ;
  wire \FSM_onehot_r_reg[state][1]_2 ;
  wire \FSM_onehot_r_reg[state][3]_0 ;
  wire [2:0]\FSM_onehot_r_reg[state][4]_0 ;
  wire [5:0]\FSM_onehot_r_reg[state][5]_0 ;
  wire [1:0]O;
  wire [2:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire linkdis;
  wire linkdis_reg;
  wire \linko[started]1 ;
  wire \r[errcred]_i_1_n_0 ;
  wire \r[errcred]_i_2_n_0 ;
  wire \r[errcred]_i_3_n_0 ;
  wire \r[errcred]_i_4_n_0 ;
  wire \r[rx_credit][1]_i_1_n_0 ;
  wire \r[rx_credit][2]_i_1_n_0 ;
  wire \r[rx_credit][3]_i_1_n_0 ;
  wire \r[rx_credit][4]_i_1_n_0 ;
  wire \r[rx_credit][5]_i_2_n_0 ;
  wire \r[rx_credit][5]_i_3_n_0 ;
  wire \r[rx_credit][5]_i_4_n_0 ;
  wire [10:0]\r[rxfull]_i_17 ;
  wire \r[rxroom][3]_i_7_n_0 ;
  wire \r[timercnt][0]_i_1_n_0 ;
  wire \r[timercnt][1]_i_1_n_0 ;
  wire \r[timercnt][1]_i_2_n_0 ;
  wire \r[timercnt][2]_i_1_n_0 ;
  wire \r[timercnt][2]_i_2_n_0 ;
  wire \r[timercnt][3]_i_1_n_0 ;
  wire \r[timercnt][3]_i_2_n_0 ;
  wire \r[timercnt][4]_i_1_n_0 ;
  wire \r[timercnt][4]_i_2_n_0 ;
  wire \r[timercnt][5]_i_1_n_0 ;
  wire \r[timercnt][5]_i_2_n_0 ;
  wire \r[timercnt][6]_i_1_n_0 ;
  wire \r[timercnt][6]_i_2_n_0 ;
  wire \r[timercnt][7]_i_1_n_0 ;
  wire \r[timercnt][7]_i_2_n_0 ;
  wire \r[timercnt][8]_i_1_n_0 ;
  wire \r[timercnt][8]_i_2_n_0 ;
  wire \r[timercnt][9]_i_1_n_0 ;
  wire \r[timercnt][9]_i_2_n_0 ;
  wire \r[timerdone]_i_1_n_0 ;
  wire \r[tx_credit][0]_i_1_n_0 ;
  wire \r[tx_credit][1]_i_1_n_0 ;
  wire \r[tx_credit][2]_i_1_n_0 ;
  wire \r[tx_credit][3]_i_1_n_0 ;
  wire \r[tx_credit][4]_i_1_n_0 ;
  wire \r[tx_credit][5]_i_1_n_0 ;
  wire \r[tx_credit][5]_i_2_n_0 ;
  wire \r[txdiscard]_i_2_n_0 ;
  wire \r[xmit_fct_in]_i_2_n_0 ;
  wire \r[xmit_fct_in]_i_3_n_0 ;
  wire \r[xmit_fct_in]_i_4_n_0 ;
  wire \r[xmit_fct_in]_i_5_n_0 ;
  wire \r[xmit_fct_in]_i_6_n_0 ;
  wire \r[xmit_fct_in]_i_7_n_0 ;
  wire \r[xmit_fct_in]_i_8_n_0 ;
  wire \r_reg[allow_char]0 ;
  wire \r_reg[allow_char]__0 ;
  wire \r_reg[allow_fct]__0 ;
  wire [2:0]\r_reg[errcred]_0 ;
  wire \r_reg[inact] ;
  wire \r_reg[inact]__0 ;
  wire \r_reg[inbvalid] ;
  wire \r_reg[pend_char]__0 ;
  wire \r_reg[pend_fct]__0 ;
  wire [5:1]\r_reg[rx_credit] ;
  wire [0:0]\r_reg[rx_credit][0]_0 ;
  wire [0:0]\r_reg[rx_credit][0]_1 ;
  wire \r_reg[rxeep] ;
  wire \r_reg[rxeep]__0 ;
  wire [0:0]\r_reg[rxfifo_waddr][0] ;
  wire [0:0]\r_reg[rxfifo_waddr][0]_0 ;
  wire \r_reg[rxfull]__0 ;
  wire \r_reg[rxroom][3]_i_6_n_0 ;
  wire \r_reg[rxroom][3]_i_6_n_1 ;
  wire \r_reg[rxroom][3]_i_6_n_2 ;
  wire \r_reg[rxroom][3]_i_6_n_3 ;
  wire \r_reg[rxroom][5]_i_11_n_0 ;
  wire \r_reg[rxroom][5]_i_11_n_1 ;
  wire \r_reg[rxroom][5]_i_11_n_2 ;
  wire \r_reg[rxroom][5]_i_11_n_3 ;
  wire \r_reg[rxroom][5]_i_12_n_2 ;
  wire \r_reg[rxroom][5]_i_12_n_3 ;
  wire \r_reg[sent_fct]__0 ;
  wire \r_reg[timercnt][0]_0 ;
  wire \r_reg[timercnt][0]_1 ;
  wire \r_reg[timercnt][0]_2 ;
  wire \r_reg[timercnt][9]_0 ;
  wire \r_reg[timercnt_n_0_][0] ;
  wire \r_reg[timercnt_n_0_][1] ;
  wire \r_reg[timercnt_n_0_][2] ;
  wire \r_reg[timercnt_n_0_][3] ;
  wire \r_reg[timercnt_n_0_][4] ;
  wire \r_reg[timercnt_n_0_][5] ;
  wire \r_reg[timercnt_n_0_][6] ;
  wire \r_reg[timercnt_n_0_][7] ;
  wire \r_reg[timercnt_n_0_][8] ;
  wire \r_reg[timercnt_n_0_][9] ;
  wire \r_reg[timerdone]__0 ;
  wire [5:0]\r_reg[tx_credit] ;
  wire \r_reg[tx_credit][3]_0 ;
  wire \r_reg[tx_credit][5]_0 ;
  wire \r_reg[txdiscard]__0 ;
  wire [5:0]\r_reg[txdivreg][7] ;
  wire \r_reg[txenreg] ;
  wire [0:0]\r_reg[txenreg]__0 ;
  wire [0:0]\r_reg[txfifo_raddr][0] ;
  wire [0:0]\r_reg[txfifo_raddr][0]_0 ;
  wire \r_reg[txfifo_rvalid]__0 ;
  wire \r_reg[txpacket] ;
  wire \r_reg[txpacket]__0 ;
  wire \r_reg[xmit_fct_in]_0 ;
  wire [5:0]\r_reg[xmit_fct_in]_1 ;
  wire \recvo[erresc] ;
  wire \recvo[errpar] ;
  wire \recvo[gotfct] ;
  wire \recvo[rxchar] ;
  wire \recvo[tick_out] ;
  wire \rin[rx_credit] ;
  wire rst_logic_IBUF;
  wire [0:0]s_mem_reg;
  wire s_tc_in;
  wire \v[parity]14_out ;
  wire \v[pend_data] ;
  wire \v[rxeep]3_out ;
  wire [9:0]\v[rxfifo_waddr]_0 ;
  wire \v[xmit_fct_in] ;
  wire \xmiti[txen] ;
  wire [0:0]\NLW_r_reg[rxroom][3]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_r_reg[rxroom][5]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[rxroom][5]_i_12_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF4)) 
    \FSM_onehot_r[state][0]_i_1 
       (.I0(\FSM_onehot_r_reg[state][0]_3 ),
        .I1(\FSM_onehot_r_reg[state][5]_0 [3]),
        .I2(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I3(\FSM_onehot_r_reg[state][0]_4 ),
        .I4(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .O(\FSM_onehot_r[state][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    \FSM_onehot_r[state][0]_i_3 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I1(\FSM_onehot_r_reg[state][1]_2 ),
        .I2(\recvo[tick_out] ),
        .I3(\recvo[rxchar] ),
        .I4(\r_reg[timerdone]__0 ),
        .I5(\r_reg[timercnt][9]_0 ),
        .O(\FSM_onehot_r[state][0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \FSM_onehot_r[state][1]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I1(\FSM_onehot_r_reg[state][1]_2 ),
        .I2(\recvo[tick_out] ),
        .I3(\recvo[rxchar] ),
        .I4(\r_reg[timerdone]__0 ),
        .I5(\r_reg[timercnt][9]_0 ),
        .O(\FSM_onehot_r[state][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_r[state][1]_i_2 
       (.I0(\r_reg[timercnt_n_0_][9] ),
        .I1(\FSM_onehot_r[state][1]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][1]_i_4_n_0 ),
        .I3(\r_reg[timercnt_n_0_][8] ),
        .O(\r_reg[timercnt][9]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_r[state][1]_i_3 
       (.I0(\r_reg[timercnt_n_0_][3] ),
        .I1(\r_reg[timercnt_n_0_][0] ),
        .I2(\r_reg[timercnt_n_0_][1] ),
        .I3(\r_reg[timercnt_n_0_][2] ),
        .O(\FSM_onehot_r[state][1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_r[state][1]_i_4 
       (.I0(\r_reg[timercnt_n_0_][5] ),
        .I1(\r_reg[timercnt_n_0_][4] ),
        .I2(\r_reg[timercnt_n_0_][7] ),
        .I3(\r_reg[timercnt_n_0_][6] ),
        .O(\FSM_onehot_r[state][1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFEE)) 
    \FSM_onehot_r[state][5]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I1(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I2(\FSM_onehot_r_reg[state][0]_3 ),
        .I3(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I4(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .O(\FSM_onehot_r[state][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF4C4C4C4C4)) 
    \FSM_onehot_r[state][5]_i_2 
       (.I0(\r_reg[timercnt][0]_0 ),
        .I1(\FSM_onehot_r_reg[state][5]_0 [4]),
        .I2(\r_reg[timercnt][0]_1 ),
        .I3(\FSM_onehot_r[state][5]_i_8_n_0 ),
        .I4(\r_reg[timercnt][0]_2 ),
        .I5(\FSM_onehot_r_reg[state][5]_0 [3]),
        .O(\FSM_onehot_r[state][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \FSM_onehot_r[state][5]_i_3 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\FSM_onehot_r_reg[state][1]_2 ),
        .I2(linkdis),
        .I3(\r_reg[errcred]_0 [2]),
        .O(\FSM_onehot_r[state][5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFE0C0C0)) 
    \FSM_onehot_r[state][5]_i_5 
       (.I0(\r_reg[timerdone]__0 ),
        .I1(\r_reg[timercnt][0]_1 ),
        .I2(\FSM_onehot_r_reg[state][5]_0 [5]),
        .I3(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I4(\r_reg[timercnt][9]_0 ),
        .O(\FSM_onehot_r[state][5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_r[state][5]_i_8 
       (.I0(\r_reg[timerdone]__0 ),
        .I1(\r_reg[timercnt_n_0_][8] ),
        .I2(\FSM_onehot_r[state][1]_i_4_n_0 ),
        .I3(\FSM_onehot_r[state][1]_i_3_n_0 ),
        .I4(\r_reg[timercnt_n_0_][9] ),
        .O(\FSM_onehot_r[state][5]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_r_reg[state][0] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(\FSM_onehot_r[state][5]_i_1_n_0 ),
        .D(\FSM_onehot_r[state][0]_i_1_n_0 ),
        .Q(\FSM_onehot_r_reg[state][5]_0 [0]),
        .S(rst_logic_IBUF));
  (* FSM_ENCODED_STATES = "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_reg[state][1] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(\FSM_onehot_r[state][5]_i_1_n_0 ),
        .D(\FSM_onehot_r[state][1]_i_1_n_0 ),
        .Q(\FSM_onehot_r_reg[state][5]_0 [1]),
        .R(rst_logic_IBUF));
  (* FSM_ENCODED_STATES = "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_reg[state][2] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(\FSM_onehot_r[state][5]_i_1_n_0 ),
        .D(\FSM_onehot_r_reg[state][4]_0 [0]),
        .Q(\FSM_onehot_r_reg[state][5]_0 [2]),
        .R(rst_logic_IBUF));
  (* FSM_ENCODED_STATES = "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_reg[state][3] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(\FSM_onehot_r[state][5]_i_1_n_0 ),
        .D(\FSM_onehot_r_reg[state][4]_0 [1]),
        .Q(\FSM_onehot_r_reg[state][5]_0 [3]),
        .R(rst_logic_IBUF));
  (* FSM_ENCODED_STATES = "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_reg[state][4] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(\FSM_onehot_r[state][5]_i_1_n_0 ),
        .D(\FSM_onehot_r_reg[state][4]_0 [2]),
        .Q(\FSM_onehot_r_reg[state][5]_0 [4]),
        .R(rst_logic_IBUF));
  (* FSM_ENCODED_STATES = "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_r_reg[state][5] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(\FSM_onehot_r[state][5]_i_1_n_0 ),
        .D(\FSM_onehot_r_reg[state][5]_0 [0]),
        .Q(\FSM_onehot_r_reg[state][5]_0 [5]),
        .R(rst_logic_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line4[10]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\recvo[erresc] ),
        .O(\r_reg[errcred]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line4[9]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\recvo[errpar] ),
        .O(\r_reg[errcred]_0 [0]));
  LUT4 #(
    .INIT(16'h56AA)) 
    plusOp__62_carry_i_1
       (.I0(s_mem_reg),
        .I1(\r_reg[txdiscard]__0 ),
        .I2(\v[pend_data] ),
        .I3(\r_reg[txfifo_rvalid]__0 ),
        .O(\r_reg[txfifo_raddr][0] ));
  LUT4 #(
    .INIT(16'h56AA)) 
    plusOp__63_carry_i_1
       (.I0(s_mem_reg),
        .I1(\r_reg[txdiscard]__0 ),
        .I2(\v[pend_data] ),
        .I3(\r_reg[txfifo_rvalid]__0 ),
        .O(\r_reg[txfifo_raddr][0]_0 ));
  LUT5 #(
    .INIT(32'h999A9A9A)) 
    plusOp_carry_i_1
       (.I0(\r[rxfull]_i_17 [0]),
        .I1(\r_reg[rxfull]__0 ),
        .I2(\r_reg[rxeep]__0 ),
        .I3(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I4(\recvo[rxchar] ),
        .O(\r_reg[rxfifo_waddr][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \r[allow_char]_i_1 
       (.I0(\r_reg[sent_fct]__0 ),
        .I1(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I2(\FSM_onehot_r_reg[state][5]_0 [3]),
        .O(\r_reg[allow_char]0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \r[allow_fct]_i_1 
       (.I0(rst_logic_IBUF),
        .I1(\FSM_onehot_r_reg[state][5]_0 [3]),
        .I2(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I3(\FSM_onehot_r_reg[state][5]_0 [1]),
        .O(\FSM_onehot_r_reg[state][3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r[allow_fct]_i_2 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [3]),
        .O(\linko[started]1 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[bitcnt][9]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I1(\v[parity]14_out ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \r[disccnt][7]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I1(\r_reg[inact] ),
        .O(\FSM_onehot_r_reg[state][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF3F2)) 
    \r[errcred]_i_1 
       (.I0(\r[errcred]_i_2_n_0 ),
        .I1(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I2(\r[errcred]_i_3_n_0 ),
        .I3(\r_reg[errcred]_0 [2]),
        .O(\r[errcred]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r[errcred]_i_2 
       (.I0(\r_reg[tx_credit] [4]),
        .I1(\r_reg[tx_credit] [5]),
        .I2(\recvo[gotfct] ),
        .I3(\r[errcred]_i_4_n_0 ),
        .O(\r[errcred]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \r[errcred]_i_3 
       (.I0(\r[rx_credit][5]_i_3_n_0 ),
        .I1(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I2(\r_reg[rx_credit] [5]),
        .I3(\r_reg[rx_credit] [3]),
        .I4(\r_reg[rx_credit] [4]),
        .O(\r[errcred]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \r[errcred]_i_4 
       (.I0(\r_reg[tx_credit] [2]),
        .I1(\r_reg[tx_credit] [0]),
        .I2(\r_reg[tx_credit] [1]),
        .I3(\r_reg[tx_credit] [3]),
        .O(\r[errcred]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \r[inact]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I1(\r_reg[inact]__0 ),
        .O(\FSM_onehot_r_reg[state][0]_1 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r[inbvalid]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I1(\r_reg[inbvalid] ),
        .O(\FSM_onehot_r_reg[state][0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \r[pend_data][8]_i_1 
       (.I0(\xmiti[txen] ),
        .I1(\r_reg[allow_char]__0 ),
        .I2(\r_reg[txdiscard]__0 ),
        .I3(\r_reg[txfifo_rvalid]__0 ),
        .I4(\r_reg[tx_credit][3]_0 ),
        .I5(\r_reg[pend_char]__0 ),
        .O(\v[pend_data] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r[pend_data][8]_i_2 
       (.I0(\r_reg[tx_credit] [3]),
        .I1(\r_reg[tx_credit] [1]),
        .I2(\r_reg[tx_credit] [0]),
        .I3(\r_reg[tx_credit] [2]),
        .I4(\r_reg[tx_credit] [5]),
        .I5(\r_reg[tx_credit] [4]),
        .O(\r_reg[tx_credit][3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[pend_time][7]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(s_tc_in),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \r[rx_credit][1]_i_1 
       (.I0(\r_reg[rx_credit] [1]),
        .I1(\r_reg[rx_credit][0]_0 ),
        .I2(\recvo[rxchar] ),
        .O(\r[rx_credit][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hAA9A)) 
    \r[rx_credit][2]_i_1 
       (.I0(\r_reg[rx_credit] [2]),
        .I1(\r_reg[rx_credit] [1]),
        .I2(\recvo[rxchar] ),
        .I3(\r_reg[rx_credit][0]_0 ),
        .O(\r[rx_credit][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666966666666)) 
    \r[rx_credit][3]_i_1 
       (.I0(\r[rx_credit][5]_i_4_n_0 ),
        .I1(\r_reg[rx_credit] [3]),
        .I2(\r_reg[rx_credit] [2]),
        .I3(\r_reg[rx_credit] [1]),
        .I4(\r_reg[rx_credit][0]_0 ),
        .I5(\recvo[rxchar] ),
        .O(\r[rx_credit][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \r[rx_credit][4]_i_1 
       (.I0(\r_reg[rx_credit] [4]),
        .I1(\r_reg[rx_credit] [3]),
        .I2(\r[rx_credit][5]_i_4_n_0 ),
        .I3(\r[rx_credit][5]_i_3_n_0 ),
        .O(\r[rx_credit][4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \r[rx_credit][5]_i_1 
       (.I0(rst_logic_IBUF),
        .I1(\FSM_onehot_r_reg[state][5]_0 [0]),
        .O(\rin[rx_credit] ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h9AAAAAA6)) 
    \r[rx_credit][5]_i_2 
       (.I0(\r_reg[rx_credit] [5]),
        .I1(\r[rx_credit][5]_i_3_n_0 ),
        .I2(\r_reg[rx_credit] [4]),
        .I3(\r_reg[rx_credit] [3]),
        .I4(\r[rx_credit][5]_i_4_n_0 ),
        .O(\r[rx_credit][5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \r[rx_credit][5]_i_3 
       (.I0(\recvo[rxchar] ),
        .I1(\r_reg[rx_credit][0]_0 ),
        .I2(\r_reg[rx_credit] [1]),
        .I3(\r_reg[rx_credit] [2]),
        .O(\r[rx_credit][5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FE000000)) 
    \r[rx_credit][5]_i_4 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [3]),
        .I1(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I2(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I3(\r_reg[xmit_fct_in]_0 ),
        .I4(\r_reg[allow_fct]__0 ),
        .I5(\r_reg[pend_fct]__0 ),
        .O(\r[rx_credit][5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \r[rxeep]_i_1 
       (.I0(\r_reg[rxfull]__0 ),
        .I1(\r_reg[rxeep]__0 ),
        .I2(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I3(\r_reg[rxeep] ),
        .O(\v[rxeep]3_out ));
  LUT5 #(
    .INIT(32'h999A9A9A)) 
    \r[rxfifo_waddr][0]_i_1 
       (.I0(\r[rxfull]_i_17 [0]),
        .I1(\r_reg[rxfull]__0 ),
        .I2(\r_reg[rxeep]__0 ),
        .I3(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I4(\recvo[rxchar] ),
        .O(\r_reg[rxfifo_waddr][0] ));
  LUT5 #(
    .INIT(32'h999A9A9A)) 
    \r[rxroom][3]_i_7 
       (.I0(\r[rxfull]_i_17 [0]),
        .I1(\r_reg[rxfull]__0 ),
        .I2(\r_reg[rxeep]__0 ),
        .I3(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I4(\recvo[rxchar] ),
        .O(\r[rxroom][3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r[timercnt][0]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r_reg[timercnt][9]_0 ),
        .I5(\r_reg[timercnt_n_0_][0] ),
        .O(\r[timercnt][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[timercnt][1]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][1]_i_2_n_0 ),
        .O(\r[timercnt][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \r[timercnt][1]_i_2 
       (.I0(\r_reg[timercnt][9]_0 ),
        .I1(\r_reg[timercnt_n_0_][1] ),
        .I2(\r_reg[timercnt_n_0_][0] ),
        .O(\r[timercnt][1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[timercnt][2]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][2]_i_2_n_0 ),
        .O(\r[timercnt][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hABFE)) 
    \r[timercnt][2]_i_2 
       (.I0(\r_reg[timercnt][9]_0 ),
        .I1(\r_reg[timercnt_n_0_][0] ),
        .I2(\r_reg[timercnt_n_0_][1] ),
        .I3(\r_reg[timercnt_n_0_][2] ),
        .O(\r[timercnt][2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[timercnt][3]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][3]_i_2_n_0 ),
        .O(\r[timercnt][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hAAABFFFE)) 
    \r[timercnt][3]_i_2 
       (.I0(\r_reg[timercnt][9]_0 ),
        .I1(\r_reg[timercnt_n_0_][2] ),
        .I2(\r_reg[timercnt_n_0_][1] ),
        .I3(\r_reg[timercnt_n_0_][0] ),
        .I4(\r_reg[timercnt_n_0_][3] ),
        .O(\r[timercnt][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[timercnt][4]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][4]_i_2_n_0 ),
        .O(\r[timercnt][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABFFFFFFFE)) 
    \r[timercnt][4]_i_2 
       (.I0(\r_reg[timercnt][9]_0 ),
        .I1(\r_reg[timercnt_n_0_][3] ),
        .I2(\r_reg[timercnt_n_0_][0] ),
        .I3(\r_reg[timercnt_n_0_][1] ),
        .I4(\r_reg[timercnt_n_0_][2] ),
        .I5(\r_reg[timercnt_n_0_][4] ),
        .O(\r[timercnt][4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r[timercnt][5]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][5]_i_2_n_0 ),
        .I5(\r_reg[timercnt][9]_0 ),
        .O(\r[timercnt][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \r[timercnt][5]_i_2 
       (.I0(\r_reg[timercnt_n_0_][5] ),
        .I1(\r_reg[timercnt_n_0_][3] ),
        .I2(\r_reg[timercnt_n_0_][0] ),
        .I3(\r_reg[timercnt_n_0_][1] ),
        .I4(\r_reg[timercnt_n_0_][2] ),
        .I5(\r_reg[timercnt_n_0_][4] ),
        .O(\r[timercnt][5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[timercnt][6]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][6]_i_2_n_0 ),
        .O(\r[timercnt][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABFFFE)) 
    \r[timercnt][6]_i_2 
       (.I0(\r_reg[timercnt][9]_0 ),
        .I1(\r_reg[timercnt_n_0_][5] ),
        .I2(\FSM_onehot_r[state][1]_i_3_n_0 ),
        .I3(\r_reg[timercnt_n_0_][4] ),
        .I4(\r_reg[timercnt_n_0_][6] ),
        .O(\r[timercnt][6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[timercnt][7]_i_1 
       (.I0(\r[timercnt][7]_i_2_n_0 ),
        .I1(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I2(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I4(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .O(\r[timercnt][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \r[timercnt][7]_i_2 
       (.I0(\r_reg[timercnt_n_0_][7] ),
        .I1(\r_reg[timercnt_n_0_][5] ),
        .I2(\FSM_onehot_r[state][1]_i_3_n_0 ),
        .I3(\r_reg[timercnt_n_0_][4] ),
        .I4(\r_reg[timercnt_n_0_][6] ),
        .O(\r[timercnt][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r[timercnt][8]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][8]_i_2_n_0 ),
        .I5(\r_reg[timercnt][9]_0 ),
        .O(\r[timercnt][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555556)) 
    \r[timercnt][8]_i_2 
       (.I0(\r_reg[timercnt_n_0_][8] ),
        .I1(\r_reg[timercnt_n_0_][5] ),
        .I2(\r_reg[timercnt_n_0_][4] ),
        .I3(\r_reg[timercnt_n_0_][7] ),
        .I4(\r_reg[timercnt_n_0_][6] ),
        .I5(\FSM_onehot_r[state][1]_i_3_n_0 ),
        .O(\r[timercnt][8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFF)) 
    \r[timercnt][9]_i_1 
       (.I0(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I1(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I2(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I4(\r[timercnt][9]_i_2_n_0 ),
        .I5(\r_reg[timercnt_n_0_][9] ),
        .O(\r[timercnt][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[timercnt][9]_i_2 
       (.I0(\r_reg[timercnt_n_0_][8] ),
        .I1(\r_reg[timercnt_n_0_][5] ),
        .I2(\r_reg[timercnt_n_0_][4] ),
        .I3(\r_reg[timercnt_n_0_][7] ),
        .I4(\r_reg[timercnt_n_0_][6] ),
        .I5(\FSM_onehot_r[state][1]_i_3_n_0 ),
        .O(\r[timercnt][9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000300000002)) 
    \r[timerdone]_i_1 
       (.I0(\r_reg[timercnt][9]_0 ),
        .I1(\FSM_onehot_r[state][5]_i_5_n_0 ),
        .I2(\FSM_onehot_r[state][0]_i_3_n_0 ),
        .I3(\FSM_onehot_r[state][5]_i_3_n_0 ),
        .I4(\FSM_onehot_r[state][5]_i_2_n_0 ),
        .I5(\r_reg[timerdone]__0 ),
        .O(\r[timerdone]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[token1][fctpiggy]_i_3 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I2(\FSM_onehot_r_reg[state][5]_0 [3]),
        .O(\xmiti[txen] ));
  LUT2 #(
    .INIT(4'h6)) 
    \r[tx_credit][0]_i_1 
       (.I0(\r_reg[tx_credit] [0]),
        .I1(\v[pend_data] ),
        .O(\r[tx_credit][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \r[tx_credit][1]_i_1 
       (.I0(\r_reg[tx_credit] [0]),
        .I1(\v[pend_data] ),
        .I2(\r_reg[tx_credit] [1]),
        .O(\r[tx_credit][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hAA9A)) 
    \r[tx_credit][2]_i_1 
       (.I0(\r_reg[tx_credit] [2]),
        .I1(\r_reg[tx_credit] [0]),
        .I2(\v[pend_data] ),
        .I3(\r_reg[tx_credit] [1]),
        .O(\r[tx_credit][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFBFFFB0004)) 
    \r[tx_credit][3]_i_1 
       (.I0(\r_reg[tx_credit] [1]),
        .I1(\v[pend_data] ),
        .I2(\r_reg[tx_credit] [0]),
        .I3(\r_reg[tx_credit] [2]),
        .I4(\recvo[gotfct] ),
        .I5(\r_reg[tx_credit] [3]),
        .O(\r[tx_credit][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \r[tx_credit][4]_i_1 
       (.I0(\r_reg[tx_credit] [4]),
        .I1(\r[tx_credit][5]_i_2_n_0 ),
        .I2(\r_reg[tx_credit] [3]),
        .I3(\recvo[gotfct] ),
        .O(\r[tx_credit][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \r[tx_credit][5]_i_1 
       (.I0(\r_reg[tx_credit] [5]),
        .I1(\r_reg[tx_credit] [4]),
        .I2(\recvo[gotfct] ),
        .I3(\r_reg[tx_credit] [3]),
        .I4(\r[tx_credit][5]_i_2_n_0 ),
        .O(\r[tx_credit][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \r[tx_credit][5]_i_2 
       (.I0(\r_reg[tx_credit] [2]),
        .I1(\r_reg[tx_credit] [0]),
        .I2(\v[pend_data] ),
        .I3(\r_reg[tx_credit] [1]),
        .O(\r[tx_credit][5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \r[txdiscard]_i_1 
       (.I0(\r[txdiscard]_i_2_n_0 ),
        .I1(linkdis),
        .I2(rst_logic_IBUF),
        .O(linkdis_reg));
  LUT6 #(
    .INIT(64'h02FFFFFF02020E0E)) 
    \r[txdiscard]_i_2 
       (.I0(\r_reg[txpacket]__0 ),
        .I1(\v[pend_data] ),
        .I2(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I3(\r_reg[txfifo_rvalid]__0 ),
        .I4(D),
        .I5(\r_reg[txdiscard]__0 ),
        .O(\r[txdiscard]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[txdivreg][1]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\r_reg[txdivreg][7] [0]),
        .O(\FSM_onehot_r_reg[state][1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[txdivreg][2]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\r_reg[txdivreg][7] [1]),
        .O(\FSM_onehot_r_reg[state][1]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[txdivreg][4]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\r_reg[txdivreg][7] [2]),
        .O(\FSM_onehot_r_reg[state][1]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[txdivreg][5]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\r_reg[txdivreg][7] [3]),
        .O(\FSM_onehot_r_reg[state][1]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[txdivreg][6]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\r_reg[txdivreg][7] [4]),
        .O(\FSM_onehot_r_reg[state][1]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[txdivreg][7]_i_2 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\r_reg[txdivreg][7] [5]),
        .O(\FSM_onehot_r_reg[state][1]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    \r[txenreg]_i_1 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I1(\FSM_onehot_r_reg[state][5]_0 [2]),
        .I2(\FSM_onehot_r_reg[state][5]_0 [3]),
        .I3(\r_reg[txenreg]__0 ),
        .I4(\r_reg[txenreg] ),
        .O(\FSM_onehot_r_reg[state][1]_1 ));
  LUT5 #(
    .INIT(32'h00003A00)) 
    \r[txpacket]_i_1 
       (.I0(\r_reg[txpacket]__0 ),
        .I1(D),
        .I2(\v[pend_data] ),
        .I3(\FSM_onehot_r_reg[state][5]_0 [1]),
        .I4(rst_logic_IBUF),
        .O(\r_reg[txpacket] ));
  LUT6 #(
    .INIT(64'h00F400FF000000F4)) 
    \r[xmit_fct_in]_i_1 
       (.I0(\r[xmit_fct_in]_i_2_n_0 ),
        .I1(\r_reg[xmit_fct_in]_1 [4]),
        .I2(\r[xmit_fct_in]_i_3_n_0 ),
        .I3(\r[xmit_fct_in]_i_4_n_0 ),
        .I4(\r[xmit_fct_in]_i_5_n_0 ),
        .I5(\r_reg[xmit_fct_in]_1 [5]),
        .O(\v[xmit_fct_in] ));
  LUT6 #(
    .INIT(64'h55555555AAAA6AAA)) 
    \r[xmit_fct_in]_i_2 
       (.I0(\r_reg[rx_credit] [4]),
        .I1(\xmiti[txen] ),
        .I2(\r_reg[xmit_fct_in]_0 ),
        .I3(\r_reg[allow_fct]__0 ),
        .I4(\r_reg[pend_fct]__0 ),
        .I5(\r_reg[rx_credit] [3]),
        .O(\r[xmit_fct_in]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880EEE0EEE08088)) 
    \r[xmit_fct_in]_i_3 
       (.I0(\r[xmit_fct_in]_i_6_n_0 ),
        .I1(\r_reg[xmit_fct_in]_1 [3]),
        .I2(\r_reg[xmit_fct_in]_1 [4]),
        .I3(\r_reg[rx_credit] [4]),
        .I4(\r[rx_credit][5]_i_4_n_0 ),
        .I5(\r_reg[rx_credit] [3]),
        .O(\r[xmit_fct_in]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEEAAAAEEAAAAA)) 
    \r[xmit_fct_in]_i_4 
       (.I0(\FSM_onehot_r_reg[state][5]_0 [0]),
        .I1(\r_reg[rx_credit] [5]),
        .I2(\r[rx_credit][5]_i_4_n_0 ),
        .I3(\r_reg[rx_credit] [3]),
        .I4(\r_reg[rx_credit] [4]),
        .I5(\r[xmit_fct_in]_i_7_n_0 ),
        .O(\r[xmit_fct_in]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \r[xmit_fct_in]_i_5 
       (.I0(\r_reg[rx_credit] [5]),
        .I1(\r[xmit_fct_in]_i_8_n_0 ),
        .I2(\r_reg[rx_credit] [4]),
        .O(\r[xmit_fct_in]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDF0D0000FFFFDF0D)) 
    \r[xmit_fct_in]_i_6 
       (.I0(\r_reg[rx_credit][0]_0 ),
        .I1(\r_reg[xmit_fct_in]_1 [0]),
        .I2(\r_reg[rx_credit] [1]),
        .I3(\r_reg[xmit_fct_in]_1 [1]),
        .I4(\r_reg[xmit_fct_in]_1 [2]),
        .I5(\r_reg[rx_credit] [2]),
        .O(\r[xmit_fct_in]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \r[xmit_fct_in]_i_7 
       (.I0(\r_reg[rx_credit] [2]),
        .I1(\r_reg[rx_credit] [1]),
        .I2(\r_reg[rx_credit][0]_0 ),
        .O(\r[xmit_fct_in]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h45555555)) 
    \r[xmit_fct_in]_i_8 
       (.I0(\r_reg[rx_credit] [3]),
        .I1(\r_reg[pend_fct]__0 ),
        .I2(\r_reg[allow_fct]__0 ),
        .I3(\r_reg[xmit_fct_in]_0 ),
        .I4(\xmiti[txen] ),
        .O(\r[xmit_fct_in]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[errcred] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[errcred]_i_1_n_0 ),
        .Q(\r_reg[errcred]_0 [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rx_credit][0] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r_reg[rx_credit][0]_1 ),
        .Q(\r_reg[rx_credit][0]_0 ),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rx_credit][1] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[rx_credit][1]_i_1_n_0 ),
        .Q(\r_reg[rx_credit] [1]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rx_credit][2] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[rx_credit][2]_i_1_n_0 ),
        .Q(\r_reg[rx_credit] [2]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rx_credit][3] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[rx_credit][3]_i_1_n_0 ),
        .Q(\r_reg[rx_credit] [3]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rx_credit][4] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[rx_credit][4]_i_1_n_0 ),
        .Q(\r_reg[rx_credit] [4]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rx_credit][5] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[rx_credit][5]_i_2_n_0 ),
        .Q(\r_reg[rx_credit] [5]),
        .R(\rin[rx_credit] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxroom][3]_i_6 
       (.CI(1'b0),
        .CO({\r_reg[rxroom][3]_i_6_n_0 ,\r_reg[rxroom][3]_i_6_n_1 ,\r_reg[rxroom][3]_i_6_n_2 ,\r_reg[rxroom][3]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r[rxfull]_i_17 [0]}),
        .O({\v[rxfifo_waddr]_0 [2:0],\NLW_r_reg[rxroom][3]_i_6_O_UNCONNECTED [0]}),
        .S({\r[rxfull]_i_17 [3:1],\r[rxroom][3]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxroom][5]_i_11 
       (.CI(\r_reg[rxroom][3]_i_6_n_0 ),
        .CO({\r_reg[rxroom][5]_i_11_n_0 ,\r_reg[rxroom][5]_i_11_n_1 ,\r_reg[rxroom][5]_i_11_n_2 ,\r_reg[rxroom][5]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[rxfifo_waddr]_0 [6:3]),
        .S(\r[rxfull]_i_17 [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxroom][5]_i_12 
       (.CI(\r_reg[rxroom][5]_i_11_n_0 ),
        .CO({\NLW_r_reg[rxroom][5]_i_12_CO_UNCONNECTED [3:2],\r_reg[rxroom][5]_i_12_n_2 ,\r_reg[rxroom][5]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_reg[rxroom][5]_i_12_O_UNCONNECTED [3],\v[rxfifo_waddr]_0 [9:7]}),
        .S({1'b0,\r[rxfull]_i_17 [10:8]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][0] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][0]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][0] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][1] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][1]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][1] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][2] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][2]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][2] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][3] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][3]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][3] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][4] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][4]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][4] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][5] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][5]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][5] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][6] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][6]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][6] ),
        .R(rst_logic_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[timercnt][7] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][7]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][7] ),
        .S(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timercnt][8] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][8]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][8] ),
        .R(rst_logic_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[timercnt][9] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timercnt][9]_i_1_n_0 ),
        .Q(\r_reg[timercnt_n_0_][9] ),
        .S(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timerdone] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[timerdone]_i_1_n_0 ),
        .Q(\r_reg[timerdone]__0 ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tx_credit][0] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[tx_credit][0]_i_1_n_0 ),
        .Q(\r_reg[tx_credit] [0]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tx_credit][1] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[tx_credit][1]_i_1_n_0 ),
        .Q(\r_reg[tx_credit] [1]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tx_credit][2] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[tx_credit][2]_i_1_n_0 ),
        .Q(\r_reg[tx_credit] [2]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tx_credit][3] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[tx_credit][3]_i_1_n_0 ),
        .Q(\r_reg[tx_credit] [3]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tx_credit][4] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[tx_credit][4]_i_1_n_0 ),
        .Q(\r_reg[tx_credit] [4]),
        .R(\rin[rx_credit] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tx_credit][5] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\r[tx_credit][5]_i_1_n_0 ),
        .Q(\r_reg[tx_credit] [5]),
        .R(\rin[rx_credit] ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_reg[txfifo_rvalid]2_carry_i_4 
       (.I0(ADDRBWRADDR),
        .I1(Q[0]),
        .I2(O[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(O[1]),
        .O(S));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[xmit_fct_in] 
       (.C(\r_reg[tx_credit][5]_0 ),
        .CE(1'b1),
        .D(\v[xmit_fct_in] ),
        .Q(\r_reg[xmit_fct_in]_0 ),
        .R(rst_logic_IBUF));
  LUT4 #(
    .INIT(16'h56AA)) 
    s_mem_reg_i_2__0
       (.I0(s_mem_reg),
        .I1(\r_reg[txdiscard]__0 ),
        .I2(\v[pend_data] ),
        .I3(\r_reg[txfifo_rvalid]__0 ),
        .O(ADDRBWRADDR));
endmodule

module spwram
   (\rdata_reg[1]_0 ,
    \r_reg[splitbit] ,
    \rdata_reg[0]_0 ,
    rxclk_IBUF_BUFG,
    \rrx_reg[bufdata] ,
    \rrx_reg[bufwrite]__0 ,
    \rdata_reg[0]_1 ,
    di,
    \rrx_reg[headptr] ,
    \r_reg[tailptr] );
  output \rdata_reg[1]_0 ;
  input \r_reg[splitbit] ;
  input \rdata_reg[0]_0 ;
  input rxclk_IBUF_BUFG;
  input [1:0]\rrx_reg[bufdata] ;
  input \rrx_reg[bufwrite]__0 ;
  input \rdata_reg[0]_1 ;
  input di;
  input [0:0]\rrx_reg[headptr] ;
  input [2:0]\r_reg[tailptr] ;

  wire di;
  wire \r_reg[splitbit] ;
  wire [2:0]\r_reg[tailptr] ;
  wire [1:0]rdata0;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[1]_0 ;
  wire [1:0]\rrx_reg[bufdata] ;
  wire \rrx_reg[bufwrite]__0 ;
  wire [0:0]\rrx_reg[headptr] ;
  wire rxclk_IBUF_BUFG;
  wire [1:0]s_bufdout;
  wire NLW_s_mem_reg_0_7_0_0_SPO_UNCONNECTED;
  wire NLW_s_mem_reg_0_7_1_1_SPO_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \r[splitbit]_i_1 
       (.I0(s_bufdout[1]),
        .I1(\r_reg[splitbit] ),
        .I2(s_bufdout[0]),
        .O(\rdata_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[0] 
       (.C(\rdata_reg[0]_0 ),
        .CE(1'b1),
        .D(rdata0[0]),
        .Q(s_bufdout[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rdata_reg[1] 
       (.C(\rdata_reg[0]_0 ),
        .CE(1'b1),
        .D(rdata0[1]),
        .Q(s_bufdout[1]),
        .R(1'b0));
  (* INIT = "32'h00000000" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "spwstream_inst/recvfront_sel1.recvfront_fast_inst/bufmem/s_mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM32X1D_UNIQ_BASE_ s_mem_reg_0_7_0_0
       (.A0(\rdata_reg[0]_1 ),
        .A1(di),
        .A2(\rrx_reg[headptr] ),
        .A3(1'b0),
        .A4(1'b0),
        .D(\rrx_reg[bufdata] [0]),
        .DPO(rdata0[0]),
        .DPRA0(\r_reg[tailptr] [0]),
        .DPRA1(\r_reg[tailptr] [1]),
        .DPRA2(\r_reg[tailptr] [2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_s_mem_reg_0_7_0_0_SPO_UNCONNECTED),
        .WCLK(rxclk_IBUF_BUFG),
        .WE(\rrx_reg[bufwrite]__0 ));
  (* INIT = "32'h00000000" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "spwstream_inst/recvfront_sel1.recvfront_fast_inst/bufmem/s_mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* XILINX_LEGACY_PRIM = "RAM16X1D" *) 
  (* XILINX_TRANSFORM_PINMAP = "GND:DPRA4,A4" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "7" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM32X1D_HD1 s_mem_reg_0_7_1_1
       (.A0(\rdata_reg[0]_1 ),
        .A1(di),
        .A2(\rrx_reg[headptr] ),
        .A3(1'b0),
        .A4(1'b0),
        .D(\rrx_reg[bufdata] [1]),
        .DPO(rdata0[1]),
        .DPRA0(\r_reg[tailptr] [0]),
        .DPRA1(\r_reg[tailptr] [1]),
        .DPRA2(\r_reg[tailptr] [2]),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_s_mem_reg_0_7_1_1_SPO_UNCONNECTED),
        .WCLK(rxclk_IBUF_BUFG),
        .WE(\rrx_reg[bufwrite]__0 ));
endmodule

(* ORIG_REF_NAME = "spwram" *) 
module spwram__parameterized1
   (DOPBDOP,
    ADDRBWRADDR,
    D,
    s_mem_reg_0,
    WEA,
    Q,
    O,
    wdata,
    \spwwrapper.v_write_reg[8] ,
    \spwwrapper.v_write_reg[8]_0 ,
    s_mem_reg_1,
    s_mem_reg_2,
    s_rxread);
  output [0:0]DOPBDOP;
  output [9:0]ADDRBWRADDR;
  output [8:0]D;
  input s_mem_reg_0;
  input [0:0]WEA;
  input [10:0]Q;
  input [0:0]O;
  input [8:0]wdata;
  input [8:0]\spwwrapper.v_write_reg[8] ;
  input \spwwrapper.v_write_reg[8]_0 ;
  input [10:0]s_mem_reg_1;
  input s_mem_reg_2;
  input s_rxread;

  wire [9:0]ADDRBWRADDR;
  wire [8:0]D;
  wire [0:0]DOPBDOP;
  wire [0:0]O;
  wire [10:0]Q;
  wire [0:0]WEA;
  wire s_mem_reg_0;
  wire [10:0]s_mem_reg_1;
  wire s_mem_reg_2;
  wire s_mem_reg_i_14_n_0;
  wire s_mem_reg_i_2_n_2;
  wire s_mem_reg_i_2_n_3;
  wire s_mem_reg_i_3_n_0;
  wire s_mem_reg_i_3_n_1;
  wire s_mem_reg_i_3_n_2;
  wire s_mem_reg_i_3_n_3;
  wire s_mem_reg_i_4_n_0;
  wire s_mem_reg_i_4_n_1;
  wire s_mem_reg_i_4_n_2;
  wire s_mem_reg_i_4_n_3;
  wire [7:0]s_rxdata;
  wire s_rxread;
  wire \spwwrapper.v_write[8]_i_3_n_0 ;
  wire \spwwrapper.v_write[8]_i_4_n_0 ;
  wire [8:0]\spwwrapper.v_write_reg[8] ;
  wire \spwwrapper.v_write_reg[8]_0 ;
  wire [8:0]wdata;
  wire [15:0]NLW_s_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_s_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_s_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:1]NLW_s_mem_reg_DOPBDOP_UNCONNECTED;
  wire [3:2]NLW_s_mem_reg_i_2_CO_UNCONNECTED;
  wire [3:3]NLW_s_mem_reg_i_2_O_UNCONNECTED;
  wire [0:0]NLW_s_mem_reg_i_4_O_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "18432" *) 
  (* RTL_RAM_NAME = "spwstream_inst/rxmem/s_mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    s_mem_reg
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,O,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s_mem_reg_0),
        .CLKBWRCLK(s_mem_reg_0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wdata[7:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,wdata[8]}),
        .DIPBDIP({1'b0,1'b1}),
        .DOADO(NLW_s_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_s_mem_reg_DOBDO_UNCONNECTED[15:8],s_rxdata}),
        .DOPADOP(NLW_s_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP({NLW_s_mem_reg_DOPBDOP_UNCONNECTED[1],DOPBDOP}),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h6A)) 
    s_mem_reg_i_14
       (.I0(s_mem_reg_1[0]),
        .I1(s_mem_reg_2),
        .I2(s_rxread),
        .O(s_mem_reg_i_14_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 s_mem_reg_i_2
       (.CI(s_mem_reg_i_3_n_0),
        .CO({NLW_s_mem_reg_i_2_CO_UNCONNECTED[3:2],s_mem_reg_i_2_n_2,s_mem_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_s_mem_reg_i_2_O_UNCONNECTED[3],ADDRBWRADDR[9:7]}),
        .S({1'b0,s_mem_reg_1[10:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 s_mem_reg_i_3
       (.CI(s_mem_reg_i_4_n_0),
        .CO({s_mem_reg_i_3_n_0,s_mem_reg_i_3_n_1,s_mem_reg_i_3_n_2,s_mem_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(ADDRBWRADDR[6:3]),
        .S(s_mem_reg_1[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 s_mem_reg_i_4
       (.CI(1'b0),
        .CO({s_mem_reg_i_4_n_0,s_mem_reg_i_4_n_1,s_mem_reg_i_4_n_2,s_mem_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,s_mem_reg_1[0]}),
        .O({ADDRBWRADDR[2:0],NLW_s_mem_reg_i_4_O_UNCONNECTED[0]}),
        .S({s_mem_reg_1[3:1],s_mem_reg_i_14_n_0}));
  LUT5 #(
    .INIT(32'hA2FFAE00)) 
    \spwwrapper.v_write[0]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [0]),
        .I1(\spwwrapper.v_write[8]_i_4_n_0 ),
        .I2(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I3(DOPBDOP),
        .I4(s_rxdata[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \spwwrapper.v_write[1]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [1]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(\spwwrapper.v_write[8]_i_4_n_0 ),
        .I3(DOPBDOP),
        .I4(s_rxdata[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \spwwrapper.v_write[2]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [2]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(\spwwrapper.v_write[8]_i_4_n_0 ),
        .I3(DOPBDOP),
        .I4(s_rxdata[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \spwwrapper.v_write[3]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [3]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(\spwwrapper.v_write[8]_i_4_n_0 ),
        .I3(DOPBDOP),
        .I4(s_rxdata[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAB0000)) 
    \spwwrapper.v_write[4]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [4]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(s_rxdata[5]),
        .I3(s_rxdata[6]),
        .I4(DOPBDOP),
        .I5(s_rxdata[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAB0000)) 
    \spwwrapper.v_write[5]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [5]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(s_rxdata[6]),
        .I3(s_rxdata[4]),
        .I4(DOPBDOP),
        .I5(s_rxdata[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAAAFFFFAAAB0000)) 
    \spwwrapper.v_write[6]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [6]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(s_rxdata[5]),
        .I3(s_rxdata[4]),
        .I4(DOPBDOP),
        .I5(s_rxdata[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hBAFFBA00)) 
    \spwwrapper.v_write[7]_i_1 
       (.I0(\spwwrapper.v_write_reg[8] [7]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(\spwwrapper.v_write[8]_i_4_n_0 ),
        .I3(DOPBDOP),
        .I4(s_rxdata[7]),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hBA00BAFF)) 
    \spwwrapper.v_write[8]_i_2 
       (.I0(\spwwrapper.v_write_reg[8] [8]),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(\spwwrapper.v_write[8]_i_4_n_0 ),
        .I3(DOPBDOP),
        .I4(\spwwrapper.v_write_reg[8]_0 ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spwwrapper.v_write[8]_i_3 
       (.I0(s_rxdata[3]),
        .I1(s_rxdata[1]),
        .I2(s_rxdata[7]),
        .I3(s_rxdata[2]),
        .O(\spwwrapper.v_write[8]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \spwwrapper.v_write[8]_i_4 
       (.I0(s_rxdata[5]),
        .I1(s_rxdata[6]),
        .I2(s_rxdata[4]),
        .O(\spwwrapper.v_write[8]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "spwram" *) 
module spwram__parameterized1_0
   (D,
    s_mem_reg_0,
    WEA,
    Q,
    ADDRBWRADDR,
    s_mem_reg_1,
    DIPADIP);
  output [8:0]D;
  input s_mem_reg_0;
  input [0:0]WEA;
  input [10:0]Q;
  input [10:0]ADDRBWRADDR;
  input [7:0]s_mem_reg_1;
  input [0:0]DIPADIP;

  wire [10:0]ADDRBWRADDR;
  wire [8:0]D;
  wire [0:0]DIPADIP;
  wire [10:0]Q;
  wire [0:0]WEA;
  wire s_mem_reg_0;
  wire [7:0]s_mem_reg_1;
  wire [15:0]NLW_s_mem_reg_DOADO_UNCONNECTED;
  wire [15:8]NLW_s_mem_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_s_mem_reg_DOPADOP_UNCONNECTED;
  wire [1:1]NLW_s_mem_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p1_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "18432" *) 
  (* RTL_RAM_NAME = "spwstream_inst/txmem/s_mem_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    s_mem_reg
       (.ADDRARDADDR({Q,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CLKARDCLK(s_mem_reg_0),
        .CLKBWRCLK(s_mem_reg_0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_mem_reg_1}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,DIPADIP}),
        .DIPBDIP({1'b0,1'b1}),
        .DOADO(NLW_s_mem_reg_DOADO_UNCONNECTED[15:0]),
        .DOBDO({NLW_s_mem_reg_DOBDO_UNCONNECTED[15:8],D[7:0]}),
        .DOPADOP(NLW_s_mem_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP({NLW_s_mem_reg_DOPBDOP_UNCONNECTED[1],D[8]}),
        .ENARDEN(WEA),
        .ENBWREN(1'b1),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({WEA,1'b1}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module spwrecv
   (\recvo[tick_out] ,
    \recvo[rxchar] ,
    \recvo[gotfct] ,
    \r_reg[null_seen]_0 ,
    \r_reg[parity]_0 ,
    \recvo[errpar] ,
    \recvo[erresc] ,
    \r_reg[gotfct]_0 ,
    \r_reg[erresc]_0 ,
    \FSM_onehot_r_reg[state][5] ,
    \r_reg[timerdone] ,
    \r_reg[bit_seen]_0 ,
    Q,
    s_tc_out,
    \r_reg[bitcnt][0]_0 ,
    \v[parity]14_out ,
    WEA,
    \r_reg[rxchar]_0 ,
    wdata,
    \r_reg[rxchar]_1 ,
    \r_reg[disccnt][6]_0 ,
    \r_reg[timereg][7]_0 ,
    \FSM_onehot_r_reg[state][4] ,
    recv_inbvalid,
    \r_reg[tick_out]_0 ,
    \v[escaped] ,
    \FSM_onehot_r_reg[state][2] ,
    \r_reg[timerdone]__0 ,
    recv_inbits,
    \r_reg[rxeep]__0 ,
    \r_reg[rxfull]__0 ,
    \r_reg[rx_credit][0] ,
    \r_reg[rxpacket] ,
    rst_logic_IBUF,
    \r_reg[inact] ,
    SR,
    \r_reg[disccnt][7]_0 ,
    \r_reg[disccnt][0]_0 );
  output \recvo[tick_out] ;
  output \recvo[rxchar] ;
  output \recvo[gotfct] ;
  output \r_reg[null_seen]_0 ;
  output \r_reg[parity]_0 ;
  output \recvo[errpar] ;
  output \recvo[erresc] ;
  output \r_reg[gotfct]_0 ;
  output \r_reg[erresc]_0 ;
  output [2:0]\FSM_onehot_r_reg[state][5] ;
  output \r_reg[timerdone] ;
  output \r_reg[bit_seen]_0 ;
  output [0:0]Q;
  output s_tc_out;
  output [0:0]\r_reg[bitcnt][0]_0 ;
  output \v[parity]14_out ;
  output [0:0]WEA;
  output [0:0]\r_reg[rxchar]_0 ;
  output [8:0]wdata;
  output \r_reg[rxchar]_1 ;
  output [0:0]\r_reg[disccnt][6]_0 ;
  output [7:0]\r_reg[timereg][7]_0 ;
  input [4:0]\FSM_onehot_r_reg[state][4] ;
  input recv_inbvalid;
  input \r_reg[tick_out]_0 ;
  input \v[escaped] ;
  input \FSM_onehot_r_reg[state][2] ;
  input \r_reg[timerdone]__0 ;
  input recv_inbits;
  input \r_reg[rxeep]__0 ;
  input \r_reg[rxfull]__0 ;
  input [0:0]\r_reg[rx_credit][0] ;
  input \r_reg[rxpacket] ;
  input rst_logic_IBUF;
  input \r_reg[inact] ;
  input [0:0]SR;
  input [0:0]\r_reg[disccnt][7]_0 ;
  input \r_reg[disccnt][0]_0 ;

  wire \FSM_onehot_r[state][5]_i_10_n_0 ;
  wire \FSM_onehot_r[state][5]_i_9_n_0 ;
  wire \FSM_onehot_r_reg[state][2] ;
  wire [4:0]\FSM_onehot_r_reg[state][4] ;
  wire [2:0]\FSM_onehot_r_reg[state][5] ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire \line4[8]_i_2_n_0 ;
  wire [7:3]minusOp;
  wire [1:0]p_0_in;
  wire \r[bitcnt][3]_i_1_n_0 ;
  wire \r[bitcnt][9]_i_4_n_0 ;
  wire \r[bitcnt][9]_i_5_n_0 ;
  wire \r[control]_i_1_n_0 ;
  wire \r[datareg][7]_i_1_n_0 ;
  wire \r[disccnt][1]_i_1_n_0 ;
  wire \r[disccnt][2]_i_1_n_0 ;
  wire \r[disccnt][4]_i_1_n_0 ;
  wire \r[disccnt][6]_i_1_n_0 ;
  wire \r[disccnt][6]_i_2_n_0 ;
  wire \r[disccnt][7]_i_2_n_0 ;
  wire \r[erresc]_i_1_n_0 ;
  wire \r[errpar]_i_1_n_0 ;
  wire \r[escaped]_i_1_n_0 ;
  wire \r[gotfct]_i_1_n_0 ;
  wire \r[null_seen]_i_1_n_0 ;
  wire \r[parity]_i_1_n_0 ;
  wire \r[rxchar]_i_1_n_0 ;
  wire \r[rxflag]_i_1_n_0 ;
  wire \r[rxflag]_i_2_n_0 ;
  wire \r_reg[bit_seen]_0 ;
  wire [0:0]\r_reg[bitcnt][0]_0 ;
  wire \r_reg[bitcnt_n_0_][1] ;
  wire \r_reg[bitcnt_n_0_][2] ;
  wire \r_reg[bitcnt_n_0_][3] ;
  wire \r_reg[bitcnt_n_0_][4] ;
  wire \r_reg[bitcnt_n_0_][5] ;
  wire \r_reg[bitcnt_n_0_][6] ;
  wire \r_reg[bitcnt_n_0_][7] ;
  wire \r_reg[bitcnt_n_0_][8] ;
  wire \r_reg[bitcnt_n_0_][9] ;
  wire \r_reg[bitshift_n_0_][0] ;
  wire \r_reg[bitshift_n_0_][1] ;
  wire \r_reg[bitshift_n_0_][2] ;
  wire \r_reg[bitshift_n_0_][3] ;
  wire \r_reg[bitshift_n_0_][4] ;
  wire \r_reg[bitshift_n_0_][5] ;
  wire \r_reg[bitshift_n_0_][8] ;
  wire \r_reg[control]__0 ;
  wire [7:0]\r_reg[datareg] ;
  wire \r_reg[disccnt][0]_0 ;
  wire [0:0]\r_reg[disccnt][6]_0 ;
  wire [0:0]\r_reg[disccnt][7]_0 ;
  wire \r_reg[disccnt_n_0_][1] ;
  wire \r_reg[disccnt_n_0_][2] ;
  wire \r_reg[disccnt_n_0_][3] ;
  wire \r_reg[disccnt_n_0_][4] ;
  wire \r_reg[disccnt_n_0_][5] ;
  wire \r_reg[disccnt_n_0_][6] ;
  wire \r_reg[disccnt_n_0_][7] ;
  wire \r_reg[erresc]_0 ;
  wire \r_reg[escaped]__0 ;
  wire \r_reg[gotfct]_0 ;
  wire \r_reg[inact] ;
  wire \r_reg[null_seen]_0 ;
  wire \r_reg[parity]_0 ;
  wire [0:0]\r_reg[rx_credit][0] ;
  wire [0:0]\r_reg[rxchar]_0 ;
  wire \r_reg[rxchar]_1 ;
  wire \r_reg[rxeep]__0 ;
  wire \r_reg[rxflag]__0 ;
  wire \r_reg[rxfull]__0 ;
  wire \r_reg[rxpacket] ;
  wire \r_reg[tick_out]_0 ;
  wire \r_reg[timerdone] ;
  wire \r_reg[timerdone]__0 ;
  wire [7:0]\r_reg[timereg][7]_0 ;
  wire recv_inbits;
  wire recv_inbvalid;
  wire \recvo[erresc] ;
  wire \recvo[errpar] ;
  wire \recvo[gotbit] ;
  wire \recvo[gotfct] ;
  wire \recvo[rxchar] ;
  wire \recvo[tick_out] ;
  wire rst_logic_IBUF;
  wire s_tc_out;
  wire [9:0]\v[bitcnt] ;
  wire [7:0]\v[datareg]1_in ;
  wire \v[escaped] ;
  wire \v[parity]14_out ;
  wire \v[timereg] ;
  wire [8:0]wdata;

  LUT6 #(
    .INIT(64'hFFFEFFFEFFFE0000)) 
    \FSM_onehot_r[state][0]_i_2 
       (.I0(\recvo[gotfct] ),
        .I1(\recvo[tick_out] ),
        .I2(\recvo[rxchar] ),
        .I3(\r_reg[erresc]_0 ),
        .I4(\FSM_onehot_r_reg[state][4] [4]),
        .I5(\FSM_onehot_r_reg[state][4] [3]),
        .O(\r_reg[gotfct]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_r[state][2]_i_1 
       (.I0(\r_reg[timerdone] ),
        .I1(\FSM_onehot_r_reg[state][4] [2]),
        .O(\FSM_onehot_r_reg[state][5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_r[state][3]_i_1 
       (.I0(\FSM_onehot_r_reg[state][4] [3]),
        .I1(\recvo[gotfct] ),
        .I2(\recvo[tick_out] ),
        .I3(\recvo[rxchar] ),
        .I4(\r_reg[erresc]_0 ),
        .O(\FSM_onehot_r_reg[state][5] [1]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_r[state][4]_i_1 
       (.I0(\FSM_onehot_r_reg[state][4] [4]),
        .I1(\recvo[gotfct] ),
        .I2(\recvo[tick_out] ),
        .I3(\recvo[rxchar] ),
        .I4(\r_reg[erresc]_0 ),
        .O(\FSM_onehot_r_reg[state][5] [2]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \FSM_onehot_r[state][4]_i_2 
       (.I0(\recvo[erresc] ),
        .I1(\recvo[errpar] ),
        .I2(\recvo[gotbit] ),
        .I3(\r_reg[disccnt_n_0_][6] ),
        .I4(\r_reg[disccnt_n_0_][7] ),
        .I5(\line4[8]_i_2_n_0 ),
        .O(\r_reg[erresc]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_r[state][5]_i_10 
       (.I0(\recvo[gotfct] ),
        .I1(\recvo[tick_out] ),
        .I2(\recvo[rxchar] ),
        .O(\FSM_onehot_r[state][5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000007)) 
    \FSM_onehot_r[state][5]_i_4 
       (.I0(\FSM_onehot_r_reg[state][2] ),
        .I1(\r_reg[timerdone]__0 ),
        .I2(\recvo[gotfct] ),
        .I3(\recvo[tick_out] ),
        .I4(\recvo[rxchar] ),
        .I5(\r_reg[erresc]_0 ),
        .O(\r_reg[timerdone] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF10)) 
    \FSM_onehot_r[state][5]_i_7 
       (.I0(\line4[8]_i_2_n_0 ),
        .I1(\FSM_onehot_r[state][5]_i_9_n_0 ),
        .I2(\recvo[gotbit] ),
        .I3(\recvo[errpar] ),
        .I4(\recvo[erresc] ),
        .I5(\FSM_onehot_r[state][5]_i_10_n_0 ),
        .O(\r_reg[bit_seen]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_r[state][5]_i_9 
       (.I0(\r_reg[disccnt_n_0_][7] ),
        .I1(\r_reg[disccnt_n_0_][6] ),
        .O(\FSM_onehot_r[state][5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \line4[8]_i_1 
       (.I0(\r_reg[disccnt_n_0_][6] ),
        .I1(\r_reg[disccnt_n_0_][7] ),
        .I2(\line4[8]_i_2_n_0 ),
        .I3(\FSM_onehot_r_reg[state][4] [1]),
        .I4(\recvo[gotbit] ),
        .O(\r_reg[disccnt][6]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \line4[8]_i_2 
       (.I0(\r_reg[disccnt_n_0_][5] ),
        .I1(Q),
        .I2(\r_reg[disccnt_n_0_][1] ),
        .I3(\r_reg[disccnt_n_0_][3] ),
        .I4(\r_reg[disccnt_n_0_][2] ),
        .I5(\r_reg[disccnt_n_0_][4] ),
        .O(\line4[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][0]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][1] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [0]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][1]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][2] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [1]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][2]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][3] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [2]));
  LUT6 #(
    .INIT(64'hFFFFE2FFFFFFE200)) 
    \r[bitcnt][3]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][4] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .I2(recv_inbits),
        .I3(recv_inbvalid),
        .I4(\v[parity]14_out ),
        .I5(\r_reg[bitcnt_n_0_][3] ),
        .O(\r[bitcnt][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][4]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][5] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [4]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][5]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][6] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [5]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][6]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][7] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [6]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][7]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][8] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [7]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][8]_i_1 
       (.I0(\r_reg[bitcnt_n_0_][9] ),
        .I1(\r_reg[bitcnt][0]_0 ),
        .O(\v[bitcnt] [8]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[bitcnt][9]_i_2 
       (.I0(\r_reg[bitcnt][0]_0 ),
        .I1(recv_inbits),
        .O(\v[bitcnt] [9]));
  LUT5 #(
    .INIT(32'h00000040)) 
    \r[bitcnt][9]_i_3 
       (.I0(\r_reg[bitshift_n_0_][4] ),
        .I1(\r_reg[bitshift_n_0_][2] ),
        .I2(\r_reg[bitshift_n_0_][1] ),
        .I3(\r[bitcnt][9]_i_4_n_0 ),
        .I4(\r[bitcnt][9]_i_5_n_0 ),
        .O(\v[parity]14_out ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \r[bitcnt][9]_i_4 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(\r_reg[bitshift_n_0_][8] ),
        .I3(recv_inbvalid),
        .O(\r[bitcnt][9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \r[bitcnt][9]_i_5 
       (.I0(\r_reg[bitshift_n_0_][5] ),
        .I1(\r_reg[bitshift_n_0_][0] ),
        .I2(\r_reg[bitshift_n_0_][3] ),
        .I3(\r_reg[null_seen]_0 ),
        .O(\r[bitcnt][9]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAABFAA80)) 
    \r[control]_i_1 
       (.I0(recv_inbits),
        .I1(recv_inbvalid),
        .I2(\r_reg[bitcnt][0]_0 ),
        .I3(\v[parity]14_out ),
        .I4(\r_reg[control]__0 ),
        .O(\r[control]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \r[datareg][0]_i_1 
       (.I0(\r_reg[bitshift_n_0_][0] ),
        .I1(p_0_in[1]),
        .I2(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [0]));
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][1]_i_1 
       (.I0(\r_reg[bitshift_n_0_][1] ),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][2]_i_1 
       (.I0(\r_reg[bitshift_n_0_][2] ),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][3]_i_1 
       (.I0(\r_reg[bitshift_n_0_][3] ),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][4]_i_1 
       (.I0(\r_reg[bitshift_n_0_][4] ),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [4]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][5]_i_1 
       (.I0(\r_reg[bitshift_n_0_][5] ),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [5]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][6]_i_1 
       (.I0(p_0_in[0]),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [6]));
  LUT5 #(
    .INIT(32'h10D0D010)) 
    \r[datareg][7]_i_1 
       (.I0(\r_reg[escaped]__0 ),
        .I1(\r_reg[control]__0 ),
        .I2(\v[escaped] ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(\r[datareg][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r[datareg][7]_i_2 
       (.I0(p_0_in[1]),
        .I1(\r_reg[control]__0 ),
        .O(\v[datareg]1_in [7]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \r[disccnt][1]_i_1 
       (.I0(\r_reg[disccnt_n_0_][1] ),
        .I1(Q),
        .O(\r[disccnt][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFA9)) 
    \r[disccnt][2]_i_1 
       (.I0(\r_reg[disccnt_n_0_][2] ),
        .I1(Q),
        .I2(\r_reg[disccnt_n_0_][1] ),
        .I3(\r_reg[inact] ),
        .O(\r[disccnt][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \r[disccnt][3]_i_1 
       (.I0(\r_reg[disccnt_n_0_][3] ),
        .I1(\r_reg[disccnt_n_0_][1] ),
        .I2(Q),
        .I3(\r_reg[disccnt_n_0_][2] ),
        .O(minusOp[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAA9)) 
    \r[disccnt][4]_i_1 
       (.I0(\r_reg[disccnt_n_0_][4] ),
        .I1(\r_reg[disccnt_n_0_][2] ),
        .I2(\r_reg[disccnt_n_0_][3] ),
        .I3(\r_reg[disccnt_n_0_][1] ),
        .I4(Q),
        .I5(\r_reg[inact] ),
        .O(\r[disccnt][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \r[disccnt][5]_i_1 
       (.I0(\r_reg[disccnt_n_0_][4] ),
        .I1(\r_reg[disccnt_n_0_][2] ),
        .I2(\r_reg[disccnt_n_0_][3] ),
        .I3(\r_reg[disccnt_n_0_][1] ),
        .I4(Q),
        .I5(\r_reg[disccnt_n_0_][5] ),
        .O(minusOp[5]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[disccnt][6]_i_1 
       (.I0(\r_reg[disccnt_n_0_][6] ),
        .I1(\r_reg[disccnt_n_0_][7] ),
        .I2(\line4[8]_i_2_n_0 ),
        .I3(\r_reg[inact] ),
        .O(\r[disccnt][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hF9)) 
    \r[disccnt][6]_i_2 
       (.I0(\r_reg[disccnt_n_0_][6] ),
        .I1(\line4[8]_i_2_n_0 ),
        .I2(\r_reg[inact] ),
        .O(\r[disccnt][6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \r[disccnt][7]_i_2 
       (.I0(\r_reg[disccnt_n_0_][6] ),
        .I1(\r_reg[disccnt_n_0_][7] ),
        .I2(\line4[8]_i_2_n_0 ),
        .O(\r[disccnt][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \r[disccnt][7]_i_3 
       (.I0(\r_reg[disccnt_n_0_][7] ),
        .I1(\line4[8]_i_2_n_0 ),
        .I2(\r_reg[disccnt_n_0_][6] ),
        .O(minusOp[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF80808000)) 
    \r[erresc]_i_1 
       (.I0(\v[escaped] ),
        .I1(\r_reg[control]__0 ),
        .I2(\r_reg[escaped]__0 ),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(\recvo[erresc] ),
        .O(\r[erresc]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF9000)) 
    \r[errpar]_i_1 
       (.I0(\r_reg[parity]_0 ),
        .I1(recv_inbits),
        .I2(\r_reg[bitcnt][0]_0 ),
        .I3(recv_inbvalid),
        .I4(\recvo[errpar] ),
        .O(\r[errpar]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080FF8000)) 
    \r[escaped]_i_1 
       (.I0(\r_reg[control]__0 ),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(\v[escaped] ),
        .I4(\r_reg[escaped]__0 ),
        .I5(\FSM_onehot_r_reg[state][4] [0]),
        .O(\r[escaped]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \r[gotfct]_i_1 
       (.I0(\v[escaped] ),
        .I1(\r_reg[control]__0 ),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(\FSM_onehot_r_reg[state][4] [0]),
        .I5(\r_reg[escaped]__0 ),
        .O(\r[gotfct]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \r[null_seen]_i_1 
       (.I0(recv_inbvalid),
        .I1(\v[parity]14_out ),
        .I2(\r_reg[null_seen]_0 ),
        .O(\r[null_seen]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000262A)) 
    \r[parity]_i_1 
       (.I0(\r_reg[parity]_0 ),
        .I1(recv_inbvalid),
        .I2(\r_reg[bitcnt][0]_0 ),
        .I3(recv_inbits),
        .I4(\v[parity]14_out ),
        .O(\r[parity]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \r[rx_credit][0]_i_1 
       (.I0(\recvo[rxchar] ),
        .I1(\r_reg[rx_credit][0] ),
        .O(\r_reg[rxchar]_0 ));
  LUT6 #(
    .INIT(64'h0000000000002AA2)) 
    \r[rxchar]_i_1 
       (.I0(\v[escaped] ),
        .I1(\r_reg[control]__0 ),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(\FSM_onehot_r_reg[state][4] [0]),
        .I5(\r_reg[escaped]__0 ),
        .O(\r[rxchar]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5450505054005050)) 
    \r[rxflag]_i_1 
       (.I0(\FSM_onehot_r_reg[state][4] [0]),
        .I1(\r[rxflag]_i_2_n_0 ),
        .I2(\r_reg[rxflag]__0 ),
        .I3(\r_reg[control]__0 ),
        .I4(\v[escaped] ),
        .I5(\r_reg[escaped]__0 ),
        .O(\r[rxflag]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[rxflag]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .O(\r[rxflag]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00007200)) 
    \r[rxpacket]_i_1 
       (.I0(\recvo[rxchar] ),
        .I1(\r_reg[rxflag]__0 ),
        .I2(\r_reg[rxpacket] ),
        .I3(\FSM_onehot_r_reg[state][4] [1]),
        .I4(rst_logic_IBUF),
        .O(\r_reg[rxchar]_1 ));
  LUT6 #(
    .INIT(64'h0000000028000000)) 
    \r[timereg][7]_i_1 
       (.I0(\r_reg[escaped]__0 ),
        .I1(recv_inbits),
        .I2(\r_reg[parity]_0 ),
        .I3(recv_inbvalid),
        .I4(\r_reg[bitcnt][0]_0 ),
        .I5(\r_reg[control]__0 ),
        .O(\v[timereg] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bit_seen] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(recv_inbvalid),
        .Q(\recvo[gotbit] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][0] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [0]),
        .Q(\r_reg[bitcnt][0]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][1] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [1]),
        .Q(\r_reg[bitcnt_n_0_][1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][2] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [2]),
        .Q(\r_reg[bitcnt_n_0_][2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][3] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[bitcnt][3]_i_1_n_0 ),
        .Q(\r_reg[bitcnt_n_0_][3] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][4] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [4]),
        .Q(\r_reg[bitcnt_n_0_][4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][5] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [5]),
        .Q(\r_reg[bitcnt_n_0_][5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][6] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [6]),
        .Q(\r_reg[bitcnt_n_0_][6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][7] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [7]),
        .Q(\r_reg[bitcnt_n_0_][7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][8] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [8]),
        .Q(\r_reg[bitcnt_n_0_][8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcnt][9] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\v[bitcnt] [9]),
        .Q(\r_reg[bitcnt_n_0_][9] ),
        .R(SR));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][0] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\r_reg[bitshift_n_0_][1] ),
        .Q(\r_reg[bitshift_n_0_][0] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][1] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\r_reg[bitshift_n_0_][2] ),
        .Q(\r_reg[bitshift_n_0_][1] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][2] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\r_reg[bitshift_n_0_][3] ),
        .Q(\r_reg[bitshift_n_0_][2] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][3] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\r_reg[bitshift_n_0_][4] ),
        .Q(\r_reg[bitshift_n_0_][3] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][4] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\r_reg[bitshift_n_0_][5] ),
        .Q(\r_reg[bitshift_n_0_][4] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][5] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(p_0_in[0]),
        .Q(\r_reg[bitshift_n_0_][5] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][6] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][7] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(\r_reg[bitshift_n_0_][8] ),
        .Q(p_0_in[1]),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDSE #(
    .INIT(1'b1)) 
    \r_reg[bitshift][8] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(recv_inbvalid),
        .D(recv_inbits),
        .Q(\r_reg[bitshift_n_0_][8] ),
        .S(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[control] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[control]_i_1_n_0 ),
        .Q(\r_reg[control]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][0] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [0]),
        .Q(\r_reg[datareg] [0]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][1] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [1]),
        .Q(\r_reg[datareg] [1]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][2] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [2]),
        .Q(\r_reg[datareg] [2]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][3] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [3]),
        .Q(\r_reg[datareg] [3]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][4] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [4]),
        .Q(\r_reg[datareg] [4]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][5] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [5]),
        .Q(\r_reg[datareg] [5]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][6] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [6]),
        .Q(\r_reg[datareg] [6]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[datareg][7] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[datareg][7]_i_1_n_0 ),
        .D(\v[datareg]1_in [7]),
        .Q(\r_reg[datareg] [7]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][0] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][6]_i_1_n_0 ),
        .D(\r_reg[disccnt][0]_0 ),
        .Q(Q),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][1] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][7]_i_2_n_0 ),
        .D(\r[disccnt][1]_i_1_n_0 ),
        .Q(\r_reg[disccnt_n_0_][1] ),
        .R(\r_reg[disccnt][7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][2] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][6]_i_1_n_0 ),
        .D(\r[disccnt][2]_i_1_n_0 ),
        .Q(\r_reg[disccnt_n_0_][2] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][3] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][7]_i_2_n_0 ),
        .D(minusOp[3]),
        .Q(\r_reg[disccnt_n_0_][3] ),
        .R(\r_reg[disccnt][7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][4] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][6]_i_1_n_0 ),
        .D(\r[disccnt][4]_i_1_n_0 ),
        .Q(\r_reg[disccnt_n_0_][4] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][5] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][7]_i_2_n_0 ),
        .D(minusOp[5]),
        .Q(\r_reg[disccnt_n_0_][5] ),
        .R(\r_reg[disccnt][7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][6] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][6]_i_1_n_0 ),
        .D(\r[disccnt][6]_i_2_n_0 ),
        .Q(\r_reg[disccnt_n_0_][6] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[disccnt][7] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\r[disccnt][7]_i_2_n_0 ),
        .D(minusOp[7]),
        .Q(\r_reg[disccnt_n_0_][7] ),
        .R(\r_reg[disccnt][7]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[erresc] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[erresc]_i_1_n_0 ),
        .Q(\recvo[erresc] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[errpar] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[errpar]_i_1_n_0 ),
        .Q(\recvo[errpar] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[escaped] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[escaped]_i_1_n_0 ),
        .Q(\r_reg[escaped]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[gotfct] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[gotfct]_i_1_n_0 ),
        .Q(\recvo[gotfct] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[null_seen] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[null_seen]_i_1_n_0 ),
        .Q(\r_reg[null_seen]_0 ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[parity] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[parity]_i_1_n_0 ),
        .Q(\r_reg[parity]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxchar] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[rxchar]_i_1_n_0 ),
        .Q(\recvo[rxchar] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxflag] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\r[rxflag]_i_1_n_0 ),
        .Q(\r_reg[rxflag]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tick_out] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(1'b1),
        .D(\v[timereg] ),
        .Q(\recvo[tick_out] ),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][0] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(\r_reg[bitshift_n_0_][0] ),
        .Q(\r_reg[timereg][7]_0 [0]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][1] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(\r_reg[bitshift_n_0_][1] ),
        .Q(\r_reg[timereg][7]_0 [1]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][2] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(\r_reg[bitshift_n_0_][2] ),
        .Q(\r_reg[timereg][7]_0 [2]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][3] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(\r_reg[bitshift_n_0_][3] ),
        .Q(\r_reg[timereg][7]_0 [3]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][4] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(\r_reg[bitshift_n_0_][4] ),
        .Q(\r_reg[timereg][7]_0 [4]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][5] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(\r_reg[bitshift_n_0_][5] ),
        .Q(\r_reg[timereg][7]_0 [5]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][6] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(p_0_in[0]),
        .Q(\r_reg[timereg][7]_0 [6]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[timereg][7] 
       (.C(\r_reg[tick_out]_0 ),
        .CE(\v[timereg] ),
        .D(p_0_in[1]),
        .Q(\r_reg[timereg][7]_0 [7]),
        .R(\FSM_onehot_r_reg[state][4] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_10
       (.I0(\r_reg[datareg] [2]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_11
       (.I0(\r_reg[datareg] [1]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[1]));
  LUT2 #(
    .INIT(4'hE)) 
    s_mem_reg_i_12
       (.I0(\r_reg[rxeep]__0 ),
        .I1(\r_reg[datareg] [0]),
        .O(wdata[0]));
  LUT2 #(
    .INIT(4'hE)) 
    s_mem_reg_i_13
       (.I0(\r_reg[rxflag]__0 ),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[8]));
  LUT4 #(
    .INIT(16'h00F8)) 
    s_mem_reg_i_1__0
       (.I0(\recvo[rxchar] ),
        .I1(\FSM_onehot_r_reg[state][4] [1]),
        .I2(\r_reg[rxeep]__0 ),
        .I3(\r_reg[rxfull]__0 ),
        .O(WEA));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_5
       (.I0(\r_reg[datareg] [7]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[7]));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_6
       (.I0(\r_reg[datareg] [6]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[6]));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_7
       (.I0(\r_reg[datareg] [5]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[5]));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_8
       (.I0(\r_reg[datareg] [4]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[4]));
  LUT2 #(
    .INIT(4'h2)) 
    s_mem_reg_i_9
       (.I0(\r_reg[datareg] [3]),
        .I1(\r_reg[rxeep]__0 ),
        .O(wdata[3]));
  LUT2 #(
    .INIT(4'h8)) 
    s_pulse_i_1
       (.I0(\recvo[tick_out] ),
        .I1(\FSM_onehot_r_reg[state][4] [1]),
        .O(s_tc_out));
endmodule

module spwrecvfront_fast
   (recv_inbvalid,
    recv_inbits,
    \r_reg[inact] ,
    \v[escaped] ,
    \r_reg[bitcntp][1]_0 ,
    \r_reg[tailptr][1]_0 ,
    \r_reg[inact]__0_0 ,
    \r_reg[splitinx]_0 ,
    syncdff_ff1_reg,
    rxclk_IBUF_BUFG,
    spw_di_IBUF,
    spw_si_IBUF,
    \r_reg[inbvalid]_0 ,
    \r_reg[inact]__0_1 ,
    \r_reg[escaped] ,
    \r_reg[escaped]_0 ,
    Q);
  output recv_inbvalid;
  output recv_inbits;
  output \r_reg[inact] ;
  output \v[escaped] ;
  output \r_reg[bitcntp][1]_0 ;
  output \r_reg[tailptr][1]_0 ;
  output \r_reg[inact]__0_0 ;
  input [0:0]\r_reg[splitinx]_0 ;
  input syncdff_ff1_reg;
  input rxclk_IBUF_BUFG;
  input spw_di_IBUF;
  input spw_si_IBUF;
  input \r_reg[inbvalid]_0 ;
  input \r_reg[inact]__0_1 ;
  input \r_reg[escaped] ;
  input [0:0]\r_reg[escaped]_0 ;
  input [0:0]Q;

  wire [0:0]Q;
  wire bufmem_n_0;
  wire di;
  wire [1:0]p_0_in;
  wire p_1_in;
  wire [1:0]p_1_out;
  wire \r[splitinx]_i_1_n_0 ;
  wire \r[tailptr][0]_i_1_n_0 ;
  wire \r[tailptr][1]_i_1_n_0 ;
  wire \r[tailptr][2]_i_1_n_0 ;
  wire [2:0]\r_reg[bitcntp] ;
  wire \r_reg[bitcntp][1]_0 ;
  wire \r_reg[escaped] ;
  wire [0:0]\r_reg[escaped]_0 ;
  wire \r_reg[inact] ;
  wire \r_reg[inact]__0_0 ;
  wire \r_reg[inact]__0_1 ;
  wire \r_reg[inbvalid]_0 ;
  wire \r_reg[inbvalid_n_0_] ;
  wire \r_reg[rxdis]__0 ;
  wire [0:0]\r_reg[splitinx]_0 ;
  wire \r_reg[splitinx_n_0_] ;
  wire [2:0]\r_reg[tailptr] ;
  wire \r_reg[tailptr][1]_0 ;
  wire recv_inbits;
  wire recv_inbvalid;
  wire \rrx[bitcnt][0]_i_1_n_0 ;
  wire \rrx[bitcnt][1]_i_1_n_0 ;
  wire \rrx[bitcnt][2]_i_1_n_0 ;
  wire \rrx[bufdata][0]_i_1_n_0 ;
  wire \rrx[bufdata][1]_i_1_n_0 ;
  wire \rrx[d_count][0]_i_1_n_0 ;
  wire \rrx[d_count][1]_i_1_n_0 ;
  wire \rrx[d_shift][1]_i_1_n_0 ;
  wire \rrx[headptr][0]_i_1_n_0 ;
  wire \rrx[headptr][1]_i_1_n_0 ;
  wire \rrx[headptr][2]_i_1_n_0 ;
  wire \rrx_reg[b_di0]__0 ;
  wire \rrx_reg[b_di1]__0 ;
  wire \rrx_reg[b_si0]__0 ;
  wire \rrx_reg[b_si1]__0 ;
  wire [2:0]\rrx_reg[bitcnt] ;
  wire [1:0]\rrx_reg[bufdata] ;
  wire \rrx_reg[bufwrite]0__0 ;
  wire \rrx_reg[bufwrite]__0 ;
  wire \rrx_reg[c_bit_n_0_][1] ;
  wire \rrx_reg[c_val_n_0_][0] ;
  wire \rrx_reg[c_xor1]0 ;
  wire \rrx_reg[c_xor1]__0 ;
  wire \rrx_reg[d_count_n_0_][0] ;
  wire \rrx_reg[d_count_n_0_][1] ;
  wire \rrx_reg[headptr_n_0_][0] ;
  wire \rrx_reg[headptr_n_0_][2] ;
  wire [0:0]\rrxin[c_bit] ;
  wire rxclk_IBUF_BUFG;
  wire s_a_di0;
  wire s_a_di1;
  wire s_a_di2;
  wire s_a_si0;
  wire s_a_si1;
  wire s_a_si2;
  wire spw_di_IBUF;
  wire spw_si_IBUF;
  wire syncdff_ff1_reg;
  wire syncrx_reset_n_0;
  wire [2:0]\syncsys[bitcnt] ;
  wire [2:0]\syncsys[headptr] ;
  wire \v[escaped] ;

  spwram bufmem
       (.di(di),
        .\r_reg[splitbit] (\r_reg[splitinx_n_0_] ),
        .\r_reg[tailptr] (\r_reg[tailptr] ),
        .\rdata_reg[0]_0 (syncdff_ff1_reg),
        .\rdata_reg[0]_1 (\rrx_reg[headptr_n_0_][0] ),
        .\rdata_reg[1]_0 (bufmem_n_0),
        .\rrx_reg[bufdata] (\rrx_reg[bufdata] ),
        .\rrx_reg[bufwrite]__0 (\rrx_reg[bufwrite]__0 ),
        .\rrx_reg[headptr] (\rrx_reg[headptr_n_0_][2] ),
        .rxclk_IBUF_BUFG(rxclk_IBUF_BUFG));
  LUT4 #(
    .INIT(16'h6000)) 
    \r[datareg][7]_i_3 
       (.I0(recv_inbits),
        .I1(\r_reg[escaped] ),
        .I2(recv_inbvalid),
        .I3(\r_reg[escaped]_0 ),
        .O(\v[escaped] ));
  LUT2 #(
    .INIT(4'hB)) 
    \r[disccnt][0]_i_1 
       (.I0(\r_reg[inact] ),
        .I1(Q),
        .O(\r_reg[inact]__0_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r[splitinx]_i_1 
       (.I0(\r_reg[inbvalid_n_0_] ),
        .I1(\r_reg[splitinx_n_0_] ),
        .O(\r[splitinx]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \r[tailptr][0]_i_1 
       (.I0(\r_reg[splitinx_n_0_] ),
        .I1(\r_reg[inbvalid_n_0_] ),
        .I2(\r_reg[tailptr] [0]),
        .O(\r[tailptr][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \r[tailptr][1]_i_1 
       (.I0(\r_reg[tailptr] [0]),
        .I1(\r_reg[inbvalid_n_0_] ),
        .I2(\r_reg[splitinx_n_0_] ),
        .I3(\r_reg[tailptr] [1]),
        .O(\r[tailptr][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \r[tailptr][2]_i_1 
       (.I0(\r_reg[tailptr] [1]),
        .I1(\r_reg[tailptr] [0]),
        .I2(\r_reg[inbvalid_n_0_] ),
        .I3(\r_reg[splitinx_n_0_] ),
        .I4(\r_reg[tailptr] [2]),
        .O(\r[tailptr][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcntp][0] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\syncsys[bitcnt] [0]),
        .Q(\r_reg[bitcntp] [0]),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcntp][1] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\syncsys[bitcnt] [1]),
        .Q(\r_reg[bitcntp] [1]),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[bitcntp][2] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\syncsys[bitcnt] [2]),
        .Q(\r_reg[bitcntp] [2]),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[inact]__0 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r_reg[inact]__0_1 ),
        .Q(\r_reg[inact] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[inbvalid] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r_reg[inbvalid]_0 ),
        .Q(\r_reg[inbvalid_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \r_reg[rxdis] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r_reg[splitinx]_0 ),
        .Q(\r_reg[rxdis]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[splitbit] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(bufmem_n_0),
        .Q(recv_inbits),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[splitinx] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r[splitinx]_i_1_n_0 ),
        .Q(\r_reg[splitinx_n_0_] ),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[splitvalid] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r_reg[inbvalid_n_0_] ),
        .Q(recv_inbvalid),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tailptr][0] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r[tailptr][0]_i_1_n_0 ),
        .Q(\r_reg[tailptr] [0]),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tailptr][1] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r[tailptr][1]_i_1_n_0 ),
        .Q(\r_reg[tailptr] [1]),
        .R(\r_reg[splitinx]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tailptr][2] 
       (.C(syncdff_ff1_reg),
        .CE(1'b1),
        .D(\r[tailptr][2]_i_1_n_0 ),
        .Q(\r_reg[tailptr] [2]),
        .R(\r_reg[splitinx]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rrx[bitcnt][0]_i_1 
       (.I0(\rrx_reg[c_val_n_0_][0] ),
        .I1(\rrx_reg[bitcnt] [0]),
        .O(\rrx[bitcnt][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rrx[bitcnt][1]_i_1 
       (.I0(\rrx_reg[bitcnt] [0]),
        .I1(\rrx_reg[c_val_n_0_][0] ),
        .I2(\rrx_reg[bitcnt] [1]),
        .O(\rrx[bitcnt][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rrx[bitcnt][2]_i_1 
       (.I0(\rrx_reg[bitcnt] [0]),
        .I1(\rrx_reg[bitcnt] [1]),
        .I2(\rrx_reg[c_val_n_0_][0] ),
        .I3(\rrx_reg[bitcnt] [2]),
        .O(\rrx[bitcnt][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rrx[bufdata][0]_i_1 
       (.I0(p_0_in[0]),
        .I1(\rrx_reg[d_count_n_0_][0] ),
        .I2(p_0_in[1]),
        .I3(\rrx_reg[c_val_n_0_][0] ),
        .I4(\rrx_reg[bufdata] [0]),
        .O(\rrx[bufdata][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rrx[bufdata][1]_i_1 
       (.I0(p_0_in[1]),
        .I1(\rrx_reg[d_count_n_0_][0] ),
        .I2(\rrx_reg[c_bit_n_0_][1] ),
        .I3(\rrx_reg[c_val_n_0_][0] ),
        .I4(\rrx_reg[bufdata] [1]),
        .O(\rrx[bufdata][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hED84)) 
    \rrx[c_bit][0]_i_1 
       (.I0(\rrx_reg[b_si0]__0 ),
        .I1(\rrx_reg[b_di0]__0 ),
        .I2(\rrx_reg[c_xor1]__0 ),
        .I3(\rrx_reg[b_di1]__0 ),
        .O(\rrxin[c_bit] ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hBED7D7BE)) 
    \rrx[c_val][0]_i_1 
       (.I0(\rrx_reg[c_xor1]__0 ),
        .I1(\rrx_reg[b_di1]__0 ),
        .I2(\rrx_reg[b_si1]__0 ),
        .I3(\rrx_reg[b_di0]__0 ),
        .I4(\rrx_reg[b_si0]__0 ),
        .O(p_1_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h28414128)) 
    \rrx[c_val][1]_i_2 
       (.I0(\rrx_reg[c_xor1]__0 ),
        .I1(\rrx_reg[b_di1]__0 ),
        .I2(\rrx_reg[b_si1]__0 ),
        .I3(\rrx_reg[b_di0]__0 ),
        .I4(\rrx_reg[b_si0]__0 ),
        .O(p_1_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \rrx[c_xor1]_i_1 
       (.I0(\rrx_reg[b_di1]__0 ),
        .I1(\rrx_reg[b_si1]__0 ),
        .O(\rrx_reg[c_xor1]0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \rrx[d_count][0]_i_1 
       (.I0(\rrx_reg[d_count_n_0_][1] ),
        .I1(\rrx_reg[c_val_n_0_][0] ),
        .I2(p_1_in),
        .I3(\rrx_reg[d_count_n_0_][0] ),
        .O(\rrx[d_count][0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \rrx[d_count][1]_i_1 
       (.I0(\rrx_reg[d_count_n_0_][0] ),
        .I1(\rrx_reg[c_val_n_0_][0] ),
        .I2(p_1_in),
        .I3(\rrx_reg[d_count_n_0_][1] ),
        .O(\rrx[d_count][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \rrx[d_shift][1]_i_1 
       (.I0(\rrx_reg[c_bit_n_0_][1] ),
        .I1(p_1_in),
        .I2(p_0_in[1]),
        .I3(\rrx_reg[c_val_n_0_][0] ),
        .I4(p_0_in[0]),
        .O(\rrx[d_shift][1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \rrx[headptr][0]_i_1 
       (.I0(\rrx_reg[bufwrite]__0 ),
        .I1(\rrx_reg[headptr_n_0_][0] ),
        .O(\rrx[headptr][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rrx[headptr][1]_i_1 
       (.I0(\rrx_reg[headptr_n_0_][0] ),
        .I1(\rrx_reg[bufwrite]__0 ),
        .I2(di),
        .O(\rrx[headptr][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rrx[headptr][2]_i_1 
       (.I0(\rrx_reg[headptr_n_0_][0] ),
        .I1(di),
        .I2(\rrx_reg[bufwrite]__0 ),
        .I3(\rrx_reg[headptr_n_0_][2] ),
        .O(\rrx[headptr][2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[b_di0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_a_di0),
        .Q(\rrx_reg[b_di0]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[b_di1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_a_di1),
        .Q(\rrx_reg[b_di1]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[b_si0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_a_si0),
        .Q(\rrx_reg[b_si0]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[b_si1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_a_si1),
        .Q(\rrx_reg[b_si1]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[bitcnt][0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[bitcnt][0]_i_1_n_0 ),
        .Q(\rrx_reg[bitcnt] [0]),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[bitcnt][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[bitcnt][1]_i_1_n_0 ),
        .Q(\rrx_reg[bitcnt] [1]),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[bitcnt][2] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[bitcnt][2]_i_1_n_0 ),
        .Q(\rrx_reg[bitcnt] [2]),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[bufdata][0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[bufdata][0]_i_1_n_0 ),
        .Q(\rrx_reg[bufdata] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[bufdata][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[bufdata][1]_i_1_n_0 ),
        .Q(\rrx_reg[bufdata] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[bufwrite] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx_reg[bufwrite]0__0 ),
        .Q(\rrx_reg[bufwrite]__0 ),
        .R(syncrx_reset_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \rrx_reg[bufwrite]0 
       (.I0(\rrx_reg[c_val_n_0_][0] ),
        .I1(p_1_in),
        .I2(\rrx_reg[d_count_n_0_][1] ),
        .I3(\rrx_reg[d_count_n_0_][0] ),
        .O(\rrx_reg[bufwrite]0__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[c_bit][0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrxin[c_bit] ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[c_bit][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx_reg[b_di1]__0 ),
        .Q(\rrx_reg[c_bit_n_0_][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[c_val][0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(\rrx_reg[c_val_n_0_][0] ),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[c_val][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(p_1_in),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[c_xor1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx_reg[c_xor1]0 ),
        .Q(\rrx_reg[c_xor1]__0 ),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[d_count][0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[d_count][0]_i_1_n_0 ),
        .Q(\rrx_reg[d_count_n_0_][0] ),
        .R(syncrx_reset_n_0));
  FDSE #(
    .INIT(1'b1)) 
    \rrx_reg[d_count][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[d_count][1]_i_1_n_0 ),
        .Q(\rrx_reg[d_count_n_0_][1] ),
        .S(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[d_shift][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[d_shift][1]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[headptr][0] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[headptr][0]_i_1_n_0 ),
        .Q(\rrx_reg[headptr_n_0_][0] ),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[headptr][1] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[headptr][1]_i_1_n_0 ),
        .Q(di),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \rrx_reg[headptr][2] 
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rrx[headptr][2]_i_1_n_0 ),
        .Q(\rrx_reg[headptr_n_0_][2] ),
        .R(syncrx_reset_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    s_a_di0_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_a_di2),
        .Q(s_a_di0),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_a_di1_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(spw_di_IBUF),
        .Q(s_a_di1),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    s_a_di2_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(spw_di_IBUF),
        .Q(s_a_di2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    s_a_si0_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(s_a_si2),
        .Q(s_a_si0),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_a_si1_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(spw_si_IBUF),
        .Q(s_a_si1),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    s_a_si2_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .D(spw_si_IBUF),
        .Q(s_a_si2),
        .R(1'b0));
  syncdff_7 syncrx_reset
       (.\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .rxclk_IBUF_BUFG(rxclk_IBUF_BUFG),
        .syncdff_ff2_reg_0(syncrx_reset_n_0));
  syncdff_8 syncsys_bitcnt0
       (.D(\syncsys[bitcnt] [0]),
        .\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .\rrx_reg[bitcnt] (\rrx_reg[bitcnt] [0]),
        .syncdff_ff1_reg_0(syncdff_ff1_reg));
  syncdff_9 syncsys_bitcnt1
       (.D(\syncsys[bitcnt] [1]),
        .Q(\r_reg[bitcntp] ),
        .\r_reg[bitcntp][1] (\r_reg[bitcntp][1]_0 ),
        .\r_reg[inact]__0 ({\syncsys[bitcnt] [2],\syncsys[bitcnt] [0]}),
        .\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .\rrx_reg[bitcnt] (\rrx_reg[bitcnt] [1]),
        .syncdff_ff1_reg_0(syncdff_ff1_reg));
  syncdff_10 syncsys_bitcnt2
       (.D(\syncsys[bitcnt] [2]),
        .\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .\rrx_reg[bitcnt] (\rrx_reg[bitcnt] [2]),
        .syncdff_ff1_reg_0(syncdff_ff1_reg));
  syncdff_11 syncsys_headptr0
       (.out(\syncsys[headptr] [0]),
        .\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .syncdff_ff1_reg_0(\rrx_reg[headptr_n_0_][0] ),
        .syncdff_ff1_reg_1(syncdff_ff1_reg));
  syncdff_12 syncsys_headptr1
       (.di(di),
        .\r_reg[inbvalid] ({\syncsys[headptr] [2],\syncsys[headptr] [0]}),
        .\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .\r_reg[tailptr] (\r_reg[tailptr] ),
        .\r_reg[tailptr]_1_sp_1 (\r_reg[tailptr][1]_0 ),
        .syncdff_ff1_reg_0(syncdff_ff1_reg));
  syncdff_13 syncsys_headptr2
       (.out(\syncsys[headptr] [2]),
        .\r_reg[rxdis]__0 (\r_reg[rxdis]__0 ),
        .\rrx_reg[headptr] (\rrx_reg[headptr_n_0_][2] ),
        .syncdff_ff1_reg_0(syncdff_ff1_reg));
endmodule

module spwstream
   (DOPBDOP,
    \xmiti[fct_in] ,
    spw_do_OBUF,
    spw_so_OBUF,
    \r_reg[txfull]_0 ,
    \r_reg[txhalff]_0 ,
    s_rxvalid,
    \recvo[gotnull] ,
    E,
    D,
    \FSM_onehot_r_reg[state][3] ,
    s_tc_out,
    \r_reg[txdivsafe] ,
    \r_reg[timereg][7] ,
    syncdff_ff2_reg,
    WEA,
    Q,
    DIPADIP,
    rst_logic_IBUF,
    txclk_IBUF_BUFG,
    rxclk_IBUF_BUFG,
    spw_di_IBUF,
    spw_si_IBUF,
    s_rxread,
    \spwwrapper.v_write_reg[8] ,
    \spwwrapper.v_write_reg[8]_0 ,
    \r_reg[timercnt][0] ,
    linkdis,
    s_tc_in,
    \r_reg[txdivnorm] ,
    \r_reg[txdivreg][7] ,
    \r_reg[txdivreg][3] ,
    s_txwrite,
    \r_reg[pend_time][7] );
  output [0:0]DOPBDOP;
  output \xmiti[fct_in] ;
  output spw_do_OBUF;
  output spw_so_OBUF;
  output \r_reg[txfull]_0 ;
  output [5:0]\r_reg[txhalff]_0 ;
  output s_rxvalid;
  output \recvo[gotnull] ;
  output [0:0]E;
  output [8:0]D;
  output [2:0]\FSM_onehot_r_reg[state][3] ;
  output s_tc_out;
  output \r_reg[txdivsafe] ;
  output [7:0]\r_reg[timereg][7] ;
  input syncdff_ff2_reg;
  input [0:0]WEA;
  input [7:0]Q;
  input [0:0]DIPADIP;
  input rst_logic_IBUF;
  input txclk_IBUF_BUFG;
  input rxclk_IBUF_BUFG;
  input spw_di_IBUF;
  input spw_si_IBUF;
  input s_rxread;
  input [8:0]\spwwrapper.v_write_reg[8] ;
  input \spwwrapper.v_write_reg[8]_0 ;
  input \r_reg[timercnt][0] ;
  input linkdis;
  input s_tc_in;
  input \r_reg[txdivnorm] ;
  input [5:0]\r_reg[txdivreg][7] ;
  input [1:0]\r_reg[txdivreg][3] ;
  input s_txwrite;
  input [7:0]\r_reg[pend_time][7] ;

  wire [8:0]D;
  wire [0:0]DIPADIP;
  wire [0:0]DOPBDOP;
  wire [0:0]E;
  wire [2:0]\FSM_onehot_r_reg[state][3] ;
  wire [10:0]L0_out;
  wire [10:0]L2_out;
  wire [7:0]Q;
  wire [0:0]WEA;
  wire [7:1]divcnt;
  wire link_inst_n_10;
  wire link_inst_n_14;
  wire link_inst_n_17;
  wire link_inst_n_2;
  wire link_inst_n_21;
  wire link_inst_n_23;
  wire link_inst_n_4;
  wire link_inst_n_41;
  wire link_inst_n_42;
  wire link_inst_n_43;
  wire link_inst_n_44;
  wire link_inst_n_45;
  wire link_inst_n_46;
  wire link_inst_n_47;
  wire link_inst_n_48;
  wire link_inst_n_49;
  wire link_inst_n_5;
  wire linkdis;
  wire \linko[started]1 ;
  wire plusOp__20_carry__0_n_0;
  wire plusOp__20_carry__0_n_1;
  wire plusOp__20_carry__0_n_2;
  wire plusOp__20_carry__0_n_3;
  wire plusOp__20_carry__1_n_2;
  wire plusOp__20_carry__1_n_3;
  wire plusOp__20_carry_i_1_n_0;
  wire plusOp__20_carry_n_0;
  wire plusOp__20_carry_n_1;
  wire plusOp__20_carry_n_2;
  wire plusOp__20_carry_n_3;
  wire plusOp__41_carry__0_n_0;
  wire plusOp__41_carry__0_n_1;
  wire plusOp__41_carry__0_n_2;
  wire plusOp__41_carry__0_n_3;
  wire plusOp__41_carry__1_n_2;
  wire plusOp__41_carry__1_n_3;
  wire plusOp__41_carry_i_1_n_0;
  wire plusOp__41_carry_n_0;
  wire plusOp__41_carry_n_1;
  wire plusOp__41_carry_n_2;
  wire plusOp__41_carry_n_3;
  wire plusOp__62_carry__0_n_0;
  wire plusOp__62_carry__0_n_1;
  wire plusOp__62_carry__0_n_2;
  wire plusOp__62_carry__0_n_3;
  wire plusOp__62_carry__1_n_2;
  wire plusOp__62_carry__1_n_3;
  wire plusOp__62_carry_n_0;
  wire plusOp__62_carry_n_1;
  wire plusOp__62_carry_n_2;
  wire plusOp__62_carry_n_3;
  wire plusOp__63_carry__0_n_0;
  wire plusOp__63_carry__0_n_1;
  wire plusOp__63_carry__0_n_2;
  wire plusOp__63_carry__0_n_3;
  wire plusOp__63_carry__1_n_2;
  wire plusOp__63_carry__1_n_3;
  wire plusOp__63_carry_n_0;
  wire plusOp__63_carry_n_1;
  wire plusOp__63_carry_n_2;
  wire plusOp__63_carry_n_3;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire \r[rxfifo_raddr][0]_i_1_n_0 ;
  wire \r[rxfull]_i_10_n_0 ;
  wire \r[rxfull]_i_11_n_0 ;
  wire \r[rxfull]_i_12_n_0 ;
  wire \r[rxfull]_i_13_n_0 ;
  wire \r[rxfull]_i_15_n_0 ;
  wire \r[rxfull]_i_16_n_0 ;
  wire \r[rxfull]_i_17_n_0 ;
  wire \r[rxfull]_i_4_n_0 ;
  wire \r[rxfull]_i_5_n_0 ;
  wire \r[rxfull]_i_6_n_0 ;
  wire \r[rxfull]_i_7_n_0 ;
  wire \r[rxfull]_i_8_n_0 ;
  wire \r[rxfull]_i_9_n_0 ;
  wire \r[rxroom][3]_i_2_n_0 ;
  wire \r[rxroom][3]_i_3_n_0 ;
  wire \r[rxroom][3]_i_4_n_0 ;
  wire \r[rxroom][3]_i_5_n_0 ;
  wire \r[rxroom][5]_i_10_n_0 ;
  wire \r[rxroom][5]_i_1_n_0 ;
  wire \r[rxroom][5]_i_4_n_0 ;
  wire \r[rxroom][5]_i_5_n_0 ;
  wire \r[rxroom][5]_i_6_n_0 ;
  wire \r[rxroom][5]_i_7_n_0 ;
  wire \r[rxroom][5]_i_8_n_0 ;
  wire \r[rxroom][5]_i_9_n_0 ;
  wire \r[txfifo_waddr][0]_i_1_n_0 ;
  wire \r[txfull]_i_10_n_0 ;
  wire \r[txfull]_i_11_n_0 ;
  wire \r[txfull]_i_12_n_0 ;
  wire \r[txfull]_i_13_n_0 ;
  wire \r[txfull]_i_17_n_0 ;
  wire \r[txfull]_i_18_n_0 ;
  wire \r[txfull]_i_19_n_0 ;
  wire \r[txfull]_i_20_n_0 ;
  wire \r[txfull]_i_4_n_0 ;
  wire \r[txfull]_i_5_n_0 ;
  wire \r[txfull]_i_6_n_0 ;
  wire \r[txfull]_i_7_n_0 ;
  wire \r[txfull]_i_8_n_0 ;
  wire \r[txfull]_i_9_n_0 ;
  wire \r[txhalff]_i_10_n_0 ;
  wire \r[txhalff]_i_11_n_0 ;
  wire \r[txhalff]_i_13_n_0 ;
  wire \r[txhalff]_i_14_n_0 ;
  wire \r[txhalff]_i_15_n_0 ;
  wire \r[txhalff]_i_16_n_0 ;
  wire \r[txhalff]_i_4_n_0 ;
  wire \r[txhalff]_i_5_n_0 ;
  wire \r[txhalff]_i_6_n_0 ;
  wire \r[txhalff]_i_8_n_0 ;
  wire \r[txhalff]_i_9_n_0 ;
  wire \r_reg[allow_char]0 ;
  wire \r_reg[allow_char]__0 ;
  wire \r_reg[allow_fct]__0 ;
  wire \r_reg[inact] ;
  wire \r_reg[pend_char]__0 ;
  wire \r_reg[pend_fct]__0 ;
  wire [7:0]\r_reg[pend_time][7] ;
  wire [0:0]\r_reg[rx_credit] ;
  wire \r_reg[rxeep]__0 ;
  wire [10:0]\r_reg[rxfifo_raddr] ;
  wire \r_reg[rxfifo_rvalid]2 ;
  wire \r_reg[rxfifo_rvalid]2_carry_i_1_n_0 ;
  wire \r_reg[rxfifo_rvalid]2_carry_i_2_n_0 ;
  wire \r_reg[rxfifo_rvalid]2_carry_i_3_n_0 ;
  wire \r_reg[rxfifo_rvalid]2_carry_i_4_n_0 ;
  wire \r_reg[rxfifo_rvalid]2_carry_n_1 ;
  wire \r_reg[rxfifo_rvalid]2_carry_n_2 ;
  wire \r_reg[rxfifo_rvalid]2_carry_n_3 ;
  wire [10:0]\r_reg[rxfifo_waddr] ;
  wire \r_reg[rxfull]__0 ;
  wire \r_reg[rxfull]_i_14_n_2 ;
  wire \r_reg[rxfull]_i_14_n_3 ;
  wire \r_reg[rxfull]_i_2_n_0 ;
  wire \r_reg[rxfull]_i_2_n_1 ;
  wire \r_reg[rxfull]_i_2_n_2 ;
  wire \r_reg[rxfull]_i_2_n_3 ;
  wire \r_reg[rxfull]_i_3_n_0 ;
  wire \r_reg[rxfull]_i_3_n_1 ;
  wire \r_reg[rxfull]_i_3_n_2 ;
  wire \r_reg[rxfull]_i_3_n_3 ;
  wire \r_reg[rxpacket_n_0_] ;
  wire [5:0]\r_reg[rxroom] ;
  wire \r_reg[rxroom][3]_i_1_n_0 ;
  wire \r_reg[rxroom][3]_i_1_n_1 ;
  wire \r_reg[rxroom][3]_i_1_n_2 ;
  wire \r_reg[rxroom][3]_i_1_n_3 ;
  wire \r_reg[rxroom][3]_i_1_n_4 ;
  wire \r_reg[rxroom][3]_i_1_n_5 ;
  wire \r_reg[rxroom][3]_i_1_n_6 ;
  wire \r_reg[rxroom][3]_i_1_n_7 ;
  wire \r_reg[rxroom][5]_i_2_n_0 ;
  wire \r_reg[rxroom][5]_i_2_n_1 ;
  wire \r_reg[rxroom][5]_i_2_n_2 ;
  wire \r_reg[rxroom][5]_i_2_n_3 ;
  wire \r_reg[rxroom][5]_i_2_n_4 ;
  wire \r_reg[rxroom][5]_i_2_n_5 ;
  wire \r_reg[rxroom][5]_i_2_n_6 ;
  wire \r_reg[rxroom][5]_i_2_n_7 ;
  wire \r_reg[rxroom][5]_i_3_n_2 ;
  wire \r_reg[rxroom][5]_i_3_n_3 ;
  wire \r_reg[rxroom][5]_i_3_n_5 ;
  wire \r_reg[rxroom][5]_i_3_n_6 ;
  wire \r_reg[rxroom][5]_i_3_n_7 ;
  wire \r_reg[sent_fct]__0 ;
  wire \r_reg[timercnt][0] ;
  wire \r_reg[timerdone]__0 ;
  wire [7:0]\r_reg[timereg][7] ;
  wire \r_reg[txdiscard]__0 ;
  wire \r_reg[txdivnorm] ;
  wire [1:0]\r_reg[txdivreg][3] ;
  wire [5:0]\r_reg[txdivreg][7] ;
  wire \r_reg[txdivsafe] ;
  wire \r_reg[txenreg] ;
  wire [10:0]\r_reg[txfifo_raddr] ;
  wire \r_reg[txfifo_rvalid]2 ;
  wire \r_reg[txfifo_rvalid]2_carry_i_1_n_0 ;
  wire \r_reg[txfifo_rvalid]2_carry_i_2_n_0 ;
  wire \r_reg[txfifo_rvalid]2_carry_i_3_n_0 ;
  wire \r_reg[txfifo_rvalid]2_carry_n_1 ;
  wire \r_reg[txfifo_rvalid]2_carry_n_2 ;
  wire \r_reg[txfifo_rvalid]2_carry_n_3 ;
  wire \r_reg[txfifo_rvalid]__0 ;
  wire [10:0]\r_reg[txfifo_waddr] ;
  wire \r_reg[txfull]_0 ;
  wire \r_reg[txfull]_i_14_n_2 ;
  wire \r_reg[txfull]_i_14_n_3 ;
  wire \r_reg[txfull]_i_15_n_0 ;
  wire \r_reg[txfull]_i_15_n_1 ;
  wire \r_reg[txfull]_i_15_n_2 ;
  wire \r_reg[txfull]_i_15_n_3 ;
  wire \r_reg[txfull]_i_16_n_0 ;
  wire \r_reg[txfull]_i_16_n_1 ;
  wire \r_reg[txfull]_i_16_n_2 ;
  wire \r_reg[txfull]_i_16_n_3 ;
  wire \r_reg[txfull]_i_2_n_0 ;
  wire \r_reg[txfull]_i_2_n_1 ;
  wire \r_reg[txfull]_i_2_n_2 ;
  wire \r_reg[txfull]_i_2_n_3 ;
  wire \r_reg[txfull]_i_3_n_0 ;
  wire \r_reg[txfull]_i_3_n_1 ;
  wire \r_reg[txfull]_i_3_n_2 ;
  wire \r_reg[txfull]_i_3_n_3 ;
  wire [5:0]\r_reg[txhalff]_0 ;
  wire \r_reg[txhalff]_i_12_n_2 ;
  wire \r_reg[txhalff]_i_12_n_3 ;
  wire \r_reg[txhalff]_i_2_n_2 ;
  wire \r_reg[txhalff]_i_2_n_3 ;
  wire \r_reg[txhalff]_i_2_n_5 ;
  wire \r_reg[txhalff]_i_3_n_0 ;
  wire \r_reg[txhalff]_i_3_n_1 ;
  wire \r_reg[txhalff]_i_3_n_2 ;
  wire \r_reg[txhalff]_i_3_n_3 ;
  wire \r_reg[txhalff]_i_7_n_0 ;
  wire \r_reg[txhalff]_i_7_n_1 ;
  wire \r_reg[txhalff]_i_7_n_2 ;
  wire \r_reg[txhalff]_i_7_n_3 ;
  wire \r_reg[txpacket]__0 ;
  wire recv_inbits;
  wire recv_inbvalid;
  wire recv_inst_n_10;
  wire recv_inst_n_11;
  wire recv_inst_n_12;
  wire recv_inst_n_13;
  wire recv_inst_n_14;
  wire recv_inst_n_16;
  wire recv_inst_n_19;
  wire recv_inst_n_29;
  wire recv_inst_n_4;
  wire recv_inst_n_7;
  wire recv_inst_n_8;
  wire recv_inst_n_9;
  wire \recvfront_sel1.recvfront_fast_inst_n_4 ;
  wire \recvfront_sel1.recvfront_fast_inst_n_5 ;
  wire \recvfront_sel1.recvfront_fast_inst_n_6 ;
  wire \recvo[erresc] ;
  wire \recvo[errpar] ;
  wire \recvo[gotfct] ;
  wire \recvo[gotnull] ;
  wire \recvo[rxchar] ;
  wire \recvo[tick_out] ;
  wire \rin[rxfull] ;
  wire \rin[rxhalff] ;
  wire \rin[txfull] ;
  wire \rin[txhalff] ;
  wire rst_logic_IBUF;
  wire rxclk_IBUF_BUFG;
  wire s_rxread;
  wire s_rxvalid;
  wire s_tc_in;
  wire s_tc_out;
  wire [8:0]s_txfifo_rdata;
  wire s_txwrite;
  wire spw_di_IBUF;
  wire spw_do_OBUF;
  wire spw_si_IBUF;
  wire spw_so_OBUF;
  wire [8:0]\spwwrapper.v_write_reg[8] ;
  wire \spwwrapper.v_write_reg[8]_0 ;
  wire syncdff_ff2_reg;
  wire txclk_IBUF_BUFG;
  wire \v[errcred] ;
  wire \v[escaped] ;
  wire \v[parity]14_out ;
  wire \v[pend_data] ;
  wire \v[pend_time] ;
  wire \v[rxeep]3_out ;
  wire [10:1]\v[rxfifo_raddr] ;
  wire [10:0]\v[rxfifo_raddr]_1 ;
  wire [10:1]\v[rxfifo_waddr] ;
  wire [10:0]\v[rxfifo_waddr]_0 ;
  wire \v[txdivnorm] ;
  wire [10:0]\v[txfifo_raddr] ;
  wire [10:0]\v[txfifo_raddr]_3 ;
  wire [10:1]\v[txfifo_waddr] ;
  wire [10:0]\v[txfifo_waddr]_2 ;
  wire [8:0]wdata;
  wire wen;
  wire \xmiti[fct_in] ;
  wire \xmiti[txen] ;
  wire [3:2]NLW_plusOp__20_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp__20_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_plusOp__41_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp__41_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_plusOp__62_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp__62_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_plusOp__63_carry_O_UNCONNECTED;
  wire [3:2]NLW_plusOp__63_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp__63_carry__1_O_UNCONNECTED;
  wire [3:2]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_r_reg[rxfifo_rvalid]2_carry_O_UNCONNECTED ;
  wire [3:2]\NLW_r_reg[rxfull]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[rxfull]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_r_reg[rxroom][5]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[rxroom][5]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_r_reg[txfifo_rvalid]2_carry_O_UNCONNECTED ;
  wire [3:2]\NLW_r_reg[txfull]_i_14_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[txfull]_i_14_O_UNCONNECTED ;
  wire [0:0]\NLW_r_reg[txfull]_i_16_O_UNCONNECTED ;
  wire [3:2]\NLW_r_reg[txhalff]_i_12_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[txhalff]_i_12_O_UNCONNECTED ;
  wire [3:2]\NLW_r_reg[txhalff]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_reg[txhalff]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_r_reg[txhalff]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_r_reg[txhalff]_i_7_O_UNCONNECTED ;

  spwlink link_inst
       (.ADDRBWRADDR(\v[txfifo_raddr]_3 [0]),
        .D(s_txfifo_rdata[8]),
        .E(\v[pend_time] ),
        .\FSM_onehot_r_reg[state][0]_0 (link_inst_n_23),
        .\FSM_onehot_r_reg[state][0]_1 (link_inst_n_48),
        .\FSM_onehot_r_reg[state][0]_2 (link_inst_n_49),
        .\FSM_onehot_r_reg[state][0]_3 (recv_inst_n_12),
        .\FSM_onehot_r_reg[state][0]_4 (recv_inst_n_7),
        .\FSM_onehot_r_reg[state][1]_0 ({divcnt[7:4],divcnt[2:1]}),
        .\FSM_onehot_r_reg[state][1]_1 (link_inst_n_46),
        .\FSM_onehot_r_reg[state][1]_2 (recv_inst_n_8),
        .\FSM_onehot_r_reg[state][3]_0 (link_inst_n_47),
        .\FSM_onehot_r_reg[state][4]_0 ({recv_inst_n_9,recv_inst_n_10,recv_inst_n_11}),
        .\FSM_onehot_r_reg[state][5]_0 ({link_inst_n_4,link_inst_n_5,\FSM_onehot_r_reg[state][3] ,\v[errcred] }),
        .O(\v[txfifo_raddr]_3 [2:1]),
        .Q(\r_reg[txfifo_waddr] [2:0]),
        .S(link_inst_n_2),
        .SR(link_inst_n_21),
        .linkdis(linkdis),
        .linkdis_reg(link_inst_n_14),
        .\linko[started]1 (\linko[started]1 ),
        .\r[rxfull]_i_17 (\r_reg[rxfifo_waddr] ),
        .\r_reg[allow_char]0 (\r_reg[allow_char]0 ),
        .\r_reg[allow_char]__0 (\r_reg[allow_char]__0 ),
        .\r_reg[allow_fct]__0 (\r_reg[allow_fct]__0 ),
        .\r_reg[errcred]_0 (\r_reg[txhalff]_0 [3:1]),
        .\r_reg[inact] (\r_reg[inact] ),
        .\r_reg[inact]__0 (\recvfront_sel1.recvfront_fast_inst_n_4 ),
        .\r_reg[inbvalid] (\recvfront_sel1.recvfront_fast_inst_n_5 ),
        .\r_reg[pend_char]__0 (\r_reg[pend_char]__0 ),
        .\r_reg[pend_fct]__0 (\r_reg[pend_fct]__0 ),
        .\r_reg[rx_credit][0]_0 (\r_reg[rx_credit] ),
        .\r_reg[rx_credit][0]_1 (recv_inst_n_19),
        .\r_reg[rxeep] (\r_reg[rxpacket_n_0_] ),
        .\r_reg[rxeep]__0 (\r_reg[rxeep]__0 ),
        .\r_reg[rxfifo_waddr][0] (link_inst_n_41),
        .\r_reg[rxfifo_waddr][0]_0 (link_inst_n_42),
        .\r_reg[rxfull]__0 (\r_reg[rxfull]__0 ),
        .\r_reg[sent_fct]__0 (\r_reg[sent_fct]__0 ),
        .\r_reg[timercnt][0]_0 (\r_reg[timercnt][0] ),
        .\r_reg[timercnt][0]_1 (recv_inst_n_13),
        .\r_reg[timercnt][0]_2 (\recvo[gotnull] ),
        .\r_reg[timercnt][9]_0 (link_inst_n_10),
        .\r_reg[timerdone]__0 (\r_reg[timerdone]__0 ),
        .\r_reg[tx_credit][3]_0 (link_inst_n_17),
        .\r_reg[tx_credit][5]_0 (syncdff_ff2_reg),
        .\r_reg[txdiscard]__0 (\r_reg[txdiscard]__0 ),
        .\r_reg[txdivreg][7] (\r_reg[txdivreg][7] ),
        .\r_reg[txenreg] (\r_reg[txenreg] ),
        .\r_reg[txenreg]__0 (\v[txdivnorm] ),
        .\r_reg[txfifo_raddr][0] (link_inst_n_43),
        .\r_reg[txfifo_raddr][0]_0 (link_inst_n_44),
        .\r_reg[txfifo_rvalid]__0 (\r_reg[txfifo_rvalid]__0 ),
        .\r_reg[txpacket] (link_inst_n_45),
        .\r_reg[txpacket]__0 (\r_reg[txpacket]__0 ),
        .\r_reg[xmit_fct_in]_0 (\xmiti[fct_in] ),
        .\r_reg[xmit_fct_in]_1 (\r_reg[rxroom] ),
        .\recvo[erresc] (\recvo[erresc] ),
        .\recvo[errpar] (\recvo[errpar] ),
        .\recvo[gotfct] (\recvo[gotfct] ),
        .\recvo[rxchar] (\recvo[rxchar] ),
        .\recvo[tick_out] (\recvo[tick_out] ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .s_mem_reg(\r_reg[txfifo_raddr] [0]),
        .s_tc_in(s_tc_in),
        .\v[parity]14_out (\v[parity]14_out ),
        .\v[pend_data] (\v[pend_data] ),
        .\v[rxeep]3_out (\v[rxeep]3_out ),
        .\v[rxfifo_waddr]_0 (\v[rxfifo_waddr]_0 [10:1]),
        .\xmiti[txen] (\xmiti[txen] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__20_carry
       (.CI(1'b0),
        .CO({plusOp__20_carry_n_0,plusOp__20_carry_n_1,plusOp__20_carry_n_2,plusOp__20_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[rxfifo_raddr] [0]}),
        .O({\v[rxfifo_raddr] [3:1],\v[rxfifo_raddr]_1 [0]}),
        .S({\r_reg[rxfifo_raddr] [3:1],plusOp__20_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__20_carry__0
       (.CI(plusOp__20_carry_n_0),
        .CO({plusOp__20_carry__0_n_0,plusOp__20_carry__0_n_1,plusOp__20_carry__0_n_2,plusOp__20_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[rxfifo_raddr] [7:4]),
        .S(\r_reg[rxfifo_raddr] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__20_carry__1
       (.CI(plusOp__20_carry__0_n_0),
        .CO({NLW_plusOp__20_carry__1_CO_UNCONNECTED[3:2],plusOp__20_carry__1_n_2,plusOp__20_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__20_carry__1_O_UNCONNECTED[3],\v[rxfifo_raddr] [10:8]}),
        .S({1'b0,\r_reg[rxfifo_raddr] [10:8]}));
  LUT3 #(
    .INIT(8'h6A)) 
    plusOp__20_carry_i_1
       (.I0(\r_reg[rxfifo_raddr] [0]),
        .I1(s_rxvalid),
        .I2(s_rxread),
        .O(plusOp__20_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__41_carry
       (.CI(1'b0),
        .CO({plusOp__41_carry_n_0,plusOp__41_carry_n_1,plusOp__41_carry_n_2,plusOp__41_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[txfifo_waddr] [0]}),
        .O({\v[txfifo_waddr] [3:1],\v[txfifo_waddr]_2 [0]}),
        .S({\r_reg[txfifo_waddr] [3:1],plusOp__41_carry_i_1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__41_carry__0
       (.CI(plusOp__41_carry_n_0),
        .CO({plusOp__41_carry__0_n_0,plusOp__41_carry__0_n_1,plusOp__41_carry__0_n_2,plusOp__41_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[txfifo_waddr] [7:4]),
        .S(\r_reg[txfifo_waddr] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__41_carry__1
       (.CI(plusOp__41_carry__0_n_0),
        .CO({NLW_plusOp__41_carry__1_CO_UNCONNECTED[3:2],plusOp__41_carry__1_n_2,plusOp__41_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__41_carry__1_O_UNCONNECTED[3],\v[txfifo_waddr] [10:8]}),
        .S({1'b0,\r_reg[txfifo_waddr] [10:8]}));
  LUT3 #(
    .INIT(8'h9A)) 
    plusOp__41_carry_i_1
       (.I0(\r_reg[txfifo_waddr] [0]),
        .I1(\r_reg[txfull]_0 ),
        .I2(s_txwrite),
        .O(plusOp__41_carry_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__62_carry
       (.CI(1'b0),
        .CO({plusOp__62_carry_n_0,plusOp__62_carry_n_1,plusOp__62_carry_n_2,plusOp__62_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[txfifo_raddr] [0]}),
        .O(\v[txfifo_raddr] [3:0]),
        .S({\r_reg[txfifo_raddr] [3:1],link_inst_n_43}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__62_carry__0
       (.CI(plusOp__62_carry_n_0),
        .CO({plusOp__62_carry__0_n_0,plusOp__62_carry__0_n_1,plusOp__62_carry__0_n_2,plusOp__62_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[txfifo_raddr] [7:4]),
        .S(\r_reg[txfifo_raddr] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__62_carry__1
       (.CI(plusOp__62_carry__0_n_0),
        .CO({NLW_plusOp__62_carry__1_CO_UNCONNECTED[3:2],plusOp__62_carry__1_n_2,plusOp__62_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__62_carry__1_O_UNCONNECTED[3],\v[txfifo_raddr] [10:8]}),
        .S({1'b0,\r_reg[txfifo_raddr] [10:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__63_carry
       (.CI(1'b0),
        .CO({plusOp__63_carry_n_0,plusOp__63_carry_n_1,plusOp__63_carry_n_2,plusOp__63_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[txfifo_raddr] [0]}),
        .O({\v[txfifo_raddr]_3 [3:1],NLW_plusOp__63_carry_O_UNCONNECTED[0]}),
        .S({\r_reg[txfifo_raddr] [3:1],link_inst_n_44}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__63_carry__0
       (.CI(plusOp__63_carry_n_0),
        .CO({plusOp__63_carry__0_n_0,plusOp__63_carry__0_n_1,plusOp__63_carry__0_n_2,plusOp__63_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[txfifo_raddr]_3 [7:4]),
        .S(\r_reg[txfifo_raddr] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp__63_carry__1
       (.CI(plusOp__63_carry__0_n_0),
        .CO({NLW_plusOp__63_carry__1_CO_UNCONNECTED[3:2],plusOp__63_carry__1_n_2,plusOp__63_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp__63_carry__1_O_UNCONNECTED[3],\v[txfifo_raddr]_3 [10:8]}),
        .S({1'b0,\r_reg[txfifo_raddr] [10:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[rxfifo_waddr] [0]}),
        .O({\v[rxfifo_waddr] [3:1],\v[rxfifo_waddr]_0 [0]}),
        .S({\r_reg[rxfifo_waddr] [3:1],link_inst_n_42}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[rxfifo_waddr] [7:4]),
        .S(\r_reg[rxfifo_waddr] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({NLW_plusOp_carry__1_CO_UNCONNECTED[3:2],plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__1_O_UNCONNECTED[3],\v[rxfifo_waddr] [10:8]}),
        .S({1'b0,\r_reg[rxfifo_waddr] [10:8]}));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r[rxfifo_raddr][0]_i_1 
       (.I0(\r_reg[rxfifo_raddr] [0]),
        .I1(s_rxvalid),
        .I2(s_rxread),
        .O(\r[rxfifo_raddr][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[rxfull]_i_1 
       (.I0(L2_out[4]),
        .I1(L2_out[1]),
        .I2(L2_out[6]),
        .I3(\r[rxfull]_i_4_n_0 ),
        .I4(\r[rxfull]_i_5_n_0 ),
        .O(\rin[rxfull] ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_10 
       (.I0(\r_reg[rxfifo_raddr] [3]),
        .I1(\v[rxfifo_waddr]_0 [3]),
        .O(\r[rxfull]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_11 
       (.I0(\r_reg[rxfifo_raddr] [2]),
        .I1(\v[rxfifo_waddr]_0 [2]),
        .O(\r[rxfull]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_12 
       (.I0(\r_reg[rxfifo_raddr] [1]),
        .I1(\v[rxfifo_waddr]_0 [1]),
        .O(\r[rxfull]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_13 
       (.I0(\r_reg[rxfifo_raddr] [0]),
        .I1(\v[rxfifo_waddr]_0 [0]),
        .O(\r[rxfull]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_15 
       (.I0(\r_reg[rxfifo_raddr] [10]),
        .I1(\v[rxfifo_waddr]_0 [10]),
        .O(\r[rxfull]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_16 
       (.I0(\r_reg[rxfifo_raddr] [9]),
        .I1(\v[rxfifo_waddr]_0 [9]),
        .O(\r[rxfull]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_17 
       (.I0(\r_reg[rxfifo_raddr] [8]),
        .I1(\v[rxfifo_waddr]_0 [8]),
        .O(\r[rxfull]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[rxfull]_i_4 
       (.I0(L2_out[8]),
        .I1(L2_out[2]),
        .I2(L2_out[7]),
        .I3(L2_out[5]),
        .O(\r[rxfull]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \r[rxfull]_i_5 
       (.I0(L2_out[9]),
        .I1(L2_out[10]),
        .I2(L2_out[0]),
        .I3(L2_out[3]),
        .O(\r[rxfull]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_6 
       (.I0(\r_reg[rxfifo_raddr] [7]),
        .I1(\v[rxfifo_waddr]_0 [7]),
        .O(\r[rxfull]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_7 
       (.I0(\r_reg[rxfifo_raddr] [6]),
        .I1(\v[rxfifo_waddr]_0 [6]),
        .O(\r[rxfull]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_8 
       (.I0(\r_reg[rxfifo_raddr] [5]),
        .I1(\v[rxfifo_waddr]_0 [5]),
        .O(\r[rxfull]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxfull]_i_9 
       (.I0(\r_reg[rxfifo_raddr] [4]),
        .I1(\v[rxfifo_waddr]_0 [4]),
        .O(\r[rxfull]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[rxhalff]_i_1 
       (.I0(\r_reg[rxroom][5]_i_3_n_5 ),
        .O(\rin[rxhalff] ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][3]_i_2 
       (.I0(\r_reg[rxfifo_raddr] [3]),
        .I1(\v[rxfifo_waddr]_0 [3]),
        .O(\r[rxroom][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][3]_i_3 
       (.I0(\r_reg[rxfifo_raddr] [2]),
        .I1(\v[rxfifo_waddr]_0 [2]),
        .O(\r[rxroom][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][3]_i_4 
       (.I0(\r_reg[rxfifo_raddr] [1]),
        .I1(\v[rxfifo_waddr]_0 [1]),
        .O(\r[rxroom][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][3]_i_5 
       (.I0(\r_reg[rxfifo_raddr] [0]),
        .I1(\v[rxfifo_waddr]_0 [0]),
        .O(\r[rxroom][3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[rxroom][5]_i_1 
       (.I0(\r_reg[rxroom][5]_i_3_n_6 ),
        .I1(\r_reg[rxroom][5]_i_3_n_5 ),
        .I2(\r_reg[rxroom][5]_i_2_n_4 ),
        .I3(\r_reg[rxroom][5]_i_2_n_5 ),
        .I4(\r_reg[rxroom][5]_i_3_n_7 ),
        .O(\r[rxroom][5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_10 
       (.I0(\r_reg[rxfifo_raddr] [8]),
        .I1(\v[rxfifo_waddr]_0 [8]),
        .O(\r[rxroom][5]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_4 
       (.I0(\r_reg[rxfifo_raddr] [7]),
        .I1(\v[rxfifo_waddr]_0 [7]),
        .O(\r[rxroom][5]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_5 
       (.I0(\r_reg[rxfifo_raddr] [6]),
        .I1(\v[rxfifo_waddr]_0 [6]),
        .O(\r[rxroom][5]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_6 
       (.I0(\r_reg[rxfifo_raddr] [5]),
        .I1(\v[rxfifo_waddr]_0 [5]),
        .O(\r[rxroom][5]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_7 
       (.I0(\r_reg[rxfifo_raddr] [4]),
        .I1(\v[rxfifo_waddr]_0 [4]),
        .O(\r[rxroom][5]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_8 
       (.I0(\r_reg[rxfifo_raddr] [10]),
        .I1(\v[rxfifo_waddr]_0 [10]),
        .O(\r[rxroom][5]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[rxroom][5]_i_9 
       (.I0(\r_reg[rxfifo_raddr] [9]),
        .I1(\v[rxfifo_waddr]_0 [9]),
        .O(\r[rxroom][5]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \r[txfifo_waddr][0]_i_1 
       (.I0(\r_reg[txfifo_waddr] [0]),
        .I1(\r_reg[txfull]_0 ),
        .I2(s_txwrite),
        .O(\r[txfifo_waddr][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \r[txfull]_i_1 
       (.I0(L0_out[4]),
        .I1(L0_out[1]),
        .I2(L0_out[6]),
        .I3(\r[txfull]_i_4_n_0 ),
        .I4(\r[txfull]_i_5_n_0 ),
        .O(\rin[txfull] ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_10 
       (.I0(\r_reg[txfifo_raddr] [3]),
        .I1(\v[txfifo_waddr]_2 [3]),
        .O(\r[txfull]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_11 
       (.I0(\r_reg[txfifo_raddr] [2]),
        .I1(\v[txfifo_waddr]_2 [2]),
        .O(\r[txfull]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_12 
       (.I0(\r_reg[txfifo_raddr] [1]),
        .I1(\v[txfifo_waddr]_2 [1]),
        .O(\r[txfull]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_13 
       (.I0(\r_reg[txfifo_raddr] [0]),
        .I1(\v[txfifo_waddr]_2 [0]),
        .O(\r[txfull]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_17 
       (.I0(\r_reg[txfifo_raddr] [10]),
        .I1(\v[txfifo_waddr]_2 [10]),
        .O(\r[txfull]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_18 
       (.I0(\r_reg[txfifo_raddr] [9]),
        .I1(\v[txfifo_waddr]_2 [9]),
        .O(\r[txfull]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_19 
       (.I0(\r_reg[txfifo_raddr] [8]),
        .I1(\v[txfifo_waddr]_2 [8]),
        .O(\r[txfull]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \r[txfull]_i_20 
       (.I0(\r_reg[txfifo_waddr] [0]),
        .I1(\r_reg[txfull]_0 ),
        .I2(s_txwrite),
        .O(\r[txfull]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r[txfull]_i_4 
       (.I0(L0_out[8]),
        .I1(L0_out[2]),
        .I2(L0_out[7]),
        .I3(L0_out[5]),
        .O(\r[txfull]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \r[txfull]_i_5 
       (.I0(L0_out[9]),
        .I1(L0_out[10]),
        .I2(L0_out[0]),
        .I3(L0_out[3]),
        .O(\r[txfull]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_6 
       (.I0(\r_reg[txfifo_raddr] [7]),
        .I1(\v[txfifo_waddr]_2 [7]),
        .O(\r[txfull]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_7 
       (.I0(\r_reg[txfifo_raddr] [6]),
        .I1(\v[txfifo_waddr]_2 [6]),
        .O(\r[txfull]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_8 
       (.I0(\r_reg[txfifo_raddr] [5]),
        .I1(\v[txfifo_waddr]_2 [5]),
        .O(\r[txfull]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txfull]_i_9 
       (.I0(\r_reg[txfifo_raddr] [4]),
        .I1(\v[txfifo_waddr]_2 [4]),
        .O(\r[txfull]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[txhalff]_i_1 
       (.I0(\r_reg[txhalff]_i_2_n_5 ),
        .O(\rin[txhalff] ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_10 
       (.I0(\r_reg[txfifo_raddr] [5]),
        .I1(\v[txfifo_waddr]_2 [5]),
        .O(\r[txhalff]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_11 
       (.I0(\r_reg[txfifo_raddr] [4]),
        .I1(\v[txfifo_waddr]_2 [4]),
        .O(\r[txhalff]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_13 
       (.I0(\r_reg[txfifo_raddr] [3]),
        .I1(\v[txfifo_waddr]_2 [3]),
        .O(\r[txhalff]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_14 
       (.I0(\r_reg[txfifo_raddr] [2]),
        .I1(\v[txfifo_waddr]_2 [2]),
        .O(\r[txhalff]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_15 
       (.I0(\r_reg[txfifo_raddr] [1]),
        .I1(\v[txfifo_waddr]_2 [1]),
        .O(\r[txhalff]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_16 
       (.I0(\r_reg[txfifo_raddr] [0]),
        .I1(\v[txfifo_waddr]_2 [0]),
        .O(\r[txhalff]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_4 
       (.I0(\r_reg[txfifo_raddr] [10]),
        .I1(\v[txfifo_waddr]_2 [10]),
        .O(\r[txhalff]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_5 
       (.I0(\r_reg[txfifo_raddr] [9]),
        .I1(\v[txfifo_waddr]_2 [9]),
        .O(\r[txhalff]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_6 
       (.I0(\r_reg[txfifo_raddr] [8]),
        .I1(\v[txfifo_waddr]_2 [8]),
        .O(\r[txhalff]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_8 
       (.I0(\r_reg[txfifo_raddr] [7]),
        .I1(\v[txfifo_waddr]_2 [7]),
        .O(\r[txhalff]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \r[txhalff]_i_9 
       (.I0(\r_reg[txfifo_raddr] [6]),
        .I1(\v[txfifo_waddr]_2 [6]),
        .O(\r[txhalff]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxeep] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxeep]3_out ),
        .Q(\r_reg[rxeep]__0 ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r[rxfifo_raddr][0]_i_1_n_0 ),
        .Q(\r_reg[rxfifo_raddr] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][10] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [10]),
        .Q(\r_reg[rxfifo_raddr] [10]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [1]),
        .Q(\r_reg[rxfifo_raddr] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][2] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [2]),
        .Q(\r_reg[rxfifo_raddr] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][3] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [3]),
        .Q(\r_reg[rxfifo_raddr] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][4] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [4]),
        .Q(\r_reg[rxfifo_raddr] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][5] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [5]),
        .Q(\r_reg[rxfifo_raddr] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][6] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [6]),
        .Q(\r_reg[rxfifo_raddr] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][7] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [7]),
        .Q(\r_reg[rxfifo_raddr] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][8] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [8]),
        .Q(\r_reg[rxfifo_raddr] [8]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_raddr][9] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_raddr] [9]),
        .Q(\r_reg[rxfifo_raddr] [9]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_rvalid] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxfifo_rvalid]2 ),
        .Q(s_rxvalid),
        .R(rst_logic_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxfifo_rvalid]2_carry 
       (.CI(1'b0),
        .CO({\r_reg[rxfifo_rvalid]2 ,\r_reg[rxfifo_rvalid]2_carry_n_1 ,\r_reg[rxfifo_rvalid]2_carry_n_2 ,\r_reg[rxfifo_rvalid]2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_r_reg[rxfifo_rvalid]2_carry_O_UNCONNECTED [3:0]),
        .S({\r_reg[rxfifo_rvalid]2_carry_i_1_n_0 ,\r_reg[rxfifo_rvalid]2_carry_i_2_n_0 ,\r_reg[rxfifo_rvalid]2_carry_i_3_n_0 ,\r_reg[rxfifo_rvalid]2_carry_i_4_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \r_reg[rxfifo_rvalid]2_carry_i_1 
       (.I0(\r_reg[rxfifo_waddr] [10]),
        .I1(\v[rxfifo_raddr]_1 [10]),
        .I2(\r_reg[rxfifo_waddr] [9]),
        .I3(\v[rxfifo_raddr]_1 [9]),
        .O(\r_reg[rxfifo_rvalid]2_carry_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_reg[rxfifo_rvalid]2_carry_i_2 
       (.I0(\v[rxfifo_raddr]_1 [6]),
        .I1(\r_reg[rxfifo_waddr] [6]),
        .I2(\v[rxfifo_raddr]_1 [7]),
        .I3(\r_reg[rxfifo_waddr] [7]),
        .I4(\r_reg[rxfifo_waddr] [8]),
        .I5(\v[rxfifo_raddr]_1 [8]),
        .O(\r_reg[rxfifo_rvalid]2_carry_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_reg[rxfifo_rvalid]2_carry_i_3 
       (.I0(\v[rxfifo_raddr]_1 [3]),
        .I1(\r_reg[rxfifo_waddr] [3]),
        .I2(\v[rxfifo_raddr]_1 [4]),
        .I3(\r_reg[rxfifo_waddr] [4]),
        .I4(\r_reg[rxfifo_waddr] [5]),
        .I5(\v[rxfifo_raddr]_1 [5]),
        .O(\r_reg[rxfifo_rvalid]2_carry_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_reg[rxfifo_rvalid]2_carry_i_4 
       (.I0(\v[rxfifo_raddr]_1 [2]),
        .I1(\r_reg[rxfifo_waddr] [2]),
        .I2(\v[rxfifo_raddr]_1 [0]),
        .I3(\r_reg[rxfifo_waddr] [0]),
        .I4(\r_reg[rxfifo_waddr] [1]),
        .I5(\v[rxfifo_raddr]_1 [1]),
        .O(\r_reg[rxfifo_rvalid]2_carry_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(link_inst_n_41),
        .Q(\r_reg[rxfifo_waddr] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][10] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [10]),
        .Q(\r_reg[rxfifo_waddr] [10]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [1]),
        .Q(\r_reg[rxfifo_waddr] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][2] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [2]),
        .Q(\r_reg[rxfifo_waddr] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][3] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [3]),
        .Q(\r_reg[rxfifo_waddr] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][4] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [4]),
        .Q(\r_reg[rxfifo_waddr] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][5] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [5]),
        .Q(\r_reg[rxfifo_waddr] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][6] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [6]),
        .Q(\r_reg[rxfifo_waddr] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][7] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [7]),
        .Q(\r_reg[rxfifo_waddr] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][8] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [8]),
        .Q(\r_reg[rxfifo_waddr] [8]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfifo_waddr][9] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[rxfifo_waddr] [9]),
        .Q(\r_reg[rxfifo_waddr] [9]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxfull] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\rin[rxfull] ),
        .Q(\r_reg[rxfull]__0 ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxfull]_i_14 
       (.CI(\r_reg[rxfull]_i_2_n_0 ),
        .CO({\NLW_r_reg[rxfull]_i_14_CO_UNCONNECTED [3:2],\r_reg[rxfull]_i_14_n_2 ,\r_reg[rxfull]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r_reg[rxfifo_raddr] [9:8]}),
        .O({\NLW_r_reg[rxfull]_i_14_O_UNCONNECTED [3],L2_out[10:8]}),
        .S({1'b0,\r[rxfull]_i_15_n_0 ,\r[rxfull]_i_16_n_0 ,\r[rxfull]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxfull]_i_2 
       (.CI(\r_reg[rxfull]_i_3_n_0 ),
        .CO({\r_reg[rxfull]_i_2_n_0 ,\r_reg[rxfull]_i_2_n_1 ,\r_reg[rxfull]_i_2_n_2 ,\r_reg[rxfull]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_reg[rxfifo_raddr] [7:4]),
        .O(L2_out[7:4]),
        .S({\r[rxfull]_i_6_n_0 ,\r[rxfull]_i_7_n_0 ,\r[rxfull]_i_8_n_0 ,\r[rxfull]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxfull]_i_3 
       (.CI(1'b0),
        .CO({\r_reg[rxfull]_i_3_n_0 ,\r_reg[rxfull]_i_3_n_1 ,\r_reg[rxfull]_i_3_n_2 ,\r_reg[rxfull]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(\r_reg[rxfifo_raddr] [3:0]),
        .O(L2_out[3:0]),
        .S({\r[rxfull]_i_10_n_0 ,\r[rxfull]_i_11_n_0 ,\r[rxfull]_i_12_n_0 ,\r[rxfull]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxhalff] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\rin[rxhalff] ),
        .Q(\r_reg[txhalff]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[rxpacket] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(recv_inst_n_29),
        .Q(\r_reg[rxpacket_n_0_] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \r_reg[rxroom][0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxroom][3]_i_1_n_7 ),
        .Q(\r_reg[rxroom] [0]),
        .S(\r[rxroom][5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_reg[rxroom][1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxroom][3]_i_1_n_6 ),
        .Q(\r_reg[rxroom] [1]),
        .S(\r[rxroom][5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_reg[rxroom][2] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxroom][3]_i_1_n_5 ),
        .Q(\r_reg[rxroom] [2]),
        .S(\r[rxroom][5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_reg[rxroom][3] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxroom][3]_i_1_n_4 ),
        .Q(\r_reg[rxroom] [3]),
        .S(\r[rxroom][5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxroom][3]_i_1 
       (.CI(1'b0),
        .CO({\r_reg[rxroom][3]_i_1_n_0 ,\r_reg[rxroom][3]_i_1_n_1 ,\r_reg[rxroom][3]_i_1_n_2 ,\r_reg[rxroom][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_reg[rxfifo_raddr] [3:0]),
        .O({\r_reg[rxroom][3]_i_1_n_4 ,\r_reg[rxroom][3]_i_1_n_5 ,\r_reg[rxroom][3]_i_1_n_6 ,\r_reg[rxroom][3]_i_1_n_7 }),
        .S({\r[rxroom][3]_i_2_n_0 ,\r[rxroom][3]_i_3_n_0 ,\r[rxroom][3]_i_4_n_0 ,\r[rxroom][3]_i_5_n_0 }));
  FDSE #(
    .INIT(1'b0)) 
    \r_reg[rxroom][4] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxroom][5]_i_2_n_7 ),
        .Q(\r_reg[rxroom] [4]),
        .S(\r[rxroom][5]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \r_reg[rxroom][5] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[rxroom][5]_i_2_n_6 ),
        .Q(\r_reg[rxroom] [5]),
        .S(\r[rxroom][5]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxroom][5]_i_2 
       (.CI(\r_reg[rxroom][3]_i_1_n_0 ),
        .CO({\r_reg[rxroom][5]_i_2_n_0 ,\r_reg[rxroom][5]_i_2_n_1 ,\r_reg[rxroom][5]_i_2_n_2 ,\r_reg[rxroom][5]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_reg[rxfifo_raddr] [7:4]),
        .O({\r_reg[rxroom][5]_i_2_n_4 ,\r_reg[rxroom][5]_i_2_n_5 ,\r_reg[rxroom][5]_i_2_n_6 ,\r_reg[rxroom][5]_i_2_n_7 }),
        .S({\r[rxroom][5]_i_4_n_0 ,\r[rxroom][5]_i_5_n_0 ,\r[rxroom][5]_i_6_n_0 ,\r[rxroom][5]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[rxroom][5]_i_3 
       (.CI(\r_reg[rxroom][5]_i_2_n_0 ),
        .CO({\NLW_r_reg[rxroom][5]_i_3_CO_UNCONNECTED [3:2],\r_reg[rxroom][5]_i_3_n_2 ,\r_reg[rxroom][5]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r_reg[rxfifo_raddr] [9:8]}),
        .O({\NLW_r_reg[rxroom][5]_i_3_O_UNCONNECTED [3],\r_reg[rxroom][5]_i_3_n_5 ,\r_reg[rxroom][5]_i_3_n_6 ,\r_reg[rxroom][5]_i_3_n_7 }),
        .S({1'b0,\r[rxroom][5]_i_8_n_0 ,\r[rxroom][5]_i_9_n_0 ,\r[rxroom][5]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdiscard] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(link_inst_n_14),
        .Q(\r_reg[txdiscard]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [0]),
        .Q(\r_reg[txfifo_raddr] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][10] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [10]),
        .Q(\r_reg[txfifo_raddr] [10]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [1]),
        .Q(\r_reg[txfifo_raddr] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][2] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [2]),
        .Q(\r_reg[txfifo_raddr] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][3] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [3]),
        .Q(\r_reg[txfifo_raddr] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][4] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [4]),
        .Q(\r_reg[txfifo_raddr] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][5] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [5]),
        .Q(\r_reg[txfifo_raddr] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][6] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [6]),
        .Q(\r_reg[txfifo_raddr] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][7] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [7]),
        .Q(\r_reg[txfifo_raddr] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][8] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [8]),
        .Q(\r_reg[txfifo_raddr] [8]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_raddr][9] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_raddr] [9]),
        .Q(\r_reg[txfifo_raddr] [9]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_rvalid] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[txfifo_rvalid]2 ),
        .Q(\r_reg[txfifo_rvalid]__0 ),
        .R(rst_logic_IBUF));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txfifo_rvalid]2_carry 
       (.CI(1'b0),
        .CO({\r_reg[txfifo_rvalid]2 ,\r_reg[txfifo_rvalid]2_carry_n_1 ,\r_reg[txfifo_rvalid]2_carry_n_2 ,\r_reg[txfifo_rvalid]2_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_r_reg[txfifo_rvalid]2_carry_O_UNCONNECTED [3:0]),
        .S({\r_reg[txfifo_rvalid]2_carry_i_1_n_0 ,\r_reg[txfifo_rvalid]2_carry_i_2_n_0 ,\r_reg[txfifo_rvalid]2_carry_i_3_n_0 ,link_inst_n_2}));
  LUT4 #(
    .INIT(16'h9009)) 
    \r_reg[txfifo_rvalid]2_carry_i_1 
       (.I0(\r_reg[txfifo_waddr] [10]),
        .I1(\v[txfifo_raddr]_3 [10]),
        .I2(\r_reg[txfifo_waddr] [9]),
        .I3(\v[txfifo_raddr]_3 [9]),
        .O(\r_reg[txfifo_rvalid]2_carry_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_reg[txfifo_rvalid]2_carry_i_2 
       (.I0(\v[txfifo_raddr]_3 [6]),
        .I1(\r_reg[txfifo_waddr] [6]),
        .I2(\v[txfifo_raddr]_3 [7]),
        .I3(\r_reg[txfifo_waddr] [7]),
        .I4(\r_reg[txfifo_waddr] [8]),
        .I5(\v[txfifo_raddr]_3 [8]),
        .O(\r_reg[txfifo_rvalid]2_carry_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r_reg[txfifo_rvalid]2_carry_i_3 
       (.I0(\v[txfifo_raddr]_3 [3]),
        .I1(\r_reg[txfifo_waddr] [3]),
        .I2(\v[txfifo_raddr]_3 [4]),
        .I3(\r_reg[txfifo_waddr] [4]),
        .I4(\r_reg[txfifo_waddr] [5]),
        .I5(\v[txfifo_raddr]_3 [5]),
        .O(\r_reg[txfifo_rvalid]2_carry_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r[txfifo_waddr][0]_i_1_n_0 ),
        .Q(\r_reg[txfifo_waddr] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][10] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [10]),
        .Q(\r_reg[txfifo_waddr] [10]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [1]),
        .Q(\r_reg[txfifo_waddr] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][2] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [2]),
        .Q(\r_reg[txfifo_waddr] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][3] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [3]),
        .Q(\r_reg[txfifo_waddr] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][4] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [4]),
        .Q(\r_reg[txfifo_waddr] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][5] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [5]),
        .Q(\r_reg[txfifo_waddr] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][6] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [6]),
        .Q(\r_reg[txfifo_waddr] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][7] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [7]),
        .Q(\r_reg[txfifo_waddr] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][8] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [8]),
        .Q(\r_reg[txfifo_waddr] [8]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfifo_waddr][9] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\v[txfifo_waddr] [9]),
        .Q(\r_reg[txfifo_waddr] [9]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txfull] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\rin[txfull] ),
        .Q(\r_reg[txfull]_0 ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txfull]_i_14 
       (.CI(\r_reg[txfull]_i_2_n_0 ),
        .CO({\NLW_r_reg[txfull]_i_14_CO_UNCONNECTED [3:2],\r_reg[txfull]_i_14_n_2 ,\r_reg[txfull]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r_reg[txfifo_raddr] [9:8]}),
        .O({\NLW_r_reg[txfull]_i_14_O_UNCONNECTED [3],L0_out[10:8]}),
        .S({1'b0,\r[txfull]_i_17_n_0 ,\r[txfull]_i_18_n_0 ,\r[txfull]_i_19_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txfull]_i_15 
       (.CI(\r_reg[txfull]_i_16_n_0 ),
        .CO({\r_reg[txfull]_i_15_n_0 ,\r_reg[txfull]_i_15_n_1 ,\r_reg[txfull]_i_15_n_2 ,\r_reg[txfull]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\v[txfifo_waddr]_2 [7:4]),
        .S(\r_reg[txfifo_waddr] [7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txfull]_i_16 
       (.CI(1'b0),
        .CO({\r_reg[txfull]_i_16_n_0 ,\r_reg[txfull]_i_16_n_1 ,\r_reg[txfull]_i_16_n_2 ,\r_reg[txfull]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\r_reg[txfifo_waddr] [0]}),
        .O({\v[txfifo_waddr]_2 [3:1],\NLW_r_reg[txfull]_i_16_O_UNCONNECTED [0]}),
        .S({\r_reg[txfifo_waddr] [3:1],\r[txfull]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txfull]_i_2 
       (.CI(\r_reg[txfull]_i_3_n_0 ),
        .CO({\r_reg[txfull]_i_2_n_0 ,\r_reg[txfull]_i_2_n_1 ,\r_reg[txfull]_i_2_n_2 ,\r_reg[txfull]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_reg[txfifo_raddr] [7:4]),
        .O(L0_out[7:4]),
        .S({\r[txfull]_i_6_n_0 ,\r[txfull]_i_7_n_0 ,\r[txfull]_i_8_n_0 ,\r[txfull]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txfull]_i_3 
       (.CI(1'b0),
        .CO({\r_reg[txfull]_i_3_n_0 ,\r_reg[txfull]_i_3_n_1 ,\r_reg[txfull]_i_3_n_2 ,\r_reg[txfull]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI(\r_reg[txfifo_raddr] [3:0]),
        .O(L0_out[3:0]),
        .S({\r[txfull]_i_10_n_0 ,\r[txfull]_i_11_n_0 ,\r[txfull]_i_12_n_0 ,\r[txfull]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txhalff] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\rin[txhalff] ),
        .Q(\r_reg[txhalff]_0 [5]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txhalff]_i_12 
       (.CI(\r_reg[txfull]_i_15_n_0 ),
        .CO({\NLW_r_reg[txhalff]_i_12_CO_UNCONNECTED [3:2],\r_reg[txhalff]_i_12_n_2 ,\r_reg[txhalff]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_reg[txhalff]_i_12_O_UNCONNECTED [3],\v[txfifo_waddr]_2 [10:8]}),
        .S({1'b0,\r_reg[txfifo_waddr] [10:8]}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txhalff]_i_2 
       (.CI(\r_reg[txhalff]_i_3_n_0 ),
        .CO({\NLW_r_reg[txhalff]_i_2_CO_UNCONNECTED [3:2],\r_reg[txhalff]_i_2_n_2 ,\r_reg[txhalff]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r_reg[txfifo_raddr] [9:8]}),
        .O({\NLW_r_reg[txhalff]_i_2_O_UNCONNECTED [3],\r_reg[txhalff]_i_2_n_5 ,\NLW_r_reg[txhalff]_i_2_O_UNCONNECTED [1:0]}),
        .S({1'b0,\r[txhalff]_i_4_n_0 ,\r[txhalff]_i_5_n_0 ,\r[txhalff]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txhalff]_i_3 
       (.CI(\r_reg[txhalff]_i_7_n_0 ),
        .CO({\r_reg[txhalff]_i_3_n_0 ,\r_reg[txhalff]_i_3_n_1 ,\r_reg[txhalff]_i_3_n_2 ,\r_reg[txhalff]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_reg[txfifo_raddr] [7:4]),
        .O(\NLW_r_reg[txhalff]_i_3_O_UNCONNECTED [3:0]),
        .S({\r[txhalff]_i_8_n_0 ,\r[txhalff]_i_9_n_0 ,\r[txhalff]_i_10_n_0 ,\r[txhalff]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \r_reg[txhalff]_i_7 
       (.CI(1'b0),
        .CO({\r_reg[txhalff]_i_7_n_0 ,\r_reg[txhalff]_i_7_n_1 ,\r_reg[txhalff]_i_7_n_2 ,\r_reg[txhalff]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(\r_reg[txfifo_raddr] [3:0]),
        .O(\NLW_r_reg[txhalff]_i_7_O_UNCONNECTED [3:0]),
        .S({\r[txhalff]_i_13_n_0 ,\r[txhalff]_i_14_n_0 ,\r[txhalff]_i_15_n_0 ,\r[txhalff]_i_16_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txpacket] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(link_inst_n_45),
        .Q(\r_reg[txpacket]__0 ),
        .R(1'b0));
  spwrecv recv_inst
       (.\FSM_onehot_r_reg[state][2] (link_inst_n_10),
        .\FSM_onehot_r_reg[state][4] ({link_inst_n_4,link_inst_n_5,\FSM_onehot_r_reg[state][3] [2],\FSM_onehot_r_reg[state][3] [0],\v[errcred] }),
        .\FSM_onehot_r_reg[state][5] ({recv_inst_n_9,recv_inst_n_10,recv_inst_n_11}),
        .Q(recv_inst_n_14),
        .SR(link_inst_n_21),
        .WEA(wen),
        .\r_reg[bit_seen]_0 (recv_inst_n_13),
        .\r_reg[bitcnt][0]_0 (recv_inst_n_16),
        .\r_reg[disccnt][0]_0 (\recvfront_sel1.recvfront_fast_inst_n_6 ),
        .\r_reg[disccnt][6]_0 (\r_reg[txhalff]_0 [0]),
        .\r_reg[disccnt][7]_0 (link_inst_n_23),
        .\r_reg[erresc]_0 (recv_inst_n_8),
        .\r_reg[gotfct]_0 (recv_inst_n_7),
        .\r_reg[inact] (\r_reg[inact] ),
        .\r_reg[null_seen]_0 (\recvo[gotnull] ),
        .\r_reg[parity]_0 (recv_inst_n_4),
        .\r_reg[rx_credit][0] (\r_reg[rx_credit] ),
        .\r_reg[rxchar]_0 (recv_inst_n_19),
        .\r_reg[rxchar]_1 (recv_inst_n_29),
        .\r_reg[rxeep]__0 (\r_reg[rxeep]__0 ),
        .\r_reg[rxfull]__0 (\r_reg[rxfull]__0 ),
        .\r_reg[rxpacket] (\r_reg[rxpacket_n_0_] ),
        .\r_reg[tick_out]_0 (syncdff_ff2_reg),
        .\r_reg[timerdone] (recv_inst_n_12),
        .\r_reg[timerdone]__0 (\r_reg[timerdone]__0 ),
        .\r_reg[timereg][7]_0 (\r_reg[timereg][7] ),
        .recv_inbits(recv_inbits),
        .recv_inbvalid(recv_inbvalid),
        .\recvo[erresc] (\recvo[erresc] ),
        .\recvo[errpar] (\recvo[errpar] ),
        .\recvo[gotfct] (\recvo[gotfct] ),
        .\recvo[rxchar] (\recvo[rxchar] ),
        .\recvo[tick_out] (\recvo[tick_out] ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .s_tc_out(s_tc_out),
        .\v[escaped] (\v[escaped] ),
        .\v[parity]14_out (\v[parity]14_out ),
        .wdata(wdata));
  spwrecvfront_fast \recvfront_sel1.recvfront_fast_inst 
       (.Q(recv_inst_n_14),
        .\r_reg[bitcntp][1]_0 (\recvfront_sel1.recvfront_fast_inst_n_4 ),
        .\r_reg[escaped] (recv_inst_n_4),
        .\r_reg[escaped]_0 (recv_inst_n_16),
        .\r_reg[inact] (\r_reg[inact] ),
        .\r_reg[inact]__0_0 (\recvfront_sel1.recvfront_fast_inst_n_6 ),
        .\r_reg[inact]__0_1 (link_inst_n_48),
        .\r_reg[inbvalid]_0 (link_inst_n_49),
        .\r_reg[splitinx]_0 (\v[errcred] ),
        .\r_reg[tailptr][1]_0 (\recvfront_sel1.recvfront_fast_inst_n_5 ),
        .recv_inbits(recv_inbits),
        .recv_inbvalid(recv_inbvalid),
        .rxclk_IBUF_BUFG(rxclk_IBUF_BUFG),
        .spw_di_IBUF(spw_di_IBUF),
        .spw_si_IBUF(spw_si_IBUF),
        .syncdff_ff1_reg(syncdff_ff2_reg),
        .\v[escaped] (\v[escaped] ));
  spwram__parameterized1 rxmem
       (.ADDRBWRADDR(\v[rxfifo_raddr]_1 [10:1]),
        .D(D),
        .DOPBDOP(DOPBDOP),
        .O(\v[rxfifo_raddr]_1 [0]),
        .Q(\r_reg[rxfifo_waddr] ),
        .WEA(wen),
        .s_mem_reg_0(syncdff_ff2_reg),
        .s_mem_reg_1(\r_reg[rxfifo_raddr] ),
        .s_mem_reg_2(s_rxvalid),
        .s_rxread(s_rxread),
        .\spwwrapper.v_write_reg[8] (\spwwrapper.v_write_reg[8] ),
        .\spwwrapper.v_write_reg[8]_0 (\spwwrapper.v_write_reg[8]_0 ),
        .wdata(wdata));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spwwrapper.v_write[8]_i_1 
       (.I0(s_rxvalid),
        .I1(s_rxread),
        .O(E));
  spwram__parameterized1_0 txmem
       (.ADDRBWRADDR(\v[txfifo_raddr]_3 ),
        .D(s_txfifo_rdata),
        .DIPADIP(DIPADIP),
        .Q(\r_reg[txfifo_waddr] ),
        .WEA(WEA),
        .s_mem_reg_0(syncdff_ff2_reg),
        .s_mem_reg_1(Q));
  spwxmit_fast \xmit_sel1.xmit_fast_inst 
       (.D({divcnt[7:4],\r_reg[txdivreg][3] [1],divcnt[2:1],\r_reg[txdivreg][3] [0]}),
        .E(\v[txdivnorm] ),
        .\linko[started]1 (\linko[started]1 ),
        .\r[txdivnorm]_i_2 ({\r_reg[txdivreg][7] [3],\r_reg[txdivreg][7] [1:0]}),
        .\r_reg[allow_char]0 (\r_reg[allow_char]0 ),
        .\r_reg[allow_char]__0 (\r_reg[allow_char]__0 ),
        .\r_reg[allow_fct]__0 (\r_reg[allow_fct]__0 ),
        .\r_reg[pend_char]_0 (link_inst_n_17),
        .\r_reg[pend_char]__0 (\r_reg[pend_char]__0 ),
        .\r_reg[pend_data][8]_0 (\v[pend_data] ),
        .\r_reg[pend_data][8]_1 (s_txfifo_rdata),
        .\r_reg[pend_fct]_0 (\xmiti[fct_in] ),
        .\r_reg[pend_fct]__0 (\r_reg[pend_fct]__0 ),
        .\r_reg[pend_tick]_0 (\FSM_onehot_r_reg[state][3] [0]),
        .\r_reg[pend_time][7]_0 (\v[pend_time] ),
        .\r_reg[pend_time][7]_1 (\r_reg[pend_time][7] ),
        .\r_reg[sent_fct]__0 (\r_reg[sent_fct]__0 ),
        .\r_reg[tokmux]_0 (link_inst_n_47),
        .\r_reg[txdiscard]__0 (\r_reg[txdiscard]__0 ),
        .\r_reg[txdivnorm]_0 (\r_reg[txdivnorm] ),
        .\r_reg[txdivsafe]_0 (\r_reg[txdivsafe] ),
        .\r_reg[txenreg] (\r_reg[txenreg] ),
        .\r_reg[txenreg]__0_0 (link_inst_n_46),
        .\r_reg[txfifo_rvalid]__0 (\r_reg[txfifo_rvalid]__0 ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .s_tc_in(s_tc_in),
        .spw_do_OBUF(spw_do_OBUF),
        .spw_so_OBUF(spw_so_OBUF),
        .syncdff_ff2_reg(syncdff_ff2_reg),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG),
        .\xmiti[txen] (\xmiti[txen] ));
endmodule

module spwxmit_fast
   (\r_reg[txenreg] ,
    \r_reg[allow_fct]__0 ,
    \r_reg[allow_char]__0 ,
    spw_do_OBUF,
    spw_so_OBUF,
    \r_reg[sent_fct]__0 ,
    \r_reg[pend_char]__0 ,
    \r_reg[pend_fct]__0 ,
    \r_reg[txdivsafe]_0 ,
    E,
    txclk_IBUF_BUFG,
    rst_logic_IBUF,
    syncdff_ff2_reg,
    \r_reg[tokmux]_0 ,
    \linko[started]1 ,
    \r_reg[allow_char]0 ,
    \r_reg[txenreg]__0_0 ,
    \r_reg[pend_char]_0 ,
    \r_reg[txfifo_rvalid]__0 ,
    \r_reg[txdiscard]__0 ,
    \xmiti[txen] ,
    \r_reg[pend_fct]_0 ,
    \r_reg[txdivnorm]_0 ,
    \r[txdivnorm]_i_2 ,
    s_tc_in,
    \r_reg[pend_tick]_0 ,
    D,
    \r_reg[pend_data][8]_0 ,
    \r_reg[pend_data][8]_1 ,
    \r_reg[pend_time][7]_0 ,
    \r_reg[pend_time][7]_1 );
  output \r_reg[txenreg] ;
  output \r_reg[allow_fct]__0 ;
  output \r_reg[allow_char]__0 ;
  output spw_do_OBUF;
  output spw_so_OBUF;
  output \r_reg[sent_fct]__0 ;
  output \r_reg[pend_char]__0 ;
  output \r_reg[pend_fct]__0 ;
  output \r_reg[txdivsafe]_0 ;
  output [0:0]E;
  input txclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input syncdff_ff2_reg;
  input \r_reg[tokmux]_0 ;
  input \linko[started]1 ;
  input \r_reg[allow_char]0 ;
  input \r_reg[txenreg]__0_0 ;
  input \r_reg[pend_char]_0 ;
  input \r_reg[txfifo_rvalid]__0 ;
  input \r_reg[txdiscard]__0 ;
  input \xmiti[txen] ;
  input \r_reg[pend_fct]_0 ;
  input \r_reg[txdivnorm]_0 ;
  input [2:0]\r[txdivnorm]_i_2 ;
  input s_tc_in;
  input [0:0]\r_reg[pend_tick]_0 ;
  input [7:0]D;
  input [0:0]\r_reg[pend_data][8]_0 ;
  input [8:0]\r_reg[pend_data][8]_1 ;
  input [0:0]\r_reg[pend_time][7]_0 ;
  input [7:0]\r_reg[pend_time][7]_1 ;

  wire [7:0]D;
  wire [0:0]E;
  wire \linko[started]1 ;
  wire [1:0]p_0_in1_in;
  wire p_0_in29_in;
  wire [1:0]p_1_in;
  wire [1:0]p_1_in4_in;
  wire p_1_in6_in;
  wire \r[pend_char]_i_2_n_0 ;
  wire \r[token1][char][0]_i_1_n_0 ;
  wire \r[token1][char][1]_i_1_n_0 ;
  wire \r[token1][char][2]_i_1_n_0 ;
  wire \r[token1][char][3]_i_1_n_0 ;
  wire \r[token1][char][4]_i_1_n_0 ;
  wire \r[token1][char][5]_i_1_n_0 ;
  wire \r[token1][char][6]_i_1_n_0 ;
  wire \r[token1][char][7]_i_1_n_0 ;
  wire \r[token1][fctpiggy]_i_4_n_0 ;
  wire \r[txdivnorm]_i_1_n_0 ;
  wire [2:0]\r[txdivnorm]_i_2 ;
  wire \r[txdivsafe]_i_1_n_0 ;
  wire \r[txdivtmp][0]_i_1_n_0 ;
  wire \r[txdivtmp][1]_i_1_n_0 ;
  wire \r_reg[allow_char]0 ;
  wire \r_reg[allow_char]__0 ;
  wire \r_reg[allow_fct]__0 ;
  wire \r_reg[pend_char]_0 ;
  wire \r_reg[pend_char]__0 ;
  wire [0:0]\r_reg[pend_data][8]_0 ;
  wire [8:0]\r_reg[pend_data][8]_1 ;
  wire \r_reg[pend_data_n_0_][0] ;
  wire \r_reg[pend_data_n_0_][1] ;
  wire \r_reg[pend_data_n_0_][2] ;
  wire \r_reg[pend_data_n_0_][3] ;
  wire \r_reg[pend_data_n_0_][4] ;
  wire \r_reg[pend_data_n_0_][5] ;
  wire \r_reg[pend_data_n_0_][6] ;
  wire \r_reg[pend_data_n_0_][7] ;
  wire \r_reg[pend_fct]_0 ;
  wire \r_reg[pend_fct]__0 ;
  wire [0:0]\r_reg[pend_tick]_0 ;
  wire \r_reg[pend_tick]__0 ;
  wire [7:0]\r_reg[pend_time] ;
  wire [0:0]\r_reg[pend_time][7]_0 ;
  wire [7:0]\r_reg[pend_time][7]_1 ;
  wire \r_reg[sent_fct]__0 ;
  wire \r_reg[sysflip0]__0 ;
  wire \r_reg[sysflip1]__0 ;
  wire [7:0]\r_reg[token0][char] ;
  wire \r_reg[token0][fct_n_0_] ;
  wire \r_reg[token0][fctpiggy_n_0_] ;
  wire \r_reg[token0][flag_n_0_] ;
  wire \r_reg[token0][tick_n_0_] ;
  wire [7:0]\r_reg[token1][char] ;
  wire \r_reg[token1][fct_n_0_] ;
  wire \r_reg[token1][fctpiggy_n_0_] ;
  wire \r_reg[token1][flag_n_0_] ;
  wire \r_reg[token1][tick_n_0_] ;
  wire \r_reg[tokmux]_0 ;
  wire \r_reg[tokmux]__0 ;
  wire \r_reg[txdiscard]__0 ;
  wire \r_reg[txdivnorm]_0 ;
  wire \r_reg[txdivnorm]__0 ;
  wire [7:0]\r_reg[txdivreg] ;
  wire \r_reg[txdivsafe]_0 ;
  wire \r_reg[txdivsafe_n_0_] ;
  wire [1:0]\r_reg[txdivtmp] ;
  wire \r_reg[txenreg] ;
  wire \r_reg[txenreg]__0_0 ;
  wire \r_reg[txfifo_rvalid]__0 ;
  wire rst_logic_IBUF;
  wire \rtx[b_token][char][0]_i_1_n_0 ;
  wire \rtx[b_token][char][1]_i_1_n_0 ;
  wire \rtx[b_token][char][2]_i_1_n_0 ;
  wire \rtx[b_token][char][3]_i_1_n_0 ;
  wire \rtx[b_token][char][4]_i_1_n_0 ;
  wire \rtx[b_token][char][5]_i_1_n_0 ;
  wire \rtx[b_token][char][6]_i_1_n_0 ;
  wire \rtx[b_token][char][7]_i_1_n_0 ;
  wire \rtx[b_token][fct]_i_1_n_0 ;
  wire \rtx[b_token][fctpiggy]_i_1_n_0 ;
  wire \rtx[b_token][flag]_i_1_n_0 ;
  wire \rtx[b_token][tick]_i_1_n_0 ;
  wire \rtx[b_update]_i_2_n_0 ;
  wire \rtx[c_bits][0]_i_1_n_0 ;
  wire \rtx[c_bits][1]_i_1_n_0 ;
  wire \rtx[c_bits][2]_i_1_n_0 ;
  wire \rtx[c_busy]_i_1_n_0 ;
  wire \rtx[c_esc]_i_1_n_0 ;
  wire \rtx[c_fct]_i_1_n_0 ;
  wire \rtx[d_bits][1]_i_1_n_0 ;
  wire \rtx[d_bits][2]_i_1_n_0 ;
  wire \rtx[e_count][0]_i_1_n_0 ;
  wire \rtx[e_count][1]_i_1_n_0 ;
  wire \rtx[e_count][2]_i_1_n_0 ;
  wire \rtx[e_count][3]_i_1_n_0 ;
  wire \rtx[e_count][4]_i_1_n_0 ;
  wire \rtx[e_count][5]_i_1_n_0 ;
  wire \rtx[e_count][6]_i_1_n_0 ;
  wire \rtx[e_count][7]_i_1_n_0 ;
  wire \rtx[e_count][8]_i_1_n_0 ;
  wire \rtx[e_count][9]_i_1_n_0 ;
  wire \rtx[e_parity]_i_1_n_0 ;
  wire \rtx[e_shift][0]_i_1_n_0 ;
  wire \rtx[e_shift][1]_i_1_n_0 ;
  wire \rtx[e_shift][2]_i_1_n_0 ;
  wire \rtx[e_shift][3]_i_1_n_0 ;
  wire \rtx[e_shift][4]_i_1_n_0 ;
  wire \rtx[e_shift][5]_i_1_n_0 ;
  wire \rtx[e_shift][6]_i_1_n_0 ;
  wire \rtx[e_shift][7]_i_1_n_0 ;
  wire \rtx[e_shift][8]_i_1_n_0 ;
  wire \rtx[e_shift][9]_i_1_n_0 ;
  wire \rtx[e_valid]_i_1_n_0 ;
  wire \rtx[f_spwdo]_i_1_n_0 ;
  wire \rtx[txclkcnt][0]_i_1_n_0 ;
  wire \rtx[txclkcnt][1]_i_1_n_0 ;
  wire \rtx[txclkcnt][2]_i_1_n_0 ;
  wire \rtx[txclkcnt][3]_i_1_n_0 ;
  wire \rtx[txclkcnt][4]_i_1_n_0 ;
  wire \rtx[txclkcnt][5]_i_1_n_0 ;
  wire \rtx[txclkcnt][6]_i_1_n_0 ;
  wire \rtx[txclkcnt][7]_i_1_n_0 ;
  wire \rtx[txclkcy][0]_i_1_n_0 ;
  wire \rtx[txclkcy][1]_i_1_n_0 ;
  wire \rtx[txclkcy][2]_i_1_n_0 ;
  wire \rtx[txclkdone][0]_i_1_n_0 ;
  wire \rtx[txclkdone][1]_i_1_n_0 ;
  wire \rtx_reg[b_mux]__0 ;
  wire [7:0]\rtx_reg[b_token][char] ;
  wire \rtx_reg[b_token][fct]__0 ;
  wire \rtx_reg[b_token][fctpiggy]__0 ;
  wire \rtx_reg[b_token][flag_n_0_] ;
  wire \rtx_reg[b_token][tick]__0 ;
  wire \rtx_reg[b_txflip]__0 ;
  wire \rtx_reg[b_update]__0 ;
  wire \rtx_reg[b_valid]__0 ;
  wire \rtx_reg[c_bits_n_0_][0] ;
  wire \rtx_reg[c_bits_n_0_][1] ;
  wire \rtx_reg[c_bits_n_0_][2] ;
  wire \rtx_reg[c_bits_n_0_][3] ;
  wire \rtx_reg[c_bits_n_0_][4] ;
  wire \rtx_reg[c_bits_n_0_][5] ;
  wire \rtx_reg[c_bits_n_0_][6] ;
  wire \rtx_reg[c_bits_n_0_][7] ;
  wire \rtx_reg[c_bits_n_0_][8] ;
  wire \rtx_reg[c_busy]__0 ;
  wire \rtx_reg[c_esc_n_0_] ;
  wire \rtx_reg[c_fct_n_0_] ;
  wire \rtx_reg[c_update]0 ;
  wire \rtx_reg[c_update_n_0_] ;
  wire \rtx_reg[d_bits_n_0_][0] ;
  wire \rtx_reg[d_bits_n_0_][1] ;
  wire \rtx_reg[d_bits_n_0_][2] ;
  wire \rtx_reg[d_bits_n_0_][3] ;
  wire \rtx_reg[d_bits_n_0_][4] ;
  wire \rtx_reg[d_bits_n_0_][5] ;
  wire \rtx_reg[d_bits_n_0_][6] ;
  wire \rtx_reg[d_bits_n_0_][7] ;
  wire \rtx_reg[d_bits_n_0_][8] ;
  wire \rtx_reg[d_cnt10]__0 ;
  wire \rtx_reg[d_cnt4]__0 ;
  wire \rtx_reg[e_count_n_0_][0] ;
  wire \rtx_reg[e_count_n_0_][1] ;
  wire \rtx_reg[e_count_n_0_][2] ;
  wire \rtx_reg[e_count_n_0_][4] ;
  wire \rtx_reg[e_count_n_0_][5] ;
  wire \rtx_reg[e_count_n_0_][6] ;
  wire \rtx_reg[e_count_n_0_][7] ;
  wire \rtx_reg[e_count_n_0_][8] ;
  wire \rtx_reg[e_count_n_0_][9] ;
  wire \rtx_reg[e_parity]__0 ;
  wire \rtx_reg[e_shift_n_0_][0] ;
  wire \rtx_reg[e_shift_n_0_][1] ;
  wire \rtx_reg[e_shift_n_0_][2] ;
  wire \rtx_reg[e_shift_n_0_][3] ;
  wire \rtx_reg[e_shift_n_0_][4] ;
  wire \rtx_reg[e_shift_n_0_][5] ;
  wire \rtx_reg[e_shift_n_0_][6] ;
  wire \rtx_reg[e_shift_n_0_][7] ;
  wire \rtx_reg[e_shift_n_0_][8] ;
  wire \rtx_reg[e_shift_n_0_][9] ;
  wire \rtx_reg[e_valid_n_0_] ;
  wire \rtx_reg[f_spwdo]__0 ;
  wire \rtx_reg[f_spwso]__0 ;
  wire \rtx_reg[txclkcnt_n_0_][0] ;
  wire \rtx_reg[txclkcnt_n_0_][1] ;
  wire \rtx_reg[txclkcy_n_0_][0] ;
  wire \rtx_reg[txclkcy_n_0_][1] ;
  wire \rtx_reg[txclkcy_n_0_][2] ;
  wire \rtx_reg[txclkdiv_n_0_][0] ;
  wire \rtx_reg[txclkdiv_n_0_][1] ;
  wire \rtx_reg[txclkdiv_n_0_][2] ;
  wire \rtx_reg[txclkdiv_n_0_][3] ;
  wire \rtx_reg[txclkdiv_n_0_][4] ;
  wire \rtx_reg[txclkdiv_n_0_][5] ;
  wire \rtx_reg[txclkdiv_n_0_][6] ;
  wire \rtx_reg[txclkdiv_n_0_][7] ;
  wire \rtx_reg[txclkdone_n_0_][0] ;
  wire \rtx_reg[txclkdone_n_0_][1] ;
  wire \rtx_reg[txclken]0__0 ;
  wire \rtx_reg[txclken]__0 ;
  wire \rtx_reg[txclkpre]0__0 ;
  wire \rtx_reg[txclkpre]__0 ;
  wire \rtx_reg[txdivnorm_n_0_] ;
  wire \rtx_reg[txflip_n_0_0] ;
  wire \rtx_reg[txflip_n_0_1] ;
  wire \rtxin[b_txflip] ;
  wire s_tc_in;
  wire spw_do_OBUF;
  wire spw_so_OBUF;
  wire syncdff_ff2_reg;
  wire \syncsys[txflip0] ;
  wire \syncsys[txflip1] ;
  wire syncsys_txflip0_n_2;
  wire syncsys_txflip0_n_3;
  wire syncsys_txflip1_n_2;
  wire syncsys_txflip1_n_3;
  wire syncsys_txflip1_n_4;
  wire syncsys_txflip1_n_5;
  wire syncsys_txflip1_n_6;
  wire \synctx[sysflip0] ;
  wire \synctx[txdivsafe] ;
  wire \synctx[txen] ;
  wire synctx_rst_n_0;
  wire synctx_rst_n_1;
  wire synctx_sysflip0_n_1;
  wire synctx_sysflip1_n_0;
  wire synctx_sysflip1_n_1;
  wire synctx_sysflip1_n_2;
  wire synctx_txen_n_1;
  wire synctx_txen_n_2;
  wire synctx_txen_n_4;
  wire txclk_IBUF_BUFG;
  wire \v[token0][tick] ;
  wire \v[token1][tick] ;
  wire v_havetoken124_out;
  wire \v_token[fct] ;
  wire \v_token[fctpiggy] ;
  wire \v_token[flag] ;
  wire \vtx[c_bits]_rep__0_n_0 ;
  wire \vtx[c_bits]_rep__1_n_0 ;
  wire \vtx[c_bits]_rep__2_n_0 ;
  wire \vtx[c_bits]_rep__3_n_0 ;
  wire \vtx[c_bits]_rep__4_n_0 ;
  wire \vtx[c_bits]_rep_n_0 ;
  wire [0:0]\vtx[d_bits] ;
  wire \xmiti[txen] ;

  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \r[pend_char]_i_2 
       (.I0(\r_reg[pend_char]__0 ),
        .I1(\r_reg[pend_char]_0 ),
        .I2(\r_reg[txfifo_rvalid]__0 ),
        .I3(\r_reg[txdiscard]__0 ),
        .I4(\r_reg[allow_char]__0 ),
        .O(\r[pend_char]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][0]_i_1 
       (.I0(\r_reg[pend_time] [0]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][0] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][1]_i_1 
       (.I0(\r_reg[pend_time] [1]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][1] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][2]_i_1 
       (.I0(\r_reg[pend_time] [2]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][2] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][3]_i_1 
       (.I0(\r_reg[pend_time] [3]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][3] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][4]_i_1 
       (.I0(\r_reg[pend_time] [4]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][4] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][5]_i_1 
       (.I0(\r_reg[pend_time] [5]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][5] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][6]_i_1 
       (.I0(\r_reg[pend_time] [6]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][6] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB0808080)) 
    \r[token1][char][7]_i_1 
       (.I0(\r_reg[pend_time] [7]),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_char]__0 ),
        .I3(\r_reg[pend_data_n_0_][7] ),
        .I4(\r_reg[pend_char]__0 ),
        .O(\r[token1][char][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h70707000)) 
    \r[token1][fct]_i_1 
       (.I0(\r_reg[allow_char]__0 ),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[allow_fct]__0 ),
        .I3(\r_reg[pend_fct]_0 ),
        .I4(\r_reg[pend_fct]__0 ),
        .O(\v_token[fct] ));
  LUT6 #(
    .INIT(64'h00000000A8000000)) 
    \r[token1][fctpiggy]_i_2 
       (.I0(\r_reg[allow_fct]__0 ),
        .I1(\r_reg[pend_fct]_0 ),
        .I2(\r_reg[pend_fct]__0 ),
        .I3(\r_reg[allow_char]__0 ),
        .I4(\r_reg[pend_char]__0 ),
        .I5(\r_reg[pend_tick]__0 ),
        .O(\v_token[fctpiggy] ));
  LUT6 #(
    .INIT(64'h0057005700575757)) 
    \r[token1][fctpiggy]_i_4 
       (.I0(\r_reg[allow_fct]__0 ),
        .I1(\r_reg[pend_fct]_0 ),
        .I2(\r_reg[pend_fct]__0 ),
        .I3(\r_reg[allow_char]__0 ),
        .I4(\r_reg[pend_char]__0 ),
        .I5(\r_reg[pend_tick]__0 ),
        .O(\r[token1][fctpiggy]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \r[token1][flag]_i_1 
       (.I0(p_1_in6_in),
        .I1(\r_reg[allow_char]__0 ),
        .I2(\r_reg[pend_char]__0 ),
        .I3(\r_reg[pend_tick]__0 ),
        .O(\v_token[flag] ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \r[token1][tick]_i_1 
       (.I0(\r_reg[pend_tick]__0 ),
        .I1(\r_reg[allow_char]__0 ),
        .O(v_havetoken124_out));
  LUT6 #(
    .INIT(64'h0000000055550001)) 
    \r[txdivnorm]_i_1 
       (.I0(rst_logic_IBUF),
        .I1(\r_reg[txdivsafe_n_0_] ),
        .I2(\r_reg[txdivtmp] [0]),
        .I3(\r_reg[txdivtmp] [1]),
        .I4(\r_reg[txdivnorm]__0 ),
        .I5(\r_reg[txdivnorm]_0 ),
        .O(\r[txdivnorm]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r[txdivnorm]_i_3 
       (.I0(\r_reg[txdivsafe_n_0_] ),
        .I1(\r_reg[txdivtmp] [0]),
        .I2(\r_reg[txdivtmp] [1]),
        .I3(\r[txdivnorm]_i_2 [1]),
        .I4(\r[txdivnorm]_i_2 [2]),
        .I5(\r[txdivnorm]_i_2 [0]),
        .O(\r_reg[txdivsafe]_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r[txdivreg][7]_i_1 
       (.I0(\r_reg[txdivtmp] [1]),
        .I1(\r_reg[txdivtmp] [0]),
        .I2(\r_reg[txdivsafe_n_0_] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \r[txdivsafe]_i_1 
       (.I0(\r_reg[txdivtmp] [1]),
        .I1(\r_reg[txdivtmp] [0]),
        .I2(\r_reg[txdivsafe_n_0_] ),
        .O(\r[txdivsafe]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[txdivtmp][0]_i_1 
       (.I0(\r_reg[txdivtmp] [0]),
        .O(\r[txdivtmp][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h98)) 
    \r[txdivtmp][1]_i_1 
       (.I0(\r_reg[txdivtmp] [0]),
        .I1(\r_reg[txdivtmp] [1]),
        .I2(\r_reg[txdivsafe_n_0_] ),
        .O(\r[txdivtmp][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[allow_char] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[allow_char]0 ),
        .Q(\r_reg[allow_char]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[allow_fct] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\linko[started]1 ),
        .Q(\r_reg[allow_fct]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_char] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip1_n_3),
        .Q(\r_reg[pend_char]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][0] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [0]),
        .Q(\r_reg[pend_data_n_0_][0] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][1] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [1]),
        .Q(\r_reg[pend_data_n_0_][1] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][2] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [2]),
        .Q(\r_reg[pend_data_n_0_][2] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][3] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [3]),
        .Q(\r_reg[pend_data_n_0_][3] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][4] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [4]),
        .Q(\r_reg[pend_data_n_0_][4] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][5] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [5]),
        .Q(\r_reg[pend_data_n_0_][5] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][6] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [6]),
        .Q(\r_reg[pend_data_n_0_][6] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][7] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [7]),
        .Q(\r_reg[pend_data_n_0_][7] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_data][8] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_data][8]_0 ),
        .D(\r_reg[pend_data][8]_1 [8]),
        .Q(p_1_in6_in),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_fct] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip1_n_4),
        .Q(\r_reg[pend_fct]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_tick] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip1_n_2),
        .Q(\r_reg[pend_tick]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][0] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [0]),
        .Q(\r_reg[pend_time] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][1] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [1]),
        .Q(\r_reg[pend_time] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][2] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [2]),
        .Q(\r_reg[pend_time] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][3] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [3]),
        .Q(\r_reg[pend_time] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][4] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [4]),
        .Q(\r_reg[pend_time] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][5] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [5]),
        .Q(\r_reg[pend_time] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][6] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [6]),
        .Q(\r_reg[pend_time] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[pend_time][7] 
       (.C(syncdff_ff2_reg),
        .CE(\r_reg[pend_time][7]_0 ),
        .D(\r_reg[pend_time][7]_1 [7]),
        .Q(\r_reg[pend_time] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[sent_fct] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip1_n_5),
        .Q(\r_reg[sent_fct]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[sysflip0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip0_n_3),
        .Q(\r_reg[sysflip0]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[sysflip1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip1_n_6),
        .Q(\r_reg[sysflip1]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][0] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][0]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][1] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][1]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][2] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][2]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][3] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][3]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][4] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][4]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][5] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][5]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][6] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][6]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][char][7] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\r[token1][char][7]_i_1_n_0 ),
        .Q(\r_reg[token0][char] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][fct] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\v_token[fct] ),
        .Q(\r_reg[token0][fct_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][fctpiggy] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\v_token[fctpiggy] ),
        .Q(\r_reg[token0][fctpiggy_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][flag] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(\v_token[flag] ),
        .Q(\r_reg[token0][flag_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token0][tick] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token0][tick] ),
        .D(v_havetoken124_out),
        .Q(\r_reg[token0][tick_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][0] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][0]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][1] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][1]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][2] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][2]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][3] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][3]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][4] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][4]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][5] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][5]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][6] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][6]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][char][7] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\r[token1][char][7]_i_1_n_0 ),
        .Q(\r_reg[token1][char] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][fct] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\v_token[fct] ),
        .Q(\r_reg[token1][fct_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][fctpiggy] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\v_token[fctpiggy] ),
        .Q(\r_reg[token1][fctpiggy_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][flag] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(\v_token[flag] ),
        .Q(\r_reg[token1][flag_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[token1][tick] 
       (.C(syncdff_ff2_reg),
        .CE(\v[token1][tick] ),
        .D(v_havetoken124_out),
        .Q(\r_reg[token1][tick_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[tokmux] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(syncsys_txflip0_n_2),
        .Q(\r_reg[tokmux]__0 ),
        .R(\r_reg[tokmux]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivnorm] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r[txdivnorm]_i_1_n_0 ),
        .Q(\r_reg[txdivnorm]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][0] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[0]),
        .Q(\r_reg[txdivreg] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][1] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[1]),
        .Q(\r_reg[txdivreg] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][2] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[2]),
        .Q(\r_reg[txdivreg] [2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][3] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[3]),
        .Q(\r_reg[txdivreg] [3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][4] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[4]),
        .Q(\r_reg[txdivreg] [4]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][5] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[5]),
        .Q(\r_reg[txdivreg] [5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][6] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[6]),
        .Q(\r_reg[txdivreg] [6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivreg][7] 
       (.C(syncdff_ff2_reg),
        .CE(E),
        .D(D[7]),
        .Q(\r_reg[txdivreg] [7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivsafe] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r[txdivsafe]_i_1_n_0 ),
        .Q(\r_reg[txdivsafe_n_0_] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivtmp][0] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r[txdivtmp][0]_i_1_n_0 ),
        .Q(\r_reg[txdivtmp] [0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txdivtmp][1] 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r[txdivtmp][1]_i_1_n_0 ),
        .Q(\r_reg[txdivtmp] [1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[txenreg]__0 
       (.C(syncdff_ff2_reg),
        .CE(1'b1),
        .D(\r_reg[txenreg]__0_0 ),
        .Q(\r_reg[txenreg] ),
        .R(\r_reg[tokmux]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][0]_i_1 
       (.I0(\r_reg[token1][char] [0]),
        .I1(\r_reg[token0][char] [0]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][1]_i_1 
       (.I0(\r_reg[token1][char] [1]),
        .I1(\r_reg[token0][char] [1]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][2]_i_1 
       (.I0(\r_reg[token1][char] [2]),
        .I1(\r_reg[token0][char] [2]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][3]_i_1 
       (.I0(\r_reg[token1][char] [3]),
        .I1(\r_reg[token0][char] [3]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][4]_i_1 
       (.I0(\r_reg[token1][char] [4]),
        .I1(\r_reg[token0][char] [4]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][5]_i_1 
       (.I0(\r_reg[token1][char] [5]),
        .I1(\r_reg[token0][char] [5]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][6]_i_1 
       (.I0(\r_reg[token1][char] [6]),
        .I1(\r_reg[token0][char] [6]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \rtx[b_token][char][7]_i_1 
       (.I0(\r_reg[token1][char] [7]),
        .I1(\r_reg[token0][char] [7]),
        .I2(\rtx_reg[b_mux]__0 ),
        .O(\rtx[b_token][char][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[b_token][fct]_i_1 
       (.I0(\r_reg[token1][fct_n_0_] ),
        .I1(\rtx_reg[b_mux]__0 ),
        .I2(\r_reg[token0][fct_n_0_] ),
        .O(\rtx[b_token][fct]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[b_token][fctpiggy]_i_1 
       (.I0(\r_reg[token1][fctpiggy_n_0_] ),
        .I1(\rtx_reg[b_mux]__0 ),
        .I2(\r_reg[token0][fctpiggy_n_0_] ),
        .O(\rtx[b_token][fctpiggy]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[b_token][flag]_i_1 
       (.I0(\r_reg[token1][flag_n_0_] ),
        .I1(\rtx_reg[b_mux]__0 ),
        .I2(\r_reg[token0][flag_n_0_] ),
        .O(\rtx[b_token][flag]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[b_token][tick]_i_1 
       (.I0(\r_reg[token1][tick_n_0_] ),
        .I1(\rtx_reg[b_mux]__0 ),
        .I2(\r_reg[token0][tick_n_0_] ),
        .O(\rtx[b_token][tick]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[b_txflip]_i_1 
       (.I0(\rtx_reg[txflip_n_0_1] ),
        .I1(\rtx_reg[b_mux]__0 ),
        .I2(\rtx_reg[txflip_n_0_0] ),
        .O(\rtxin[b_txflip] ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rtx[b_update]_i_2 
       (.I0(\rtx_reg[e_count_n_0_][0] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[c_busy]__0 ),
        .O(\rtx[b_update]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rtx[c_bits][0]_i_1 
       (.I0(\rtx_reg[c_bits_n_0_][0] ),
        .I1(\rtx_reg[b_token][flag_n_0_] ),
        .I2(\rtx_reg[c_update_n_0_] ),
        .O(\rtx[c_bits][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \rtx[c_bits][1]_i_1 
       (.I0(\rtx_reg[c_bits_n_0_][1] ),
        .I1(\rtx_reg[b_token][char] [0]),
        .I2(\rtx_reg[c_update_n_0_] ),
        .O(\rtx[c_bits][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0CFCAAAA)) 
    \rtx[c_bits][2]_i_1 
       (.I0(\rtx_reg[c_bits_n_0_][2] ),
        .I1(\rtx_reg[b_token][char] [1]),
        .I2(\rtx_reg[b_token][flag_n_0_] ),
        .I3(\rtx_reg[b_token][char] [0]),
        .I4(\rtx_reg[c_update_n_0_] ),
        .O(\rtx[c_bits][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00FFEF00)) 
    \rtx[c_busy]_i_1 
       (.I0(\rtx_reg[b_token][fctpiggy]__0 ),
        .I1(\rtx_reg[b_token][tick]__0 ),
        .I2(\rtx_reg[b_valid]__0 ),
        .I3(\rtx_reg[c_update_n_0_] ),
        .I4(\rtx_reg[c_busy]__0 ),
        .O(\rtx[c_busy]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0FD0)) 
    \rtx[c_esc]_i_1 
       (.I0(\rtx_reg[b_valid]__0 ),
        .I1(\rtx_reg[b_token][tick]__0 ),
        .I2(\rtx_reg[c_update_n_0_] ),
        .I3(\rtx_reg[c_esc_n_0_] ),
        .O(\rtx[c_esc]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h4FFF4F00)) 
    \rtx[c_fct]_i_1 
       (.I0(\rtx_reg[c_busy]__0 ),
        .I1(\rtx_reg[b_token][fct]__0 ),
        .I2(\rtx_reg[b_valid]__0 ),
        .I3(\rtx_reg[c_update_n_0_] ),
        .I4(\rtx_reg[c_fct_n_0_] ),
        .O(\rtx[c_fct]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rtx[c_update]_i_1 
       (.I0(p_0_in29_in),
        .I1(\rtx_reg[txclken]__0 ),
        .O(\rtx_reg[c_update]0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \rtx[d_bits][1]_i_1 
       (.I0(\rtx_reg[c_fct_n_0_] ),
        .I1(\rtx_reg[c_bits_n_0_][1] ),
        .I2(\synctx[txen] ),
        .I3(\rtx_reg[c_esc_n_0_] ),
        .O(\rtx[d_bits][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'hFF4F)) 
    \rtx[d_bits][2]_i_1 
       (.I0(\rtx_reg[c_fct_n_0_] ),
        .I1(\rtx_reg[c_bits_n_0_][2] ),
        .I2(\synctx[txen] ),
        .I3(\rtx_reg[c_esc_n_0_] ),
        .O(\rtx[d_bits][2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][0]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][1] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][1]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][2] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][2]_i_1 
       (.I0(p_0_in29_in),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_count][3]_i_1 
       (.I0(\rtx_reg[d_cnt4]__0 ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_count_n_0_][4] ),
        .O(\rtx[e_count][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][4]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][5] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][5]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][6] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][6]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][7] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][7]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][8] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \rtx[e_count][8]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][9] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .O(\rtx[e_count][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtx[e_count][9]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][0] ),
        .I1(\rtx_reg[d_cnt10]__0 ),
        .O(\rtx[e_count][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \rtx[e_parity]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][0] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][1] ),
        .I3(\rtx_reg[e_parity]__0 ),
        .O(\rtx[e_parity]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'h9F90)) 
    \rtx[e_shift][0]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][0] ),
        .I1(\rtx_reg[e_parity]__0 ),
        .I2(\rtx_reg[e_count_n_0_][0] ),
        .I3(\rtx_reg[e_shift_n_0_][1] ),
        .O(\rtx[e_shift][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][1]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][0] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][2] ),
        .O(\rtx[e_shift][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][2]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][1] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][3] ),
        .O(\rtx[e_shift][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][3]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][2] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][4] ),
        .O(\rtx[e_shift][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][4]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][3] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][5] ),
        .O(\rtx[e_shift][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][5]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][4] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][6] ),
        .O(\rtx[e_shift][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][6]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][5] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][7] ),
        .O(\rtx[e_shift][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][7]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][6] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][8] ),
        .O(\rtx[e_shift][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rtx[e_shift][8]_i_1 
       (.I0(\rtx_reg[d_bits_n_0_][7] ),
        .I1(\rtx_reg[e_count_n_0_][0] ),
        .I2(\rtx_reg[e_shift_n_0_][9] ),
        .O(\rtx[e_shift][8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rtx[e_shift][9]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][0] ),
        .I1(\rtx_reg[d_bits_n_0_][8] ),
        .O(\rtx[e_shift][9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \rtx[e_valid]_i_1 
       (.I0(\rtx_reg[e_count_n_0_][0] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[e_valid_n_0_] ),
        .O(\rtx[e_valid]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FF8800)) 
    \rtx[f_spwdo]_i_1 
       (.I0(\rtx_reg[e_shift_n_0_][0] ),
        .I1(\rtx_reg[e_valid_n_0_] ),
        .I2(\rtx_reg[f_spwso]__0 ),
        .I3(\rtx_reg[txclken]__0 ),
        .I4(\rtx_reg[f_spwdo]__0 ),
        .O(\rtx[f_spwdo]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \rtx[txclkcnt][0]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][0] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[txclkcnt_n_0_][0] ),
        .O(\rtx[txclkcnt][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \rtx[txclkcnt][1]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][1] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[txclkcnt_n_0_][0] ),
        .I3(\rtx_reg[txclkcnt_n_0_][1] ),
        .O(\rtx[txclkcnt][1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \rtx[txclkcnt][2]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][2] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(p_0_in1_in[0]),
        .I3(\rtx_reg[txclkcy_n_0_][0] ),
        .O(\rtx[txclkcnt][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B88B8)) 
    \rtx[txclkcnt][3]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][3] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[txclkcy_n_0_][0] ),
        .I3(p_0_in1_in[0]),
        .I4(p_0_in1_in[1]),
        .O(\rtx[txclkcnt][3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \rtx[txclkcnt][4]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][4] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(p_1_in[0]),
        .I3(\rtx_reg[txclkcy_n_0_][1] ),
        .O(\rtx[txclkcnt][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B88B8)) 
    \rtx[txclkcnt][5]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][5] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[txclkcy_n_0_][1] ),
        .I3(p_1_in[0]),
        .I4(p_1_in[1]),
        .O(\rtx[txclkcnt][5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \rtx[txclkcnt][6]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][6] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(p_1_in4_in[0]),
        .I3(\rtx_reg[txclkcy_n_0_][2] ),
        .O(\rtx[txclkcnt][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B88B8)) 
    \rtx[txclkcnt][7]_i_1 
       (.I0(\rtx_reg[txclkdiv_n_0_][7] ),
        .I1(\rtx_reg[txclken]__0 ),
        .I2(\rtx_reg[txclkcy_n_0_][2] ),
        .I3(p_1_in4_in[0]),
        .I4(p_1_in4_in[1]),
        .O(\rtx[txclkcnt][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \rtx[txclkcy][0]_i_1 
       (.I0(\rtx_reg[txclkcnt_n_0_][0] ),
        .I1(\rtx_reg[txclkcnt_n_0_][1] ),
        .O(\rtx[txclkcy][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rtx[txclkcy][1]_i_1 
       (.I0(\rtx_reg[txclkcy_n_0_][0] ),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[0]),
        .O(\rtx[txclkcy][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \rtx[txclkcy][2]_i_1 
       (.I0(\rtx_reg[txclkcy_n_0_][1] ),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .O(\rtx[txclkcy][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \rtx[txclkdone][0]_i_1 
       (.I0(\rtx_reg[txclkcnt_n_0_][1] ),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[1]),
        .I3(\rtx_reg[txclkcnt_n_0_][0] ),
        .O(\rtx[txclkdone][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rtx[txclkdone][1]_i_1 
       (.I0(p_1_in4_in[1]),
        .I1(p_1_in4_in[0]),
        .I2(p_1_in[0]),
        .I3(p_1_in[1]),
        .O(\rtx[txclkdone][1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_mux] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_sysflip1_n_1),
        .Q(\rtx_reg[b_mux]__0 ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][0]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][1]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][2]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][3]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][4]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][5]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][6]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][char][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][char][7]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][char] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][fct] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][fct]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][fct]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][fctpiggy] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][fctpiggy]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][fctpiggy]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][flag] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][flag]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][flag_n_0_] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_token][tick] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[b_update]__0 ),
        .D(\rtx[b_token][tick]_i_1_n_0 ),
        .Q(\rtx_reg[b_token][tick]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_txflip] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtxin[b_txflip] ),
        .Q(\rtx_reg[b_txflip]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_update] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[b_update]_i_2_n_0 ),
        .Q(\rtx_reg[b_update]__0 ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[b_valid] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_sysflip1_n_2),
        .Q(\rtx_reg[b_valid]__0 ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[c_bits][0]_i_1_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[c_bits][1]_i_1_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[c_bits][2]_i_1_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[c_update_n_0_] ),
        .D(\vtx[c_bits]_rep__4_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[c_update_n_0_] ),
        .D(\vtx[c_bits]_rep__3_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[c_update_n_0_] ),
        .D(\vtx[c_bits]_rep__2_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[c_update_n_0_] ),
        .D(\vtx[c_bits]_rep__1_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[c_update_n_0_] ),
        .D(\vtx[c_bits]_rep__0_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_bits][8] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[c_update_n_0_] ),
        .D(\vtx[c_bits]_rep_n_0 ),
        .Q(\rtx_reg[c_bits_n_0_][8] ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \rtx_reg[c_busy] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[c_busy]_i_1_n_0 ),
        .Q(\rtx_reg[c_busy]__0 ),
        .S(synctx_txen_n_4));
  FDSE #(
    .INIT(1'b1)) 
    \rtx_reg[c_esc] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[c_esc]_i_1_n_0 ),
        .Q(\rtx_reg[c_esc_n_0_] ),
        .S(synctx_txen_n_4));
  FDSE #(
    .INIT(1'b1)) 
    \rtx_reg[c_fct] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[c_fct]_i_1_n_0 ),
        .Q(\rtx_reg[c_fct_n_0_] ),
        .S(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[c_update] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_update]0 ),
        .Q(\rtx_reg[c_update_n_0_] ),
        .R(synctx_txen_n_4));
  FDSE #(
    .INIT(1'b1)) 
    \rtx_reg[d_bits][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][0] ),
        .Q(\rtx_reg[d_bits_n_0_][0] ),
        .S(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[d_bits][1]_i_1_n_0 ),
        .Q(\rtx_reg[d_bits_n_0_][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[d_bits][2]_i_1_n_0 ),
        .Q(\rtx_reg[d_bits_n_0_][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][3] ),
        .Q(\rtx_reg[d_bits_n_0_][3] ),
        .R(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][4] ),
        .Q(\rtx_reg[d_bits_n_0_][4] ),
        .R(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][5] ),
        .Q(\rtx_reg[d_bits_n_0_][5] ),
        .R(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][6] ),
        .Q(\rtx_reg[d_bits_n_0_][6] ),
        .R(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][7] ),
        .Q(\rtx_reg[d_bits_n_0_][7] ),
        .R(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_bits][8] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[c_bits_n_0_][8] ),
        .Q(\rtx_reg[d_bits_n_0_][8] ),
        .R(\vtx[d_bits] ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_cnt10] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_txen_n_1),
        .Q(\rtx_reg[d_cnt10]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[d_cnt4] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_txen_n_2),
        .Q(\rtx_reg[d_cnt4]__0 ),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \rtx_reg[e_count][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][0]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][0] ),
        .S(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][1]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][1] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][2]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][2] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][3]_i_1_n_0 ),
        .Q(p_0_in29_in),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][4]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][4] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][5]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][5] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][6]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][6] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][7]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][7] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][8] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][8]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][8] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_count][9] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_count][9]_i_1_n_0 ),
        .Q(\rtx_reg[e_count_n_0_][9] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_parity] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_parity]_i_1_n_0 ),
        .Q(\rtx_reg[e_parity]__0 ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][0]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][1]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][2]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][3]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][4]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][5]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][6]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][7]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][8] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][8]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_shift][9] 
       (.C(txclk_IBUF_BUFG),
        .CE(\rtx_reg[txclken]__0 ),
        .D(\rtx[e_shift][9]_i_1_n_0 ),
        .Q(\rtx_reg[e_shift_n_0_][9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[e_valid] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[e_valid]_i_1_n_0 ),
        .Q(\rtx_reg[e_valid_n_0_] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[f_spwdo] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[f_spwdo]_i_1_n_0 ),
        .Q(\rtx_reg[f_spwdo]__0 ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[f_spwso] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_rst_n_0),
        .Q(\rtx_reg[f_spwso]__0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][0]_i_1_n_0 ),
        .Q(\rtx_reg[txclkcnt_n_0_][0] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][1]_i_1_n_0 ),
        .Q(\rtx_reg[txclkcnt_n_0_][1] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][2]_i_1_n_0 ),
        .Q(p_0_in1_in[0]),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][3]_i_1_n_0 ),
        .Q(p_0_in1_in[1]),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][4]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][5]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][6]_i_1_n_0 ),
        .Q(p_1_in4_in[0]),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcnt][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcnt][7]_i_1_n_0 ),
        .Q(p_1_in4_in[1]),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcy][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcy][0]_i_1_n_0 ),
        .Q(\rtx_reg[txclkcy_n_0_][0] ),
        .R(\rtx_reg[txclken]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcy][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcy][1]_i_1_n_0 ),
        .Q(\rtx_reg[txclkcy_n_0_][1] ),
        .R(\rtx_reg[txclken]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkcy][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkcy][2]_i_1_n_0 ),
        .Q(\rtx_reg[txclkcy_n_0_][2] ),
        .R(\rtx_reg[txclken]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [0]),
        .Q(\rtx_reg[txclkdiv_n_0_][0] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [1]),
        .Q(\rtx_reg[txclkdiv_n_0_][1] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][2] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [2]),
        .Q(\rtx_reg[txclkdiv_n_0_][2] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][3] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [3]),
        .Q(\rtx_reg[txclkdiv_n_0_][3] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][4] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [4]),
        .Q(\rtx_reg[txclkdiv_n_0_][4] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][5] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [5]),
        .Q(\rtx_reg[txclkdiv_n_0_][5] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][6] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [6]),
        .Q(\rtx_reg[txclkdiv_n_0_][6] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdiv][7] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivreg] [7]),
        .Q(\rtx_reg[txclkdiv_n_0_][7] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdone][0] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkdone][0]_i_1_n_0 ),
        .Q(\rtx_reg[txclkdone_n_0_][0] ),
        .R(\rtx_reg[txclken]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclkdone][1] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx[txclkdone][1]_i_1_n_0 ),
        .Q(\rtx_reg[txclkdone_n_0_][1] ),
        .R(\rtx_reg[txclken]__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txclken] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[txclken]0__0 ),
        .Q(\rtx_reg[txclken]__0 ),
        .R(synctx_rst_n_1));
  LUT3 #(
    .INIT(8'hF8)) 
    \rtx_reg[txclken]0 
       (.I0(\rtx_reg[txclkdone_n_0_][1] ),
        .I1(\rtx_reg[txclkdone_n_0_][0] ),
        .I2(\rtx_reg[txclkpre]__0 ),
        .O(\rtx_reg[txclken]0__0 ));
  FDSE #(
    .INIT(1'b1)) 
    \rtx_reg[txclkpre] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[txclkpre]0__0 ),
        .Q(\rtx_reg[txclkpre]__0 ),
        .S(synctx_rst_n_1));
  LUT3 #(
    .INIT(8'h07)) 
    \rtx_reg[txclkpre]0 
       (.I0(\rtx_reg[txclkdiv_n_0_][0] ),
        .I1(\rtx_reg[txclkpre]__0 ),
        .I2(\rtx_reg[txdivnorm_n_0_] ),
        .O(\rtx_reg[txclkpre]0__0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txdivnorm] 
       (.C(txclk_IBUF_BUFG),
        .CE(\synctx[txdivsafe] ),
        .D(\r_reg[txdivnorm]__0 ),
        .Q(\rtx_reg[txdivnorm_n_0_] ),
        .R(synctx_rst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txflip0] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_sysflip0_n_1),
        .Q(\rtx_reg[txflip_n_0_0] ),
        .R(synctx_txen_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \rtx_reg[txflip1] 
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(synctx_sysflip1_n_0),
        .Q(\rtx_reg[txflip_n_0_1] ),
        .R(synctx_txen_n_4));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_spwdo_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[f_spwdo]__0 ),
        .Q(spw_do_OBUF),
        .R(1'b0));
  (* IOB = "TRUE" *) 
  FDRE #(
    .INIT(1'b0)) 
    s_spwso_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .D(\rtx_reg[f_spwso]__0 ),
        .Q(spw_so_OBUF),
        .R(1'b0));
  syncdff syncsys_txflip0
       (.E(\v[token0][tick] ),
        .out(\syncsys[txflip0] ),
        .\r_reg[sysflip0]__0 (\r_reg[sysflip0]__0 ),
        .\r_reg[sysflip1]__0 (\r_reg[sysflip1]__0 ),
        .\r_reg[tokmux] (syncsys_txflip0_n_2),
        .\r_reg[tokmux]_0 (syncsys_txflip0_n_3),
        .\r_reg[tokmux]_1 (\r[token1][fctpiggy]_i_4_n_0 ),
        .\r_reg[tokmux]_2 (\syncsys[txflip1] ),
        .\r_reg[tokmux]__0 (\r_reg[tokmux]__0 ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .syncdff_ff1_reg_0(\rtx_reg[txflip_n_0_0] ),
        .syncdff_ff2_reg_0(syncdff_ff2_reg),
        .\xmiti[txen] (\xmiti[txen] ));
  syncdff_1 syncsys_txflip1
       (.E(\v[token1][tick] ),
        .out(\syncsys[txflip1] ),
        .\r_reg[allow_fct] (syncsys_txflip1_n_5),
        .\r_reg[pend_char] (\r_reg[allow_char]__0 ),
        .\r_reg[pend_char]_0 (\r[pend_char]_i_2_n_0 ),
        .\r_reg[pend_char]_1 (\r_reg[pend_char]__0 ),
        .\r_reg[pend_fct] (syncsys_txflip1_n_4),
        .\r_reg[pend_fct]_0 (\r_reg[pend_fct]_0 ),
        .\r_reg[pend_fct]_1 (\r_reg[tokmux]_0 ),
        .\r_reg[pend_tick] (syncsys_txflip1_n_3),
        .\r_reg[pend_tick]_0 (\r_reg[pend_tick]_0 ),
        .\r_reg[pend_tick]__0 (\r_reg[pend_tick]__0 ),
        .\r_reg[sent_fct] (\syncsys[txflip0] ),
        .\r_reg[sent_fct]_0 (\r_reg[pend_fct]__0 ),
        .\r_reg[sent_fct]_1 (\r_reg[allow_fct]__0 ),
        .\r_reg[sent_fct]__0 (\r_reg[sent_fct]__0 ),
        .\r_reg[sysflip0]__0 (\r_reg[sysflip0]__0 ),
        .\r_reg[sysflip1]__0 (\r_reg[sysflip1]__0 ),
        .\r_reg[token1][char][7] (\r[token1][fctpiggy]_i_4_n_0 ),
        .\r_reg[tokmux] (syncsys_txflip1_n_6),
        .\r_reg[tokmux]__0 (\r_reg[tokmux]__0 ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .s_tc_in(s_tc_in),
        .s_tc_in_reg(syncsys_txflip1_n_2),
        .syncdff_ff1_reg_0(\rtx_reg[txflip_n_0_1] ),
        .syncdff_ff2_reg_0(syncdff_ff2_reg),
        .v_havetoken124_out(v_havetoken124_out),
        .\xmiti[txen] (\xmiti[txen] ));
  syncdff_2 synctx_rst
       (.Q(\rtx_reg[e_shift_n_0_][0] ),
        .SR(synctx_rst_n_1),
        .rst_logic_IBUF(rst_logic_IBUF),
        .\rtx_reg[f_spwdo]__0 (\rtx_reg[f_spwdo]__0 ),
        .\rtx_reg[f_spwso] (synctx_rst_n_0),
        .\rtx_reg[f_spwso]_0 (\rtx_reg[e_valid_n_0_] ),
        .\rtx_reg[f_spwso]__0 (\rtx_reg[f_spwso]__0 ),
        .\rtx_reg[txclken]__0 (\rtx_reg[txclken]__0 ),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG));
  syncdff_3 synctx_sysflip0
       (.out(\synctx[sysflip0] ),
        .\r_reg[sysflip0]__0 (\r_reg[sysflip0]__0 ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .\rtx_reg[b_mux]__0 (\rtx_reg[b_mux]__0 ),
        .\rtx_reg[b_update]__0 (\rtx_reg[b_update]__0 ),
        .\rtx_reg[txflip0] (\rtx_reg[txflip_n_0_0] ),
        .syncdff_ff2_reg_0(synctx_sysflip0_n_1),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG));
  syncdff_4 synctx_sysflip1
       (.out(\synctx[sysflip0] ),
        .\r_reg[sysflip1]__0 (\r_reg[sysflip1]__0 ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .\rtx_reg[b_mux]__0 (\rtx_reg[b_mux]__0 ),
        .\rtx_reg[b_txflip]__0 (\rtx_reg[b_txflip]__0 ),
        .\rtx_reg[b_update]__0 (\rtx_reg[b_update]__0 ),
        .\rtx_reg[b_valid]__0 (\rtx_reg[b_valid]__0 ),
        .\rtx_reg[txflip1] (\rtx_reg[txflip_n_0_1] ),
        .syncdff_ff2_reg_0(synctx_sysflip1_n_0),
        .syncdff_ff2_reg_1(synctx_sysflip1_n_1),
        .syncdff_ff2_reg_2(synctx_sysflip1_n_2),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG));
  syncdff_5 synctx_txdivsafe
       (.E(\synctx[txdivsafe] ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .syncdff_ff1_reg_0(\r_reg[txdivsafe_n_0_] ),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG));
  syncdff_6 synctx_txen
       (.SR(\vtx[d_bits] ),
        .out(\synctx[txen] ),
        .\r_reg[txenreg] (\r_reg[txenreg] ),
        .rst_logic_IBUF(rst_logic_IBUF),
        .\rtx_reg[c_bits][0] (synctx_txen_n_1),
        .\rtx_reg[c_bits][0]_0 (synctx_txen_n_2),
        .\rtx_reg[d_cnt10] (\rtx_reg[c_bits_n_0_][0] ),
        .\rtx_reg[d_cnt10]_0 (\rtx_reg[c_esc_n_0_] ),
        .\rtx_reg[d_cnt10]_1 (\rtx_reg[c_fct_n_0_] ),
        .syncdff_ff2_reg_0(synctx_txen_n_4),
        .txclk_IBUF_BUFG(txclk_IBUF_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vtx[c_bits]_rep 
       (.I0(\rtx_reg[b_token][flag_n_0_] ),
        .I1(\rtx_reg[b_token][char] [7]),
        .O(\vtx[c_bits]_rep_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vtx[c_bits]_rep__0 
       (.I0(\rtx_reg[b_token][flag_n_0_] ),
        .I1(\rtx_reg[b_token][char] [6]),
        .O(\vtx[c_bits]_rep__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vtx[c_bits]_rep__1 
       (.I0(\rtx_reg[b_token][flag_n_0_] ),
        .I1(\rtx_reg[b_token][char] [5]),
        .O(\vtx[c_bits]_rep__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vtx[c_bits]_rep__2 
       (.I0(\rtx_reg[b_token][flag_n_0_] ),
        .I1(\rtx_reg[b_token][char] [4]),
        .O(\vtx[c_bits]_rep__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vtx[c_bits]_rep__3 
       (.I0(\rtx_reg[b_token][flag_n_0_] ),
        .I1(\rtx_reg[b_token][char] [3]),
        .O(\vtx[c_bits]_rep__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \vtx[c_bits]_rep__4 
       (.I0(\rtx_reg[b_token][flag_n_0_] ),
        .I1(\rtx_reg[b_token][char] [2]),
        .O(\vtx[c_bits]_rep__4_n_0 ));
endmodule

module syncdff
   (out,
    E,
    \r_reg[tokmux] ,
    \r_reg[tokmux]_0 ,
    syncdff_ff1_reg_0,
    syncdff_ff2_reg_0,
    rst_logic_IBUF,
    \xmiti[txen] ,
    \r_reg[tokmux]_1 ,
    \r_reg[tokmux]__0 ,
    \r_reg[sysflip0]__0 ,
    \r_reg[tokmux]_2 ,
    \r_reg[sysflip1]__0 );
  output out;
  output [0:0]E;
  output \r_reg[tokmux] ;
  output \r_reg[tokmux]_0 ;
  input syncdff_ff1_reg_0;
  input syncdff_ff2_reg_0;
  input rst_logic_IBUF;
  input \xmiti[txen] ;
  input \r_reg[tokmux]_1 ;
  input \r_reg[tokmux]__0 ;
  input \r_reg[sysflip0]__0 ;
  input \r_reg[tokmux]_2 ;
  input \r_reg[sysflip1]__0 ;

  wire [0:0]E;
  wire \r_reg[sysflip0]__0 ;
  wire \r_reg[sysflip1]__0 ;
  wire \r_reg[tokmux] ;
  wire \r_reg[tokmux]_0 ;
  wire \r_reg[tokmux]_1 ;
  wire \r_reg[tokmux]_2 ;
  wire \r_reg[tokmux]__0 ;
  wire rst_logic_IBUF;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire syncdff_ff2_reg_0;
  wire \xmiti[txen] ;

  assign out = syncdff_ff2;
  LUT4 #(
    .INIT(16'hEF01)) 
    \r[sysflip0]_i_1 
       (.I0(\r_reg[tokmux]_1 ),
        .I1(\r_reg[tokmux]__0 ),
        .I2(syncdff_ff2),
        .I3(\r_reg[sysflip0]__0 ),
        .O(\r_reg[tokmux]_0 ));
  LUT5 #(
    .INIT(32'h02000002)) 
    \r[token0][fctpiggy]_i_1 
       (.I0(\xmiti[txen] ),
        .I1(\r_reg[tokmux]_1 ),
        .I2(\r_reg[tokmux]__0 ),
        .I3(syncdff_ff2),
        .I4(\r_reg[sysflip0]__0 ),
        .O(E));
  LUT6 #(
    .INIT(64'hAAAAAAAA41EBEB41)) 
    \r[tokmux]_i_1 
       (.I0(\r_reg[tokmux]__0 ),
        .I1(syncdff_ff2),
        .I2(\r_reg[sysflip0]__0 ),
        .I3(\r_reg[tokmux]_2 ),
        .I4(\r_reg[sysflip1]__0 ),
        .I5(\r_reg[tokmux]_1 ),
        .O(\r_reg[tokmux] ));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff2_reg_0),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1_reg_0),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff2_reg_0),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_1
   (out,
    E,
    s_tc_in_reg,
    \r_reg[pend_tick] ,
    \r_reg[pend_fct] ,
    \r_reg[allow_fct] ,
    \r_reg[tokmux] ,
    syncdff_ff1_reg_0,
    syncdff_ff2_reg_0,
    rst_logic_IBUF,
    \xmiti[txen] ,
    \r_reg[token1][char][7] ,
    \r_reg[tokmux]__0 ,
    \r_reg[sysflip1]__0 ,
    \r_reg[sysflip0]__0 ,
    \r_reg[sent_fct] ,
    s_tc_in,
    \r_reg[pend_tick]_0 ,
    \r_reg[pend_tick]__0 ,
    \r_reg[pend_char] ,
    \r_reg[pend_char]_0 ,
    \r_reg[pend_char]_1 ,
    v_havetoken124_out,
    \r_reg[sent_fct]_0 ,
    \r_reg[pend_fct]_0 ,
    \r_reg[sent_fct]_1 ,
    \r_reg[pend_fct]_1 ,
    \r_reg[sent_fct]__0 );
  output out;
  output [0:0]E;
  output s_tc_in_reg;
  output \r_reg[pend_tick] ;
  output \r_reg[pend_fct] ;
  output \r_reg[allow_fct] ;
  output \r_reg[tokmux] ;
  input syncdff_ff1_reg_0;
  input syncdff_ff2_reg_0;
  input rst_logic_IBUF;
  input \xmiti[txen] ;
  input \r_reg[token1][char][7] ;
  input \r_reg[tokmux]__0 ;
  input \r_reg[sysflip1]__0 ;
  input \r_reg[sysflip0]__0 ;
  input \r_reg[sent_fct] ;
  input s_tc_in;
  input [0:0]\r_reg[pend_tick]_0 ;
  input \r_reg[pend_tick]__0 ;
  input \r_reg[pend_char] ;
  input \r_reg[pend_char]_0 ;
  input \r_reg[pend_char]_1 ;
  input v_havetoken124_out;
  input \r_reg[sent_fct]_0 ;
  input \r_reg[pend_fct]_0 ;
  input \r_reg[sent_fct]_1 ;
  input \r_reg[pend_fct]_1 ;
  input \r_reg[sent_fct]__0 ;

  wire [0:0]E;
  wire \r[pend_tick]_i_2_n_0 ;
  wire \r_reg[allow_fct] ;
  wire \r_reg[pend_char] ;
  wire \r_reg[pend_char]_0 ;
  wire \r_reg[pend_char]_1 ;
  wire \r_reg[pend_fct] ;
  wire \r_reg[pend_fct]_0 ;
  wire \r_reg[pend_fct]_1 ;
  wire \r_reg[pend_tick] ;
  wire [0:0]\r_reg[pend_tick]_0 ;
  wire \r_reg[pend_tick]__0 ;
  wire \r_reg[sent_fct] ;
  wire \r_reg[sent_fct]_0 ;
  wire \r_reg[sent_fct]_1 ;
  wire \r_reg[sent_fct]__0 ;
  wire \r_reg[sysflip0]__0 ;
  wire \r_reg[sysflip1]__0 ;
  wire \r_reg[token1][char][7] ;
  wire \r_reg[tokmux] ;
  wire \r_reg[tokmux]__0 ;
  wire rst_logic_IBUF;
  wire s_tc_in;
  wire s_tc_in_reg;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire syncdff_ff2_reg_0;
  wire v_havetoken124_out;
  wire \xmiti[txen] ;

  assign out = syncdff_ff2;
  LUT5 #(
    .INIT(32'hF5F5D5F5)) 
    \r[pend_char]_i_1 
       (.I0(\r_reg[pend_char]_0 ),
        .I1(\r_reg[pend_tick]__0 ),
        .I2(\r_reg[pend_char]_1 ),
        .I3(\r_reg[pend_char] ),
        .I4(\r[pend_tick]_i_2_n_0 ),
        .O(\r_reg[pend_tick] ));
  LUT6 #(
    .INIT(64'h00000000EEE0F0F0)) 
    \r[pend_fct]_i_1 
       (.I0(\r[pend_tick]_i_2_n_0 ),
        .I1(v_havetoken124_out),
        .I2(\r_reg[sent_fct]_0 ),
        .I3(\r_reg[pend_fct]_0 ),
        .I4(\r_reg[sent_fct]_1 ),
        .I5(\r_reg[pend_fct]_1 ),
        .O(\r_reg[pend_fct] ));
  LUT5 #(
    .INIT(32'hF888FF88)) 
    \r[pend_tick]_i_1 
       (.I0(s_tc_in),
        .I1(\r_reg[pend_tick]_0 ),
        .I2(\r[pend_tick]_i_2_n_0 ),
        .I3(\r_reg[pend_tick]__0 ),
        .I4(\r_reg[pend_char] ),
        .O(s_tc_in_reg));
  LUT5 #(
    .INIT(32'h66660FF0)) 
    \r[pend_tick]_i_2 
       (.I0(\r_reg[sysflip1]__0 ),
        .I1(syncdff_ff2),
        .I2(\r_reg[sysflip0]__0 ),
        .I3(\r_reg[sent_fct] ),
        .I4(\r_reg[tokmux]__0 ),
        .O(\r[pend_tick]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10101000)) 
    \r[sent_fct]_i_1 
       (.I0(\r[pend_tick]_i_2_n_0 ),
        .I1(v_havetoken124_out),
        .I2(\r_reg[sent_fct]_1 ),
        .I3(\r_reg[pend_fct]_0 ),
        .I4(\r_reg[sent_fct]_0 ),
        .I5(\r_reg[sent_fct]__0 ),
        .O(\r_reg[allow_fct] ));
  LUT4 #(
    .INIT(16'hBF04)) 
    \r[sysflip1]_i_1 
       (.I0(\r_reg[token1][char][7] ),
        .I1(\r_reg[tokmux]__0 ),
        .I2(syncdff_ff2),
        .I3(\r_reg[sysflip1]__0 ),
        .O(\r_reg[tokmux] ));
  LUT5 #(
    .INIT(32'h20000020)) 
    \r[token1][fctpiggy]_i_1 
       (.I0(\xmiti[txen] ),
        .I1(\r_reg[token1][char][7] ),
        .I2(\r_reg[tokmux]__0 ),
        .I3(syncdff_ff2),
        .I4(\r_reg[sysflip1]__0 ),
        .O(E));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff2_reg_0),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1_reg_0),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff2_reg_0),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_10
   (D,
    \rrx_reg[bitcnt] ,
    syncdff_ff1_reg_0,
    \r_reg[rxdis]__0 );
  output [0:0]D;
  input [0:0]\rrx_reg[bitcnt] ;
  input syncdff_ff1_reg_0;
  input \r_reg[rxdis]__0 ;

  wire \r_reg[rxdis]__0 ;
  wire [0:0]\rrx_reg[bitcnt] ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;

  assign D[0] = syncdff_ff2;
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(\rrx_reg[bitcnt] ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_11
   (out,
    syncdff_ff1_reg_0,
    syncdff_ff1_reg_1,
    \r_reg[rxdis]__0 );
  output out;
  input syncdff_ff1_reg_0;
  input syncdff_ff1_reg_1;
  input \r_reg[rxdis]__0 ;

  wire \r_reg[rxdis]__0 ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  wire syncdff_ff1_reg_1;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;

  assign out = syncdff_ff2;
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff1_reg_1),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1_reg_0),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff1_reg_1),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_12
   (\r_reg[tailptr]_1_sp_1 ,
    \r_reg[inbvalid] ,
    di,
    syncdff_ff1_reg_0,
    \r_reg[rxdis]__0 ,
    \r_reg[tailptr] );
  output \r_reg[tailptr]_1_sp_1 ;
  input [1:0]\r_reg[inbvalid] ;
  input di;
  input syncdff_ff1_reg_0;
  input \r_reg[rxdis]__0 ;
  input [2:0]\r_reg[tailptr] ;

  wire di;
  wire [1:0]\r_reg[inbvalid] ;
  wire \r_reg[rxdis]__0 ;
  wire [2:0]\r_reg[tailptr] ;
  wire \r_reg[tailptr]_1_sn_1 ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;

  assign \r_reg[tailptr]_1_sp_1  = \r_reg[tailptr]_1_sn_1 ;
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r[inbvalid]_i_2 
       (.I0(\r_reg[tailptr] [1]),
        .I1(syncdff_ff2),
        .I2(\r_reg[tailptr] [2]),
        .I3(\r_reg[inbvalid] [1]),
        .I4(\r_reg[inbvalid] [0]),
        .I5(\r_reg[tailptr] [0]),
        .O(\r_reg[tailptr]_1_sn_1 ));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(di),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_13
   (out,
    \rrx_reg[headptr] ,
    syncdff_ff1_reg_0,
    \r_reg[rxdis]__0 );
  output out;
  input [0:0]\rrx_reg[headptr] ;
  input syncdff_ff1_reg_0;
  input \r_reg[rxdis]__0 ;

  wire \r_reg[rxdis]__0 ;
  wire [0:0]\rrx_reg[headptr] ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;

  assign out = syncdff_ff2;
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(\rrx_reg[headptr] ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_2
   (\rtx_reg[f_spwso] ,
    SR,
    txclk_IBUF_BUFG,
    rst_logic_IBUF,
    \rtx_reg[f_spwso]__0 ,
    Q,
    \rtx_reg[f_spwdo]__0 ,
    \rtx_reg[txclken]__0 ,
    \rtx_reg[f_spwso]_0 );
  output \rtx_reg[f_spwso] ;
  output [0:0]SR;
  input txclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input \rtx_reg[f_spwso]__0 ;
  input [0:0]Q;
  input \rtx_reg[f_spwdo]__0 ;
  input \rtx_reg[txclken]__0 ;
  input \rtx_reg[f_spwso]_0 ;

  wire [0:0]Q;
  wire [0:0]SR;
  wire rst_logic_IBUF;
  wire \rtx_reg[f_spwdo]__0 ;
  wire \rtx_reg[f_spwso] ;
  wire \rtx_reg[f_spwso]_0 ;
  wire \rtx_reg[f_spwso]__0 ;
  wire \rtx_reg[txclken]__0 ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire txclk_IBUF_BUFG;

  LUT6 #(
    .INIT(64'h6900AA000000AA00)) 
    \rtx[f_spwso]_i_1 
       (.I0(\rtx_reg[f_spwso]__0 ),
        .I1(Q),
        .I2(\rtx_reg[f_spwdo]__0 ),
        .I3(syncdff_ff2),
        .I4(\rtx_reg[txclken]__0 ),
        .I5(\rtx_reg[f_spwso]_0 ),
        .O(\rtx_reg[f_spwso] ));
  LUT1 #(
    .INIT(2'h1)) 
    \rtx[txclken]_i_1 
       (.I0(syncdff_ff2),
        .O(SR));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(1'b1),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_3
   (out,
    syncdff_ff2_reg_0,
    \r_reg[sysflip0]__0 ,
    txclk_IBUF_BUFG,
    rst_logic_IBUF,
    \rtx_reg[b_update]__0 ,
    \rtx_reg[b_mux]__0 ,
    \rtx_reg[txflip0] );
  output out;
  output syncdff_ff2_reg_0;
  input \r_reg[sysflip0]__0 ;
  input txclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input \rtx_reg[b_update]__0 ;
  input \rtx_reg[b_mux]__0 ;
  input \rtx_reg[txflip0] ;

  wire \r_reg[sysflip0]__0 ;
  wire rst_logic_IBUF;
  wire \rtx_reg[b_mux]__0 ;
  wire \rtx_reg[b_update]__0 ;
  wire \rtx_reg[txflip0] ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire syncdff_ff2_reg_0;
  wire txclk_IBUF_BUFG;

  assign out = syncdff_ff2;
  LUT4 #(
    .INIT(16'hFB08)) 
    \rtx[txflip0]_i_1 
       (.I0(syncdff_ff2),
        .I1(\rtx_reg[b_update]__0 ),
        .I2(\rtx_reg[b_mux]__0 ),
        .I3(\rtx_reg[txflip0] ),
        .O(syncdff_ff2_reg_0));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(\r_reg[sysflip0]__0 ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_4
   (syncdff_ff2_reg_0,
    syncdff_ff2_reg_1,
    syncdff_ff2_reg_2,
    \r_reg[sysflip1]__0 ,
    txclk_IBUF_BUFG,
    rst_logic_IBUF,
    \rtx_reg[b_update]__0 ,
    \rtx_reg[b_mux]__0 ,
    \rtx_reg[txflip1] ,
    \rtx_reg[b_txflip]__0 ,
    out,
    \rtx_reg[b_valid]__0 );
  output syncdff_ff2_reg_0;
  output syncdff_ff2_reg_1;
  output syncdff_ff2_reg_2;
  input \r_reg[sysflip1]__0 ;
  input txclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input \rtx_reg[b_update]__0 ;
  input \rtx_reg[b_mux]__0 ;
  input \rtx_reg[txflip1] ;
  input \rtx_reg[b_txflip]__0 ;
  input out;
  input \rtx_reg[b_valid]__0 ;

  wire out;
  wire \r_reg[sysflip1]__0 ;
  wire rst_logic_IBUF;
  wire \rtx_reg[b_mux]__0 ;
  wire \rtx_reg[b_txflip]__0 ;
  wire \rtx_reg[b_update]__0 ;
  wire \rtx_reg[b_valid]__0 ;
  wire \rtx_reg[txflip1] ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire syncdff_ff2_reg_0;
  wire syncdff_ff2_reg_1;
  wire syncdff_ff2_reg_2;
  wire txclk_IBUF_BUFG;

  LUT5 #(
    .INIT(32'h99FF3C00)) 
    \rtx[b_mux]_i_1 
       (.I0(syncdff_ff2),
        .I1(\rtx_reg[b_txflip]__0 ),
        .I2(out),
        .I3(\rtx_reg[b_update]__0 ),
        .I4(\rtx_reg[b_mux]__0 ),
        .O(syncdff_ff2_reg_1));
  LUT6 #(
    .INIT(64'h4B78FFFF4B780000)) 
    \rtx[b_valid]_i_1 
       (.I0(syncdff_ff2),
        .I1(\rtx_reg[b_mux]__0 ),
        .I2(\rtx_reg[b_txflip]__0 ),
        .I3(out),
        .I4(\rtx_reg[b_update]__0 ),
        .I5(\rtx_reg[b_valid]__0 ),
        .O(syncdff_ff2_reg_2));
  LUT4 #(
    .INIT(16'hBF80)) 
    \rtx[txflip1]_i_1 
       (.I0(syncdff_ff2),
        .I1(\rtx_reg[b_update]__0 ),
        .I2(\rtx_reg[b_mux]__0 ),
        .I3(\rtx_reg[txflip1] ),
        .O(syncdff_ff2_reg_0));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(\r_reg[sysflip1]__0 ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_5
   (E,
    syncdff_ff1_reg_0,
    txclk_IBUF_BUFG,
    rst_logic_IBUF);
  output [0:0]E;
  input syncdff_ff1_reg_0;
  input txclk_IBUF_BUFG;
  input rst_logic_IBUF;

  wire rst_logic_IBUF;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire txclk_IBUF_BUFG;

  assign E[0] = syncdff_ff2;
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1_reg_0),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_6
   (out,
    \rtx_reg[c_bits][0] ,
    \rtx_reg[c_bits][0]_0 ,
    SR,
    syncdff_ff2_reg_0,
    \r_reg[txenreg] ,
    txclk_IBUF_BUFG,
    rst_logic_IBUF,
    \rtx_reg[d_cnt10] ,
    \rtx_reg[d_cnt10]_0 ,
    \rtx_reg[d_cnt10]_1 );
  output out;
  output \rtx_reg[c_bits][0] ;
  output \rtx_reg[c_bits][0]_0 ;
  output [0:0]SR;
  output [0:0]syncdff_ff2_reg_0;
  input \r_reg[txenreg] ;
  input txclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input \rtx_reg[d_cnt10] ;
  input \rtx_reg[d_cnt10]_0 ;
  input \rtx_reg[d_cnt10]_1 ;

  wire [0:0]SR;
  wire \r_reg[txenreg] ;
  wire rst_logic_IBUF;
  wire \rtx_reg[c_bits][0] ;
  wire \rtx_reg[c_bits][0]_0 ;
  wire \rtx_reg[d_cnt10] ;
  wire \rtx_reg[d_cnt10]_0 ;
  wire \rtx_reg[d_cnt10]_1 ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire [0:0]syncdff_ff2_reg_0;
  wire txclk_IBUF_BUFG;

  assign out = syncdff_ff2;
  LUT1 #(
    .INIT(2'h1)) 
    \rtx[b_update]_i_1 
       (.I0(syncdff_ff2),
        .O(syncdff_ff2_reg_0));
  LUT3 #(
    .INIT(8'hFD)) 
    \rtx[d_bits][8]_i_1 
       (.I0(syncdff_ff2),
        .I1(\rtx_reg[d_cnt10]_1 ),
        .I2(\rtx_reg[d_cnt10]_0 ),
        .O(SR));
  LUT4 #(
    .INIT(16'h0100)) 
    \rtx[d_cnt10]_i_1 
       (.I0(\rtx_reg[d_cnt10] ),
        .I1(\rtx_reg[d_cnt10]_0 ),
        .I2(\rtx_reg[d_cnt10]_1 ),
        .I3(syncdff_ff2),
        .O(\rtx_reg[c_bits][0] ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \rtx[d_cnt4]_i_1 
       (.I0(\rtx_reg[d_cnt10] ),
        .I1(\rtx_reg[d_cnt10]_0 ),
        .I2(\rtx_reg[d_cnt10]_1 ),
        .I3(syncdff_ff2),
        .O(\rtx_reg[c_bits][0]_0 ));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(\r_reg[txenreg] ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(txclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_logic_IBUF),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_7
   (syncdff_ff2_reg_0,
    rxclk_IBUF_BUFG,
    \r_reg[rxdis]__0 );
  output syncdff_ff2_reg_0;
  input rxclk_IBUF_BUFG;
  input \r_reg[rxdis]__0 ;

  wire \r_reg[rxdis]__0 ;
  wire rxclk_IBUF_BUFG;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;
  wire syncdff_ff2_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    \rrx[c_val][1]_i_1 
       (.I0(syncdff_ff2),
        .O(syncdff_ff2_reg_0));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(1'b1),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(rxclk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_8
   (D,
    \rrx_reg[bitcnt] ,
    syncdff_ff1_reg_0,
    \r_reg[rxdis]__0 );
  output [0:0]D;
  input [0:0]\rrx_reg[bitcnt] ;
  input syncdff_ff1_reg_0;
  input \r_reg[rxdis]__0 ;

  wire \r_reg[rxdis]__0 ;
  wire [0:0]\rrx_reg[bitcnt] ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;

  assign D[0] = syncdff_ff2;
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(\rrx_reg[bitcnt] ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

(* ORIG_REF_NAME = "syncdff" *) 
module syncdff_9
   (D,
    \r_reg[bitcntp][1] ,
    \rrx_reg[bitcnt] ,
    syncdff_ff1_reg_0,
    \r_reg[rxdis]__0 ,
    Q,
    \r_reg[inact]__0 );
  output [0:0]D;
  output \r_reg[bitcntp][1] ;
  input [0:0]\rrx_reg[bitcnt] ;
  input syncdff_ff1_reg_0;
  input \r_reg[rxdis]__0 ;
  input [2:0]Q;
  input [1:0]\r_reg[inact]__0 ;

  wire [2:0]Q;
  wire \r_reg[bitcntp][1] ;
  wire [1:0]\r_reg[inact]__0 ;
  wire \r_reg[rxdis]__0 ;
  wire [0:0]\rrx_reg[bitcnt] ;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff1;
  wire syncdff_ff1_reg_0;
  (* RTL_KEEP = "soft" *) (* shift_extract = "NO" *) wire syncdff_ff2;

  assign D[0] = syncdff_ff2;
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \r[inact]_i_2 
       (.I0(Q[1]),
        .I1(syncdff_ff2),
        .I2(Q[2]),
        .I3(\r_reg[inact]__0 [1]),
        .I4(\r_reg[inact]__0 [0]),
        .I5(Q[0]),
        .O(\r_reg[bitcntp][1] ));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff1_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(\rrx_reg[bitcnt] ),
        .Q(syncdff_ff1));
  (* KEEP = "yes" *) 
  (* RLOC = "X0Y0" *) 
  (* shift_extract = "NO" *) 
  FDCE #(
    .INIT(1'b0)) 
    syncdff_ff2_reg
       (.C(syncdff_ff1_reg_0),
        .CE(1'b1),
        .CLR(\r_reg[rxdis]__0 ),
        .D(syncdff_ff1),
        .Q(syncdff_ff2));
endmodule

module unimacro_FIFO_DUALCLOCK_MACRO
   (WRCOUNT,
    E,
    D,
    DI,
    S,
    \bl.fifo_18_inst_bl.fifo_18_bl_0 ,
    \calc_0.v_reg[10] ,
    \bl.fifo_18_inst_bl.fifo_18_bl_1 ,
    \bl.fifo_18_inst_bl.fifo_18_bl_2 ,
    \bl.fifo_18_inst_bl.fifo_18_bl_3 ,
    \calc_0.v_reg[10]_0 ,
    \r_reg[rxfifo_rvalid] ,
    \calc_0.v_reg[3] ,
    \calc_0.v_reg[7] ,
    s01_axi_rx_aclk_IBUF_BUFG,
    rst_logic_IBUF,
    CLK,
    \bl.fifo_18_inst_bl.fifo_18_bl_4 ,
    Q,
    L,
    \bl.fifo_18_inst_bl.fifo_18_bl_5 ,
    s01_axi_rx_rready_IBUF,
    \calc_0.v_reg[10]_1 ,
    \calc_0.v_reg[4] ,
    \calc_0.v_reg[5] ,
    \calc_0.v_reg[6] ,
    \calc_0.v_reg[10]_2 ,
    s_fifo_wren_reg,
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ,
    s_rxvalid);
  output [1:0]WRCOUNT;
  output [0:0]E;
  output [10:0]D;
  output [3:0]DI;
  output [3:0]S;
  output [1:0]\bl.fifo_18_inst_bl.fifo_18_bl_0 ;
  output [1:0]\calc_0.v_reg[10] ;
  output \bl.fifo_18_inst_bl.fifo_18_bl_1 ;
  output [7:0]\bl.fifo_18_inst_bl.fifo_18_bl_2 ;
  output [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_3 ;
  output [2:0]\calc_0.v_reg[10]_0 ;
  output \r_reg[rxfifo_rvalid] ;
  output [2:0]\calc_0.v_reg[3] ;
  output [3:0]\calc_0.v_reg[7] ;
  input s01_axi_rx_aclk_IBUF_BUFG;
  input rst_logic_IBUF;
  input CLK;
  input \bl.fifo_18_inst_bl.fifo_18_bl_4 ;
  input [8:0]Q;
  input L;
  input \bl.fifo_18_inst_bl.fifo_18_bl_5 ;
  input s01_axi_rx_rready_IBUF;
  input [10:0]\calc_0.v_reg[10]_1 ;
  input \calc_0.v_reg[4] ;
  input \calc_0.v_reg[5] ;
  input \calc_0.v_reg[6] ;
  input \calc_0.v_reg[10]_2 ;
  input s_fifo_wren_reg;
  input [8:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ;
  input s_rxvalid;

  wire [8:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ;
  wire CLK;
  wire [10:0]D;
  wire [3:0]DI;
  wire [3:1]DOP;
  wire [0:0]E;
  wire L;
  wire [8:0]Q;
  wire [3:0]S;
  wire [1:0]WRCOUNT;
  wire [1:0]\bl.fifo_18_inst_bl.fifo_18_bl_0 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_1 ;
  wire [7:0]\bl.fifo_18_inst_bl.fifo_18_bl_2 ;
  wire [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_3 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_4 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_5 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_i_1__0_n_0 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_0 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_1 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_10 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_11 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_12 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_13 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_14 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_15 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_16 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_17 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_18 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_19 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_2 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_20 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_21 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_22 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_23 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_24 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_25 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_26 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_27 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_3 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_30 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_31 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_32 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_33 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_34 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_35 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_36 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_37 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_38 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_39 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_4 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_40 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_41 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_42 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_43 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_44 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_45 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_46 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_47 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_48 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_49 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_5 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_50 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_51 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_52 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_53 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_54 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_55 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_56 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_57 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_58 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_59 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_6 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_60 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_61 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_65 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_7 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_8 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_9 ;
  wire [1:0]\calc_0.v_reg[10] ;
  wire [2:0]\calc_0.v_reg[10]_0 ;
  wire [10:0]\calc_0.v_reg[10]_1 ;
  wire \calc_0.v_reg[10]_2 ;
  wire [2:0]\calc_0.v_reg[3] ;
  wire \calc_0.v_reg[4] ;
  wire \calc_0.v_reg[5] ;
  wire \calc_0.v_reg[6] ;
  wire [3:0]\calc_0.v_reg[7] ;
  wire \r_reg[rxfifo_rvalid] ;
  wire rst_logic_IBUF;
  wire s01_axi_rx_aclk_IBUF_BUFG;
  wire s01_axi_rx_rready_IBUF;
  wire s_fifo_wren_reg;
  wire s_rxvalid;

  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_61 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [0]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_60 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [1]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [1]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_59 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [2]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_58 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [3]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_57 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [4]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_56 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [5]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [5]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_55 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [6]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_54 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [7]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_2 [7]));
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1__0 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_65 ),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [8]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_3 ));
  (* box_type = "PRIMITIVE" *) 
  FIFO18E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0100),
    .ALMOST_FULL_OFFSET(13'h06FF),
    .DATA_WIDTH(9),
    .DO_REG(1),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO18"),
    .FIRST_WORD_FALL_THROUGH("TRUE"),
    .INIT(36'h000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(36'h000000000)) 
    \bl.fifo_18_inst_bl.fifo_18_bl 
       (.ALMOSTEMPTY(\bl.fifo_18_inst_bl.fifo_18_bl_n_0 ),
        .ALMOSTFULL(\bl.fifo_18_inst_bl.fifo_18_bl_n_1 ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[7:0]}),
        .DIP({1'b0,1'b0,1'b0,Q[8]}),
        .DO({\bl.fifo_18_inst_bl.fifo_18_bl_n_30 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_31 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_32 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_33 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_34 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_35 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_36 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_37 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_38 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_39 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_40 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_41 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_42 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_43 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_44 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_45 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_46 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_47 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_48 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_49 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_50 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_51 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_52 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_53 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_54 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_55 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_56 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_57 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_58 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_59 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_60 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_61 }),
        .DOP({DOP,\bl.fifo_18_inst_bl.fifo_18_bl_n_65 }),
        .EMPTY(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .FULL(\bl.fifo_18_inst_bl.fifo_18_bl_n_3 ),
        .RDCLK(s01_axi_rx_aclk_IBUF_BUFG),
        .RDCOUNT({\bl.fifo_18_inst_bl.fifo_18_bl_n_6 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_7 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_8 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_9 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_10 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_11 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_12 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_13 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_14 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_15 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_16 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_17 }),
        .RDEN(\bl.fifo_18_inst_bl.fifo_18_bl_i_1__0_n_0 ),
        .RDERR(\bl.fifo_18_inst_bl.fifo_18_bl_n_4 ),
        .REGCE(1'b1),
        .RST(rst_logic_IBUF),
        .RSTREG(1'b1),
        .WRCLK(CLK),
        .WRCOUNT({\bl.fifo_18_inst_bl.fifo_18_bl_n_18 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_19 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_20 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_21 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_22 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_23 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_24 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_25 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_26 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_27 ,WRCOUNT}),
        .WREN(\bl.fifo_18_inst_bl.fifo_18_bl_4 ),
        .WRERR(\bl.fifo_18_inst_bl.fifo_18_bl_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \bl.fifo_18_inst_bl.fifo_18_bl_i_1__0 
       (.I0(s01_axi_rx_rready_IBUF),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_5 ),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .I3(L),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \calc_0.v[0]_i_1 
       (.I0(WRCOUNT[0]),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hABAAAAAA)) 
    \calc_0.v[10]_i_1 
       (.I0(rst_logic_IBUF),
        .I1(L),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .I3(\bl.fifo_18_inst_bl.fifo_18_bl_5 ),
        .I4(s01_axi_rx_rready_IBUF),
        .O(E));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \calc_0.v[10]_i_2 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_19 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [10]),
        .I3(\calc_0.v_reg[10]_1 [9]),
        .I4(\calc_0.v_reg[10]_2 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8BB8)) 
    \calc_0.v[1]_i_1 
       (.I0(WRCOUNT[1]),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [1]),
        .I3(\calc_0.v_reg[10]_1 [0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h8BB8B8B8)) 
    \calc_0.v[2]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_27 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [2]),
        .I3(\calc_0.v_reg[10]_1 [0]),
        .I4(\calc_0.v_reg[10]_1 [1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \calc_0.v[3]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_26 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [3]),
        .I3(\calc_0.v_reg[10]_1 [2]),
        .I4(\calc_0.v_reg[10]_1 [1]),
        .I5(\calc_0.v_reg[10]_1 [0]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \calc_0.v[4]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_25 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [4]),
        .I3(\calc_0.v_reg[4] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \calc_0.v[5]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_24 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [5]),
        .I3(\calc_0.v_reg[5] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hB88B)) 
    \calc_0.v[6]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_23 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [6]),
        .I3(\calc_0.v_reg[6] ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hB8B88BB8)) 
    \calc_0.v[7]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_22 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [7]),
        .I3(\calc_0.v_reg[10]_1 [6]),
        .I4(\calc_0.v_reg[6] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hB8B88BB8B8B8B8B8)) 
    \calc_0.v[8]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_21 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [8]),
        .I3(\calc_0.v_reg[10]_1 [7]),
        .I4(\calc_0.v_reg[6] ),
        .I5(\calc_0.v_reg[10]_1 [6]),
        .O(D[8]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \calc_0.v[9]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_20 ),
        .I1(rst_logic_IBUF),
        .I2(\calc_0.v_reg[10]_1 [9]),
        .I3(\calc_0.v_reg[10]_2 ),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h2)) 
    elements1_carry__0_i_1
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_19 ),
        .I1(\calc_0.v_reg[10]_1 [10]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_0 [1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    elements1_carry__0_i_2
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_20 ),
        .I1(\calc_0.v_reg[10]_1 [9]),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_21 ),
        .I3(\calc_0.v_reg[10]_1 [8]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    elements1_carry__0_i_3
       (.I0(\calc_0.v_reg[10]_1 [10]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_19 ),
        .O(\calc_0.v_reg[10] [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    elements1_carry__0_i_4
       (.I0(\calc_0.v_reg[10]_1 [9]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_20 ),
        .I2(\calc_0.v_reg[10]_1 [8]),
        .I3(\bl.fifo_18_inst_bl.fifo_18_bl_n_21 ),
        .O(\calc_0.v_reg[10] [0]));
  LUT4 #(
    .INIT(16'h22B2)) 
    elements1_carry_i_1
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_22 ),
        .I1(\calc_0.v_reg[10]_1 [7]),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_23 ),
        .I3(\calc_0.v_reg[10]_1 [6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    elements1_carry_i_2
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_24 ),
        .I1(\calc_0.v_reg[10]_1 [5]),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_25 ),
        .I3(\calc_0.v_reg[10]_1 [4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    elements1_carry_i_3
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_26 ),
        .I1(\calc_0.v_reg[10]_1 [3]),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_27 ),
        .I3(\calc_0.v_reg[10]_1 [2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    elements1_carry_i_4
       (.I0(WRCOUNT[1]),
        .I1(\calc_0.v_reg[10]_1 [1]),
        .I2(WRCOUNT[0]),
        .I3(\calc_0.v_reg[10]_1 [0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    elements1_carry_i_5
       (.I0(\calc_0.v_reg[10]_1 [7]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_22 ),
        .I2(\calc_0.v_reg[10]_1 [6]),
        .I3(\bl.fifo_18_inst_bl.fifo_18_bl_n_23 ),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    elements1_carry_i_6
       (.I0(\calc_0.v_reg[10]_1 [5]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_24 ),
        .I2(\calc_0.v_reg[10]_1 [4]),
        .I3(\bl.fifo_18_inst_bl.fifo_18_bl_n_25 ),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    elements1_carry_i_7
       (.I0(\calc_0.v_reg[10]_1 [3]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_26 ),
        .I2(\calc_0.v_reg[10]_1 [2]),
        .I3(\bl.fifo_18_inst_bl.fifo_18_bl_n_27 ),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    elements1_carry_i_8
       (.I0(\calc_0.v_reg[10]_1 [1]),
        .I1(WRCOUNT[1]),
        .I2(WRCOUNT[0]),
        .I3(\calc_0.v_reg[10]_1 [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__0_i_5
       (.I0(\calc_0.v_reg[10]_1 [7]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_22 ),
        .O(\calc_0.v_reg[7] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__0_i_6
       (.I0(\calc_0.v_reg[10]_1 [6]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_23 ),
        .O(\calc_0.v_reg[7] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__0_i_7
       (.I0(\calc_0.v_reg[10]_1 [5]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_24 ),
        .O(\calc_0.v_reg[7] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__0_i_8
       (.I0(\calc_0.v_reg[10]_1 [4]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_25 ),
        .O(\calc_0.v_reg[7] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__1_i_3
       (.I0(\calc_0.v_reg[10]_1 [10]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_19 ),
        .O(\calc_0.v_reg[10]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__1_i_4
       (.I0(\calc_0.v_reg[10]_1 [9]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_20 ),
        .O(\calc_0.v_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry__1_i_5
       (.I0(\calc_0.v_reg[10]_1 [8]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_21 ),
        .O(\calc_0.v_reg[10]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry_i_3
       (.I0(\calc_0.v_reg[10]_1 [3]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_26 ),
        .O(\calc_0.v_reg[3] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry_i_4
       (.I0(\calc_0.v_reg[10]_1 [2]),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_27 ),
        .O(\calc_0.v_reg[3] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    p_1_out0_carry_i_5
       (.I0(\calc_0.v_reg[10]_1 [1]),
        .I1(WRCOUNT[1]),
        .O(\calc_0.v_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    rxread_i_1
       (.I0(s_rxvalid),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_n_3 ),
        .I2(s_fifo_wren_reg),
        .O(\r_reg[rxfifo_rvalid] ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00D0)) 
    s_fifo_wren_i_1__0
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_3 ),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_4 ),
        .I2(s_fifo_wren_reg),
        .I3(rst_logic_IBUF),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_1 ));
endmodule

(* ORIG_REF_NAME = "unimacro_FIFO_DUALCLOCK_MACRO" *) 
module unimacro_FIFO_DUALCLOCK_MACRO_14
   (D,
    DOP,
    SR,
    \s_rdcounter_reg[10] ,
    \s_wrcounter_reg[10] ,
    \bl.fifo_18_inst_bl.fifo_18_bl_0 ,
    spwwrapperstate_reg,
    E,
    \bl.fifo_18_inst_bl.fifo_18_bl_1 ,
    CLK,
    \bl.fifo_18_inst_bl.fifo_18_bl_2 ,
    s00_axi_tx_aclk_IBUF_BUFG,
    \bl.fifo_18_inst_bl.fifo_18_bl_3 ,
    Q,
    \bl.fifo_18_inst_bl.fifo_18_bl_4 ,
    s00_axi_tx_aresetn_IBUF,
    \s_rdcounter_reg[10]_0 ,
    \s_rdcounter_reg[4] ,
    \s_rdcounter_reg[5] ,
    \s_rdcounter_reg[6] ,
    \s_rdcounter_reg[9] ,
    \s_wrcounter_reg[10]_0 ,
    \s_wrcounter_reg[4] ,
    \s_wrcounter_reg[5] ,
    \s_wrcounter_reg[6] ,
    \s_wrcounter_reg[10]_1 ,
    spwwrapperstate,
    spwwrapperstate_reg_0,
    \s_wrcounter_reg[10]_2 ,
    s00_axi_tx_wvalid_IBUF,
    \s_wrcounter_reg[10]_3 );
  output [7:0]D;
  output [0:0]DOP;
  output [0:0]SR;
  output [10:0]\s_rdcounter_reg[10] ;
  output [10:0]\s_wrcounter_reg[10] ;
  output \bl.fifo_18_inst_bl.fifo_18_bl_0 ;
  output spwwrapperstate_reg;
  output [0:0]E;
  output [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_1 ;
  input CLK;
  input \bl.fifo_18_inst_bl.fifo_18_bl_2 ;
  input s00_axi_tx_aclk_IBUF_BUFG;
  input \bl.fifo_18_inst_bl.fifo_18_bl_3 ;
  input [7:0]Q;
  input [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_4 ;
  input s00_axi_tx_aresetn_IBUF;
  input [10:0]\s_rdcounter_reg[10]_0 ;
  input \s_rdcounter_reg[4] ;
  input \s_rdcounter_reg[5] ;
  input \s_rdcounter_reg[6] ;
  input \s_rdcounter_reg[9] ;
  input [10:0]\s_wrcounter_reg[10]_0 ;
  input \s_wrcounter_reg[4] ;
  input \s_wrcounter_reg[5] ;
  input \s_wrcounter_reg[6] ;
  input \s_wrcounter_reg[10]_1 ;
  input spwwrapperstate;
  input spwwrapperstate_reg_0;
  input \s_wrcounter_reg[10]_2 ;
  input s00_axi_tx_wvalid_IBUF;
  input \s_wrcounter_reg[10]_3 ;

  wire CLK;
  wire [7:0]D;
  wire [0:0]DOP;
  wire [3:1]DOP_0;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_0 ;
  wire [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_1 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_2 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_3 ;
  wire [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_4 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_0 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_1 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_10 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_11 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_12 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_13 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_14 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_15 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_16 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_17 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_18 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_2 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_3 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_30 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_31 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_32 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_33 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_34 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_35 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_36 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_37 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_38 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_39 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_4 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_40 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_41 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_42 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_43 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_44 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_45 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_46 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_47 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_48 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_49 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_5 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_50 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_51 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_52 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_53 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_6 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_7 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_8 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_9 ;
  wire s00_axi_tx_aclk_IBUF_BUFG;
  wire s00_axi_tx_aresetn_IBUF;
  wire s00_axi_tx_wvalid_IBUF;
  wire [10:0]s_fifo_wrcount;
  wire [10:0]\s_rdcounter_reg[10] ;
  wire [10:0]\s_rdcounter_reg[10]_0 ;
  wire \s_rdcounter_reg[4] ;
  wire \s_rdcounter_reg[5] ;
  wire \s_rdcounter_reg[6] ;
  wire \s_rdcounter_reg[9] ;
  wire [10:0]\s_wrcounter_reg[10] ;
  wire [10:0]\s_wrcounter_reg[10]_0 ;
  wire \s_wrcounter_reg[10]_1 ;
  wire \s_wrcounter_reg[10]_2 ;
  wire \s_wrcounter_reg[10]_3 ;
  wire \s_wrcounter_reg[4] ;
  wire \s_wrcounter_reg[5] ;
  wire \s_wrcounter_reg[6] ;
  wire spwwrapperstate;
  wire spwwrapperstate_reg;
  wire spwwrapperstate_reg_0;

  (* box_type = "PRIMITIVE" *) 
  FIFO18E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0100),
    .ALMOST_FULL_OFFSET(13'h06FF),
    .DATA_WIDTH(9),
    .DO_REG(1),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO18"),
    .FIRST_WORD_FALL_THROUGH("TRUE"),
    .INIT(36'h000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(36'h000000000)) 
    \bl.fifo_18_inst_bl.fifo_18_bl 
       (.ALMOSTEMPTY(\bl.fifo_18_inst_bl.fifo_18_bl_n_0 ),
        .ALMOSTFULL(\bl.fifo_18_inst_bl.fifo_18_bl_n_1 ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q}),
        .DIP({1'b0,1'b0,1'b0,\bl.fifo_18_inst_bl.fifo_18_bl_4 }),
        .DO({\bl.fifo_18_inst_bl.fifo_18_bl_n_30 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_31 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_32 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_33 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_34 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_35 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_36 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_37 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_38 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_39 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_40 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_41 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_42 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_43 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_44 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_45 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_46 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_47 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_48 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_49 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_50 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_51 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_52 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_53 ,D}),
        .DOP({DOP_0,DOP}),
        .EMPTY(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .FULL(\bl.fifo_18_inst_bl.fifo_18_bl_n_3 ),
        .RDCLK(CLK),
        .RDCOUNT({\bl.fifo_18_inst_bl.fifo_18_bl_n_6 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_7 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_8 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_9 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_10 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_11 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_12 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_13 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_14 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_15 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_16 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_17 }),
        .RDEN(\bl.fifo_18_inst_bl.fifo_18_bl_2 ),
        .RDERR(\bl.fifo_18_inst_bl.fifo_18_bl_n_4 ),
        .REGCE(1'b1),
        .RST(SR),
        .RSTREG(1'b1),
        .WRCLK(s00_axi_tx_aclk_IBUF_BUFG),
        .WRCOUNT({\bl.fifo_18_inst_bl.fifo_18_bl_n_18 ,s_fifo_wrcount}),
        .WREN(\bl.fifo_18_inst_bl.fifo_18_bl_3 ),
        .WRERR(\bl.fifo_18_inst_bl.fifo_18_bl_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bl.fifo_18_inst_bl.fifo_18_bl_i_1 
       (.I0(s00_axi_tx_aresetn_IBUF),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    s_fifo_rden_i_1
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .I1(\bl.fifo_18_inst_bl.fifo_18_bl_2 ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(spwwrapperstate),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \s_rdcounter[0]_i_1 
       (.I0(s_fifo_wrcount[0]),
        .I1(\s_rdcounter_reg[10]_0 [0]),
        .I2(s00_axi_tx_aresetn_IBUF),
        .O(\s_rdcounter_reg[10] [0]));
  LUT3 #(
    .INIT(8'h4F)) 
    \s_rdcounter[10]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .I1(spwwrapperstate),
        .I2(s00_axi_tx_aresetn_IBUF),
        .O(E));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \s_rdcounter[10]_i_2 
       (.I0(\s_rdcounter_reg[10]_0 [10]),
        .I1(\s_rdcounter_reg[9] ),
        .I2(\s_rdcounter_reg[10]_0 [9]),
        .I3(s00_axi_tx_aresetn_IBUF),
        .I4(s_fifo_wrcount[10]),
        .O(\s_rdcounter_reg[10] [10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \s_rdcounter[1]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [1]),
        .I1(\s_rdcounter_reg[10]_0 [0]),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[1]),
        .O(\s_rdcounter_reg[10] [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \s_rdcounter[2]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [2]),
        .I1(\s_rdcounter_reg[10]_0 [1]),
        .I2(\s_rdcounter_reg[10]_0 [0]),
        .I3(s00_axi_tx_aresetn_IBUF),
        .I4(s_fifo_wrcount[2]),
        .O(\s_rdcounter_reg[10] [2]));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \s_rdcounter[3]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [3]),
        .I1(\s_rdcounter_reg[10]_0 [0]),
        .I2(\s_rdcounter_reg[10]_0 [1]),
        .I3(\s_rdcounter_reg[10]_0 [2]),
        .I4(s00_axi_tx_aresetn_IBUF),
        .I5(s_fifo_wrcount[3]),
        .O(\s_rdcounter_reg[10] [3]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_rdcounter[4]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [4]),
        .I1(\s_rdcounter_reg[4] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[4]),
        .O(\s_rdcounter_reg[10] [4]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_rdcounter[5]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [5]),
        .I1(\s_rdcounter_reg[5] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[5]),
        .O(\s_rdcounter_reg[10] [5]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_rdcounter[6]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [6]),
        .I1(\s_rdcounter_reg[6] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[6]),
        .O(\s_rdcounter_reg[10] [6]));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \s_rdcounter[7]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [7]),
        .I1(\s_rdcounter_reg[6] ),
        .I2(\s_rdcounter_reg[10]_0 [6]),
        .I3(s00_axi_tx_aresetn_IBUF),
        .I4(s_fifo_wrcount[7]),
        .O(\s_rdcounter_reg[10] [7]));
  LUT6 #(
    .INIT(64'hDF20FFFFDF200000)) 
    \s_rdcounter[8]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [6]),
        .I1(\s_rdcounter_reg[6] ),
        .I2(\s_rdcounter_reg[10]_0 [7]),
        .I3(\s_rdcounter_reg[10]_0 [8]),
        .I4(s00_axi_tx_aresetn_IBUF),
        .I5(s_fifo_wrcount[8]),
        .O(\s_rdcounter_reg[10] [8]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \s_rdcounter[9]_i_1 
       (.I0(\s_rdcounter_reg[10]_0 [9]),
        .I1(\s_rdcounter_reg[9] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[9]),
        .O(\s_rdcounter_reg[10] [9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    \s_wrcounter[0]_i_1 
       (.I0(s_fifo_wrcount[0]),
        .I1(\s_wrcounter_reg[10]_0 [0]),
        .I2(s00_axi_tx_aresetn_IBUF),
        .O(\s_wrcounter_reg[10] [0]));
  LUT5 #(
    .INIT(32'h0040FFFF)) 
    \s_wrcounter[10]_i_1 
       (.I0(\bl.fifo_18_inst_bl.fifo_18_bl_n_3 ),
        .I1(\s_wrcounter_reg[10]_2 ),
        .I2(s00_axi_tx_wvalid_IBUF),
        .I3(\s_wrcounter_reg[10]_3 ),
        .I4(s00_axi_tx_aresetn_IBUF),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_1 ));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \s_wrcounter[10]_i_2 
       (.I0(\s_wrcounter_reg[10]_0 [10]),
        .I1(\s_wrcounter_reg[10]_0 [9]),
        .I2(\s_wrcounter_reg[10]_1 ),
        .I3(s00_axi_tx_aresetn_IBUF),
        .I4(s_fifo_wrcount[10]),
        .O(\s_wrcounter_reg[10] [10]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \s_wrcounter[1]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [1]),
        .I1(\s_wrcounter_reg[10]_0 [0]),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[1]),
        .O(\s_wrcounter_reg[10] [1]));
  LUT5 #(
    .INIT(32'h6AFF6A00)) 
    \s_wrcounter[2]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [2]),
        .I1(\s_wrcounter_reg[10]_0 [0]),
        .I2(\s_wrcounter_reg[10]_0 [1]),
        .I3(s00_axi_tx_aresetn_IBUF),
        .I4(s_fifo_wrcount[2]),
        .O(\s_wrcounter_reg[10] [2]));
  LUT6 #(
    .INIT(64'h6AAAFFFF6AAA0000)) 
    \s_wrcounter[3]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [3]),
        .I1(\s_wrcounter_reg[10]_0 [2]),
        .I2(\s_wrcounter_reg[10]_0 [1]),
        .I3(\s_wrcounter_reg[10]_0 [0]),
        .I4(s00_axi_tx_aresetn_IBUF),
        .I5(s_fifo_wrcount[3]),
        .O(\s_wrcounter_reg[10] [3]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_wrcounter[4]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [4]),
        .I1(\s_wrcounter_reg[4] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[4]),
        .O(\s_wrcounter_reg[10] [4]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_wrcounter[5]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [5]),
        .I1(\s_wrcounter_reg[5] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[5]),
        .O(\s_wrcounter_reg[10] [5]));
  LUT4 #(
    .INIT(16'h9F90)) 
    \s_wrcounter[6]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [6]),
        .I1(\s_wrcounter_reg[6] ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[6]),
        .O(\s_wrcounter_reg[10] [6]));
  LUT5 #(
    .INIT(32'hA6FFA600)) 
    \s_wrcounter[7]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [7]),
        .I1(\s_wrcounter_reg[10]_0 [6]),
        .I2(\s_wrcounter_reg[6] ),
        .I3(s00_axi_tx_aresetn_IBUF),
        .I4(s_fifo_wrcount[7]),
        .O(\s_wrcounter_reg[10] [7]));
  LUT6 #(
    .INIT(64'hA6AAFFFFA6AA0000)) 
    \s_wrcounter[8]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [8]),
        .I1(\s_wrcounter_reg[10]_0 [7]),
        .I2(\s_wrcounter_reg[6] ),
        .I3(\s_wrcounter_reg[10]_0 [6]),
        .I4(s00_axi_tx_aresetn_IBUF),
        .I5(s_fifo_wrcount[8]),
        .O(\s_wrcounter_reg[10] [8]));
  LUT4 #(
    .INIT(16'h6F60)) 
    \s_wrcounter[9]_i_1 
       (.I0(\s_wrcounter_reg[10]_0 [9]),
        .I1(\s_wrcounter_reg[10]_1 ),
        .I2(s00_axi_tx_aresetn_IBUF),
        .I3(s_fifo_wrcount[9]),
        .O(\s_wrcounter_reg[10] [9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB100)) 
    spwwrapperstate_i_1
       (.I0(spwwrapperstate),
        .I1(spwwrapperstate_reg_0),
        .I2(\bl.fifo_18_inst_bl.fifo_18_bl_n_2 ),
        .I3(s00_axi_tx_aresetn_IBUF),
        .O(spwwrapperstate_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
