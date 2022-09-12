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
    --constant txclkfreq:      real := 0.0;
    constant rximpl:         spw_implementation_type := impl_fast;
    constant rxchunk:        integer range 1 to 4 := 1;
    constant tximpl:         spw_implementation_type := impl_fast;
    constant rxfifosize_bits: integer range 6 to 14 := 11;
    constant txfifosize_bits: integer range 2 to 14 := 11;
    
    
    -- Array type definition (used for AXI4-Transfer procedures)
    type array_t is array(natural range <>) of std_logic_vector;


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
    signal rst_ps : std_logic;

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
    
    -- Creates single AXI4-Lite read transaction (rdata signal is updated automatically after this procedure)
    procedure AXI4LiteRead(signal araddr : out std_logic_vector; constant araddr_val : in std_logic_vector; signal arvalid : out std_logic; signal arready : in std_logic; -- read address channel
                           signal rready : out std_logic; signal rvalid : in std_logic) -- read data channel
                           is
    begin
        wait until rising_edge(clk_ps); -- Simulate synchronous circuit
    
        -- Asserting AXI4-Lite signals for read transfer.
        -- Read Address Channel
        araddr <= araddr_val;
        arvalid <= '1'; -- Set master handshake signal for read address channel
        
        wait until rising_edge(clk_ps) and arready = '1';
        wait for ps_clock_period/2; -- wait a while before reset handshake...
        arvalid <= '0'; -- Reset handshake signal
     
        -- Read Data Channel
        rready <= '1';  

        wait until rising_edge(clk_ps) and rvalid = '1';
        wait for ps_clock_period/2; -- wait a while before reset handshake...
        rready <= '0'; -- Reset handshake signal 
    end procedure AXI4LiteRead;

    -- Creates single AXI4-Lite write transaction
    procedure AXI4LiteWrite(signal awaddr : out std_logic_vector; constant awaddr_val : in std_logic_vector; signal awvalid : out std_logic; signal awready : in std_logic; -- write address channel
                            signal wdata : out std_logic_vector; constant wdata_val : in std_logic_vector; signal wstrb : out std_logic_vector; constant wstrb_val : in std_logic_vector; signal wvalid : out std_logic; signal wready : in std_logic; -- write data channel
                            signal bready : out std_logic; signal bvalid : in std_logic) -- write response channel
                            is
    begin
        wait until rising_edge(clk_ps);
    
        -- Asserting AXI4-Lite signals for write transfer.
        -- Write Address Channel
        awaddr <= awaddr_val;
        awvalid <= '1'; -- Set master handshake signal for write address channel
        -- Write Data Channel
        wdata <= wdata_val;
        wstrb <= wstrb_val;
        wvalid <= '1'; -- Set master handshake signal for write data channel
        
        wait until rising_edge(clk_ps) and awready = '1' and wready = '1'; -- wait for next rising_edge and check slave handshake signals
        wait for ps_clock_period/2; -- wait a while before reset handshake...
        bready <= '1';  -- Set slave handshake signal for write response channel
        awvalid <= '0'; -- Reset handshake signal
        wvalid <= '0'; -- Reset handshake signal
        
        -- ... and channel signals
        awaddr <= (others => '0');
        awvalid <= '0';
        wdata <= (others => '0');
        wstrb <= (others => '0');
        
        -- Write response handshake must be done last: same procedure
        wait until rising_edge(clk_ps) and bvalid = '1';
        wait for ps_clock_period/2;        
        bready <= '0'; -- Reset handshake signal
    end procedure AXI4LiteWrite;

    procedure AXI4FullRead(signal araddr : out std_logic_vector; constant araddr_val : in std_logic_vector; signal arlen : out std_logic_vector(7 downto 0); constant arlen_val : in std_logic_vector(7 downto 0); signal arburst : out std_logic_vector(1 downto 0); constant arburst_val : in std_logic_vector(1 downto 0); signal arvalid : out std_logic; signal arready : in std_logic; -- Read Address Channel
                           signal rlast : in std_logic; signal rvalid : in std_logic; signal rready : out std_logic -- Read Data Channel
                           ) is
        variable transfer_length : integer := to_integer(unsigned(arlen_val)) - 1;
    begin
        wait until rising_edge(clk_ps);
        report "Start AXI4 Full Read...";
        
        -- Before starting transfer, drive control information that won't change during process.
        -- Read Address Channel
        araddr <= araddr_val;
        arlen <= arlen_val;
        arburst <= arburst_val;

        arvalid <= '1'; -- Set master handshake signal for read address channel
        
        wait until rising_edge(clk_ps) and arready = '1';
        arvalid <= '0';
        
        --wait for ps_clock_period;       
        rready <= '1';
              
        -- Loop until rlast signal is HIGH
        while rlast = '0' loop
            --rready <= '1';
        
            wait until rising_edge(clk_ps) and rvalid = '1';
            --wait for ps_clock_period/2;
            
            --rready <= '0';
            
            --wait for ps_clock_period/2;
        end loop;
            
        wait until rising_edge(clk_ps);
        wait for ps_clock_period/2;
        --rready <= '0';
        
        -- Burst transfer finished so reset all relevant signals.
        araddr <= (others => '0');
        arlen <= (others => '0');
        arburst <= (others => '0');
        
        --arvalid <= '0';
        rready <= '0';
    end procedure AXI4FullRead;

    procedure AXI4FullWrite(signal awaddr : out std_logic_vector; constant awaddr_val : in std_logic_vector; signal awlen : out std_logic_vector(7 downto 0); constant awlen_val : in std_logic_vector(7 downto 0); signal awburst : out std_logic_vector(1 downto 0); constant awburst_val : in std_logic_vector(1 downto 0); signal awvalid : out std_logic; signal awready : in std_logic; -- write address channel
                            signal wdata : out std_logic_vector; constant wdata_val : in array_t; signal wstrb : out std_logic_vector; constant wstrb_val : in std_logic_vector; signal wlast : out std_logic; signal wvalid : out std_logic; signal wready : in std_logic; -- write data channel
                            signal bready : out std_logic; signal bvalid : in std_logic) -- write response channel
                            is
        variable transfer_length : integer := to_integer(unsigned(awlen_val)) - 1;
    begin
        wait until rising_edge(clk_ps);
        report "Start AXI4 Full Write...";
        -- Before starting transfer, drive control information that won't change during process.
        -- Write Address Channel
        awaddr <= awaddr_val;
        awlen <= awlen;
        awburst <= awburst;
        awvalid <= '1'; -- Set master handshake signal for write address channel
        
        bready <= '1';
        
        wait until rising_edge(clk_ps) and awready = '1';
        wait for ps_clock_period/2;
        awvalid <= '0';

        wvalid <= '1';
        for i in 0 to transfer_length loop
            wdata <= wdata_val(i);
            wstrb <= wstrb_val;
            
            wlast <= '1' when i = transfer_length else '0';
            
            --wait until rising_edge(clk_ps) and wready = '1';
            --wait for ps_clock_period/2;
            
            --bready <= '1';
            --wvalid <= '0';
            
            wait until rising_edge(clk_ps) and wready = '1';
            wait for ps_clock_period/2;
            
            --bready <= '0';
            
            report "i is " & integer'image(i);
        end loop;
        
        --wait for ps_clock_period/2;
        
        wait until rising_edge(clk_ps) and bvalid = '1';
        wait for ps_clock_period/2;
        
        -- burst transfer finished, so reset all handshake & control signals.
        awaddr <= (others => '0');
        awlen <= (others => '0');
        awburst <= (others => '0');
        awvalid <= '0';
        wdata <= (others => '0');
        wstrb <= (others => '0');
        wvalid <= '0';
        wlast <= '0';
        bready <= '0';
        
        report "AXI4 Full Write Done!";
    end procedure AXI4FullWrite;


begin
    -- General assignments that won't change during simulation.

    -- ps clock assignments.
    s00_axi_tx_aclk <= clk_ps;
    s01_axi_rx_aclk <= clk_ps;
    s02_axi_reg_aclk <= clk_ps;

    -- ps rst assignments (active_low !)
    s00_axi_tx_aresetn <= rst_ps;
    s01_axi_rx_aresetn <= rst_ps;
    s02_axi_reg_aresetn <= rst_ps;

    -- spwstream clock assignments.
    rxclk <= clk_logic;
    txclk <= clk_logic;

    -- SpaceWire signal assignments.
    spw_di <= spw_do;
    spw_si <= spw_so;



    -- Design under test (AXI-SpaceWire peripheral)
    dut: AXI_SpaceWire_IP_v1_0 generic map (
            sysfreq                   => sysfreq,
            txclkfreq                 => sysfreq,
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
        port map (
            clk_logic                 => clk_logic,
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


    -- Stimulus for AXI4-Full-TX-Interface.
    stimulus_TX: process
        variable data : array_t(0 to 3)(31 downto 0);
    begin
        wait on rst_ps;
        --wait for 2 * ps_clock_period;
    
        -- Set initial signal values (only signals that are used !).
        s00_axi_tx_awid <= (others => '0');
        s00_axi_tx_awaddr <= (others => '0');
        s00_axi_tx_awlen <= (others => '0');
        --s00_axi_tx_awsize <= (others => '0'); -- not used in dut !
        s00_axi_tx_awburst <= (others => '0');
        --s00_axi_tx_awlock <= '0'; -- not used in dut !
        --s00_axi_tx_awcache <= (others => '0'); -- not used in dut !
        --s00_axi_tx_awprot <= (others => '0'); -- not used in dut !
        --s00_axi_tx_awqos <= (others => '0'); -- not used in dut !
        --s00_axi_tx_awregion <= (others => '0'); -- not used in dut !
        --s00_axi_tx_awregion <= (others => '0'); -- not used in dut !
        s00_axi_tx_awvalid <= '0';
        s00_axi_tx_wdata <= (others => '0');
        s00_axi_tx_wstrb <= (others => '0');
        s00_axi_tx_wlast <= '0';
        s00_axi_tx_wvalid <= '0';
        s00_axi_tx_bid <= (others => '0');
        s00_axi_tx_bready <= '0';
        s00_axi_tx_arid <= (others => '0');
        s00_axi_tx_araddr <= (others => '0');
        s00_axi_tx_arlen <= (others => '0');
        --s00_axi_tx_arsize <= (others => '0'); -- not used in dut !
        s00_axi_tx_arburst <= (others => '0');
        --s00_axi_tx_arlock <= '0'; -- not used in dut !
        s00_axi_tx_arcache <= (others => '0');
        s00_axi_tx_arprot <= (others => '0');
        --s00_axi_tx_arqos <= (others => '0'); -- not used in dut !
        --s00_axi_tx_arregion <= (others => '0'); -- not used in dut !
        s00_axi_tx_arvalid <= '0';
        s00_axi_tx_rid <= (others => '0');
        s00_axi_tx_rready <= '0';
        -- Finished !
        
        
        wait for 5 us;
                
        -- Perform single transfer to write into TX fifo (if spwstream is activated and in running mode it should send this data asap)
        -- define some pseudo data:
        data(0) := x"fffff0f0"; -- Data (destination)
        data(1) := x"AAAAA0ff"; -- Data (cargo)
        data(2) := x"0000000f"; -- Data (cargo)
        data(3) := x"f0f0ff00"; -- EOP
        
        --report "length of data is " & integer'image(data'length);
        
        AXI4FullWrite(s00_axi_tx_awaddr, "000",
                      s00_axi_tx_awlen, std_logic_vector(to_unsigned(data'length, s00_axi_tx_awlen'length)), -- awlen is zero-based index !
                      s00_axi_tx_awburst, "00", -- FIXED BURST
                      s00_axi_tx_awvalid,
                      s00_axi_tx_awready,
                      s00_axi_tx_wdata, data,
                      s00_axi_tx_wstrb, "0011",
                      s00_axi_tx_wlast,
                      s00_axi_tx_wvalid,
                      s00_axi_tx_wready,
                      s00_axi_tx_bready,
                      s00_axi_tx_bvalid);
                      
        wait for 10 us;
                      
        wait;
    end process;

    -- Stimulus for AXI4-Full-RX-Interface.
    stimulus_RX: process
    begin
        wait on rst_ps;
        wait for 2 * ps_clock_period;
    
        -- Set initial signal values (only signals that are used !).
        s01_axi_rx_awid <= (others => '0');
        s01_axi_rx_awaddr <= (others => '0');
        s01_axi_rx_awlen <= (others => '0');
        --s01_axi_rx_awsize <= (others => '0');  -- not used in dut !
        s01_axi_rx_awburst <= (others => '0');
        --s01_axi_rx_awlock <= '0'; -- not used in dut !
        --s01_axi_rx_awcache <= (others => '0'); -- not used in dut !
        --s01_axi_rx_awprot <= (others => '0'); -- not used in dut !
        --s01_axi_rx_awqos <= (others => '0'); -- not used in dut !
        --s01_axi_rx_awregion <= (others => '0'); -- not used in dut !
        --s01_axi_rx_awregion <= (others => '0'); -- not used in dut !
        s01_axi_rx_awvalid <= '0';
        s01_axi_rx_wdata <= (others => '0');
        s01_axi_rx_wstrb <= (others => '0');
        s01_axi_rx_wlast <= '0';
        s01_axi_rx_wvalid <= '0';
        s01_axi_rx_bid <= (others => '0');
        s01_axi_rx_bready <= '0';
        s01_axi_rx_arid <= (others => '0');
        s01_axi_rx_araddr <= (others => '0');
        s01_axi_rx_arlen <= (others => '0');
        --s01_axi_rx_arsize <= (others => '0'); -- not used in dut !
        s01_axi_rx_arburst <= (others => '0');
        --s01_axi_rx_arlock <= '0'; -- not used in dut !
        s01_axi_rx_arcache <= (others => '0');
        s01_axi_rx_arprot <= (others => '0');
        --s01_axi_rx_arqos <= (others => '0'); -- not used in dut !
        --s01_axi_rx_arregion <= (others => '0'); -- not used in dut !
        s01_axi_rx_arvalid <= '0';
        s01_axi_rx_rid <= (others => '0');
        s01_axi_rx_rready <= '0';
        -- Finished !
        
        wait for 25 us;
        
        -- Perform read transfer
        AXI4FullRead(s01_axi_rx_araddr, "000",
                     s01_axi_rx_arlen, std_logic_vector(to_unsigned(4, s01_axi_rx_arlen'length)),
                     s01_axi_rx_arburst, "00", -- FIXED BURST
                     s01_axi_rx_arvalid,
                     s01_axi_rx_arready, -- read address channel
                     s01_axi_rx_rlast,
                     s01_axi_rx_rvalid,
                     s01_axi_rx_rready); -- read data channel
                     
        wait for 10 us;
        
        wait;
    end process;

    -- Stimulus for AXI4-Lite-Register-Interface.
    stimulus_REG: process
    begin
        wait on rst_ps;
        wait for 2 * ps_clock_period;

        -- Set initial signal values (only signals that are used !).
        s02_axi_reg_awaddr <= (others => '0');
        --s02_axi_reg_awprot <= (others => '0'); -- not used in dut !
        s02_axi_reg_awvalid <= '0';
        s02_axi_reg_wdata <= (others => '0');
        s02_axi_reg_wstrb <= (others => '0');
        s02_axi_reg_wvalid <= '0';
        s02_axi_reg_bready <= '0';
        s02_axi_reg_araddr <= (others => '0');
        --s02_axi_reg_arport <= (others => '0'); -- not used in dut !
        s02_axi_reg_arvalid <= '0';
        s02_axi_reg_bready <= '0';
        -- Finished !

        -- Perform write transfer to initial spwstream and to produce signals on spw_di/spw_do and spw_si/spw_so
        AXI4LiteWrite(s02_axi_reg_awaddr, "00000",
                      s02_axi_reg_awvalid,
                      s02_axi_reg_awready, -- write address channel
                      s02_axi_reg_wdata, x"0000_0006",
                      s02_axi_reg_wstrb, "1111",
                      s02_axi_reg_wvalid,
                      s02_axi_reg_wready, -- write data channel
                      s02_axi_reg_bready,
                      s02_axi_reg_bvalid); -- write response channel

        -- Read Configuration register to make sure that spwstream is activated        
        AXI4LiteRead(s02_axi_reg_araddr, "00000",
                     s02_axi_reg_arvalid,
                     s02_axi_reg_arready, -- read address channel
                     s02_axi_reg_rready,
                     s02_axi_reg_rvalid); -- read data channel
                      
--        wait for 40 us;

        -- Write transfer to disable spwstream.
--        AXI4LiteWrite(s02_axi_reg_awaddr, "00000",
--                      s02_axi_reg_awvalid,
--                      s02_axi_reg_awready, -- write address channel
--                      s02_axi_reg_wdata, x"0000_0001",
--                      s02_axi_reg_wstrb, "1111",
--                      s02_axi_reg_wvalid,
--                      s02_axi_reg_wready, -- write data channel
--                      s02_axi_reg_bready,
--                      s02_axi_reg_bvalid); -- write response channel
        
--        wait for 10 us; 

        -- Read Configuration register again to check its value
--        AXI4LiteRead(s02_axi_reg_araddr, "00000",
--                     s02_axi_reg_arvalid,
--                     s02_axi_reg_arready, -- read address channel
--                     s02_axi_reg_rready,
--                     s02_axi_reg_rvalid); -- read data channel
        
--        wait for 5 us;
        
        -- Activate spwstream again
--        AXI4LiteWrite(s02_axi_reg_awaddr, "00000",
--                      s02_axi_reg_awvalid,
--                      s02_axi_reg_awready, -- write address channel
--                      s02_axi_reg_wdata, x"0000_0006",
--                      s02_axi_reg_wstrb, "1111",
--                      s02_axi_reg_wvalid,
--                      s02_axi_reg_wready, -- write data channel
--                      s02_axi_reg_bready,
--                      s02_axi_reg_bvalid); -- write response channel

--        wait for 15 us;

        -- Read Status register of spwstream
--        AXI4LiteRead(s02_axi_reg_araddr, "10000",
--                     s02_axi_reg_arvalid,
--                     s02_axi_reg_arready, -- read address channel
--                     s02_axi_reg_rready,
--                     s02_axi_reg_rvalid); -- read data channel

        wait;
    end process;

    -- Stimulus for SpaceWire-specific signals.
    stimulus_spwstream: process
    begin
        -- Set initial signal values.
        tc_in <= '0';
        wait; -- wait forever
    end process;


    -- Initial reset (maybe not neccessary in implementation !)
    init_rst: process
    begin
        -- Careful: pl reset is active_high, ps reset is active_low !
        rst_ps <= '0', '1' after 6 * ps_clock_period; -- don't change !
        rst_logic <= '1', '0' after 6 * ps_clock_period; -- don't change !
        wait; -- wait forever
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
