// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Nov  8 12:51:03 2022
// Host        : stl56jc-MS-7C95 running 64-bit Ubuntu 22.04.1 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/stl56jc/Dokumente/Code/axi_spw_ip_repo/edit_AXI_SpaceWire_IP_v1_0.sim/sim_1/synth/timing/xsim/fifointerface_rx_tb_time_synth.v
// Design      : AXI_SpaceWire_IP_v1_0_S01_AXI_RX
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* C_S_AXI_ADDR_WIDTH = "3" *) (* C_S_AXI_ARUSER_WIDTH = "0" *) (* C_S_AXI_AWUSER_WIDTH = "0" *) 
(* C_S_AXI_BUSER_WIDTH = "0" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "1" *) 
(* C_S_AXI_RUSER_WIDTH = "0" *) (* C_S_AXI_WUSER_WIDTH = "0" *) 
(* NotValidForBitStream *)
module AXI_SpaceWire_IP_v1_0_S01_AXI_RX
   (do,
    di,
    rden,
    wren,
    rdcount,
    wrcount,
    empty,
    full,
    clk_logic,
    rst_logic,
    rxvalid,
    rxflag,
    rxdata,
    rxread,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWID,
    S_AXI_AWADDR,
    S_AXI_AWLEN,
    S_AXI_AWSIZE,
    S_AXI_AWBURST,
    S_AXI_AWLOCK,
    S_AXI_AWCACHE,
    S_AXI_AWPROT,
    S_AXI_AWQOS,
    S_AXI_AWREGION,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WLAST,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BID,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARID,
    S_AXI_ARADDR,
    S_AXI_ARLEN,
    S_AXI_ARSIZE,
    S_AXI_ARBURST,
    S_AXI_ARLOCK,
    S_AXI_ARCACHE,
    S_AXI_ARPROT,
    S_AXI_ARQOS,
    S_AXI_ARREGION,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RLAST,
    S_AXI_RVALID,
    S_AXI_RREADY);
  output [31:0]do;
  output [31:0]di;
  output rden;
  output wren;
  output [31:0]rdcount;
  output [31:0]wrcount;
  output empty;
  output full;
  input clk_logic;
  input rst_logic;
  input rxvalid;
  input rxflag;
  input [7:0]rxdata;
  output rxread;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [0:0]S_AXI_AWID;
  input [2:0]S_AXI_AWADDR;
  input [7:0]S_AXI_AWLEN;
  input [2:0]S_AXI_AWSIZE;
  input [1:0]S_AXI_AWBURST;
  input S_AXI_AWLOCK;
  input [3:0]S_AXI_AWCACHE;
  input [2:0]S_AXI_AWPROT;
  input [3:0]S_AXI_AWQOS;
  input [3:0]S_AXI_AWREGION;
  input S_AXI_AWVALID;
  output S_AXI_AWREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WLAST;
  input S_AXI_WVALID;
  output S_AXI_WREADY;
  output [0:0]S_AXI_BID;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  input S_AXI_BREADY;
  input [0:0]S_AXI_ARID;
  input [2:0]S_AXI_ARADDR;
  input [7:0]S_AXI_ARLEN;
  input [2:0]S_AXI_ARSIZE;
  input [1:0]S_AXI_ARBURST;
  input S_AXI_ARLOCK;
  input [3:0]S_AXI_ARCACHE;
  input [2:0]S_AXI_ARPROT;
  input [3:0]S_AXI_ARQOS;
  input [3:0]S_AXI_ARREGION;
  input S_AXI_ARVALID;
  output S_AXI_ARREADY;
  output [0:0]S_AXI_RID;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RLAST;
  output S_AXI_RVALID;
  input S_AXI_RREADY;

  wire [7:0]\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] ;
  wire \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ;
  wire [4:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] ;
  wire [7:6]\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0] ;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_12;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_14;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_15;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_16;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_17;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_18;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_19;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_20;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_21;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_22;
  wire FIFO_DUALCLOCK_MACRO_inst_TX_n_23;
  wire L;
  wire RSTB;
  wire S_AXI_ACLK;
  wire S_AXI_ACLK_IBUF;
  wire S_AXI_ACLK_IBUF_BUFG;
  wire [2:0]S_AXI_ARADDR;
  wire [2:2]S_AXI_ARADDR_IBUF;
  wire [1:0]S_AXI_ARBURST;
  wire [1:0]S_AXI_ARBURST_IBUF;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_IBUF;
  wire [0:0]S_AXI_ARID;
  wire [7:0]S_AXI_ARLEN;
  wire [7:0]S_AXI_ARLEN_IBUF;
  wire S_AXI_ARREADY;
  wire S_AXI_ARREADY_OBUF;
  wire S_AXI_ARVALID;
  wire S_AXI_ARVALID_IBUF;
  wire [0:0]S_AXI_AWID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWREADY_OBUF;
  wire S_AXI_AWVALID;
  wire S_AXI_AWVALID_IBUF;
  wire [0:0]S_AXI_BID;
  wire [0:0]S_AXI_BID_OBUF;
  wire S_AXI_BREADY;
  wire S_AXI_BREADY_IBUF;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire S_AXI_BVALID_OBUF;
  wire [31:0]S_AXI_RDATA;
  wire [31:0]S_AXI_RDATA_OBUF;
  wire [0:0]S_AXI_RID;
  wire [0:0]S_AXI_RID_OBUF;
  wire S_AXI_RLAST;
  wire S_AXI_RLAST_OBUF;
  wire S_AXI_RREADY;
  wire S_AXI_RREADY_IBUF;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire S_AXI_RVALID_OBUF;
  wire S_AXI_WLAST;
  wire S_AXI_WLAST_IBUF;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY_OBUF;
  wire S_AXI_WVALID;
  wire S_AXI_WVALID_IBUF;
  wire axi_araddr1;
  wire axi_araddr3;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[2]_i_2_n_0 ;
  wire [1:0]axi_arburst;
  wire \axi_arlen[7]_i_2_n_0 ;
  wire \axi_arlen_cntr[0]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_10_n_0 ;
  wire \axi_arlen_cntr[7]_i_11_n_0 ;
  wire \axi_arlen_cntr[7]_i_12_n_0 ;
  wire \axi_arlen_cntr[7]_i_13_n_0 ;
  wire \axi_arlen_cntr[7]_i_1_n_0 ;
  wire \axi_arlen_cntr[7]_i_5_n_0 ;
  wire \axi_arlen_cntr[7]_i_6_n_0 ;
  wire \axi_arlen_cntr[7]_i_7_n_0 ;
  wire \axi_arlen_cntr[7]_i_8_n_0 ;
  wire \axi_arlen_cntr[7]_i_9_n_0 ;
  wire [7:0]axi_arlen_cntr_reg;
  wire \axi_arlen_cntr_reg[7]_i_4_n_1 ;
  wire \axi_arlen_cntr_reg[7]_i_4_n_2 ;
  wire \axi_arlen_cntr_reg[7]_i_4_n_3 ;
  wire \axi_arlen_reg_n_0_[0] ;
  wire \axi_arlen_reg_n_0_[1] ;
  wire \axi_arlen_reg_n_0_[2] ;
  wire \axi_arlen_reg_n_0_[3] ;
  wire \axi_arlen_reg_n_0_[4] ;
  wire \axi_arlen_reg_n_0_[5] ;
  wire \axi_arlen_reg_n_0_[6] ;
  wire \axi_arlen_reg_n_0_[7] ;
  wire axi_arready_i_1_n_0;
  wire axi_arv_arr_flag;
  wire axi_arv_arr_flag_i_1_n_0;
  wire axi_arv_arr_flag_i_2_n_0;
  wire axi_arv_arr_flag_i_3_n_0;
  wire axi_arv_arr_flag_i_4_n_0;
  wire axi_arv_arr_flag_i_5_n_0;
  wire axi_arv_arr_flag_i_6_n_0;
  wire axi_awready_i_1_n_0;
  wire axi_awv_awr_flag;
  wire axi_awv_awr_flag_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rlast0;
  wire axi_rlast_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready_i_1_n_0;
  wire clk_logic;
  wire clk_logic_IBUF;
  wire clk_logic_IBUF_BUFG;
  wire [11:1]data0;
  wire [31:0]di;
  wire [31:0]di_OBUF;
  wire [31:0]do;
  wire [8:0]do_OBUF;
  wire empty;
  wire empty_OBUF;
  wire full;
  wire full_OBUF;
  wire [1:0]p_1_out;
  wire [7:1]plusOp;
  wire [31:0]rdcount;
  wire [11:0]rdcount_OBUF;
  wire rden;
  wire rden_OBUF;
  wire rst_logic;
  wire rst_logic_IBUF;
  wire [7:0]rxdata;
  wire [7:0]rxdata_IBUF;
  wire rxflag;
  wire rxflag_IBUF;
  wire rxread;
  wire rxread_OBUF;
  wire rxvalid;
  wire rxvalid_IBUF;
  wire \s_fifo_di_reg_n_0_[0] ;
  wire \s_fifo_di_reg_n_0_[1] ;
  wire \s_fifo_di_reg_n_0_[2] ;
  wire \s_fifo_di_reg_n_0_[3] ;
  wire \s_fifo_di_reg_n_0_[4] ;
  wire \s_fifo_di_reg_n_0_[5] ;
  wire \s_fifo_di_reg_n_0_[6] ;
  wire \s_fifo_di_reg_n_0_[7] ;
  wire \s_fifo_di_reg_n_0_[8] ;
  wire \s_fifo_elements_reg[11]_i_10_n_0 ;
  wire \s_fifo_elements_reg[11]_i_11_n_0 ;
  wire \s_fifo_elements_reg[11]_i_12_n_0 ;
  wire \s_fifo_elements_reg[11]_i_13_n_0 ;
  wire \s_fifo_elements_reg[11]_i_14_n_0 ;
  wire \s_fifo_elements_reg[11]_i_15_n_0 ;
  wire \s_fifo_elements_reg[11]_i_4_n_0 ;
  wire \s_fifo_elements_reg[11]_i_5_n_0 ;
  wire \s_fifo_elements_reg[11]_i_6_n_0 ;
  wire \s_fifo_elements_reg[11]_i_7_n_0 ;
  wire \s_fifo_elements_reg[11]_i_8_n_0 ;
  wire \s_fifo_elements_reg[11]_i_9_n_0 ;
  wire \s_fifo_elements_reg[30]_i_3_n_0 ;
  wire \s_fifo_elements_reg[30]_i_4_n_0 ;
  wire \s_fifo_elements_reg[7]_i_10_n_0 ;
  wire \s_fifo_elements_reg[7]_i_11_n_0 ;
  wire \s_fifo_elements_reg[7]_i_12_n_0 ;
  wire \s_fifo_elements_reg[7]_i_13_n_0 ;
  wire \s_fifo_elements_reg[7]_i_14_n_0 ;
  wire \s_fifo_elements_reg[7]_i_15_n_0 ;
  wire \s_fifo_elements_reg[7]_i_4_n_0 ;
  wire \s_fifo_elements_reg[7]_i_5_n_0 ;
  wire \s_fifo_elements_reg[7]_i_6_n_0 ;
  wire \s_fifo_elements_reg[7]_i_7_n_0 ;
  wire \s_fifo_elements_reg[7]_i_8_n_0 ;
  wire \s_fifo_elements_reg[7]_i_9_n_0 ;
  wire \s_fifo_elements_reg_reg[11]_i_2_n_0 ;
  wire \s_fifo_elements_reg_reg[11]_i_2_n_1 ;
  wire \s_fifo_elements_reg_reg[11]_i_2_n_2 ;
  wire \s_fifo_elements_reg_reg[11]_i_2_n_3 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_0 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_1 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_2 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_3 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_4 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_5 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_6 ;
  wire \s_fifo_elements_reg_reg[11]_i_3_n_7 ;
  wire \s_fifo_elements_reg_reg[30]_i_2_n_2 ;
  wire \s_fifo_elements_reg_reg[30]_i_2_n_7 ;
  wire \s_fifo_elements_reg_reg[31]_i_2_n_3 ;
  wire \s_fifo_elements_reg_reg[7]_i_2_n_0 ;
  wire \s_fifo_elements_reg_reg[7]_i_2_n_1 ;
  wire \s_fifo_elements_reg_reg[7]_i_2_n_2 ;
  wire \s_fifo_elements_reg_reg[7]_i_2_n_3 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_0 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_1 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_2 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_3 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_4 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_5 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_6 ;
  wire \s_fifo_elements_reg_reg[7]_i_3_n_7 ;
  wire \s_rdcounter[11]_i_10_n_0 ;
  wire \s_rdcounter[11]_i_11_n_0 ;
  wire \s_rdcounter[11]_i_12_n_0 ;
  wire \s_rdcounter[11]_i_13_n_0 ;
  wire \s_rdcounter[11]_i_14_n_0 ;
  wire \s_rdcounter[11]_i_1_n_0 ;
  wire \s_rdcounter[11]_i_2_n_0 ;
  wire \s_rdcounter[11]_i_4_n_0 ;
  wire \s_rdcounter[11]_i_5_n_0 ;
  wire \s_rdcounter[11]_i_6_n_0 ;
  wire \s_rdcounter[11]_i_7_n_0 ;
  wire \s_rdcounter[11]_i_8_n_0 ;
  wire \s_rdcounter[11]_i_9_n_0 ;
  wire \s_rdcounter_reg[11]_i_3_n_2 ;
  wire \s_rdcounter_reg[11]_i_3_n_3 ;
  wire \s_rdcounter_reg[4]_i_1_n_0 ;
  wire \s_rdcounter_reg[4]_i_1_n_1 ;
  wire \s_rdcounter_reg[4]_i_1_n_2 ;
  wire \s_rdcounter_reg[4]_i_1_n_3 ;
  wire \s_rdcounter_reg[8]_i_1_n_0 ;
  wire \s_rdcounter_reg[8]_i_1_n_1 ;
  wire \s_rdcounter_reg[8]_i_1_n_2 ;
  wire \s_rdcounter_reg[8]_i_1_n_3 ;
  wire [31:0]s_size;
  wire [11:0]s_size0;
  wire s_size1;
  wire [11:0]s_wrcounter;
  wire \s_wrcounter[11]_i_10_n_0 ;
  wire \s_wrcounter[11]_i_11_n_0 ;
  wire \s_wrcounter[11]_i_12_n_0 ;
  wire \s_wrcounter[11]_i_13_n_0 ;
  wire \s_wrcounter[11]_i_15_n_0 ;
  wire \s_wrcounter[11]_i_16_n_0 ;
  wire \s_wrcounter[11]_i_17_n_0 ;
  wire \s_wrcounter[11]_i_18_n_0 ;
  wire \s_wrcounter[11]_i_19_n_0 ;
  wire \s_wrcounter[11]_i_1_n_0 ;
  wire \s_wrcounter[11]_i_20_n_0 ;
  wire \s_wrcounter[11]_i_21_n_0 ;
  wire \s_wrcounter[11]_i_22_n_0 ;
  wire \s_wrcounter[11]_i_23_n_0 ;
  wire \s_wrcounter[11]_i_24_n_0 ;
  wire \s_wrcounter[11]_i_25_n_0 ;
  wire \s_wrcounter[11]_i_26_n_0 ;
  wire \s_wrcounter[11]_i_27_n_0 ;
  wire \s_wrcounter[11]_i_28_n_0 ;
  wire \s_wrcounter[11]_i_29_n_0 ;
  wire \s_wrcounter[11]_i_30_n_0 ;
  wire \s_wrcounter[11]_i_31_n_0 ;
  wire \s_wrcounter[11]_i_32_n_0 ;
  wire \s_wrcounter[11]_i_7_n_0 ;
  wire \s_wrcounter[11]_i_8_n_0 ;
  wire \s_wrcounter_reg[11]_i_14_n_0 ;
  wire \s_wrcounter_reg[11]_i_14_n_1 ;
  wire \s_wrcounter_reg[11]_i_14_n_2 ;
  wire \s_wrcounter_reg[11]_i_14_n_3 ;
  wire \s_wrcounter_reg[11]_i_3_n_0 ;
  wire \s_wrcounter_reg[11]_i_3_n_1 ;
  wire \s_wrcounter_reg[11]_i_3_n_2 ;
  wire \s_wrcounter_reg[11]_i_3_n_3 ;
  wire \s_wrcounter_reg[11]_i_3_n_4 ;
  wire \s_wrcounter_reg[11]_i_3_n_5 ;
  wire \s_wrcounter_reg[11]_i_3_n_6 ;
  wire \s_wrcounter_reg[11]_i_3_n_7 ;
  wire \s_wrcounter_reg[11]_i_4_n_3 ;
  wire \s_wrcounter_reg[11]_i_5_n_0 ;
  wire \s_wrcounter_reg[11]_i_5_n_1 ;
  wire \s_wrcounter_reg[11]_i_5_n_2 ;
  wire \s_wrcounter_reg[11]_i_5_n_3 ;
  wire \s_wrcounter_reg[11]_i_6_n_2 ;
  wire \s_wrcounter_reg[11]_i_6_n_3 ;
  wire \s_wrcounter_reg[11]_i_6_n_5 ;
  wire \s_wrcounter_reg[11]_i_6_n_6 ;
  wire \s_wrcounter_reg[11]_i_6_n_7 ;
  wire \s_wrcounter_reg[4]_i_2_n_0 ;
  wire \s_wrcounter_reg[4]_i_2_n_1 ;
  wire \s_wrcounter_reg[4]_i_2_n_2 ;
  wire \s_wrcounter_reg[4]_i_2_n_3 ;
  wire \s_wrcounter_reg[4]_i_2_n_4 ;
  wire \s_wrcounter_reg[4]_i_2_n_5 ;
  wire \s_wrcounter_reg[4]_i_2_n_6 ;
  wire \s_wrcounter_reg[4]_i_2_n_7 ;
  wire \s_wrcounter_reg[8]_i_2_n_0 ;
  wire \s_wrcounter_reg[8]_i_2_n_1 ;
  wire \s_wrcounter_reg[8]_i_2_n_2 ;
  wire \s_wrcounter_reg[8]_i_2_n_3 ;
  wire \s_wrcounter_reg[8]_i_2_n_4 ;
  wire \s_wrcounter_reg[8]_i_2_n_5 ;
  wire \s_wrcounter_reg[8]_i_2_n_6 ;
  wire \s_wrcounter_reg[8]_i_2_n_7 ;
  wire \spwwrapper.openPacket_reg_n_0 ;
  wire \spwwrapper.v_write[8]_i_3_n_0 ;
  wire \spwwrapper.v_write[8]_i_4_n_0 ;
  wire \spwwrapper.v_write_reg_n_0_[0] ;
  wire \spwwrapper.v_write_reg_n_0_[1] ;
  wire \spwwrapper.v_write_reg_n_0_[2] ;
  wire \spwwrapper.v_write_reg_n_0_[3] ;
  wire \spwwrapper.v_write_reg_n_0_[4] ;
  wire \spwwrapper.v_write_reg_n_0_[5] ;
  wire \spwwrapper.v_write_reg_n_0_[6] ;
  wire \spwwrapper.v_write_reg_n_0_[7] ;
  wire \spwwrapper.v_write_reg_n_0_[8] ;
  wire spwwrapperstate;
  wire [8:0]v_write;
  wire [31:0]wrcount;
  wire [11:0]wrcount_OBUF;
  wire wren;
  wire [3:0]\NLW_axi_arlen_cntr_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_s_fifo_elements_reg_reg[30]_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_s_fifo_elements_reg_reg[30]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_s_fifo_elements_reg_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_s_fifo_elements_reg_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_s_rdcounter_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_rdcounter_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_s_wrcounter_reg[11]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_s_wrcounter_reg[11]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_s_wrcounter_reg[11]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_s_wrcounter_reg[11]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_wrcounter_reg[11]_i_6_O_UNCONNECTED ;

initial begin
 $sdf_annotate("fifointerface_rx_tb_time_synth.sdf",,,,"tool_control");
end
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_21),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_20),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_19),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_18),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_17),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_16),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_15),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_14),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h4)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1 
       (.I0(L),
        .I1(axi_arv_arr_flag),
        .O(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(di_OBUF[10]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [2]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][11] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(di_OBUF[11]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [3]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][12] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(di_OBUF[12]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [4]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_22),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(di_OBUF[9]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [1]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][30] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(di_OBUF[13]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0] [6]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][31] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_arv_arr_flag),
        .D(di_OBUF[31]),
        .Q(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0] [7]),
        .R(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][12]_i_1_n_0 ));
  unimacro_FIFO_DUALCLOCK_MACRO FIFO_DUALCLOCK_MACRO_inst_TX
       (.\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] (di_OBUF[8:0]),
        .CLK(clk_logic_IBUF_BUFG),
        .D({FIFO_DUALCLOCK_MACRO_inst_TX_n_14,FIFO_DUALCLOCK_MACRO_inst_TX_n_15,FIFO_DUALCLOCK_MACRO_inst_TX_n_16,FIFO_DUALCLOCK_MACRO_inst_TX_n_17,FIFO_DUALCLOCK_MACRO_inst_TX_n_18,FIFO_DUALCLOCK_MACRO_inst_TX_n_19,FIFO_DUALCLOCK_MACRO_inst_TX_n_20,FIFO_DUALCLOCK_MACRO_inst_TX_n_21}),
        .E(spwwrapperstate),
        .L(L),
        .Q({\s_fifo_di_reg_n_0_[8] ,\s_fifo_di_reg_n_0_[7] ,\s_fifo_di_reg_n_0_[6] ,\s_fifo_di_reg_n_0_[5] ,\s_fifo_di_reg_n_0_[4] ,\s_fifo_di_reg_n_0_[3] ,\s_fifo_di_reg_n_0_[2] ,\s_fifo_di_reg_n_0_[1] ,\s_fifo_di_reg_n_0_[0] }),
        .SR(rst_logic_IBUF),
        .S_AXI_ACLK_IBUF_BUFG(S_AXI_ACLK_IBUF_BUFG),
        .S_AXI_RREADY_IBUF(S_AXI_RREADY_IBUF),
        .S_AXI_RVALID_OBUF(S_AXI_RVALID_OBUF),
        .\bl.fifo_18_inst_bl.fifo_18_bl_0 (FIFO_DUALCLOCK_MACRO_inst_TX_n_22),
        .\bl.fifo_18_inst_bl.fifo_18_bl_1 (FIFO_DUALCLOCK_MACRO_inst_TX_n_23),
        .do_OBUF(do_OBUF),
        .empty_OBUF(empty_OBUF),
        .full_OBUF(full_OBUF),
        .rden_OBUF(rden_OBUF),
        .rxflag_IBUF(rxflag_IBUF),
        .rxread_OBUF(rxread_OBUF),
        .rxvalid_IBUF(rxvalid_IBUF),
        .\spwwrapper.openPacket_reg (FIFO_DUALCLOCK_MACRO_inst_TX_n_12),
        .\spwwrapper.openPacket_reg_0 (\spwwrapper.openPacket_reg_n_0 ));
  BUFG S_AXI_ACLK_IBUF_BUFG_inst
       (.I(S_AXI_ACLK_IBUF),
        .O(S_AXI_ACLK_IBUF_BUFG));
  IBUF S_AXI_ACLK_IBUF_inst
       (.I(S_AXI_ACLK),
        .O(S_AXI_ACLK_IBUF));
  IBUF \S_AXI_ARADDR_IBUF[2]_inst 
       (.I(S_AXI_ARADDR[2]),
        .O(S_AXI_ARADDR_IBUF));
  IBUF \S_AXI_ARBURST_IBUF[0]_inst 
       (.I(S_AXI_ARBURST[0]),
        .O(S_AXI_ARBURST_IBUF[0]));
  IBUF \S_AXI_ARBURST_IBUF[1]_inst 
       (.I(S_AXI_ARBURST[1]),
        .O(S_AXI_ARBURST_IBUF[1]));
  IBUF S_AXI_ARESETN_IBUF_inst
       (.I(S_AXI_ARESETN),
        .O(S_AXI_ARESETN_IBUF));
  IBUF \S_AXI_ARID_IBUF[0]_inst 
       (.I(S_AXI_ARID),
        .O(S_AXI_RID_OBUF));
  IBUF \S_AXI_ARLEN_IBUF[0]_inst 
       (.I(S_AXI_ARLEN[0]),
        .O(S_AXI_ARLEN_IBUF[0]));
  IBUF \S_AXI_ARLEN_IBUF[1]_inst 
       (.I(S_AXI_ARLEN[1]),
        .O(S_AXI_ARLEN_IBUF[1]));
  IBUF \S_AXI_ARLEN_IBUF[2]_inst 
       (.I(S_AXI_ARLEN[2]),
        .O(S_AXI_ARLEN_IBUF[2]));
  IBUF \S_AXI_ARLEN_IBUF[3]_inst 
       (.I(S_AXI_ARLEN[3]),
        .O(S_AXI_ARLEN_IBUF[3]));
  IBUF \S_AXI_ARLEN_IBUF[4]_inst 
       (.I(S_AXI_ARLEN[4]),
        .O(S_AXI_ARLEN_IBUF[4]));
  IBUF \S_AXI_ARLEN_IBUF[5]_inst 
       (.I(S_AXI_ARLEN[5]),
        .O(S_AXI_ARLEN_IBUF[5]));
  IBUF \S_AXI_ARLEN_IBUF[6]_inst 
       (.I(S_AXI_ARLEN[6]),
        .O(S_AXI_ARLEN_IBUF[6]));
  IBUF \S_AXI_ARLEN_IBUF[7]_inst 
       (.I(S_AXI_ARLEN[7]),
        .O(S_AXI_ARLEN_IBUF[7]));
  OBUF S_AXI_ARREADY_OBUF_inst
       (.I(S_AXI_ARREADY_OBUF),
        .O(S_AXI_ARREADY));
  IBUF S_AXI_ARVALID_IBUF_inst
       (.I(S_AXI_ARVALID),
        .O(S_AXI_ARVALID_IBUF));
  IBUF \S_AXI_AWID_IBUF[0]_inst 
       (.I(S_AXI_AWID),
        .O(S_AXI_BID_OBUF));
  OBUF S_AXI_AWREADY_OBUF_inst
       (.I(S_AXI_AWREADY_OBUF),
        .O(S_AXI_AWREADY));
  IBUF S_AXI_AWVALID_IBUF_inst
       (.I(S_AXI_AWVALID),
        .O(S_AXI_AWVALID_IBUF));
  OBUF \S_AXI_BID_OBUF[0]_inst 
       (.I(S_AXI_BID_OBUF),
        .O(S_AXI_BID));
  IBUF S_AXI_BREADY_IBUF_inst
       (.I(S_AXI_BREADY),
        .O(S_AXI_BREADY_IBUF));
  OBUF \S_AXI_BRESP_OBUF[0]_inst 
       (.I(1'b0),
        .O(S_AXI_BRESP[0]));
  OBUF \S_AXI_BRESP_OBUF[1]_inst 
       (.I(1'b0),
        .O(S_AXI_BRESP[1]));
  OBUF S_AXI_BVALID_OBUF_inst
       (.I(S_AXI_BVALID_OBUF),
        .O(S_AXI_BVALID));
  OBUF \S_AXI_RDATA_OBUF[0]_inst 
       (.I(S_AXI_RDATA_OBUF[0]),
        .O(S_AXI_RDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[0]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [0]),
        .O(S_AXI_RDATA_OBUF[0]));
  OBUF \S_AXI_RDATA_OBUF[10]_inst 
       (.I(S_AXI_RDATA_OBUF[10]),
        .O(S_AXI_RDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[10]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [2]),
        .O(S_AXI_RDATA_OBUF[10]));
  OBUF \S_AXI_RDATA_OBUF[11]_inst 
       (.I(S_AXI_RDATA_OBUF[11]),
        .O(S_AXI_RDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[11]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [3]),
        .O(S_AXI_RDATA_OBUF[11]));
  OBUF \S_AXI_RDATA_OBUF[12]_inst 
       (.I(S_AXI_RDATA_OBUF[12]),
        .O(S_AXI_RDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[12]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [4]),
        .O(S_AXI_RDATA_OBUF[12]));
  OBUF \S_AXI_RDATA_OBUF[13]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[13]));
  OBUF \S_AXI_RDATA_OBUF[14]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[14]));
  OBUF \S_AXI_RDATA_OBUF[15]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[15]));
  OBUF \S_AXI_RDATA_OBUF[16]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[16]));
  OBUF \S_AXI_RDATA_OBUF[17]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[17]));
  OBUF \S_AXI_RDATA_OBUF[18]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[18]));
  OBUF \S_AXI_RDATA_OBUF[19]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[19]));
  OBUF \S_AXI_RDATA_OBUF[1]_inst 
       (.I(S_AXI_RDATA_OBUF[1]),
        .O(S_AXI_RDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[1]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [1]),
        .O(S_AXI_RDATA_OBUF[1]));
  OBUF \S_AXI_RDATA_OBUF[20]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[20]));
  OBUF \S_AXI_RDATA_OBUF[21]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[21]));
  OBUF \S_AXI_RDATA_OBUF[22]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[22]));
  OBUF \S_AXI_RDATA_OBUF[23]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[23]));
  OBUF \S_AXI_RDATA_OBUF[24]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[24]));
  OBUF \S_AXI_RDATA_OBUF[25]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[25]));
  OBUF \S_AXI_RDATA_OBUF[26]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[26]));
  OBUF \S_AXI_RDATA_OBUF[27]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[27]));
  OBUF \S_AXI_RDATA_OBUF[28]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[28]));
  OBUF \S_AXI_RDATA_OBUF[29]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[29]));
  OBUF \S_AXI_RDATA_OBUF[2]_inst 
       (.I(S_AXI_RDATA_OBUF[2]),
        .O(S_AXI_RDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[2]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [2]),
        .O(S_AXI_RDATA_OBUF[2]));
  OBUF \S_AXI_RDATA_OBUF[30]_inst 
       (.I(S_AXI_RDATA_OBUF[13]),
        .O(S_AXI_RDATA[30]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[30]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0] [6]),
        .O(S_AXI_RDATA_OBUF[13]));
  OBUF \S_AXI_RDATA_OBUF[31]_inst 
       (.I(S_AXI_RDATA_OBUF[31]),
        .O(S_AXI_RDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[31]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0] [7]),
        .O(S_AXI_RDATA_OBUF[31]));
  OBUF \S_AXI_RDATA_OBUF[3]_inst 
       (.I(S_AXI_RDATA_OBUF[3]),
        .O(S_AXI_RDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[3]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [3]),
        .O(S_AXI_RDATA_OBUF[3]));
  OBUF \S_AXI_RDATA_OBUF[4]_inst 
       (.I(S_AXI_RDATA_OBUF[4]),
        .O(S_AXI_RDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[4]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [4]),
        .O(S_AXI_RDATA_OBUF[4]));
  OBUF \S_AXI_RDATA_OBUF[5]_inst 
       (.I(S_AXI_RDATA_OBUF[5]),
        .O(S_AXI_RDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[5]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [5]),
        .O(S_AXI_RDATA_OBUF[5]));
  OBUF \S_AXI_RDATA_OBUF[6]_inst 
       (.I(S_AXI_RDATA_OBUF[6]),
        .O(S_AXI_RDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[6]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [6]),
        .O(S_AXI_RDATA_OBUF[6]));
  OBUF \S_AXI_RDATA_OBUF[7]_inst 
       (.I(S_AXI_RDATA_OBUF[7]),
        .O(S_AXI_RDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[7]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0] [7]),
        .O(S_AXI_RDATA_OBUF[7]));
  OBUF \S_AXI_RDATA_OBUF[8]_inst 
       (.I(S_AXI_RDATA_OBUF[8]),
        .O(S_AXI_RDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[8]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [0]),
        .O(S_AXI_RDATA_OBUF[8]));
  OBUF \S_AXI_RDATA_OBUF[9]_inst 
       (.I(S_AXI_RDATA_OBUF[9]),
        .O(S_AXI_RDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \S_AXI_RDATA_OBUF[9]_inst_i_1 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0] [1]),
        .O(S_AXI_RDATA_OBUF[9]));
  OBUF \S_AXI_RID_OBUF[0]_inst 
       (.I(S_AXI_RID_OBUF),
        .O(S_AXI_RID));
  OBUF S_AXI_RLAST_OBUF_inst
       (.I(S_AXI_RLAST_OBUF),
        .O(S_AXI_RLAST));
  IBUF S_AXI_RREADY_IBUF_inst
       (.I(S_AXI_RREADY),
        .O(S_AXI_RREADY_IBUF));
  OBUF \S_AXI_RRESP_OBUF[0]_inst 
       (.I(1'b0),
        .O(S_AXI_RRESP[0]));
  OBUF \S_AXI_RRESP_OBUF[1]_inst 
       (.I(1'b0),
        .O(S_AXI_RRESP[1]));
  OBUF S_AXI_RVALID_OBUF_inst
       (.I(S_AXI_RVALID_OBUF),
        .O(S_AXI_RVALID));
  IBUF S_AXI_WLAST_IBUF_inst
       (.I(S_AXI_WLAST),
        .O(S_AXI_WLAST_IBUF));
  OBUF S_AXI_WREADY_OBUF_inst
       (.I(S_AXI_WREADY_OBUF),
        .O(S_AXI_WREADY));
  IBUF S_AXI_WVALID_IBUF_inst
       (.I(S_AXI_WVALID),
        .O(S_AXI_WVALID_IBUF));
  LUT6 #(
    .INIT(64'hAA03AAFFAAFCAA00)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR_IBUF),
        .I1(\axi_arlen_reg_n_0_[0] ),
        .I2(axi_arburst[0]),
        .I3(\axi_arlen[7]_i_2_n_0 ),
        .I4(\axi_araddr[2]_i_2_n_0 ),
        .I5(L),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80808000)) 
    \axi_araddr[2]_i_2 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(S_AXI_RREADY_IBUF),
        .I2(axi_araddr3),
        .I3(axi_arburst[1]),
        .I4(axi_arburst[0]),
        .O(\axi_araddr[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(L),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arburst_reg[0] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARBURST_IBUF[0]),
        .Q(axi_arburst[0]),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arburst_reg[1] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARBURST_IBUF[1]),
        .Q(axi_arburst[1]),
        .R(RSTB));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen[7]_i_1 
       (.I0(S_AXI_ARESETN_IBUF),
        .O(RSTB));
  LUT3 #(
    .INIT(8'h04)) 
    \axi_arlen[7]_i_2 
       (.I0(axi_arv_arr_flag),
        .I1(S_AXI_ARVALID_IBUF),
        .I2(S_AXI_ARREADY_OBUF),
        .O(\axi_arlen[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_arlen_cntr[0]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \axi_arlen_cntr[1]_i_1 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(axi_arlen_cntr_reg[0]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_arlen_cntr[2]_i_1 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_arlen_cntr[3]_i_1 
       (.I0(axi_arlen_cntr_reg[0]),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[2]),
        .I3(axi_arlen_cntr_reg[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_arlen_cntr[4]_i_1 
       (.I0(axi_arlen_cntr_reg[4]),
        .I1(axi_arlen_cntr_reg[0]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[2]),
        .I4(axi_arlen_cntr_reg[3]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axi_arlen_cntr[5]_i_1 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(axi_arlen_cntr_reg[2]),
        .I3(axi_arlen_cntr_reg[1]),
        .I4(axi_arlen_cntr_reg[0]),
        .I5(axi_arlen_cntr_reg[4]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axi_arlen_cntr[6]_i_1 
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(axi_arlen_cntr_reg[4]),
        .I2(\axi_arlen_cntr[7]_i_5_n_0 ),
        .I3(axi_arlen_cntr_reg[5]),
        .O(plusOp[6]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \axi_arlen_cntr[7]_i_1 
       (.I0(axi_arv_arr_flag),
        .I1(S_AXI_ARVALID_IBUF),
        .I2(S_AXI_ARREADY_OBUF),
        .I3(S_AXI_ARESETN_IBUF),
        .O(\axi_arlen_cntr[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_10 
       (.I0(axi_arlen_cntr_reg[6]),
        .I1(\axi_arlen_reg_n_0_[6] ),
        .I2(axi_arlen_cntr_reg[7]),
        .I3(\axi_arlen_reg_n_0_[7] ),
        .O(\axi_arlen_cntr[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_11 
       (.I0(axi_arlen_cntr_reg[4]),
        .I1(\axi_arlen_reg_n_0_[4] ),
        .I2(axi_arlen_cntr_reg[5]),
        .I3(\axi_arlen_reg_n_0_[5] ),
        .O(\axi_arlen_cntr[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_12 
       (.I0(axi_arlen_cntr_reg[2]),
        .I1(\axi_arlen_reg_n_0_[2] ),
        .I2(axi_arlen_cntr_reg[3]),
        .I3(\axi_arlen_reg_n_0_[3] ),
        .O(\axi_arlen_cntr[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axi_arlen_cntr[7]_i_13 
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(\axi_arlen_reg_n_0_[0] ),
        .O(\axi_arlen_cntr[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_arlen_cntr[7]_i_2 
       (.I0(axi_araddr3),
        .I1(S_AXI_RREADY_IBUF),
        .I2(S_AXI_RVALID_OBUF),
        .O(axi_araddr1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \axi_arlen_cntr[7]_i_3 
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_cntr[7]_i_5_n_0 ),
        .I3(axi_arlen_cntr_reg[4]),
        .I4(axi_arlen_cntr_reg[6]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_arlen_cntr[7]_i_5 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(axi_arlen_cntr_reg[2]),
        .I2(axi_arlen_cntr_reg[1]),
        .I3(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \axi_arlen_cntr[7]_i_6 
       (.I0(axi_arlen_cntr_reg[7]),
        .I1(\axi_arlen_reg_n_0_[7] ),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(\axi_arlen_cntr[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \axi_arlen_cntr[7]_i_7 
       (.I0(axi_arlen_cntr_reg[5]),
        .I1(\axi_arlen_reg_n_0_[5] ),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(\axi_arlen_cntr[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \axi_arlen_cntr[7]_i_8 
       (.I0(axi_arlen_cntr_reg[3]),
        .I1(\axi_arlen_reg_n_0_[3] ),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(\axi_arlen_cntr[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \axi_arlen_cntr[7]_i_9 
       (.I0(axi_arlen_cntr_reg[1]),
        .I1(\axi_arlen_reg_n_0_[1] ),
        .I2(\axi_arlen_reg_n_0_[0] ),
        .I3(axi_arlen_cntr_reg[0]),
        .O(\axi_arlen_cntr[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[0] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(\axi_arlen_cntr[0]_i_1_n_0 ),
        .Q(axi_arlen_cntr_reg[0]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[1] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[1]),
        .Q(axi_arlen_cntr_reg[1]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[2] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[2]),
        .Q(axi_arlen_cntr_reg[2]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[3] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[3]),
        .Q(axi_arlen_cntr_reg[3]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[4] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[4]),
        .Q(axi_arlen_cntr_reg[4]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[5] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[5]),
        .Q(axi_arlen_cntr_reg[5]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[6] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[6]),
        .Q(axi_arlen_cntr_reg[6]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_cntr_reg[7] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(axi_araddr1),
        .D(plusOp[7]),
        .Q(axi_arlen_cntr_reg[7]),
        .R(\axi_arlen_cntr[7]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \axi_arlen_cntr_reg[7]_i_4 
       (.CI(1'b0),
        .CO({axi_araddr3,\axi_arlen_cntr_reg[7]_i_4_n_1 ,\axi_arlen_cntr_reg[7]_i_4_n_2 ,\axi_arlen_cntr_reg[7]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\axi_arlen_cntr[7]_i_6_n_0 ,\axi_arlen_cntr[7]_i_7_n_0 ,\axi_arlen_cntr[7]_i_8_n_0 ,\axi_arlen_cntr[7]_i_9_n_0 }),
        .O(\NLW_axi_arlen_cntr_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({\axi_arlen_cntr[7]_i_10_n_0 ,\axi_arlen_cntr[7]_i_11_n_0 ,\axi_arlen_cntr[7]_i_12_n_0 ,\axi_arlen_cntr[7]_i_13_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[0] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[0]),
        .Q(\axi_arlen_reg_n_0_[0] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[1] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[1]),
        .Q(\axi_arlen_reg_n_0_[1] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[2] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[2]),
        .Q(\axi_arlen_reg_n_0_[2] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[3] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[3]),
        .Q(\axi_arlen_reg_n_0_[3] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[4] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[4]),
        .Q(\axi_arlen_reg_n_0_[4] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[5] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[5]),
        .Q(\axi_arlen_reg_n_0_[5] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[6] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[6]),
        .Q(\axi_arlen_reg_n_0_[6] ),
        .R(RSTB));
  FDRE #(
    .INIT(1'b0)) 
    \axi_arlen_reg[7] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\axi_arlen[7]_i_2_n_0 ),
        .D(S_AXI_ARLEN_IBUF[7]),
        .Q(\axi_arlen_reg_n_0_[7] ),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h0010FF10)) 
    axi_arready_i_1
       (.I0(axi_awv_awr_flag),
        .I1(axi_arv_arr_flag),
        .I2(S_AXI_ARVALID_IBUF),
        .I3(S_AXI_ARREADY_OBUF),
        .I4(axi_arv_arr_flag_i_2_n_0),
        .O(axi_arready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(S_AXI_ARREADY_OBUF),
        .R(RSTB));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hCCDC0010)) 
    axi_arv_arr_flag_i_1
       (.I0(axi_awv_awr_flag),
        .I1(axi_arv_arr_flag),
        .I2(S_AXI_ARVALID_IBUF),
        .I3(S_AXI_ARREADY_OBUF),
        .I4(axi_arv_arr_flag_i_2_n_0),
        .O(axi_arv_arr_flag_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    axi_arv_arr_flag_i_2
       (.I0(axi_arv_arr_flag_i_3_n_0),
        .I1(axi_arv_arr_flag_i_4_n_0),
        .I2(axi_arv_arr_flag_i_5_n_0),
        .I3(axi_arv_arr_flag_i_6_n_0),
        .I4(S_AXI_RREADY_IBUF),
        .I5(S_AXI_RVALID_OBUF),
        .O(axi_arv_arr_flag_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    axi_arv_arr_flag_i_3
       (.I0(\axi_arlen_reg_n_0_[1] ),
        .I1(axi_arlen_cntr_reg[1]),
        .I2(axi_arlen_cntr_reg[0]),
        .I3(\axi_arlen_reg_n_0_[0] ),
        .O(axi_arv_arr_flag_i_3_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    axi_arv_arr_flag_i_4
       (.I0(\axi_arlen_reg_n_0_[5] ),
        .I1(axi_arlen_cntr_reg[5]),
        .I2(\axi_arlen_reg_n_0_[4] ),
        .I3(axi_arlen_cntr_reg[4]),
        .O(axi_arv_arr_flag_i_4_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    axi_arv_arr_flag_i_5
       (.I0(\axi_arlen_reg_n_0_[7] ),
        .I1(axi_arlen_cntr_reg[7]),
        .I2(\axi_arlen_reg_n_0_[6] ),
        .I3(axi_arlen_cntr_reg[6]),
        .O(axi_arv_arr_flag_i_5_n_0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    axi_arv_arr_flag_i_6
       (.I0(\axi_arlen_reg_n_0_[3] ),
        .I1(axi_arlen_cntr_reg[3]),
        .I2(\axi_arlen_reg_n_0_[2] ),
        .I3(axi_arlen_cntr_reg[2]),
        .O(axi_arv_arr_flag_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arv_arr_flag_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_arv_arr_flag_i_1_n_0),
        .Q(axi_arv_arr_flag),
        .R(RSTB));
  LUT6 #(
    .INIT(64'hF0F4000400040004)) 
    axi_awready_i_1
       (.I0(axi_awv_awr_flag),
        .I1(S_AXI_AWVALID_IBUF),
        .I2(S_AXI_AWREADY_OBUF),
        .I3(axi_arv_arr_flag),
        .I4(S_AXI_WLAST_IBUF),
        .I5(S_AXI_WREADY_OBUF),
        .O(axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_awready_i_1_n_0),
        .Q(S_AXI_AWREADY_OBUF),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h7070707070707F70)) 
    axi_awv_awr_flag_i_1
       (.I0(S_AXI_WLAST_IBUF),
        .I1(S_AXI_WREADY_OBUF),
        .I2(axi_awv_awr_flag),
        .I3(S_AXI_AWVALID_IBUF),
        .I4(S_AXI_AWREADY_OBUF),
        .I5(axi_arv_arr_flag),
        .O(axi_awv_awr_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_awv_awr_flag_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_awv_awr_flag_i_1_n_0),
        .Q(axi_awv_awr_flag),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY_IBUF),
        .I1(S_AXI_BVALID_OBUF),
        .I2(axi_awv_awr_flag),
        .I3(S_AXI_WVALID_IBUF),
        .I4(S_AXI_WLAST_IBUF),
        .I5(S_AXI_WREADY_OBUF),
        .O(axi_bvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID_OBUF),
        .R(RSTB));
  LUT6 #(
    .INIT(64'h0000000044044400)) 
    axi_rlast_i_1
       (.I0(\axi_arlen[7]_i_2_n_0 ),
        .I1(S_AXI_ARESETN_IBUF),
        .I2(S_AXI_RREADY_IBUF),
        .I3(axi_rlast0),
        .I4(S_AXI_RLAST_OBUF),
        .I5(axi_araddr1),
        .O(axi_rlast_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    axi_rlast_i_2
       (.I0(axi_arv_arr_flag_i_3_n_0),
        .I1(axi_arv_arr_flag_i_4_n_0),
        .I2(axi_arv_arr_flag_i_5_n_0),
        .I3(axi_arv_arr_flag_i_6_n_0),
        .I4(axi_arv_arr_flag),
        .I5(S_AXI_RLAST_OBUF),
        .O(axi_rlast0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rlast_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_rlast_i_1_n_0),
        .Q(S_AXI_RLAST_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    axi_rvalid_i_1
       (.I0(axi_arv_arr_flag),
        .I1(S_AXI_RREADY_IBUF),
        .I2(S_AXI_RVALID_OBUF),
        .O(axi_rvalid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID_OBUF),
        .R(RSTB));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID_IBUF),
        .I1(axi_awv_awr_flag),
        .I2(S_AXI_WLAST_IBUF),
        .I3(S_AXI_WREADY_OBUF),
        .O(axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_reg
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(S_AXI_WREADY_OBUF),
        .R(RSTB));
  BUFG clk_logic_IBUF_BUFG_inst
       (.I(clk_logic_IBUF),
        .O(clk_logic_IBUF_BUFG));
  IBUF clk_logic_IBUF_inst
       (.I(clk_logic),
        .O(clk_logic_IBUF));
  OBUF \di_OBUF[0]_inst 
       (.I(di_OBUF[0]),
        .O(di[0]));
  OBUF \di_OBUF[10]_inst 
       (.I(di_OBUF[10]),
        .O(di[10]));
  OBUF \di_OBUF[11]_inst 
       (.I(di_OBUF[11]),
        .O(di[11]));
  OBUF \di_OBUF[12]_inst 
       (.I(di_OBUF[12]),
        .O(di[12]));
  OBUF \di_OBUF[13]_inst 
       (.I(di_OBUF[13]),
        .O(di[13]));
  OBUF \di_OBUF[14]_inst 
       (.I(di_OBUF[13]),
        .O(di[14]));
  OBUF \di_OBUF[15]_inst 
       (.I(di_OBUF[13]),
        .O(di[15]));
  OBUF \di_OBUF[16]_inst 
       (.I(di_OBUF[13]),
        .O(di[16]));
  OBUF \di_OBUF[17]_inst 
       (.I(di_OBUF[13]),
        .O(di[17]));
  OBUF \di_OBUF[18]_inst 
       (.I(di_OBUF[13]),
        .O(di[18]));
  OBUF \di_OBUF[19]_inst 
       (.I(di_OBUF[13]),
        .O(di[19]));
  OBUF \di_OBUF[1]_inst 
       (.I(di_OBUF[1]),
        .O(di[1]));
  OBUF \di_OBUF[20]_inst 
       (.I(di_OBUF[13]),
        .O(di[20]));
  OBUF \di_OBUF[21]_inst 
       (.I(di_OBUF[13]),
        .O(di[21]));
  OBUF \di_OBUF[22]_inst 
       (.I(di_OBUF[13]),
        .O(di[22]));
  OBUF \di_OBUF[23]_inst 
       (.I(di_OBUF[13]),
        .O(di[23]));
  OBUF \di_OBUF[24]_inst 
       (.I(di_OBUF[13]),
        .O(di[24]));
  OBUF \di_OBUF[25]_inst 
       (.I(di_OBUF[13]),
        .O(di[25]));
  OBUF \di_OBUF[26]_inst 
       (.I(di_OBUF[13]),
        .O(di[26]));
  OBUF \di_OBUF[27]_inst 
       (.I(di_OBUF[13]),
        .O(di[27]));
  OBUF \di_OBUF[28]_inst 
       (.I(di_OBUF[13]),
        .O(di[28]));
  OBUF \di_OBUF[29]_inst 
       (.I(di_OBUF[13]),
        .O(di[29]));
  OBUF \di_OBUF[2]_inst 
       (.I(di_OBUF[2]),
        .O(di[2]));
  OBUF \di_OBUF[30]_inst 
       (.I(di_OBUF[13]),
        .O(di[30]));
  OBUF \di_OBUF[31]_inst 
       (.I(di_OBUF[31]),
        .O(di[31]));
  OBUF \di_OBUF[3]_inst 
       (.I(di_OBUF[3]),
        .O(di[3]));
  OBUF \di_OBUF[4]_inst 
       (.I(di_OBUF[4]),
        .O(di[4]));
  OBUF \di_OBUF[5]_inst 
       (.I(di_OBUF[5]),
        .O(di[5]));
  OBUF \di_OBUF[6]_inst 
       (.I(di_OBUF[6]),
        .O(di[6]));
  OBUF \di_OBUF[7]_inst 
       (.I(di_OBUF[7]),
        .O(di[7]));
  OBUF \di_OBUF[8]_inst 
       (.I(di_OBUF[8]),
        .O(di[8]));
  OBUF \di_OBUF[9]_inst 
       (.I(di_OBUF[9]),
        .O(di[9]));
  OBUF \do_OBUF[0]_inst 
       (.I(do_OBUF[0]),
        .O(do[0]));
  OBUF \do_OBUF[10]_inst 
       (.I(1'b0),
        .O(do[10]));
  OBUF \do_OBUF[11]_inst 
       (.I(1'b0),
        .O(do[11]));
  OBUF \do_OBUF[12]_inst 
       (.I(1'b0),
        .O(do[12]));
  OBUF \do_OBUF[13]_inst 
       (.I(1'b0),
        .O(do[13]));
  OBUF \do_OBUF[14]_inst 
       (.I(1'b0),
        .O(do[14]));
  OBUF \do_OBUF[15]_inst 
       (.I(1'b0),
        .O(do[15]));
  OBUF \do_OBUF[16]_inst 
       (.I(1'b0),
        .O(do[16]));
  OBUF \do_OBUF[17]_inst 
       (.I(1'b0),
        .O(do[17]));
  OBUF \do_OBUF[18]_inst 
       (.I(1'b0),
        .O(do[18]));
  OBUF \do_OBUF[19]_inst 
       (.I(1'b0),
        .O(do[19]));
  OBUF \do_OBUF[1]_inst 
       (.I(do_OBUF[1]),
        .O(do[1]));
  OBUF \do_OBUF[20]_inst 
       (.I(1'b0),
        .O(do[20]));
  OBUF \do_OBUF[21]_inst 
       (.I(1'b0),
        .O(do[21]));
  OBUF \do_OBUF[22]_inst 
       (.I(1'b0),
        .O(do[22]));
  OBUF \do_OBUF[23]_inst 
       (.I(1'b0),
        .O(do[23]));
  OBUF \do_OBUF[24]_inst 
       (.I(1'b0),
        .O(do[24]));
  OBUF \do_OBUF[25]_inst 
       (.I(1'b0),
        .O(do[25]));
  OBUF \do_OBUF[26]_inst 
       (.I(1'b0),
        .O(do[26]));
  OBUF \do_OBUF[27]_inst 
       (.I(1'b0),
        .O(do[27]));
  OBUF \do_OBUF[28]_inst 
       (.I(1'b0),
        .O(do[28]));
  OBUF \do_OBUF[29]_inst 
       (.I(1'b0),
        .O(do[29]));
  OBUF \do_OBUF[2]_inst 
       (.I(do_OBUF[2]),
        .O(do[2]));
  OBUF \do_OBUF[30]_inst 
       (.I(1'b0),
        .O(do[30]));
  OBUF \do_OBUF[31]_inst 
       (.I(1'b0),
        .O(do[31]));
  OBUF \do_OBUF[3]_inst 
       (.I(do_OBUF[3]),
        .O(do[3]));
  OBUF \do_OBUF[4]_inst 
       (.I(do_OBUF[4]),
        .O(do[4]));
  OBUF \do_OBUF[5]_inst 
       (.I(do_OBUF[5]),
        .O(do[5]));
  OBUF \do_OBUF[6]_inst 
       (.I(do_OBUF[6]),
        .O(do[6]));
  OBUF \do_OBUF[7]_inst 
       (.I(do_OBUF[7]),
        .O(do[7]));
  OBUF \do_OBUF[8]_inst 
       (.I(do_OBUF[8]),
        .O(do[8]));
  OBUF \do_OBUF[9]_inst 
       (.I(1'b0),
        .O(do[9]));
  OBUF empty_OBUF_inst
       (.I(empty_OBUF),
        .O(empty));
  OBUF full_OBUF_inst
       (.I(full_OBUF),
        .O(full));
  OBUF \rdcount_OBUF[0]_inst 
       (.I(rdcount_OBUF[0]),
        .O(rdcount[0]));
  OBUF \rdcount_OBUF[10]_inst 
       (.I(rdcount_OBUF[10]),
        .O(rdcount[10]));
  OBUF \rdcount_OBUF[11]_inst 
       (.I(rdcount_OBUF[11]),
        .O(rdcount[11]));
  OBUF \rdcount_OBUF[12]_inst 
       (.I(1'b0),
        .O(rdcount[12]));
  OBUF \rdcount_OBUF[13]_inst 
       (.I(1'b0),
        .O(rdcount[13]));
  OBUF \rdcount_OBUF[14]_inst 
       (.I(1'b0),
        .O(rdcount[14]));
  OBUF \rdcount_OBUF[15]_inst 
       (.I(1'b0),
        .O(rdcount[15]));
  OBUF \rdcount_OBUF[16]_inst 
       (.I(1'b0),
        .O(rdcount[16]));
  OBUF \rdcount_OBUF[17]_inst 
       (.I(1'b0),
        .O(rdcount[17]));
  OBUF \rdcount_OBUF[18]_inst 
       (.I(1'b0),
        .O(rdcount[18]));
  OBUF \rdcount_OBUF[19]_inst 
       (.I(1'b0),
        .O(rdcount[19]));
  OBUF \rdcount_OBUF[1]_inst 
       (.I(rdcount_OBUF[1]),
        .O(rdcount[1]));
  OBUF \rdcount_OBUF[20]_inst 
       (.I(1'b0),
        .O(rdcount[20]));
  OBUF \rdcount_OBUF[21]_inst 
       (.I(1'b0),
        .O(rdcount[21]));
  OBUF \rdcount_OBUF[22]_inst 
       (.I(1'b0),
        .O(rdcount[22]));
  OBUF \rdcount_OBUF[23]_inst 
       (.I(1'b0),
        .O(rdcount[23]));
  OBUF \rdcount_OBUF[24]_inst 
       (.I(1'b0),
        .O(rdcount[24]));
  OBUF \rdcount_OBUF[25]_inst 
       (.I(1'b0),
        .O(rdcount[25]));
  OBUF \rdcount_OBUF[26]_inst 
       (.I(1'b0),
        .O(rdcount[26]));
  OBUF \rdcount_OBUF[27]_inst 
       (.I(1'b0),
        .O(rdcount[27]));
  OBUF \rdcount_OBUF[28]_inst 
       (.I(1'b0),
        .O(rdcount[28]));
  OBUF \rdcount_OBUF[29]_inst 
       (.I(1'b0),
        .O(rdcount[29]));
  OBUF \rdcount_OBUF[2]_inst 
       (.I(rdcount_OBUF[2]),
        .O(rdcount[2]));
  OBUF \rdcount_OBUF[30]_inst 
       (.I(1'b0),
        .O(rdcount[30]));
  OBUF \rdcount_OBUF[31]_inst 
       (.I(1'b0),
        .O(rdcount[31]));
  OBUF \rdcount_OBUF[3]_inst 
       (.I(rdcount_OBUF[3]),
        .O(rdcount[3]));
  OBUF \rdcount_OBUF[4]_inst 
       (.I(rdcount_OBUF[4]),
        .O(rdcount[4]));
  OBUF \rdcount_OBUF[5]_inst 
       (.I(rdcount_OBUF[5]),
        .O(rdcount[5]));
  OBUF \rdcount_OBUF[6]_inst 
       (.I(rdcount_OBUF[6]),
        .O(rdcount[6]));
  OBUF \rdcount_OBUF[7]_inst 
       (.I(rdcount_OBUF[7]),
        .O(rdcount[7]));
  OBUF \rdcount_OBUF[8]_inst 
       (.I(rdcount_OBUF[8]),
        .O(rdcount[8]));
  OBUF \rdcount_OBUF[9]_inst 
       (.I(rdcount_OBUF[9]),
        .O(rdcount[9]));
  OBUF rden_OBUF_inst
       (.I(rden_OBUF),
        .O(rden));
  IBUF rst_logic_IBUF_inst
       (.I(rst_logic),
        .O(rst_logic_IBUF));
  IBUF \rxdata_IBUF[0]_inst 
       (.I(rxdata[0]),
        .O(rxdata_IBUF[0]));
  IBUF \rxdata_IBUF[1]_inst 
       (.I(rxdata[1]),
        .O(rxdata_IBUF[1]));
  IBUF \rxdata_IBUF[2]_inst 
       (.I(rxdata[2]),
        .O(rxdata_IBUF[2]));
  IBUF \rxdata_IBUF[3]_inst 
       (.I(rxdata[3]),
        .O(rxdata_IBUF[3]));
  IBUF \rxdata_IBUF[4]_inst 
       (.I(rxdata[4]),
        .O(rxdata_IBUF[4]));
  IBUF \rxdata_IBUF[5]_inst 
       (.I(rxdata[5]),
        .O(rxdata_IBUF[5]));
  IBUF \rxdata_IBUF[6]_inst 
       (.I(rxdata[6]),
        .O(rxdata_IBUF[6]));
  IBUF \rxdata_IBUF[7]_inst 
       (.I(rxdata[7]),
        .O(rxdata_IBUF[7]));
  IBUF rxflag_IBUF_inst
       (.I(rxflag),
        .O(rxflag_IBUF));
  OBUF rxread_OBUF_inst
       (.I(rxread_OBUF),
        .O(rxread));
  IBUF rxvalid_IBUF_inst
       (.I(rxvalid),
        .O(rxvalid_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[0] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[0]),
        .Q(\s_fifo_di_reg_n_0_[0] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[1] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[1]),
        .Q(\s_fifo_di_reg_n_0_[1] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[2] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[2]),
        .Q(\s_fifo_di_reg_n_0_[2] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[3] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[3]),
        .Q(\s_fifo_di_reg_n_0_[3] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[4] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[4]),
        .Q(\s_fifo_di_reg_n_0_[4] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[5] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[5]),
        .Q(\s_fifo_di_reg_n_0_[5] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[6] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[6]),
        .Q(\s_fifo_di_reg_n_0_[6] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[7] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[7]),
        .Q(\s_fifo_di_reg_n_0_[7] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_di_reg[8] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[8]),
        .Q(\s_fifo_di_reg_n_0_[8] ),
        .R(rst_logic_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[0]_i_1 
       (.I0(s_size0[0]),
        .I1(s_size1),
        .I2(\s_wrcounter_reg[11]_i_3_n_7 ),
        .O(s_size[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[10]_i_1 
       (.I0(s_size0[10]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[11]_i_3_n_5 ),
        .O(s_size[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[11]_i_1 
       (.I0(s_size0[11]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[11]_i_3_n_4 ),
        .O(s_size[11]));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[11]_i_10 
       (.I0(wrcount_OBUF[8]),
        .I1(rdcount_OBUF[8]),
        .O(\s_fifo_elements_reg[11]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[11]_i_11 
       (.I0(wrcount_OBUF[7]),
        .I1(rdcount_OBUF[7]),
        .O(\s_fifo_elements_reg[11]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6966)) 
    \s_fifo_elements_reg[11]_i_12 
       (.I0(wrcount_OBUF[11]),
        .I1(rdcount_OBUF[11]),
        .I2(rdcount_OBUF[10]),
        .I3(wrcount_OBUF[10]),
        .O(\s_fifo_elements_reg[11]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[11]_i_13 
       (.I0(rdcount_OBUF[9]),
        .I1(wrcount_OBUF[9]),
        .I2(wrcount_OBUF[10]),
        .I3(rdcount_OBUF[10]),
        .O(\s_fifo_elements_reg[11]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[11]_i_14 
       (.I0(rdcount_OBUF[8]),
        .I1(wrcount_OBUF[8]),
        .I2(wrcount_OBUF[9]),
        .I3(rdcount_OBUF[9]),
        .O(\s_fifo_elements_reg[11]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[11]_i_15 
       (.I0(rdcount_OBUF[7]),
        .I1(wrcount_OBUF[7]),
        .I2(wrcount_OBUF[8]),
        .I3(rdcount_OBUF[8]),
        .O(\s_fifo_elements_reg[11]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[11]_i_4 
       (.I0(rdcount_OBUF[11]),
        .I1(wrcount_OBUF[11]),
        .O(\s_fifo_elements_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[11]_i_5 
       (.I0(rdcount_OBUF[10]),
        .I1(wrcount_OBUF[10]),
        .O(\s_fifo_elements_reg[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[11]_i_6 
       (.I0(rdcount_OBUF[9]),
        .I1(wrcount_OBUF[9]),
        .O(\s_fifo_elements_reg[11]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[11]_i_7 
       (.I0(rdcount_OBUF[8]),
        .I1(wrcount_OBUF[8]),
        .O(\s_fifo_elements_reg[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[11]_i_8 
       (.I0(wrcount_OBUF[10]),
        .I1(rdcount_OBUF[10]),
        .O(\s_fifo_elements_reg[11]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[11]_i_9 
       (.I0(wrcount_OBUF[9]),
        .I1(rdcount_OBUF[9]),
        .O(\s_fifo_elements_reg[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \s_fifo_elements_reg[12]_i_1 
       (.I0(\s_fifo_elements_reg_reg[31]_i_2_n_3 ),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[30]_i_2_n_7 ),
        .O(s_size[12]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[1]_i_1 
       (.I0(s_size0[1]),
        .I1(s_size1),
        .I2(\s_wrcounter_reg[11]_i_3_n_6 ),
        .O(s_size[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[2]_i_1 
       (.I0(s_size0[2]),
        .I1(s_size1),
        .I2(\s_wrcounter_reg[11]_i_3_n_5 ),
        .O(s_size[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \s_fifo_elements_reg[30]_i_1 
       (.I0(\s_fifo_elements_reg_reg[30]_i_2_n_2 ),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[31]_i_2_n_3 ),
        .O(s_size[30]));
  LUT2 #(
    .INIT(4'hB)) 
    \s_fifo_elements_reg[30]_i_3 
       (.I0(wrcount_OBUF[11]),
        .I1(rdcount_OBUF[11]),
        .O(\s_fifo_elements_reg[30]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[30]_i_4 
       (.I0(rdcount_OBUF[11]),
        .I1(wrcount_OBUF[11]),
        .O(\s_fifo_elements_reg[30]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[31]_i_1 
       (.I0(s_size1),
        .I1(\s_fifo_elements_reg_reg[31]_i_2_n_3 ),
        .O(s_size[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[3]_i_1 
       (.I0(s_size0[3]),
        .I1(s_size1),
        .I2(\s_wrcounter_reg[11]_i_3_n_4 ),
        .O(s_size[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[4]_i_1 
       (.I0(s_size0[4]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[7]_i_3_n_7 ),
        .O(s_size[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[5]_i_1 
       (.I0(s_size0[5]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[7]_i_3_n_6 ),
        .O(s_size[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[6]_i_1 
       (.I0(s_size0[6]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[7]_i_3_n_5 ),
        .O(s_size[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[7]_i_1 
       (.I0(s_size0[7]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[7]_i_3_n_4 ),
        .O(s_size[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[7]_i_10 
       (.I0(wrcount_OBUF[4]),
        .I1(rdcount_OBUF[4]),
        .O(\s_fifo_elements_reg[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[7]_i_11 
       (.I0(wrcount_OBUF[3]),
        .I1(rdcount_OBUF[3]),
        .O(\s_fifo_elements_reg[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[7]_i_12 
       (.I0(rdcount_OBUF[6]),
        .I1(wrcount_OBUF[6]),
        .I2(rdcount_OBUF[7]),
        .I3(wrcount_OBUF[7]),
        .O(\s_fifo_elements_reg[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[7]_i_13 
       (.I0(rdcount_OBUF[5]),
        .I1(wrcount_OBUF[5]),
        .I2(rdcount_OBUF[6]),
        .I3(wrcount_OBUF[6]),
        .O(\s_fifo_elements_reg[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[7]_i_14 
       (.I0(rdcount_OBUF[4]),
        .I1(wrcount_OBUF[4]),
        .I2(rdcount_OBUF[5]),
        .I3(wrcount_OBUF[5]),
        .O(\s_fifo_elements_reg[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_fifo_elements_reg[7]_i_15 
       (.I0(rdcount_OBUF[3]),
        .I1(wrcount_OBUF[3]),
        .I2(rdcount_OBUF[4]),
        .I3(wrcount_OBUF[4]),
        .O(\s_fifo_elements_reg[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[7]_i_4 
       (.I0(wrcount_OBUF[7]),
        .I1(rdcount_OBUF[7]),
        .O(\s_fifo_elements_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[7]_i_5 
       (.I0(wrcount_OBUF[6]),
        .I1(rdcount_OBUF[6]),
        .O(\s_fifo_elements_reg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[7]_i_6 
       (.I0(wrcount_OBUF[5]),
        .I1(rdcount_OBUF[5]),
        .O(\s_fifo_elements_reg[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_fifo_elements_reg[7]_i_7 
       (.I0(wrcount_OBUF[4]),
        .I1(rdcount_OBUF[4]),
        .O(\s_fifo_elements_reg[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[7]_i_8 
       (.I0(wrcount_OBUF[6]),
        .I1(rdcount_OBUF[6]),
        .O(\s_fifo_elements_reg[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_fifo_elements_reg[7]_i_9 
       (.I0(wrcount_OBUF[5]),
        .I1(rdcount_OBUF[5]),
        .O(\s_fifo_elements_reg[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[8]_i_1 
       (.I0(s_size0[8]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[11]_i_3_n_7 ),
        .O(s_size[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_fifo_elements_reg[9]_i_1 
       (.I0(s_size0[9]),
        .I1(s_size1),
        .I2(\s_fifo_elements_reg_reg[11]_i_3_n_6 ),
        .O(s_size[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[0] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[0]),
        .Q(di_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[10] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[10]),
        .Q(di_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[11] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[11]),
        .Q(di_OBUF[11]),
        .R(1'b0));
  CARRY4 \s_fifo_elements_reg_reg[11]_i_2 
       (.CI(\s_fifo_elements_reg_reg[7]_i_2_n_0 ),
        .CO({\s_fifo_elements_reg_reg[11]_i_2_n_0 ,\s_fifo_elements_reg_reg[11]_i_2_n_1 ,\s_fifo_elements_reg_reg[11]_i_2_n_2 ,\s_fifo_elements_reg_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(wrcount_OBUF[11:8]),
        .O(s_size0[11:8]),
        .S({\s_fifo_elements_reg[11]_i_4_n_0 ,\s_fifo_elements_reg[11]_i_5_n_0 ,\s_fifo_elements_reg[11]_i_6_n_0 ,\s_fifo_elements_reg[11]_i_7_n_0 }));
  CARRY4 \s_fifo_elements_reg_reg[11]_i_3 
       (.CI(\s_fifo_elements_reg_reg[7]_i_3_n_0 ),
        .CO({\s_fifo_elements_reg_reg[11]_i_3_n_0 ,\s_fifo_elements_reg_reg[11]_i_3_n_1 ,\s_fifo_elements_reg_reg[11]_i_3_n_2 ,\s_fifo_elements_reg_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_fifo_elements_reg[11]_i_8_n_0 ,\s_fifo_elements_reg[11]_i_9_n_0 ,\s_fifo_elements_reg[11]_i_10_n_0 ,\s_fifo_elements_reg[11]_i_11_n_0 }),
        .O({\s_fifo_elements_reg_reg[11]_i_3_n_4 ,\s_fifo_elements_reg_reg[11]_i_3_n_5 ,\s_fifo_elements_reg_reg[11]_i_3_n_6 ,\s_fifo_elements_reg_reg[11]_i_3_n_7 }),
        .S({\s_fifo_elements_reg[11]_i_12_n_0 ,\s_fifo_elements_reg[11]_i_13_n_0 ,\s_fifo_elements_reg[11]_i_14_n_0 ,\s_fifo_elements_reg[11]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[12] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[12]),
        .Q(di_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[1] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[1]),
        .Q(di_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[2] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[2]),
        .Q(di_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[30] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[30]),
        .Q(di_OBUF[13]),
        .R(1'b0));
  CARRY4 \s_fifo_elements_reg_reg[30]_i_2 
       (.CI(\s_fifo_elements_reg_reg[11]_i_3_n_0 ),
        .CO({\NLW_s_fifo_elements_reg_reg[30]_i_2_CO_UNCONNECTED [3:2],\s_fifo_elements_reg_reg[30]_i_2_n_2 ,\NLW_s_fifo_elements_reg_reg[30]_i_2_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s_fifo_elements_reg[30]_i_3_n_0 }),
        .O({\NLW_s_fifo_elements_reg_reg[30]_i_2_O_UNCONNECTED [3:1],\s_fifo_elements_reg_reg[30]_i_2_n_7 }),
        .S({1'b0,1'b0,1'b1,\s_fifo_elements_reg[30]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[31] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[31]),
        .Q(di_OBUF[31]),
        .R(1'b0));
  CARRY4 \s_fifo_elements_reg_reg[31]_i_2 
       (.CI(\s_fifo_elements_reg_reg[11]_i_2_n_0 ),
        .CO({\NLW_s_fifo_elements_reg_reg[31]_i_2_CO_UNCONNECTED [3:1],\s_fifo_elements_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_s_fifo_elements_reg_reg[31]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[3] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[3]),
        .Q(di_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[4] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[4]),
        .Q(di_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[5] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[5]),
        .Q(di_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[6] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[6]),
        .Q(di_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[7] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[7]),
        .Q(di_OBUF[7]),
        .R(1'b0));
  CARRY4 \s_fifo_elements_reg_reg[7]_i_2 
       (.CI(\s_wrcounter_reg[11]_i_5_n_0 ),
        .CO({\s_fifo_elements_reg_reg[7]_i_2_n_0 ,\s_fifo_elements_reg_reg[7]_i_2_n_1 ,\s_fifo_elements_reg_reg[7]_i_2_n_2 ,\s_fifo_elements_reg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(wrcount_OBUF[7:4]),
        .O(s_size0[7:4]),
        .S({\s_fifo_elements_reg[7]_i_4_n_0 ,\s_fifo_elements_reg[7]_i_5_n_0 ,\s_fifo_elements_reg[7]_i_6_n_0 ,\s_fifo_elements_reg[7]_i_7_n_0 }));
  CARRY4 \s_fifo_elements_reg_reg[7]_i_3 
       (.CI(\s_wrcounter_reg[11]_i_3_n_0 ),
        .CO({\s_fifo_elements_reg_reg[7]_i_3_n_0 ,\s_fifo_elements_reg_reg[7]_i_3_n_1 ,\s_fifo_elements_reg_reg[7]_i_3_n_2 ,\s_fifo_elements_reg_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_fifo_elements_reg[7]_i_8_n_0 ,\s_fifo_elements_reg[7]_i_9_n_0 ,\s_fifo_elements_reg[7]_i_10_n_0 ,\s_fifo_elements_reg[7]_i_11_n_0 }),
        .O({\s_fifo_elements_reg_reg[7]_i_3_n_4 ,\s_fifo_elements_reg_reg[7]_i_3_n_5 ,\s_fifo_elements_reg_reg[7]_i_3_n_6 ,\s_fifo_elements_reg_reg[7]_i_3_n_7 }),
        .S({\s_fifo_elements_reg[7]_i_12_n_0 ,\s_fifo_elements_reg[7]_i_13_n_0 ,\s_fifo_elements_reg[7]_i_14_n_0 ,\s_fifo_elements_reg[7]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[8] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[8]),
        .Q(di_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_fifo_elements_reg_reg[9] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(1'b1),
        .D(s_size[9]),
        .Q(di_OBUF[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    s_fifo_wren_reg
       (.C(clk_logic_IBUF_BUFG),
        .CE(1'b1),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_23),
        .Q(rxread_OBUF),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \s_rdcounter[0]_i_1 
       (.I0(rdcount_OBUF[0]),
        .O(p_1_out[0]));
  LUT6 #(
    .INIT(64'h00A2000000000000)) 
    \s_rdcounter[11]_i_1 
       (.I0(\s_rdcounter[11]_i_4_n_0 ),
        .I1(\s_rdcounter[11]_i_5_n_0 ),
        .I2(\s_rdcounter[11]_i_6_n_0 ),
        .I3(L),
        .I4(S_AXI_RREADY_IBUF),
        .I5(S_AXI_RVALID_OBUF),
        .O(\s_rdcounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    \s_rdcounter[11]_i_10 
       (.I0(\s_wrcounter_reg[11]_i_3_n_4 ),
        .I1(s_size0[3]),
        .I2(\s_fifo_elements_reg_reg[7]_i_3_n_7 ),
        .I3(s_size1),
        .I4(s_size0[4]),
        .O(\s_rdcounter[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFD0D)) 
    \s_rdcounter[11]_i_11 
       (.I0(\s_fifo_elements_reg_reg[30]_i_2_n_2 ),
        .I1(\s_fifo_elements_reg_reg[11]_i_3_n_7 ),
        .I2(s_size1),
        .I3(s_size0[8]),
        .O(\s_rdcounter[11]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \s_rdcounter[11]_i_12 
       (.I0(\s_fifo_elements_reg_reg[7]_i_3_n_5 ),
        .I1(s_size0[6]),
        .I2(\s_fifo_elements_reg_reg[11]_i_3_n_5 ),
        .I3(s_size1),
        .I4(s_size0[10]),
        .O(\s_rdcounter[11]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFA33FA)) 
    \s_rdcounter[11]_i_13 
       (.I0(\s_fifo_elements_reg_reg[30]_i_2_n_7 ),
        .I1(\s_fifo_elements_reg_reg[31]_i_2_n_3 ),
        .I2(\s_fifo_elements_reg_reg[7]_i_3_n_4 ),
        .I3(s_size1),
        .I4(s_size0[7]),
        .O(\s_rdcounter[11]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \s_rdcounter[11]_i_14 
       (.I0(\s_fifo_elements_reg_reg[7]_i_3_n_6 ),
        .I1(s_size0[5]),
        .I2(\s_fifo_elements_reg_reg[11]_i_3_n_6 ),
        .I3(s_size1),
        .I4(s_size0[9]),
        .O(\s_rdcounter[11]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h08000808)) 
    \s_rdcounter[11]_i_2 
       (.I0(S_AXI_RVALID_OBUF),
        .I1(S_AXI_RREADY_IBUF),
        .I2(L),
        .I3(\s_rdcounter[11]_i_6_n_0 ),
        .I4(\s_rdcounter[11]_i_5_n_0 ),
        .O(\s_rdcounter[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_rdcounter[11]_i_4 
       (.I0(rdcount_OBUF[5]),
        .I1(rdcount_OBUF[9]),
        .I2(rdcount_OBUF[0]),
        .I3(rdcount_OBUF[1]),
        .I4(\s_rdcounter[11]_i_7_n_0 ),
        .I5(\s_rdcounter[11]_i_8_n_0 ),
        .O(\s_rdcounter[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \s_rdcounter[11]_i_5 
       (.I0(\s_rdcounter[11]_i_9_n_0 ),
        .I1(\s_rdcounter[11]_i_10_n_0 ),
        .I2(\s_rdcounter[11]_i_11_n_0 ),
        .I3(\s_rdcounter[11]_i_12_n_0 ),
        .I4(\s_rdcounter[11]_i_13_n_0 ),
        .I5(\s_rdcounter[11]_i_14_n_0 ),
        .O(\s_rdcounter[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF3FFFFFFF3F5F5)) 
    \s_rdcounter[11]_i_6 
       (.I0(\s_fifo_elements_reg_reg[30]_i_2_n_2 ),
        .I1(\s_fifo_elements_reg_reg[31]_i_2_n_3 ),
        .I2(s_size[0]),
        .I3(s_size0[11]),
        .I4(s_size1),
        .I5(\s_fifo_elements_reg_reg[11]_i_3_n_4 ),
        .O(\s_rdcounter[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \s_rdcounter[11]_i_7 
       (.I0(rdcount_OBUF[11]),
        .I1(rdcount_OBUF[10]),
        .I2(rdcount_OBUF[4]),
        .I3(rdcount_OBUF[3]),
        .O(\s_rdcounter[11]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_rdcounter[11]_i_8 
       (.I0(rdcount_OBUF[8]),
        .I1(rdcount_OBUF[7]),
        .I2(rdcount_OBUF[6]),
        .I3(rdcount_OBUF[2]),
        .O(\s_rdcounter[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \s_rdcounter[11]_i_9 
       (.I0(\s_wrcounter_reg[11]_i_3_n_5 ),
        .I1(s_size0[2]),
        .I2(\s_wrcounter_reg[11]_i_3_n_6 ),
        .I3(s_size1),
        .I4(s_size0[1]),
        .O(\s_rdcounter[11]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[0] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(p_1_out[0]),
        .Q(rdcount_OBUF[0]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[10] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[10]),
        .Q(rdcount_OBUF[10]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[11] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[11]),
        .Q(rdcount_OBUF[11]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_rdcounter_reg[11]_i_3 
       (.CI(\s_rdcounter_reg[8]_i_1_n_0 ),
        .CO({\NLW_s_rdcounter_reg[11]_i_3_CO_UNCONNECTED [3:2],\s_rdcounter_reg[11]_i_3_n_2 ,\s_rdcounter_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_rdcounter_reg[11]_i_3_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,rdcount_OBUF[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[1] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[1]),
        .Q(rdcount_OBUF[1]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[2] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[2]),
        .Q(rdcount_OBUF[2]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[3] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[3]),
        .Q(rdcount_OBUF[3]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[4] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[4]),
        .Q(rdcount_OBUF[4]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_rdcounter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\s_rdcounter_reg[4]_i_1_n_0 ,\s_rdcounter_reg[4]_i_1_n_1 ,\s_rdcounter_reg[4]_i_1_n_2 ,\s_rdcounter_reg[4]_i_1_n_3 }),
        .CYINIT(rdcount_OBUF[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(rdcount_OBUF[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[5] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[5]),
        .Q(rdcount_OBUF[5]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[6] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[6]),
        .Q(rdcount_OBUF[6]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[7] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[7]),
        .Q(rdcount_OBUF[7]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[8] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[8]),
        .Q(rdcount_OBUF[8]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_rdcounter_reg[8]_i_1 
       (.CI(\s_rdcounter_reg[4]_i_1_n_0 ),
        .CO({\s_rdcounter_reg[8]_i_1_n_0 ,\s_rdcounter_reg[8]_i_1_n_1 ,\s_rdcounter_reg[8]_i_1_n_2 ,\s_rdcounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(rdcount_OBUF[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \s_rdcounter_reg[9] 
       (.C(S_AXI_ACLK_IBUF_BUFG),
        .CE(\s_rdcounter[11]_i_2_n_0 ),
        .D(data0[9]),
        .Q(rdcount_OBUF[9]),
        .R(\s_rdcounter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \s_wrcounter[0]_i_1 
       (.I0(wrcount_OBUF[0]),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[10]_i_1 
       (.I0(\s_wrcounter_reg[11]_i_6_n_6 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[10]));
  LUT6 #(
    .INIT(64'hA808AAAAAAAAAAAA)) 
    \s_wrcounter[11]_i_1 
       (.I0(rxread_OBUF),
        .I1(\s_wrcounter_reg[11]_i_3_n_7 ),
        .I2(s_size1),
        .I3(s_size0[0]),
        .I4(s_size[11]),
        .I5(\s_rdcounter[11]_i_5_n_0 ),
        .O(\s_wrcounter[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB44B)) 
    \s_wrcounter[11]_i_10 
       (.I0(rdcount_OBUF[2]),
        .I1(wrcount_OBUF[2]),
        .I2(rdcount_OBUF[3]),
        .I3(wrcount_OBUF[3]),
        .O(\s_wrcounter[11]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \s_wrcounter[11]_i_11 
       (.I0(rdcount_OBUF[1]),
        .I1(rdcount_OBUF[2]),
        .I2(wrcount_OBUF[2]),
        .O(\s_wrcounter[11]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s_wrcounter[11]_i_12 
       (.I0(wrcount_OBUF[1]),
        .I1(rdcount_OBUF[1]),
        .O(\s_wrcounter[11]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_wrcounter[11]_i_13 
       (.I0(wrcount_OBUF[0]),
        .I1(rdcount_OBUF[0]),
        .O(\s_wrcounter[11]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \s_wrcounter[11]_i_15 
       (.I0(wrcount_OBUF[10]),
        .I1(rdcount_OBUF[10]),
        .I2(rdcount_OBUF[11]),
        .I3(wrcount_OBUF[11]),
        .O(\s_wrcounter[11]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \s_wrcounter[11]_i_16 
       (.I0(wrcount_OBUF[9]),
        .I1(rdcount_OBUF[9]),
        .I2(wrcount_OBUF[8]),
        .I3(rdcount_OBUF[8]),
        .O(\s_wrcounter[11]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_wrcounter[11]_i_17 
       (.I0(rdcount_OBUF[11]),
        .I1(wrcount_OBUF[11]),
        .I2(rdcount_OBUF[10]),
        .I3(wrcount_OBUF[10]),
        .O(\s_wrcounter[11]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_wrcounter[11]_i_18 
       (.I0(rdcount_OBUF[9]),
        .I1(wrcount_OBUF[9]),
        .I2(rdcount_OBUF[8]),
        .I3(wrcount_OBUF[8]),
        .O(\s_wrcounter[11]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_wrcounter[11]_i_19 
       (.I0(wrcount_OBUF[3]),
        .I1(rdcount_OBUF[3]),
        .O(\s_wrcounter[11]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[11]_i_2 
       (.I0(\s_wrcounter_reg[11]_i_6_n_5 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[11]));
  LUT2 #(
    .INIT(4'h9)) 
    \s_wrcounter[11]_i_20 
       (.I0(wrcount_OBUF[2]),
        .I1(rdcount_OBUF[2]),
        .O(\s_wrcounter[11]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_wrcounter[11]_i_21 
       (.I0(rdcount_OBUF[1]),
        .I1(wrcount_OBUF[1]),
        .O(\s_wrcounter[11]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \s_wrcounter[11]_i_22 
       (.I0(wrcount_OBUF[0]),
        .I1(rdcount_OBUF[0]),
        .O(\s_wrcounter[11]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \s_wrcounter[11]_i_23 
       (.I0(wrcount_OBUF[10]),
        .I1(wrcount_OBUF[0]),
        .I2(wrcount_OBUF[4]),
        .I3(wrcount_OBUF[3]),
        .O(\s_wrcounter[11]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \s_wrcounter[11]_i_24 
       (.I0(wrcount_OBUF[8]),
        .I1(wrcount_OBUF[7]),
        .I2(wrcount_OBUF[11]),
        .I3(wrcount_OBUF[6]),
        .O(\s_wrcounter[11]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \s_wrcounter[11]_i_25 
       (.I0(rdcount_OBUF[7]),
        .I1(wrcount_OBUF[7]),
        .I2(wrcount_OBUF[6]),
        .I3(rdcount_OBUF[6]),
        .O(\s_wrcounter[11]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \s_wrcounter[11]_i_26 
       (.I0(rdcount_OBUF[5]),
        .I1(wrcount_OBUF[5]),
        .I2(wrcount_OBUF[4]),
        .I3(rdcount_OBUF[4]),
        .O(\s_wrcounter[11]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h44D4)) 
    \s_wrcounter[11]_i_27 
       (.I0(rdcount_OBUF[3]),
        .I1(wrcount_OBUF[3]),
        .I2(wrcount_OBUF[2]),
        .I3(rdcount_OBUF[2]),
        .O(\s_wrcounter[11]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2B22)) 
    \s_wrcounter[11]_i_28 
       (.I0(wrcount_OBUF[1]),
        .I1(rdcount_OBUF[1]),
        .I2(rdcount_OBUF[0]),
        .I3(wrcount_OBUF[0]),
        .O(\s_wrcounter[11]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_wrcounter[11]_i_29 
       (.I0(wrcount_OBUF[7]),
        .I1(rdcount_OBUF[7]),
        .I2(wrcount_OBUF[6]),
        .I3(rdcount_OBUF[6]),
        .O(\s_wrcounter[11]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_wrcounter[11]_i_30 
       (.I0(wrcount_OBUF[5]),
        .I1(rdcount_OBUF[5]),
        .I2(wrcount_OBUF[4]),
        .I3(rdcount_OBUF[4]),
        .O(\s_wrcounter[11]_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_wrcounter[11]_i_31 
       (.I0(wrcount_OBUF[3]),
        .I1(rdcount_OBUF[3]),
        .I2(wrcount_OBUF[2]),
        .I3(rdcount_OBUF[2]),
        .O(\s_wrcounter[11]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \s_wrcounter[11]_i_32 
       (.I0(rdcount_OBUF[1]),
        .I1(wrcount_OBUF[1]),
        .I2(wrcount_OBUF[0]),
        .I3(rdcount_OBUF[0]),
        .O(\s_wrcounter[11]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_wrcounter[11]_i_7 
       (.I0(wrcount_OBUF[5]),
        .I1(wrcount_OBUF[9]),
        .I2(wrcount_OBUF[1]),
        .I3(wrcount_OBUF[2]),
        .I4(\s_wrcounter[11]_i_23_n_0 ),
        .I5(\s_wrcounter[11]_i_24_n_0 ),
        .O(\s_wrcounter[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[11]_i_8 
       (.I0(wrcount_OBUF[2]),
        .I1(rdcount_OBUF[2]),
        .O(\s_wrcounter[11]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_wrcounter[11]_i_9 
       (.I0(rdcount_OBUF[1]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[1]_i_1 
       (.I0(\s_wrcounter_reg[4]_i_2_n_7 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[2]_i_1 
       (.I0(\s_wrcounter_reg[4]_i_2_n_6 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[3]_i_1 
       (.I0(\s_wrcounter_reg[4]_i_2_n_5 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[4]_i_1 
       (.I0(\s_wrcounter_reg[4]_i_2_n_4 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[5]_i_1 
       (.I0(\s_wrcounter_reg[8]_i_2_n_7 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[6]_i_1 
       (.I0(\s_wrcounter_reg[8]_i_2_n_6 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[7]_i_1 
       (.I0(\s_wrcounter_reg[8]_i_2_n_5 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[8]_i_1 
       (.I0(\s_wrcounter_reg[8]_i_2_n_4 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_wrcounter[9]_i_1 
       (.I0(\s_wrcounter_reg[11]_i_6_n_7 ),
        .I1(\s_wrcounter[11]_i_7_n_0 ),
        .O(s_wrcounter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[0] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[0]),
        .Q(wrcount_OBUF[0]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[10] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[10]),
        .Q(wrcount_OBUF[10]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[11] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[11]),
        .Q(wrcount_OBUF[11]),
        .R(rst_logic_IBUF));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \s_wrcounter_reg[11]_i_14 
       (.CI(1'b0),
        .CO({\s_wrcounter_reg[11]_i_14_n_0 ,\s_wrcounter_reg[11]_i_14_n_1 ,\s_wrcounter_reg[11]_i_14_n_2 ,\s_wrcounter_reg[11]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI({\s_wrcounter[11]_i_25_n_0 ,\s_wrcounter[11]_i_26_n_0 ,\s_wrcounter[11]_i_27_n_0 ,\s_wrcounter[11]_i_28_n_0 }),
        .O(\NLW_s_wrcounter_reg[11]_i_14_O_UNCONNECTED [3:0]),
        .S({\s_wrcounter[11]_i_29_n_0 ,\s_wrcounter[11]_i_30_n_0 ,\s_wrcounter[11]_i_31_n_0 ,\s_wrcounter[11]_i_32_n_0 }));
  CARRY4 \s_wrcounter_reg[11]_i_3 
       (.CI(1'b0),
        .CO({\s_wrcounter_reg[11]_i_3_n_0 ,\s_wrcounter_reg[11]_i_3_n_1 ,\s_wrcounter_reg[11]_i_3_n_2 ,\s_wrcounter_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({\s_wrcounter[11]_i_8_n_0 ,p_1_out[1],rdcount_OBUF[1],wrcount_OBUF[0]}),
        .O({\s_wrcounter_reg[11]_i_3_n_4 ,\s_wrcounter_reg[11]_i_3_n_5 ,\s_wrcounter_reg[11]_i_3_n_6 ,\s_wrcounter_reg[11]_i_3_n_7 }),
        .S({\s_wrcounter[11]_i_10_n_0 ,\s_wrcounter[11]_i_11_n_0 ,\s_wrcounter[11]_i_12_n_0 ,\s_wrcounter[11]_i_13_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \s_wrcounter_reg[11]_i_4 
       (.CI(\s_wrcounter_reg[11]_i_14_n_0 ),
        .CO({\NLW_s_wrcounter_reg[11]_i_4_CO_UNCONNECTED [3:2],s_size1,\s_wrcounter_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s_wrcounter[11]_i_15_n_0 ,\s_wrcounter[11]_i_16_n_0 }),
        .O(\NLW_s_wrcounter_reg[11]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\s_wrcounter[11]_i_17_n_0 ,\s_wrcounter[11]_i_18_n_0 }));
  CARRY4 \s_wrcounter_reg[11]_i_5 
       (.CI(1'b0),
        .CO({\s_wrcounter_reg[11]_i_5_n_0 ,\s_wrcounter_reg[11]_i_5_n_1 ,\s_wrcounter_reg[11]_i_5_n_2 ,\s_wrcounter_reg[11]_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI(wrcount_OBUF[3:0]),
        .O(s_size0[3:0]),
        .S({\s_wrcounter[11]_i_19_n_0 ,\s_wrcounter[11]_i_20_n_0 ,\s_wrcounter[11]_i_21_n_0 ,\s_wrcounter[11]_i_22_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_wrcounter_reg[11]_i_6 
       (.CI(\s_wrcounter_reg[8]_i_2_n_0 ),
        .CO({\NLW_s_wrcounter_reg[11]_i_6_CO_UNCONNECTED [3:2],\s_wrcounter_reg[11]_i_6_n_2 ,\s_wrcounter_reg[11]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_wrcounter_reg[11]_i_6_O_UNCONNECTED [3],\s_wrcounter_reg[11]_i_6_n_5 ,\s_wrcounter_reg[11]_i_6_n_6 ,\s_wrcounter_reg[11]_i_6_n_7 }),
        .S({1'b0,wrcount_OBUF[11:9]}));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[1] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[1]),
        .Q(wrcount_OBUF[1]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[2] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[2]),
        .Q(wrcount_OBUF[2]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[3] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[3]),
        .Q(wrcount_OBUF[3]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[4] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[4]),
        .Q(wrcount_OBUF[4]),
        .R(rst_logic_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_wrcounter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\s_wrcounter_reg[4]_i_2_n_0 ,\s_wrcounter_reg[4]_i_2_n_1 ,\s_wrcounter_reg[4]_i_2_n_2 ,\s_wrcounter_reg[4]_i_2_n_3 }),
        .CYINIT(wrcount_OBUF[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_wrcounter_reg[4]_i_2_n_4 ,\s_wrcounter_reg[4]_i_2_n_5 ,\s_wrcounter_reg[4]_i_2_n_6 ,\s_wrcounter_reg[4]_i_2_n_7 }),
        .S(wrcount_OBUF[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[5] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[5]),
        .Q(wrcount_OBUF[5]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[6] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[6]),
        .Q(wrcount_OBUF[6]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[7] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[7]),
        .Q(wrcount_OBUF[7]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[8] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[8]),
        .Q(wrcount_OBUF[8]),
        .R(rst_logic_IBUF));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \s_wrcounter_reg[8]_i_2 
       (.CI(\s_wrcounter_reg[4]_i_2_n_0 ),
        .CO({\s_wrcounter_reg[8]_i_2_n_0 ,\s_wrcounter_reg[8]_i_2_n_1 ,\s_wrcounter_reg[8]_i_2_n_2 ,\s_wrcounter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_wrcounter_reg[8]_i_2_n_4 ,\s_wrcounter_reg[8]_i_2_n_5 ,\s_wrcounter_reg[8]_i_2_n_6 ,\s_wrcounter_reg[8]_i_2_n_7 }),
        .S(wrcount_OBUF[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \s_wrcounter_reg[9] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(\s_wrcounter[11]_i_1_n_0 ),
        .D(s_wrcounter[9]),
        .Q(wrcount_OBUF[9]),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.openPacket_reg 
       (.C(clk_logic_IBUF_BUFG),
        .CE(1'b1),
        .D(FIFO_DUALCLOCK_MACRO_inst_TX_n_12),
        .Q(\spwwrapper.openPacket_reg_n_0 ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2FE0)) 
    \spwwrapper.v_write[0]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[0] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[0]),
        .O(v_write[0]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[1]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[1] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[1]),
        .O(v_write[1]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[2]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[2] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[2]),
        .O(v_write[2]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[3]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[3] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[3]),
        .O(v_write[3]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[4]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[4] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[4]),
        .O(v_write[4]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[5]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[5] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[5]),
        .O(v_write[5]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[6]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[6] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[6]),
        .O(v_write[6]));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \spwwrapper.v_write[7]_i_1 
       (.I0(\spwwrapper.v_write_reg_n_0_[7] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(rxdata_IBUF[7]),
        .O(v_write[7]));
  LUT4 #(
    .INIT(16'hE0EF)) 
    \spwwrapper.v_write[8]_i_2 
       (.I0(\spwwrapper.v_write_reg_n_0_[8] ),
        .I1(\spwwrapper.v_write[8]_i_3_n_0 ),
        .I2(rxflag_IBUF),
        .I3(\spwwrapper.openPacket_reg_n_0 ),
        .O(v_write[8]));
  LUT4 #(
    .INIT(16'h0001)) 
    \spwwrapper.v_write[8]_i_3 
       (.I0(rxdata_IBUF[4]),
        .I1(rxdata_IBUF[6]),
        .I2(rxdata_IBUF[5]),
        .I3(\spwwrapper.v_write[8]_i_4_n_0 ),
        .O(\spwwrapper.v_write[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \spwwrapper.v_write[8]_i_4 
       (.I0(rxdata_IBUF[3]),
        .I1(rxdata_IBUF[1]),
        .I2(rxdata_IBUF[7]),
        .I3(rxdata_IBUF[2]),
        .O(\spwwrapper.v_write[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[0] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[0]),
        .Q(\spwwrapper.v_write_reg_n_0_[0] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[1] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[1]),
        .Q(\spwwrapper.v_write_reg_n_0_[1] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[2] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[2]),
        .Q(\spwwrapper.v_write_reg_n_0_[2] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[3] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[3]),
        .Q(\spwwrapper.v_write_reg_n_0_[3] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[4] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[4]),
        .Q(\spwwrapper.v_write_reg_n_0_[4] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[5] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[5]),
        .Q(\spwwrapper.v_write_reg_n_0_[5] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[6] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[6]),
        .Q(\spwwrapper.v_write_reg_n_0_[6] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[7] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[7]),
        .Q(\spwwrapper.v_write_reg_n_0_[7] ),
        .R(rst_logic_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spwwrapper.v_write_reg[8] 
       (.C(clk_logic_IBUF_BUFG),
        .CE(spwwrapperstate),
        .D(v_write[8]),
        .Q(\spwwrapper.v_write_reg_n_0_[8] ),
        .R(rst_logic_IBUF));
  OBUF \wrcount_OBUF[0]_inst 
       (.I(wrcount_OBUF[0]),
        .O(wrcount[0]));
  OBUF \wrcount_OBUF[10]_inst 
       (.I(wrcount_OBUF[10]),
        .O(wrcount[10]));
  OBUF \wrcount_OBUF[11]_inst 
       (.I(wrcount_OBUF[11]),
        .O(wrcount[11]));
  OBUF \wrcount_OBUF[12]_inst 
       (.I(1'b0),
        .O(wrcount[12]));
  OBUF \wrcount_OBUF[13]_inst 
       (.I(1'b0),
        .O(wrcount[13]));
  OBUF \wrcount_OBUF[14]_inst 
       (.I(1'b0),
        .O(wrcount[14]));
  OBUF \wrcount_OBUF[15]_inst 
       (.I(1'b0),
        .O(wrcount[15]));
  OBUF \wrcount_OBUF[16]_inst 
       (.I(1'b0),
        .O(wrcount[16]));
  OBUF \wrcount_OBUF[17]_inst 
       (.I(1'b0),
        .O(wrcount[17]));
  OBUF \wrcount_OBUF[18]_inst 
       (.I(1'b0),
        .O(wrcount[18]));
  OBUF \wrcount_OBUF[19]_inst 
       (.I(1'b0),
        .O(wrcount[19]));
  OBUF \wrcount_OBUF[1]_inst 
       (.I(wrcount_OBUF[1]),
        .O(wrcount[1]));
  OBUF \wrcount_OBUF[20]_inst 
       (.I(1'b0),
        .O(wrcount[20]));
  OBUF \wrcount_OBUF[21]_inst 
       (.I(1'b0),
        .O(wrcount[21]));
  OBUF \wrcount_OBUF[22]_inst 
       (.I(1'b0),
        .O(wrcount[22]));
  OBUF \wrcount_OBUF[23]_inst 
       (.I(1'b0),
        .O(wrcount[23]));
  OBUF \wrcount_OBUF[24]_inst 
       (.I(1'b0),
        .O(wrcount[24]));
  OBUF \wrcount_OBUF[25]_inst 
       (.I(1'b0),
        .O(wrcount[25]));
  OBUF \wrcount_OBUF[26]_inst 
       (.I(1'b0),
        .O(wrcount[26]));
  OBUF \wrcount_OBUF[27]_inst 
       (.I(1'b0),
        .O(wrcount[27]));
  OBUF \wrcount_OBUF[28]_inst 
       (.I(1'b0),
        .O(wrcount[28]));
  OBUF \wrcount_OBUF[29]_inst 
       (.I(1'b0),
        .O(wrcount[29]));
  OBUF \wrcount_OBUF[2]_inst 
       (.I(wrcount_OBUF[2]),
        .O(wrcount[2]));
  OBUF \wrcount_OBUF[30]_inst 
       (.I(1'b0),
        .O(wrcount[30]));
  OBUF \wrcount_OBUF[31]_inst 
       (.I(1'b0),
        .O(wrcount[31]));
  OBUF \wrcount_OBUF[3]_inst 
       (.I(wrcount_OBUF[3]),
        .O(wrcount[3]));
  OBUF \wrcount_OBUF[4]_inst 
       (.I(wrcount_OBUF[4]),
        .O(wrcount[4]));
  OBUF \wrcount_OBUF[5]_inst 
       (.I(wrcount_OBUF[5]),
        .O(wrcount[5]));
  OBUF \wrcount_OBUF[6]_inst 
       (.I(wrcount_OBUF[6]),
        .O(wrcount[6]));
  OBUF \wrcount_OBUF[7]_inst 
       (.I(wrcount_OBUF[7]),
        .O(wrcount[7]));
  OBUF \wrcount_OBUF[8]_inst 
       (.I(wrcount_OBUF[8]),
        .O(wrcount[8]));
  OBUF \wrcount_OBUF[9]_inst 
       (.I(wrcount_OBUF[9]),
        .O(wrcount[9]));
  OBUF wren_OBUF_inst
       (.I(rxread_OBUF),
        .O(wren));
endmodule

module unimacro_FIFO_DUALCLOCK_MACRO
   (empty_OBUF,
    full_OBUF,
    do_OBUF,
    rden_OBUF,
    \spwwrapper.openPacket_reg ,
    E,
    D,
    \bl.fifo_18_inst_bl.fifo_18_bl_0 ,
    \bl.fifo_18_inst_bl.fifo_18_bl_1 ,
    S_AXI_ACLK_IBUF_BUFG,
    SR,
    CLK,
    rxread_OBUF,
    Q,
    \spwwrapper.openPacket_reg_0 ,
    rxvalid_IBUF,
    rxflag_IBUF,
    L,
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ,
    S_AXI_RREADY_IBUF,
    S_AXI_RVALID_OBUF);
  output empty_OBUF;
  output full_OBUF;
  output [8:0]do_OBUF;
  output rden_OBUF;
  output \spwwrapper.openPacket_reg ;
  output [0:0]E;
  output [7:0]D;
  output [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_0 ;
  output \bl.fifo_18_inst_bl.fifo_18_bl_1 ;
  input S_AXI_ACLK_IBUF_BUFG;
  input [0:0]SR;
  input CLK;
  input rxread_OBUF;
  input [8:0]Q;
  input \spwwrapper.openPacket_reg_0 ;
  input rxvalid_IBUF;
  input rxflag_IBUF;
  input L;
  input [8:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ;
  input S_AXI_RREADY_IBUF;
  input S_AXI_RVALID_OBUF;

  wire [8:0]\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] ;
  wire CLK;
  wire [7:0]D;
  wire [3:1]DOP;
  wire [0:0]E;
  wire L;
  wire [8:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK_IBUF_BUFG;
  wire S_AXI_RREADY_IBUF;
  wire S_AXI_RVALID_OBUF;
  wire [0:0]\bl.fifo_18_inst_bl.fifo_18_bl_0 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_1 ;
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
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_20 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_21 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_22 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_23 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_24 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_25 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_26 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_27 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_28 ;
  wire \bl.fifo_18_inst_bl.fifo_18_bl_n_29 ;
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
  wire [8:0]do_OBUF;
  wire empty_OBUF;
  wire full_OBUF;
  wire rden_OBUF;
  wire rxflag_IBUF;
  wire rxread_OBUF;
  wire rxvalid_IBUF;
  wire \spwwrapper.openPacket_reg ;
  wire \spwwrapper.openPacket_reg_0 ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1 
       (.I0(do_OBUF[0]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1 
       (.I0(do_OBUF[1]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1 
       (.I0(do_OBUF[2]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1 
       (.I0(do_OBUF[3]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1 
       (.I0(do_OBUF[4]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1 
       (.I0(do_OBUF[5]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1 
       (.I0(do_OBUF[6]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1 
       (.I0(do_OBUF[7]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1 
       (.I0(do_OBUF[8]),
        .I1(L),
        .I2(\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8] [8]),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_0 ));
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
        .DO({\bl.fifo_18_inst_bl.fifo_18_bl_n_30 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_31 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_32 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_33 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_34 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_35 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_36 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_37 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_38 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_39 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_40 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_41 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_42 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_43 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_44 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_45 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_46 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_47 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_48 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_49 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_50 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_51 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_52 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_53 ,do_OBUF[7:0]}),
        .DOP({DOP,do_OBUF[8]}),
        .EMPTY(empty_OBUF),
        .FULL(full_OBUF),
        .RDCLK(S_AXI_ACLK_IBUF_BUFG),
        .RDCOUNT({\bl.fifo_18_inst_bl.fifo_18_bl_n_6 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_7 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_8 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_9 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_10 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_11 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_12 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_13 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_14 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_15 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_16 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_17 }),
        .RDEN(rden_OBUF),
        .RDERR(\bl.fifo_18_inst_bl.fifo_18_bl_n_4 ),
        .REGCE(1'b1),
        .RST(SR),
        .RSTREG(1'b1),
        .WRCLK(CLK),
        .WRCOUNT({\bl.fifo_18_inst_bl.fifo_18_bl_n_18 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_19 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_20 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_21 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_22 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_23 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_24 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_25 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_26 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_27 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_28 ,\bl.fifo_18_inst_bl.fifo_18_bl_n_29 }),
        .WREN(rxread_OBUF),
        .WRERR(\bl.fifo_18_inst_bl.fifo_18_bl_n_5 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    rden_OBUF_inst_i_1
       (.I0(L),
        .I1(S_AXI_RREADY_IBUF),
        .I2(S_AXI_RVALID_OBUF),
        .O(rden_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    s_fifo_wren_i_1
       (.I0(full_OBUF),
        .I1(rxvalid_IBUF),
        .I2(rxread_OBUF),
        .I3(SR),
        .O(\bl.fifo_18_inst_bl.fifo_18_bl_1 ));
  LUT6 #(
    .INIT(64'hAAAAA8AAAAAAABAA)) 
    \spwwrapper.openPacket_i_1 
       (.I0(\spwwrapper.openPacket_reg_0 ),
        .I1(SR),
        .I2(full_OBUF),
        .I3(rxvalid_IBUF),
        .I4(rxread_OBUF),
        .I5(rxflag_IBUF),
        .O(\spwwrapper.openPacket_reg ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \spwwrapper.v_write[8]_i_1 
       (.I0(full_OBUF),
        .I1(rxvalid_IBUF),
        .I2(rxread_OBUF),
        .O(E));
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
