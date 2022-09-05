----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/01/2022 03:33:53 PM
-- Design Name: 
-- Module Name: AXI_SpaceWire_IP_v1_0_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

use work.spwpkg.all;

entity AXI_SpaceWire_IP_v1_0_tb is
end;

architecture AXI_SpaceWire_IP_v1_0_tb_arch of AXI_SpaceWire_IP_v1_0_tb is
    -- Generic constants.
    constant pl_clock_period : time := 10 ns;
    constant ps_clock_period : time := 20 ns;

    -- Parameters of Axi Slave Bus Interface S00_AXI_TX
    constant C_S00_AXI_TX_ID_WIDTH	: integer	:= 1;
    constant C_S00_AXI_TX_DATA_WIDTH	: integer	:= 32;
    constant C_S00_AXI_TX_ADDR_WIDTH	: integer	:= 3;
    constant C_S00_AXI_TX_AWUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_ARUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_WUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_RUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_BUSER_WIDTH	: integer	:= 0;

    -- Parameters of Axi Slave Bus Interface S01_AXI_RX
    constant C_S01_AXI_RX_ID_WIDTH	: integer	:= 1;
    constant C_S01_AXI_RX_DATA_WIDTH	: integer	:= 32;
    constant C_S01_AXI_RX_ADDR_WIDTH	: integer	:= 3;
    constant C_S01_AXI_RX_AWUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_ARUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_WUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_RUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_BUSER_WIDTH	: integer	:= 0;

    -- Parameters of Axi Slave Bus Interface S02_AXI_REG
    constant C_S02_AXI_REG_DATA_WIDTH	: integer	:= 32;
    constant C_S02_AXI_REG_ADDR_WIDTH	: integer	:= 5;

    -- spwstream constants.
    constant sysfreq:        real := 100.0e6;
    constant txclkfreq:      real := 0.0;
    constant rximpl:         spw_implementation_type := impl_fast;
    constant rxchunk:        integer range 1 to 4 := 1;
    constant tximpl:         spw_implementation_type := impl_fast;
    constant rxfifosize_bits: integer range 6 to 14 := 11;
    constant txfifosize_bits: integer range 2 to 14 := 11;


    component AXI_SpaceWire_IP_v1_0
        generic (
            sysfreq : real := 100.0e6;
            txclkfreq : real := 0.0;
            rximpl : spw_implementation_type := impl_fast;
            tximpl : spw_implementation_type := impl_fast;
            rxchunk : integer range 1 to 4 := 1;
            rxfifosize_bits : integer range 6 to 14 := 11;
            txfifosize_bits : integer range 2 to 14 := 11;
            C_S00_AXI_TX_ID_WIDTH	: integer	:= 1;
            C_S00_AXI_TX_DATA_WIDTH	: integer	:= 32;
            C_S00_AXI_TX_ADDR_WIDTH	: integer	:= 3;
            C_S00_AXI_TX_AWUSER_WIDTH	: integer	:= 0;
            C_S00_AXI_TX_ARUSER_WIDTH	: integer	:= 0;
            C_S00_AXI_TX_WUSER_WIDTH	: integer	:= 0;
            C_S00_AXI_TX_RUSER_WIDTH	: integer	:= 0;
            C_S00_AXI_TX_BUSER_WIDTH	: integer	:= 0;
            C_S01_AXI_RX_ID_WIDTH	: integer	:= 1;
            C_S01_AXI_RX_DATA_WIDTH	: integer	:= 32;
            C_S01_AXI_RX_ADDR_WIDTH	: integer	:= 3;
            C_S01_AXI_RX_AWUSER_WIDTH	: integer	:= 0;
            C_S01_AXI_RX_ARUSER_WIDTH	: integer	:= 0;
            C_S01_AXI_RX_WUSER_WIDTH	: integer	:= 0;
            C_S01_AXI_RX_RUSER_WIDTH	: integer	:= 0;
            C_S01_AXI_RX_BUSER_WIDTH	: integer	:= 0;
            C_S02_AXI_REG_DATA_WIDTH	: integer	:= 32;
            C_S02_AXI_REG_ADDR_WIDTH	: integer	:= 5
        );
        port (
            clk_logic : in std_logic;
            rxclk : in std_logic;
            txclk : in std_logic;
            rst_logic : in std_logic;
            tc_in : in std_logic;
            tc_out : out std_logic;
            spw_di : in std_logic;
            spw_si : in std_logic;
            spw_do : out std_logic;
            spw_so : out std_logic;
            s00_axi_tx_aclk	: in std_logic;
            s00_axi_tx_aresetn	: in std_logic;
            s00_axi_tx_awid	: in std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
            s00_axi_tx_awaddr	: in std_logic_vector(C_S00_AXI_TX_ADDR_WIDTH-1 downto 0);
            s00_axi_tx_awlen	: in std_logic_vector(7 downto 0);
            s00_axi_tx_awsize	: in std_logic_vector(2 downto 0);
            s00_axi_tx_awburst	: in std_logic_vector(1 downto 0);
            s00_axi_tx_awlock	: in std_logic;
            s00_axi_tx_awcache	: in std_logic_vector(3 downto 0);
            s00_axi_tx_awprot	: in std_logic_vector(2 downto 0);
            s00_axi_tx_awqos	: in std_logic_vector(3 downto 0);
            s00_axi_tx_awregion	: in std_logic_vector(3 downto 0);
            s00_axi_tx_awuser	: in std_logic_vector(C_S00_AXI_TX_AWUSER_WIDTH-1 downto 0);
            s00_axi_tx_awvalid	: in std_logic;
            s00_axi_tx_awready	: out std_logic;
            s00_axi_tx_wdata	: in std_logic_vector(C_S00_AXI_TX_DATA_WIDTH-1 downto 0);
            s00_axi_tx_wstrb	: in std_logic_vector((C_S00_AXI_TX_DATA_WIDTH/8)-1 downto 0);
            s00_axi_tx_wlast	: in std_logic;
            s00_axi_tx_wuser	: in std_logic_vector(C_S00_AXI_TX_WUSER_WIDTH-1 downto 0);
            s00_axi_tx_wvalid	: in std_logic;
            s00_axi_tx_wready	: out std_logic;
            s00_axi_tx_bid	: out std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
            s00_axi_tx_bresp	: out std_logic_vector(1 downto 0);
            s00_axi_tx_buser	: out std_logic_vector(C_S00_AXI_TX_BUSER_WIDTH-1 downto 0);
            s00_axi_tx_bvalid	: out std_logic;
            s00_axi_tx_bready	: in std_logic;
            s00_axi_tx_arid	: in std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
            s00_axi_tx_araddr	: in std_logic_vector(C_S00_AXI_TX_ADDR_WIDTH-1 downto 0);
            s00_axi_tx_arlen	: in std_logic_vector(7 downto 0);
            s00_axi_tx_arsize	: in std_logic_vector(2 downto 0);
            s00_axi_tx_arburst	: in std_logic_vector(1 downto 0);
            s00_axi_tx_arlock	: in std_logic;
            s00_axi_tx_arcache	: in std_logic_vector(3 downto 0);
            s00_axi_tx_arprot	: in std_logic_vector(2 downto 0);
            s00_axi_tx_arqos	: in std_logic_vector(3 downto 0);
            s00_axi_tx_arregion	: in std_logic_vector(3 downto 0);
            s00_axi_tx_aruser	: in std_logic_vector(C_S00_AXI_TX_ARUSER_WIDTH-1 downto 0);
            s00_axi_tx_arvalid	: in std_logic;
            s00_axi_tx_arready	: out std_logic;
            s00_axi_tx_rid	: out std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
            s00_axi_tx_rdata	: out std_logic_vector(C_S00_AXI_TX_DATA_WIDTH-1 downto 0);
            s00_axi_tx_rresp	: out std_logic_vector(1 downto 0);
            s00_axi_tx_rlast	: out std_logic;
            s00_axi_tx_ruser	: out std_logic_vector(C_S00_AXI_TX_RUSER_WIDTH-1 downto 0);
            s00_axi_tx_rvalid	: out std_logic;
            s00_axi_tx_rready	: in std_logic;
            s01_axi_rx_aclk	: in std_logic;
            s01_axi_rx_aresetn	: in std_logic;
            s01_axi_rx_awid	: in std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
            s01_axi_rx_awaddr	: in std_logic_vector(C_S01_AXI_RX_ADDR_WIDTH-1 downto 0);
            s01_axi_rx_awlen	: in std_logic_vector(7 downto 0);
            s01_axi_rx_awsize	: in std_logic_vector(2 downto 0);
            s01_axi_rx_awburst	: in std_logic_vector(1 downto 0);
            s01_axi_rx_awlock	: in std_logic;
            s01_axi_rx_awcache	: in std_logic_vector(3 downto 0);
            s01_axi_rx_awprot	: in std_logic_vector(2 downto 0);
            s01_axi_rx_awqos	: in std_logic_vector(3 downto 0);
            s01_axi_rx_awregion	: in std_logic_vector(3 downto 0);
            s01_axi_rx_awuser	: in std_logic_vector(C_S01_AXI_RX_AWUSER_WIDTH-1 downto 0);
            s01_axi_rx_awvalid	: in std_logic;
            s01_axi_rx_awready	: out std_logic;
            s01_axi_rx_wdata	: in std_logic_vector(C_S01_AXI_RX_DATA_WIDTH-1 downto 0);
            s01_axi_rx_wstrb	: in std_logic_vector((C_S01_AXI_RX_DATA_WIDTH/8)-1 downto 0);
            s01_axi_rx_wlast	: in std_logic;
            s01_axi_rx_wuser	: in std_logic_vector(C_S01_AXI_RX_WUSER_WIDTH-1 downto 0);
            s01_axi_rx_wvalid	: in std_logic;
            s01_axi_rx_wready	: out std_logic;
            s01_axi_rx_bid	: out std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
            s01_axi_rx_bresp	: out std_logic_vector(1 downto 0);
            s01_axi_rx_buser	: out std_logic_vector(C_S01_AXI_RX_BUSER_WIDTH-1 downto 0);
            s01_axi_rx_bvalid	: out std_logic;
            s01_axi_rx_bready	: in std_logic;
            s01_axi_rx_arid	: in std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
            s01_axi_rx_araddr	: in std_logic_vector(C_S01_AXI_RX_ADDR_WIDTH-1 downto 0);
            s01_axi_rx_arlen	: in std_logic_vector(7 downto 0);
            s01_axi_rx_arsize	: in std_logic_vector(2 downto 0);
            s01_axi_rx_arburst	: in std_logic_vector(1 downto 0);
            s01_axi_rx_arlock	: in std_logic;
            s01_axi_rx_arcache	: in std_logic_vector(3 downto 0);
            s01_axi_rx_arprot	: in std_logic_vector(2 downto 0);
            s01_axi_rx_arqos	: in std_logic_vector(3 downto 0);
            s01_axi_rx_arregion	: in std_logic_vector(3 downto 0);
            s01_axi_rx_aruser	: in std_logic_vector(C_S01_AXI_RX_ARUSER_WIDTH-1 downto 0);
            s01_axi_rx_arvalid	: in std_logic;
            s01_axi_rx_arready	: out std_logic;
            s01_axi_rx_rid	: out std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
            s01_axi_rx_rdata	: out std_logic_vector(C_S01_AXI_RX_DATA_WIDTH-1 downto 0);
            s01_axi_rx_rresp	: out std_logic_vector(1 downto 0);
            s01_axi_rx_rlast	: out std_logic;
            s01_axi_rx_ruser	: out std_logic_vector(C_S01_AXI_RX_RUSER_WIDTH-1 downto 0);
            s01_axi_rx_rvalid	: out std_logic;
            s01_axi_rx_rready	: in std_logic;
            s02_axi_reg_aclk	: in std_logic;
            s02_axi_reg_aresetn	: in std_logic;
            s02_axi_reg_awaddr	: in std_logic_vector(C_S02_AXI_REG_ADDR_WIDTH-1 downto 0);
            s02_axi_reg_awprot	: in std_logic_vector(2 downto 0);
            s02_axi_reg_awvalid	: in std_logic;
            s02_axi_reg_awready	: out std_logic;
            s02_axi_reg_wdata	: in std_logic_vector(C_S02_AXI_REG_DATA_WIDTH-1 downto 0);
            s02_axi_reg_wstrb	: in std_logic_vector((C_S02_AXI_REG_DATA_WIDTH/8)-1 downto 0);
            s02_axi_reg_wvalid	: in std_logic;
            s02_axi_reg_wready	: out std_logic;
            s02_axi_reg_bresp	: out std_logic_vector(1 downto 0);
            s02_axi_reg_bvalid	: out std_logic;
            s02_axi_reg_bready	: in std_logic;
            s02_axi_reg_araddr	: in std_logic_vector(C_S02_AXI_REG_ADDR_WIDTH-1 downto 0);
            s02_axi_reg_arprot	: in std_logic_vector(2 downto 0);
            s02_axi_reg_arvalid	: in std_logic;
            s02_axi_reg_arready	: out std_logic;
            s02_axi_reg_rdata	: out std_logic_vector(C_S02_AXI_REG_DATA_WIDTH-1 downto 0);
            s02_axi_reg_rresp	: out std_logic_vector(1 downto 0);
            s02_axi_reg_rvalid	: out std_logic;
            s02_axi_reg_rready	: in std_logic
        );
    end component;

    signal clk_ps : std_logic;

    signal clk_logic: std_logic;
    signal rxclk: std_logic;
    signal txclk: std_logic;
    signal rst_logic: std_logic;
    signal tc_in: std_logic;
    signal tc_out: std_logic;
    signal spw_di: std_logic;
    signal spw_si: std_logic;
    signal spw_do: std_logic;
    signal spw_so: std_logic;
    signal s00_axi_tx_aclk: std_logic;
    signal s00_axi_tx_aresetn: std_logic;
    signal s00_axi_tx_awid: std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
    signal s00_axi_tx_awaddr: std_logic_vector(C_S00_AXI_TX_ADDR_WIDTH-1 downto 0);
    signal s00_axi_tx_awlen: std_logic_vector(7 downto 0);
    signal s00_axi_tx_awsize: std_logic_vector(2 downto 0);
    signal s00_axi_tx_awburst: std_logic_vector(1 downto 0);
    signal s00_axi_tx_awlock: std_logic;
    signal s00_axi_tx_awcache: std_logic_vector(3 downto 0);
    signal s00_axi_tx_awprot: std_logic_vector(2 downto 0);
    signal s00_axi_tx_awqos: std_logic_vector(3 downto 0);
    signal s00_axi_tx_awregion: std_logic_vector(3 downto 0);
    signal s00_axi_tx_awuser: std_logic_vector(C_S00_AXI_TX_AWUSER_WIDTH-1 downto 0);
    signal s00_axi_tx_awvalid: std_logic;
    signal s00_axi_tx_awready: std_logic;
    signal s00_axi_tx_wdata: std_logic_vector(C_S00_AXI_TX_DATA_WIDTH-1 downto 0);
    signal s00_axi_tx_wstrb: std_logic_vector((C_S00_AXI_TX_DATA_WIDTH/8)-1 downto 0);
    signal s00_axi_tx_wlast: std_logic;
    signal s00_axi_tx_wuser: std_logic_vector(C_S00_AXI_TX_WUSER_WIDTH-1 downto 0);
    signal s00_axi_tx_wvalid: std_logic;
    signal s00_axi_tx_wready: std_logic;
    signal s00_axi_tx_bid: std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
    signal s00_axi_tx_bresp: std_logic_vector(1 downto 0);
    signal s00_axi_tx_buser: std_logic_vector(C_S00_AXI_TX_BUSER_WIDTH-1 downto 0);
    signal s00_axi_tx_bvalid: std_logic;
    signal s00_axi_tx_bready: std_logic;
    signal s00_axi_tx_arid: std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
    signal s00_axi_tx_araddr: std_logic_vector(C_S00_AXI_TX_ADDR_WIDTH-1 downto 0);
    signal s00_axi_tx_arlen: std_logic_vector(7 downto 0);
    signal s00_axi_tx_arsize: std_logic_vector(2 downto 0);
    signal s00_axi_tx_arburst: std_logic_vector(1 downto 0);
    signal s00_axi_tx_arlock: std_logic;
    signal s00_axi_tx_arcache: std_logic_vector(3 downto 0);
    signal s00_axi_tx_arprot: std_logic_vector(2 downto 0);
    signal s00_axi_tx_arqos: std_logic_vector(3 downto 0);
    signal s00_axi_tx_arregion: std_logic_vector(3 downto 0);
    signal s00_axi_tx_aruser: std_logic_vector(C_S00_AXI_TX_ARUSER_WIDTH-1 downto 0);
    signal s00_axi_tx_arvalid: std_logic;
    signal s00_axi_tx_arready: std_logic;
    signal s00_axi_tx_rid: std_logic_vector(C_S00_AXI_TX_ID_WIDTH-1 downto 0);
    signal s00_axi_tx_rdata: std_logic_vector(C_S00_AXI_TX_DATA_WIDTH-1 downto 0);
    signal s00_axi_tx_rresp: std_logic_vector(1 downto 0);
    signal s00_axi_tx_rlast: std_logic;
    signal s00_axi_tx_ruser: std_logic_vector(C_S00_AXI_TX_RUSER_WIDTH-1 downto 0);
    signal s00_axi_tx_rvalid: std_logic;
    signal s00_axi_tx_rready: std_logic;
    signal s01_axi_rx_aclk: std_logic;
    signal s01_axi_rx_aresetn: std_logic;
    signal s01_axi_rx_awid: std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
    signal s01_axi_rx_awaddr: std_logic_vector(C_S01_AXI_RX_ADDR_WIDTH-1 downto 0);
    signal s01_axi_rx_awlen: std_logic_vector(7 downto 0);
    signal s01_axi_rx_awsize: std_logic_vector(2 downto 0);
    signal s01_axi_rx_awburst: std_logic_vector(1 downto 0);
    signal s01_axi_rx_awlock: std_logic;
    signal s01_axi_rx_awcache: std_logic_vector(3 downto 0);
    signal s01_axi_rx_awprot: std_logic_vector(2 downto 0);
    signal s01_axi_rx_awqos: std_logic_vector(3 downto 0);
    signal s01_axi_rx_awregion: std_logic_vector(3 downto 0);
    signal s01_axi_rx_awuser: std_logic_vector(C_S01_AXI_RX_AWUSER_WIDTH-1 downto 0);
    signal s01_axi_rx_awvalid: std_logic;
    signal s01_axi_rx_awready: std_logic;
    signal s01_axi_rx_wdata: std_logic_vector(C_S01_AXI_RX_DATA_WIDTH-1 downto 0);
    signal s01_axi_rx_wstrb: std_logic_vector((C_S01_AXI_RX_DATA_WIDTH/8)-1 downto 0);
    signal s01_axi_rx_wlast: std_logic;
    signal s01_axi_rx_wuser: std_logic_vector(C_S01_AXI_RX_WUSER_WIDTH-1 downto 0);
    signal s01_axi_rx_wvalid: std_logic;
    signal s01_axi_rx_wready: std_logic;
    signal s01_axi_rx_bid: std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
    signal s01_axi_rx_bresp: std_logic_vector(1 downto 0);
    signal s01_axi_rx_buser: std_logic_vector(C_S01_AXI_RX_BUSER_WIDTH-1 downto 0);
    signal s01_axi_rx_bvalid: std_logic;
    signal s01_axi_rx_bready: std_logic;
    signal s01_axi_rx_arid: std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
    signal s01_axi_rx_araddr: std_logic_vector(C_S01_AXI_RX_ADDR_WIDTH-1 downto 0);
    signal s01_axi_rx_arlen: std_logic_vector(7 downto 0);
    signal s01_axi_rx_arsize: std_logic_vector(2 downto 0);
    signal s01_axi_rx_arburst: std_logic_vector(1 downto 0);
    signal s01_axi_rx_arlock: std_logic;
    signal s01_axi_rx_arcache: std_logic_vector(3 downto 0);
    signal s01_axi_rx_arprot: std_logic_vector(2 downto 0);
    signal s01_axi_rx_arqos: std_logic_vector(3 downto 0);
    signal s01_axi_rx_arregion: std_logic_vector(3 downto 0);
    signal s01_axi_rx_aruser: std_logic_vector(C_S01_AXI_RX_ARUSER_WIDTH-1 downto 0);
    signal s01_axi_rx_arvalid: std_logic;
    signal s01_axi_rx_arready: std_logic;
    signal s01_axi_rx_rid: std_logic_vector(C_S01_AXI_RX_ID_WIDTH-1 downto 0);
    signal s01_axi_rx_rdata: std_logic_vector(C_S01_AXI_RX_DATA_WIDTH-1 downto 0);
    signal s01_axi_rx_rresp: std_logic_vector(1 downto 0);
    signal s01_axi_rx_rlast: std_logic;
    signal s01_axi_rx_ruser: std_logic_vector(C_S01_AXI_RX_RUSER_WIDTH-1 downto 0);
    signal s01_axi_rx_rvalid: std_logic;
    signal s01_axi_rx_rready: std_logic;
    signal s02_axi_reg_aclk: std_logic;
    signal s02_axi_reg_aresetn: std_logic;
    signal s02_axi_reg_awaddr: std_logic_vector(C_S02_AXI_REG_ADDR_WIDTH-1 downto 0);
    signal s02_axi_reg_awprot: std_logic_vector(2 downto 0);
    signal s02_axi_reg_awvalid: std_logic;
    signal s02_axi_reg_awready: std_logic;
    signal s02_axi_reg_wdata: std_logic_vector(C_S02_AXI_REG_DATA_WIDTH-1 downto 0);
    signal s02_axi_reg_wstrb: std_logic_vector((C_S02_AXI_REG_DATA_WIDTH/8)-1 downto 0);
    signal s02_axi_reg_wvalid: std_logic;
    signal s02_axi_reg_wready: std_logic;
    signal s02_axi_reg_bresp: std_logic_vector(1 downto 0);
    signal s02_axi_reg_bvalid: std_logic;
    signal s02_axi_reg_bready: std_logic;
    signal s02_axi_reg_araddr: std_logic_vector(C_S02_AXI_REG_ADDR_WIDTH-1 downto 0);
    signal s02_axi_reg_arprot: std_logic_vector(2 downto 0);
    signal s02_axi_reg_arvalid: std_logic;
    signal s02_axi_reg_arready: std_logic;
    signal s02_axi_reg_rdata: std_logic_vector(C_S02_AXI_REG_DATA_WIDTH-1 downto 0);
    signal s02_axi_reg_rresp: std_logic_vector(1 downto 0);
    signal s02_axi_reg_rvalid: std_logic;
    signal s02_axi_reg_rready: std_logic ;

    -- Testbench functions.
    procedure WriteFullAXI(signal awid : out std_logic_vector; constant awid_val : in std_logic_vector; signal awaddr : out std_logic_vector; constant awaddr_val : in std_logic_vector; signal awlen : out std_logic_vector(7 downto 0); constant awlen_val : in std_logic_vector(7 downto 0); signal awburst : out std_logic_vector(1 downto 0); constant awburst_val : in std_logic_vector(1 downto 0); signal awvalid : out std_logic; constant awvalid_val : in std_logic;
                           signal wdata : out std_logic_vector; constant wdata_val : in std_logic_vector; signal wstrb : out std_logic_vector; constant wstrb_val : in std_logic_vector; signal wlast : out std_logic; constant wlast_val : in std_logic; signal wvalid : out std_logic; constant wvalid_val : in std_logic;
                           signal bready : out std_logic; constant bready_val : in std_logic) is
        -- Save original signal values to restore them later...
        constant c_awid : std_logic_vector := awid;
        constant c_awaddr : std_logic_vector := awaddr;
        constant c_awlen : std_logic_vector(7 downto 0) := awlen;
        constant c_awburst : std_logic_vector(1 downto 0) := awburst;
        constant c_awvalid : std_logic := awvalid;
        constant c_wdata : std_logic_vector := wdata;
        constant c_wstrb : std_logic_vector := wstrb;
        constant c_wlast : std_logic := wlast;
        constant c_wvalid : std_logic := wvalid;
        constant c_bready : std_logic := bready;

        -- Internal constants.
        constant c_burstlength : integer := to_integer(unsigned(awlen_val));
    begin
        if c_burstlength > 0 then
            -- Burst Transfer.

            for i in 0 to c_burstlength loop
                if i /= c_burstlength then

                else
                -- Last iteration in burst transfer...
                end if;
            end loop;
        else
            -- Single Transfer.

            wait until falling_edge(clk_logic);

            -- Write address id.
            awid <= awid_val;
            -- Write address.
            awaddr <= awaddr_val;
            -- Burst length. The burst length gives the exact number of transfers in a burst
            awlen <= awlen_val;
            -- Burst Type. The burst type and the size information determine how the address for each transfer within the burst is calculated.
            awburst <= awburst_val;
            -- Write address valid. This signal indicates that the channel is signaling valid write address and control information.
            awvalid <= awvalid_val;

            --  Write data.
            wdata <= wdata_val;
            -- Write strobes. This signal indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
            wstrb <= wstrb_val;
            -- Write last. This signal indicates the last transfer in a write burst.
            wlast <= wlast;
            -- Write valid. This signal indicates that valid write data and strobes are available.
            wvalid <= wvalid_val;

            -- Response ready. This signal indicates that the channel is signaling a valid write response.
            bready <= bready_val;
        end if;
    end procedure WriteFullAXI;


begin
    -- ps clock assignments.
    s00_axi_tx_aclk <= clk_ps;
    s01_axi_rx_aclk <= clk_ps;
    s02_axi_reg_aclk <= clk_ps;


    -- Insert values for generic parameters !!
    uut: AXI_SpaceWire_IP_v1_0 generic map (sysfreq                   => sysfreq,
                    txclkfreq                 => txclkfreq,
                    rximpl                    => rximpl,
                    tximpl                    => tximpl,
                    rxchunk                   => rxchunk,
                    rxfifosize_bits           => rxfifosize_bits,
                    txfifosize_bits           => txfifosize_bits,
                    C_S00_AXI_TX_ID_WIDTH     => C_S00_AXI_TX_ID_WIDTH,
                    C_S00_AXI_TX_DATA_WIDTH   => C_S00_AXI_TX_DATA_WIDTH,
                    C_S00_AXI_TX_ADDR_WIDTH   => C_S00_AXI_TX_ADDR_WIDTH,
                    C_S00_AXI_TX_AWUSER_WIDTH => C_S00_AXI_TX_AWUSER_WIDTH,
                    C_S00_AXI_TX_ARUSER_WIDTH => C_S00_AXI_TX_ARUSER_WIDTH,
                    C_S00_AXI_TX_WUSER_WIDTH  => C_S00_AXI_TX_WUSER_WIDTH,
                    C_S00_AXI_TX_RUSER_WIDTH  => C_S00_AXI_TX_RUSER_WIDTH,
                    C_S00_AXI_TX_BUSER_WIDTH  => C_S00_AXI_TX_BUSER_WIDTH,
                    C_S01_AXI_RX_ID_WIDTH     => C_S01_AXI_RX_ID_WIDTH,
                    C_S01_AXI_RX_DATA_WIDTH   => C_S01_AXI_RX_DATA_WIDTH,
                    C_S01_AXI_RX_ADDR_WIDTH   => C_S01_AXI_RX_ADDR_WIDTH,
                    C_S01_AXI_RX_AWUSER_WIDTH => C_S01_AXI_RX_AWUSER_WIDTH,
                    C_S01_AXI_RX_ARUSER_WIDTH => C_S01_AXI_RX_ARUSER_WIDTH,
                    C_S01_AXI_RX_WUSER_WIDTH  => C_S01_AXI_RX_WUSER_WIDTH,
                    C_S01_AXI_RX_RUSER_WIDTH  => C_S01_AXI_RX_RUSER_WIDTH,
                    C_S01_AXI_RX_BUSER_WIDTH  => C_S01_AXI_RX_BUSER_WIDTH,
                    C_S02_AXI_REG_DATA_WIDTH  => C_S02_AXI_REG_DATA_WIDTH,
                    C_S02_AXI_REG_ADDR_WIDTH  => C_S02_AXI_REG_ADDR_WIDTH)
        port map ( clk_logic                 => clk_logic,
                 rxclk                     => rxclk,
                 txclk                     => txclk,
                 rst_logic                 => rst_logic,
                 tc_in                     => tc_in,
                 tc_out                    => tc_out,
                 spw_di                    => spw_di,
                 spw_si                    => spw_si,
                 spw_do                    => spw_do,
                 spw_so                    => spw_so,
                 s00_axi_tx_aclk           => s00_axi_tx_aclk,
                 s00_axi_tx_aresetn        => s00_axi_tx_aresetn,
                 s00_axi_tx_awid           => s00_axi_tx_awid,
                 s00_axi_tx_awaddr         => s00_axi_tx_awaddr,
                 s00_axi_tx_awlen          => s00_axi_tx_awlen,
                 s00_axi_tx_awsize         => s00_axi_tx_awsize,
                 s00_axi_tx_awburst        => s00_axi_tx_awburst,
                 s00_axi_tx_awlock         => s00_axi_tx_awlock,
                 s00_axi_tx_awcache        => s00_axi_tx_awcache,
                 s00_axi_tx_awprot         => s00_axi_tx_awprot,
                 s00_axi_tx_awqos          => s00_axi_tx_awqos,
                 s00_axi_tx_awregion       => s00_axi_tx_awregion,
                 s00_axi_tx_awuser         => s00_axi_tx_awuser,
                 s00_axi_tx_awvalid        => s00_axi_tx_awvalid,
                 s00_axi_tx_awready        => s00_axi_tx_awready,
                 s00_axi_tx_wdata          => s00_axi_tx_wdata,
                 s00_axi_tx_wstrb          => s00_axi_tx_wstrb,
                 s00_axi_tx_wlast          => s00_axi_tx_wlast,
                 s00_axi_tx_wuser          => s00_axi_tx_wuser,
                 s00_axi_tx_wvalid         => s00_axi_tx_wvalid,
                 s00_axi_tx_wready         => s00_axi_tx_wready,
                 s00_axi_tx_bid            => s00_axi_tx_bid,
                 s00_axi_tx_bresp          => s00_axi_tx_bresp,
                 s00_axi_tx_buser          => s00_axi_tx_buser,
                 s00_axi_tx_bvalid         => s00_axi_tx_bvalid,
                 s00_axi_tx_bready         => s00_axi_tx_bready,
                 s00_axi_tx_arid           => s00_axi_tx_arid,
                 s00_axi_tx_araddr         => s00_axi_tx_araddr,
                 s00_axi_tx_arlen          => s00_axi_tx_arlen,
                 s00_axi_tx_arsize         => s00_axi_tx_arsize,
                 s00_axi_tx_arburst        => s00_axi_tx_arburst,
                 s00_axi_tx_arlock         => s00_axi_tx_arlock,
                 s00_axi_tx_arcache        => s00_axi_tx_arcache,
                 s00_axi_tx_arprot         => s00_axi_tx_arprot,
                 s00_axi_tx_arqos          => s00_axi_tx_arqos,
                 s00_axi_tx_arregion       => s00_axi_tx_arregion,
                 s00_axi_tx_aruser         => s00_axi_tx_aruser,
                 s00_axi_tx_arvalid        => s00_axi_tx_arvalid,
                 s00_axi_tx_arready        => s00_axi_tx_arready,
                 s00_axi_tx_rid            => s00_axi_tx_rid,
                 s00_axi_tx_rdata          => s00_axi_tx_rdata,
                 s00_axi_tx_rresp          => s00_axi_tx_rresp,
                 s00_axi_tx_rlast          => s00_axi_tx_rlast,
                 s00_axi_tx_ruser          => s00_axi_tx_ruser,
                 s00_axi_tx_rvalid         => s00_axi_tx_rvalid,
                 s00_axi_tx_rready         => s00_axi_tx_rready,
                 s01_axi_rx_aclk           => s01_axi_rx_aclk,
                 s01_axi_rx_aresetn        => s01_axi_rx_aresetn,
                 s01_axi_rx_awid           => s01_axi_rx_awid,
                 s01_axi_rx_awaddr         => s01_axi_rx_awaddr,
                 s01_axi_rx_awlen          => s01_axi_rx_awlen,
                 s01_axi_rx_awsize         => s01_axi_rx_awsize,
                 s01_axi_rx_awburst        => s01_axi_rx_awburst,
                 s01_axi_rx_awlock         => s01_axi_rx_awlock,
                 s01_axi_rx_awcache        => s01_axi_rx_awcache,
                 s01_axi_rx_awprot         => s01_axi_rx_awprot,
                 s01_axi_rx_awqos          => s01_axi_rx_awqos,
                 s01_axi_rx_awregion       => s01_axi_rx_awregion,
                 s01_axi_rx_awuser         => s01_axi_rx_awuser,
                 s01_axi_rx_awvalid        => s01_axi_rx_awvalid,
                 s01_axi_rx_awready        => s01_axi_rx_awready,
                 s01_axi_rx_wdata          => s01_axi_rx_wdata,
                 s01_axi_rx_wstrb          => s01_axi_rx_wstrb,
                 s01_axi_rx_wlast          => s01_axi_rx_wlast,
                 s01_axi_rx_wuser          => s01_axi_rx_wuser,
                 s01_axi_rx_wvalid         => s01_axi_rx_wvalid,
                 s01_axi_rx_wready         => s01_axi_rx_wready,
                 s01_axi_rx_bid            => s01_axi_rx_bid,
                 s01_axi_rx_bresp          => s01_axi_rx_bresp,
                 s01_axi_rx_buser          => s01_axi_rx_buser,
                 s01_axi_rx_bvalid         => s01_axi_rx_bvalid,
                 s01_axi_rx_bready         => s01_axi_rx_bready,
                 s01_axi_rx_arid           => s01_axi_rx_arid,
                 s01_axi_rx_araddr         => s01_axi_rx_araddr,
                 s01_axi_rx_arlen          => s01_axi_rx_arlen,
                 s01_axi_rx_arsize         => s01_axi_rx_arsize,
                 s01_axi_rx_arburst        => s01_axi_rx_arburst,
                 s01_axi_rx_arlock         => s01_axi_rx_arlock,
                 s01_axi_rx_arcache        => s01_axi_rx_arcache,
                 s01_axi_rx_arprot         => s01_axi_rx_arprot,
                 s01_axi_rx_arqos          => s01_axi_rx_arqos,
                 s01_axi_rx_arregion       => s01_axi_rx_arregion,
                 s01_axi_rx_aruser         => s01_axi_rx_aruser,
                 s01_axi_rx_arvalid        => s01_axi_rx_arvalid,
                 s01_axi_rx_arready        => s01_axi_rx_arready,
                 s01_axi_rx_rid            => s01_axi_rx_rid,
                 s01_axi_rx_rdata          => s01_axi_rx_rdata,
                 s01_axi_rx_rresp          => s01_axi_rx_rresp,
                 s01_axi_rx_rlast          => s01_axi_rx_rlast,
                 s01_axi_rx_ruser          => s01_axi_rx_ruser,
                 s01_axi_rx_rvalid         => s01_axi_rx_rvalid,
                 s01_axi_rx_rready         => s01_axi_rx_rready,
                 s02_axi_reg_aclk          => s02_axi_reg_aclk,
                 s02_axi_reg_aresetn       => s02_axi_reg_aresetn,
                 s02_axi_reg_awaddr        => s02_axi_reg_awaddr,
                 s02_axi_reg_awprot        => s02_axi_reg_awprot,
                 s02_axi_reg_awvalid       => s02_axi_reg_awvalid,
                 s02_axi_reg_awready       => s02_axi_reg_awready,
                 s02_axi_reg_wdata         => s02_axi_reg_wdata,
                 s02_axi_reg_wstrb         => s02_axi_reg_wstrb,
                 s02_axi_reg_wvalid        => s02_axi_reg_wvalid,
                 s02_axi_reg_wready        => s02_axi_reg_wready,
                 s02_axi_reg_bresp         => s02_axi_reg_bresp,
                 s02_axi_reg_bvalid        => s02_axi_reg_bvalid,
                 s02_axi_reg_bready        => s02_axi_reg_bready,
                 s02_axi_reg_araddr        => s02_axi_reg_araddr,
                 s02_axi_reg_arprot        => s02_axi_reg_arprot,
                 s02_axi_reg_arvalid       => s02_axi_reg_arvalid,
                 s02_axi_reg_arready       => s02_axi_reg_arready,
                 s02_axi_reg_rdata         => s02_axi_reg_rdata,
                 s02_axi_reg_rresp         => s02_axi_reg_rresp,
                 s02_axi_reg_rvalid        => s02_axi_reg_rvalid,
                 s02_axi_reg_rready        => s02_axi_reg_rready );

    stimulus: process
    begin

        -- Put initialisation code here


        -- Put test bench stimulus code here

        wait;
    end process;

    -- Clocking processes.
    pl_clock: process
    begin
        clk_logic <= '0', '1' after pl_clock_period / 2;
        wait for pl_clock_period;
    end process;

    ps_clock: process
    begin
        clk_ps <= '0', '1' after ps_clock_period / 2;
        wait for ps_clock_period;
    end process;
end AXI_SpaceWire_IP_v1_0_tb_arch;
