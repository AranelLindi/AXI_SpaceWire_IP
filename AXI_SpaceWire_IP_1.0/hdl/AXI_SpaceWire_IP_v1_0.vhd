library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_SpaceWire_IP_v1_0 is
	generic (
		-- Users to add parameters here

		-- User parameters ends
		-- Do not modify the parameters beyond this line


		-- Parameters of Axi Slave Bus Interface S00_AXI_TX
		C_S00_AXI_TX_ID_WIDTH	: integer	:= 1;
		C_S00_AXI_TX_DATA_WIDTH	: integer	:= 32;
		C_S00_AXI_TX_ADDR_WIDTH	: integer	:= 8;
		C_S00_AXI_TX_AWUSER_WIDTH	: integer	:= 0;
		C_S00_AXI_TX_ARUSER_WIDTH	: integer	:= 0;
		C_S00_AXI_TX_WUSER_WIDTH	: integer	:= 0;
		C_S00_AXI_TX_RUSER_WIDTH	: integer	:= 0;
		C_S00_AXI_TX_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Slave Bus Interface S01_AXI_RX
		C_S01_AXI_RX_ID_WIDTH	: integer	:= 1;
		C_S01_AXI_RX_DATA_WIDTH	: integer	:= 32;
		C_S01_AXI_RX_ADDR_WIDTH	: integer	:= 7;
		C_S01_AXI_RX_AWUSER_WIDTH	: integer	:= 0;
		C_S01_AXI_RX_ARUSER_WIDTH	: integer	:= 0;
		C_S01_AXI_RX_WUSER_WIDTH	: integer	:= 0;
		C_S01_AXI_RX_RUSER_WIDTH	: integer	:= 0;
		C_S01_AXI_RX_BUSER_WIDTH	: integer	:= 0;

		-- Parameters of Axi Slave Bus Interface S02_AXI_REG
		C_S02_AXI_REG_DATA_WIDTH	: integer	:= 32;
		C_S02_AXI_REG_ADDR_WIDTH	: integer	:= 4
	);
	port (
		-- Users to add ports here

		-- User ports ends
		-- Do not modify the ports beyond this line


		-- Ports of Axi Slave Bus Interface S00_AXI_TX
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

		-- Ports of Axi Slave Bus Interface S01_AXI_RX
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

		-- Ports of Axi Slave Bus Interface S02_AXI_REG
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
end AXI_SpaceWire_IP_v1_0;

architecture arch_imp of AXI_SpaceWire_IP_v1_0 is

	-- component declaration
	component AXI_SpaceWire_IP_v1_0_S00_AXI_TX is
		generic (
		C_S_AXI_ID_WIDTH	: integer	:= 1;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 8;
		C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_S_AXI_WUSER_WIDTH	: integer	:= 0;
		C_S_AXI_RUSER_WIDTH	: integer	:= 0;
		C_S_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWLEN	: in std_logic_vector(7 downto 0);
		S_AXI_AWSIZE	: in std_logic_vector(2 downto 0);
		S_AXI_AWBURST	: in std_logic_vector(1 downto 0);
		S_AXI_AWLOCK	: in std_logic;
		S_AXI_AWCACHE	: in std_logic_vector(3 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWQOS	: in std_logic_vector(3 downto 0);
		S_AXI_AWREGION	: in std_logic_vector(3 downto 0);
		S_AXI_AWUSER	: in std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WLAST	: in std_logic;
		S_AXI_WUSER	: in std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BUSER	: out std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARLEN	: in std_logic_vector(7 downto 0);
		S_AXI_ARSIZE	: in std_logic_vector(2 downto 0);
		S_AXI_ARBURST	: in std_logic_vector(1 downto 0);
		S_AXI_ARLOCK	: in std_logic;
		S_AXI_ARCACHE	: in std_logic_vector(3 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARQOS	: in std_logic_vector(3 downto 0);
		S_AXI_ARREGION	: in std_logic_vector(3 downto 0);
		S_AXI_ARUSER	: in std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RLAST	: out std_logic;
		S_AXI_RUSER	: out std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_SpaceWire_IP_v1_0_S00_AXI_TX;

	component AXI_SpaceWire_IP_v1_0_S01_AXI_RX is
		generic (
		C_S_AXI_ID_WIDTH	: integer	:= 1;
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 7;
		C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
		C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
		C_S_AXI_WUSER_WIDTH	: integer	:= 0;
		C_S_AXI_RUSER_WIDTH	: integer	:= 0;
		C_S_AXI_BUSER_WIDTH	: integer	:= 0
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWLEN	: in std_logic_vector(7 downto 0);
		S_AXI_AWSIZE	: in std_logic_vector(2 downto 0);
		S_AXI_AWBURST	: in std_logic_vector(1 downto 0);
		S_AXI_AWLOCK	: in std_logic;
		S_AXI_AWCACHE	: in std_logic_vector(3 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWQOS	: in std_logic_vector(3 downto 0);
		S_AXI_AWREGION	: in std_logic_vector(3 downto 0);
		S_AXI_AWUSER	: in std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WLAST	: in std_logic;
		S_AXI_WUSER	: in std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BUSER	: out std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARLEN	: in std_logic_vector(7 downto 0);
		S_AXI_ARSIZE	: in std_logic_vector(2 downto 0);
		S_AXI_ARBURST	: in std_logic_vector(1 downto 0);
		S_AXI_ARLOCK	: in std_logic;
		S_AXI_ARCACHE	: in std_logic_vector(3 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARQOS	: in std_logic_vector(3 downto 0);
		S_AXI_ARREGION	: in std_logic_vector(3 downto 0);
		S_AXI_ARUSER	: in std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RLAST	: out std_logic;
		S_AXI_RUSER	: out std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_SpaceWire_IP_v1_0_S01_AXI_RX;

	component AXI_SpaceWire_IP_v1_0_S02_AXI_REG is
		generic (
		C_S_AXI_DATA_WIDTH	: integer	:= 32;
		C_S_AXI_ADDR_WIDTH	: integer	:= 4
		);
		port (
		S_AXI_ACLK	: in std_logic;
		S_AXI_ARESETN	: in std_logic;
		S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
		S_AXI_AWVALID	: in std_logic;
		S_AXI_AWREADY	: out std_logic;
		S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		S_AXI_WVALID	: in std_logic;
		S_AXI_WREADY	: out std_logic;
		S_AXI_BRESP	: out std_logic_vector(1 downto 0);
		S_AXI_BVALID	: out std_logic;
		S_AXI_BREADY	: in std_logic;
		S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
		S_AXI_ARVALID	: in std_logic;
		S_AXI_ARREADY	: out std_logic;
		S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		S_AXI_RRESP	: out std_logic_vector(1 downto 0);
		S_AXI_RVALID	: out std_logic;
		S_AXI_RREADY	: in std_logic
		);
	end component AXI_SpaceWire_IP_v1_0_S02_AXI_REG;

begin

-- Instantiation of Axi Bus Interface S00_AXI_TX
AXI_SpaceWire_IP_v1_0_S00_AXI_TX_inst : AXI_SpaceWire_IP_v1_0_S00_AXI_TX
	generic map (
		C_S_AXI_ID_WIDTH	=> C_S00_AXI_TX_ID_WIDTH,
		C_S_AXI_DATA_WIDTH	=> C_S00_AXI_TX_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S00_AXI_TX_ADDR_WIDTH,
		C_S_AXI_AWUSER_WIDTH	=> C_S00_AXI_TX_AWUSER_WIDTH,
		C_S_AXI_ARUSER_WIDTH	=> C_S00_AXI_TX_ARUSER_WIDTH,
		C_S_AXI_WUSER_WIDTH	=> C_S00_AXI_TX_WUSER_WIDTH,
		C_S_AXI_RUSER_WIDTH	=> C_S00_AXI_TX_RUSER_WIDTH,
		C_S_AXI_BUSER_WIDTH	=> C_S00_AXI_TX_BUSER_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s00_axi_tx_aclk,
		S_AXI_ARESETN	=> s00_axi_tx_aresetn,
		S_AXI_AWID	=> s00_axi_tx_awid,
		S_AXI_AWADDR	=> s00_axi_tx_awaddr,
		S_AXI_AWLEN	=> s00_axi_tx_awlen,
		S_AXI_AWSIZE	=> s00_axi_tx_awsize,
		S_AXI_AWBURST	=> s00_axi_tx_awburst,
		S_AXI_AWLOCK	=> s00_axi_tx_awlock,
		S_AXI_AWCACHE	=> s00_axi_tx_awcache,
		S_AXI_AWPROT	=> s00_axi_tx_awprot,
		S_AXI_AWQOS	=> s00_axi_tx_awqos,
		S_AXI_AWREGION	=> s00_axi_tx_awregion,
		S_AXI_AWUSER	=> s00_axi_tx_awuser,
		S_AXI_AWVALID	=> s00_axi_tx_awvalid,
		S_AXI_AWREADY	=> s00_axi_tx_awready,
		S_AXI_WDATA	=> s00_axi_tx_wdata,
		S_AXI_WSTRB	=> s00_axi_tx_wstrb,
		S_AXI_WLAST	=> s00_axi_tx_wlast,
		S_AXI_WUSER	=> s00_axi_tx_wuser,
		S_AXI_WVALID	=> s00_axi_tx_wvalid,
		S_AXI_WREADY	=> s00_axi_tx_wready,
		S_AXI_BID	=> s00_axi_tx_bid,
		S_AXI_BRESP	=> s00_axi_tx_bresp,
		S_AXI_BUSER	=> s00_axi_tx_buser,
		S_AXI_BVALID	=> s00_axi_tx_bvalid,
		S_AXI_BREADY	=> s00_axi_tx_bready,
		S_AXI_ARID	=> s00_axi_tx_arid,
		S_AXI_ARADDR	=> s00_axi_tx_araddr,
		S_AXI_ARLEN	=> s00_axi_tx_arlen,
		S_AXI_ARSIZE	=> s00_axi_tx_arsize,
		S_AXI_ARBURST	=> s00_axi_tx_arburst,
		S_AXI_ARLOCK	=> s00_axi_tx_arlock,
		S_AXI_ARCACHE	=> s00_axi_tx_arcache,
		S_AXI_ARPROT	=> s00_axi_tx_arprot,
		S_AXI_ARQOS	=> s00_axi_tx_arqos,
		S_AXI_ARREGION	=> s00_axi_tx_arregion,
		S_AXI_ARUSER	=> s00_axi_tx_aruser,
		S_AXI_ARVALID	=> s00_axi_tx_arvalid,
		S_AXI_ARREADY	=> s00_axi_tx_arready,
		S_AXI_RID	=> s00_axi_tx_rid,
		S_AXI_RDATA	=> s00_axi_tx_rdata,
		S_AXI_RRESP	=> s00_axi_tx_rresp,
		S_AXI_RLAST	=> s00_axi_tx_rlast,
		S_AXI_RUSER	=> s00_axi_tx_ruser,
		S_AXI_RVALID	=> s00_axi_tx_rvalid,
		S_AXI_RREADY	=> s00_axi_tx_rready
	);

-- Instantiation of Axi Bus Interface S01_AXI_RX
AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst : AXI_SpaceWire_IP_v1_0_S01_AXI_RX
	generic map (
		C_S_AXI_ID_WIDTH	=> C_S01_AXI_RX_ID_WIDTH,
		C_S_AXI_DATA_WIDTH	=> C_S01_AXI_RX_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S01_AXI_RX_ADDR_WIDTH,
		C_S_AXI_AWUSER_WIDTH	=> C_S01_AXI_RX_AWUSER_WIDTH,
		C_S_AXI_ARUSER_WIDTH	=> C_S01_AXI_RX_ARUSER_WIDTH,
		C_S_AXI_WUSER_WIDTH	=> C_S01_AXI_RX_WUSER_WIDTH,
		C_S_AXI_RUSER_WIDTH	=> C_S01_AXI_RX_RUSER_WIDTH,
		C_S_AXI_BUSER_WIDTH	=> C_S01_AXI_RX_BUSER_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s01_axi_rx_aclk,
		S_AXI_ARESETN	=> s01_axi_rx_aresetn,
		S_AXI_AWID	=> s01_axi_rx_awid,
		S_AXI_AWADDR	=> s01_axi_rx_awaddr,
		S_AXI_AWLEN	=> s01_axi_rx_awlen,
		S_AXI_AWSIZE	=> s01_axi_rx_awsize,
		S_AXI_AWBURST	=> s01_axi_rx_awburst,
		S_AXI_AWLOCK	=> s01_axi_rx_awlock,
		S_AXI_AWCACHE	=> s01_axi_rx_awcache,
		S_AXI_AWPROT	=> s01_axi_rx_awprot,
		S_AXI_AWQOS	=> s01_axi_rx_awqos,
		S_AXI_AWREGION	=> s01_axi_rx_awregion,
		S_AXI_AWUSER	=> s01_axi_rx_awuser,
		S_AXI_AWVALID	=> s01_axi_rx_awvalid,
		S_AXI_AWREADY	=> s01_axi_rx_awready,
		S_AXI_WDATA	=> s01_axi_rx_wdata,
		S_AXI_WSTRB	=> s01_axi_rx_wstrb,
		S_AXI_WLAST	=> s01_axi_rx_wlast,
		S_AXI_WUSER	=> s01_axi_rx_wuser,
		S_AXI_WVALID	=> s01_axi_rx_wvalid,
		S_AXI_WREADY	=> s01_axi_rx_wready,
		S_AXI_BID	=> s01_axi_rx_bid,
		S_AXI_BRESP	=> s01_axi_rx_bresp,
		S_AXI_BUSER	=> s01_axi_rx_buser,
		S_AXI_BVALID	=> s01_axi_rx_bvalid,
		S_AXI_BREADY	=> s01_axi_rx_bready,
		S_AXI_ARID	=> s01_axi_rx_arid,
		S_AXI_ARADDR	=> s01_axi_rx_araddr,
		S_AXI_ARLEN	=> s01_axi_rx_arlen,
		S_AXI_ARSIZE	=> s01_axi_rx_arsize,
		S_AXI_ARBURST	=> s01_axi_rx_arburst,
		S_AXI_ARLOCK	=> s01_axi_rx_arlock,
		S_AXI_ARCACHE	=> s01_axi_rx_arcache,
		S_AXI_ARPROT	=> s01_axi_rx_arprot,
		S_AXI_ARQOS	=> s01_axi_rx_arqos,
		S_AXI_ARREGION	=> s01_axi_rx_arregion,
		S_AXI_ARUSER	=> s01_axi_rx_aruser,
		S_AXI_ARVALID	=> s01_axi_rx_arvalid,
		S_AXI_ARREADY	=> s01_axi_rx_arready,
		S_AXI_RID	=> s01_axi_rx_rid,
		S_AXI_RDATA	=> s01_axi_rx_rdata,
		S_AXI_RRESP	=> s01_axi_rx_rresp,
		S_AXI_RLAST	=> s01_axi_rx_rlast,
		S_AXI_RUSER	=> s01_axi_rx_ruser,
		S_AXI_RVALID	=> s01_axi_rx_rvalid,
		S_AXI_RREADY	=> s01_axi_rx_rready
	);

-- Instantiation of Axi Bus Interface S02_AXI_REG
AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst : AXI_SpaceWire_IP_v1_0_S02_AXI_REG
	generic map (
		C_S_AXI_DATA_WIDTH	=> C_S02_AXI_REG_DATA_WIDTH,
		C_S_AXI_ADDR_WIDTH	=> C_S02_AXI_REG_ADDR_WIDTH
	)
	port map (
		S_AXI_ACLK	=> s02_axi_reg_aclk,
		S_AXI_ARESETN	=> s02_axi_reg_aresetn,
		S_AXI_AWADDR	=> s02_axi_reg_awaddr,
		S_AXI_AWPROT	=> s02_axi_reg_awprot,
		S_AXI_AWVALID	=> s02_axi_reg_awvalid,
		S_AXI_AWREADY	=> s02_axi_reg_awready,
		S_AXI_WDATA	=> s02_axi_reg_wdata,
		S_AXI_WSTRB	=> s02_axi_reg_wstrb,
		S_AXI_WVALID	=> s02_axi_reg_wvalid,
		S_AXI_WREADY	=> s02_axi_reg_wready,
		S_AXI_BRESP	=> s02_axi_reg_bresp,
		S_AXI_BVALID	=> s02_axi_reg_bvalid,
		S_AXI_BREADY	=> s02_axi_reg_bready,
		S_AXI_ARADDR	=> s02_axi_reg_araddr,
		S_AXI_ARPROT	=> s02_axi_reg_arprot,
		S_AXI_ARVALID	=> s02_axi_reg_arvalid,
		S_AXI_ARREADY	=> s02_axi_reg_arready,
		S_AXI_RDATA	=> s02_axi_reg_rdata,
		S_AXI_RRESP	=> s02_axi_reg_rresp,
		S_AXI_RVALID	=> s02_axi_reg_rvalid,
		S_AXI_RREADY	=> s02_axi_reg_rready
	);

	-- Add user logic here

	-- User logic ends

end arch_imp;
