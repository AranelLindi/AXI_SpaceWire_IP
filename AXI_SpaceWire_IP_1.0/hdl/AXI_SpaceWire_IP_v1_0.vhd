LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.spwpkg.ALL;

ENTITY AXI_SpaceWire_IP_v1_0 IS
    GENERIC (
        -- Users to add parameters here

        -- System clock frequency in Hz for SpaceWire entity.
        -- This must be set to the frequency of "clk_logic". It is used to setup
        -- counters for reset timing, disconnect timeout and to transmit
        -- at 10 Mbit/s during the link handshake.
        --sysfreq : real := 100.0e6;

        -- Transmit clock frequency in Hz (only if tximpl = impl_fast).
        -- This must be set to the frequency of "txclk". It is used to 
        -- transmit at 10 Mbit/s during the link handshake.
        --txclkfreq : real := 0.0;

        -- Selection of a receiver front-end implementation.
        --rximpl : spw_implementation_type := impl_fast;

        -- Selection of a transmitter implementation.
        --tximpl : spw_implementation_type := impl_fast;

        -- Maximum number of bits received per system clock
        -- (must be 1 in case of impl_generic)
        rxchunk : INTEGER RANGE 1 TO 4 := 2;

        -- Size of the receive FIFO as the 2-logarithm of the number of bytes.
        -- Must be at least 6 (64 bytes).
        rxfifosize_bits : INTEGER RANGE 6 TO 14 := 11;

        -- Size of the transmit FIFO as the 2-logarithm of the number of bytes.
        txfifosize_bits : INTEGER RANGE 2 TO 14 := 11;

        -- User parameters ends

        -- Do not modify the parameters beyond this line

        -- Parameters of Axi Slave Bus Interface S00_AXI_TX
        C_S00_AXI_TX_ID_WIDTH : INTEGER := 1;
        C_S00_AXI_TX_DATA_WIDTH : INTEGER := 32;
        C_S00_AXI_TX_ADDR_WIDTH : INTEGER := 3;
        C_S00_AXI_TX_AWUSER_WIDTH : INTEGER := 0;
        C_S00_AXI_TX_ARUSER_WIDTH : INTEGER := 0;
        C_S00_AXI_TX_WUSER_WIDTH : INTEGER := 0;
        C_S00_AXI_TX_RUSER_WIDTH : INTEGER := 0;
        C_S00_AXI_TX_BUSER_WIDTH : INTEGER := 0;

        -- Parameters of Axi Slave Bus Interface S01_AXI_RX
        C_S01_AXI_RX_ID_WIDTH : INTEGER := 1;
        C_S01_AXI_RX_DATA_WIDTH : INTEGER := 32;
        C_S01_AXI_RX_ADDR_WIDTH : INTEGER := 3;
        C_S01_AXI_RX_AWUSER_WIDTH : INTEGER := 0;
        C_S01_AXI_RX_ARUSER_WIDTH : INTEGER := 0;
        C_S01_AXI_RX_WUSER_WIDTH : INTEGER := 0;
        C_S01_AXI_RX_RUSER_WIDTH : INTEGER := 0;
        C_S01_AXI_RX_BUSER_WIDTH : INTEGER := 0;

        -- Parameters of Axi Slave Bus Interface S02_AXI_REG
        C_S02_AXI_REG_DATA_WIDTH : INTEGER := 32;
        C_S02_AXI_REG_ADDR_WIDTH : INTEGER := 5
    );
    PORT (
        -- Users to add ports here

        -- System clock for SpaceWire entity.
        clk_logic : IN STD_LOGIC;

        -- Receive sample clock for SpaceWire entity (only for impl_fast).
        rxclk : IN STD_LOGIC;

        -- Transmit clock for SpaceWire entity (only for impl_fast).
        txclk : IN STD_LOGIC;

        -- Synchronous reset for SpaceWire entity (active-high).
        rst_logic : IN STD_LOGIC;

        -- High to send new SpaceWire time-code. (TODO: How to ensure that only a single time-code is generated ?)
        tc_in : IN STD_LOGIC; -- (Deliberately not called tick_in so as not to have any implication on the actual signal in spwstream !)
        -- TODO: Build handling-process for this port in this module

        -- High if valid SpaceWire TimeCode was received (might used as interrupt)
        tc_out_intr : OUT STD_LOGIC;

        -- Error Interrupt: High if an error occured within spwstream.
        error_intr : OUT STD_LOGIC;

        -- State Interrupt: High whenever connection state of spwstream has changed.
        state_intr : OUT STD_LOGIC;

        -- Packet-finished Interrupt: High whenver a complete packet is inside Rx FIFO.
        packet_intr : OUT STD_LOGIC;

        -- Data In signal from SpaceWire bus.
        spw_di : IN STD_LOGIC;

        -- Strobe In signal from SpaceWire bus.
        spw_si : IN STD_LOGIC;

        -- Data Out signal to SpaceWire bus.
        spw_do : OUT STD_LOGIC;

        -- Strobe Out signal to SpaceWire bus.
        spw_so : OUT STD_LOGIC;

        -- User ports ends
        -- Do not modify the ports beyond this line
        -- Ports of Axi Slave Bus Interface S00_AXI_TX
        s00_axi_tx_aclk : IN STD_LOGIC;
        s00_axi_tx_aresetn : IN STD_LOGIC;
        s00_axi_tx_awid : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_ID_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_awaddr : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_ADDR_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s00_axi_tx_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s00_axi_tx_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s00_axi_tx_awlock : IN STD_LOGIC;
        s00_axi_tx_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s00_axi_tx_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s00_axi_tx_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s00_axi_tx_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s00_axi_tx_awuser : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_AWUSER_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_awvalid : IN STD_LOGIC;
        s00_axi_tx_awready : OUT STD_LOGIC;
        s00_axi_tx_wdata : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_DATA_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_wstrb : IN STD_LOGIC_VECTOR((C_S00_AXI_TX_DATA_WIDTH/8) - 1 DOWNTO 0);
        s00_axi_tx_wlast : IN STD_LOGIC;
        s00_axi_tx_wuser : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_WUSER_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_wvalid : IN STD_LOGIC;
        s00_axi_tx_wready : OUT STD_LOGIC;
        s00_axi_tx_bid : OUT STD_LOGIC_VECTOR(C_S00_AXI_TX_ID_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s00_axi_tx_buser : OUT STD_LOGIC_VECTOR(C_S00_AXI_TX_BUSER_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_bvalid : OUT STD_LOGIC;
        s00_axi_tx_bready : IN STD_LOGIC;
        s00_axi_tx_arid : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_ID_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_araddr : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_ADDR_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s00_axi_tx_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s00_axi_tx_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s00_axi_tx_arlock : IN STD_LOGIC;
        s00_axi_tx_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s00_axi_tx_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s00_axi_tx_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s00_axi_tx_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s00_axi_tx_aruser : IN STD_LOGIC_VECTOR(C_S00_AXI_TX_ARUSER_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_arvalid : IN STD_LOGIC;
        s00_axi_tx_arready : OUT STD_LOGIC;
        s00_axi_tx_rid : OUT STD_LOGIC_VECTOR(C_S00_AXI_TX_ID_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_rdata : OUT STD_LOGIC_VECTOR(C_S00_AXI_TX_DATA_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s00_axi_tx_rlast : OUT STD_LOGIC;
        s00_axi_tx_ruser : OUT STD_LOGIC_VECTOR(C_S00_AXI_TX_RUSER_WIDTH - 1 DOWNTO 0);
        s00_axi_tx_rvalid : OUT STD_LOGIC;
        s00_axi_tx_rready : IN STD_LOGIC;

        -- Ports of Axi Slave Bus Interface S01_AXI_RX
        s01_axi_rx_aclk : IN STD_LOGIC;
        s01_axi_rx_aresetn : IN STD_LOGIC;
        s01_axi_rx_awid : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_ID_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_awaddr : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_ADDR_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s01_axi_rx_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s01_axi_rx_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s01_axi_rx_awlock : IN STD_LOGIC;
        s01_axi_rx_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s01_axi_rx_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s01_axi_rx_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s01_axi_rx_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s01_axi_rx_awuser : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_AWUSER_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_awvalid : IN STD_LOGIC;
        s01_axi_rx_awready : OUT STD_LOGIC;
        s01_axi_rx_wdata : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_DATA_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_wstrb : IN STD_LOGIC_VECTOR((C_S01_AXI_RX_DATA_WIDTH/8) - 1 DOWNTO 0);
        s01_axi_rx_wlast : IN STD_LOGIC;
        s01_axi_rx_wuser : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_WUSER_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_wvalid : IN STD_LOGIC;
        s01_axi_rx_wready : OUT STD_LOGIC;
        s01_axi_rx_bid : OUT STD_LOGIC_VECTOR(C_S01_AXI_RX_ID_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s01_axi_rx_buser : OUT STD_LOGIC_VECTOR(C_S01_AXI_RX_BUSER_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_bvalid : OUT STD_LOGIC;
        s01_axi_rx_bready : IN STD_LOGIC;
        s01_axi_rx_arid : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_ID_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_araddr : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_ADDR_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        s01_axi_rx_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s01_axi_rx_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        s01_axi_rx_arlock : IN STD_LOGIC;
        s01_axi_rx_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s01_axi_rx_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s01_axi_rx_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s01_axi_rx_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        s01_axi_rx_aruser : IN STD_LOGIC_VECTOR(C_S01_AXI_RX_ARUSER_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_arvalid : IN STD_LOGIC;
        s01_axi_rx_arready : OUT STD_LOGIC;
        s01_axi_rx_rid : OUT STD_LOGIC_VECTOR(C_S01_AXI_RX_ID_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_rdata : OUT STD_LOGIC_VECTOR(C_S01_AXI_RX_DATA_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s01_axi_rx_rlast : OUT STD_LOGIC;
        s01_axi_rx_ruser : OUT STD_LOGIC_VECTOR(C_S01_AXI_RX_RUSER_WIDTH - 1 DOWNTO 0);
        s01_axi_rx_rvalid : OUT STD_LOGIC;
        s01_axi_rx_rready : IN STD_LOGIC;

        -- Ports of Axi Slave Bus Interface S02_AXI_REG
        s02_axi_reg_aclk : IN STD_LOGIC;
        s02_axi_reg_aresetn : IN STD_LOGIC;
        s02_axi_reg_awaddr : IN STD_LOGIC_VECTOR(C_S02_AXI_REG_ADDR_WIDTH - 1 DOWNTO 0);
        s02_axi_reg_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s02_axi_reg_awvalid : IN STD_LOGIC;
        s02_axi_reg_awready : OUT STD_LOGIC;
        s02_axi_reg_wdata : IN STD_LOGIC_VECTOR(C_S02_AXI_REG_DATA_WIDTH - 1 DOWNTO 0);
        s02_axi_reg_wstrb : IN STD_LOGIC_VECTOR((C_S02_AXI_REG_DATA_WIDTH/8) - 1 DOWNTO 0);
        s02_axi_reg_wvalid : IN STD_LOGIC;
        s02_axi_reg_wready : OUT STD_LOGIC;
        s02_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s02_axi_reg_bvalid : OUT STD_LOGIC;
        s02_axi_reg_bready : IN STD_LOGIC;
        s02_axi_reg_araddr : IN STD_LOGIC_VECTOR(C_S02_AXI_REG_ADDR_WIDTH - 1 DOWNTO 0);
        s02_axi_reg_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s02_axi_reg_arvalid : IN STD_LOGIC;
        s02_axi_reg_arready : OUT STD_LOGIC;
        s02_axi_reg_rdata : OUT STD_LOGIC_VECTOR(C_S02_AXI_REG_DATA_WIDTH - 1 DOWNTO 0);
        s02_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
        s02_axi_reg_rvalid : OUT STD_LOGIC;
        s02_axi_reg_rready : IN STD_LOGIC
    );
END AXI_SpaceWire_IP_v1_0;

ARCHITECTURE arch_imp OF AXI_SpaceWire_IP_v1_0 IS
    -- SpaceWire Light IP declaration.
    COMPONENT spwstream IS
        GENERIC (
            sysfreq : real;
            txclkfreq : real := 0.0;
            rximpl : spw_implementation_type := impl_fast;
            rxchunk : INTEGER RANGE 1 TO 4 := 2;
            tximpl : spw_implementation_type := impl_fast;
            rxfifosize_bits : INTEGER RANGE 6 TO 14 := 11;
            txfifosize_bits : INTEGER RANGE 2 TO 14 := 11
        );
        PORT (
            clk : IN STD_LOGIC;
            rxclk : IN STD_LOGIC;
            txclk : IN STD_LOGIC;
            rst : IN STD_LOGIC;
            autostart : IN STD_LOGIC;
            linkstart : IN STD_LOGIC;
            linkdis : IN STD_LOGIC;
            txdivcnt : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            tick_in : IN STD_LOGIC;
            ctrl_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            time_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
            txwrite : IN STD_LOGIC;
            txflag : IN STD_LOGIC;
            txdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            txrdy : OUT STD_LOGIC;
            txfull: OUT STD_LOGIC;
            txhalff : OUT STD_LOGIC;
            txempty : OUT STD_LOGIC;
            tick_out : OUT STD_LOGIC;
            ctrl_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            time_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
            rxvalid : OUT STD_LOGIC;
            rxfull : OUT STD_LOGIC;
            rxhalff : OUT STD_LOGIC;
            rxempty : OUT STD_LOGIC;
            rxflag : OUT STD_LOGIC;
            rxdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            rxread : IN STD_LOGIC;
            started : OUT STD_LOGIC;
            connecting : OUT STD_LOGIC;
            running : OUT STD_LOGIC;
            errdisc : OUT STD_LOGIC;
            errpar : OUT STD_LOGIC;
            erresc : OUT STD_LOGIC;
            errcred : OUT STD_LOGIC;
            spw_di : IN STD_LOGIC;
            spw_si : IN STD_LOGIC;
            spw_do : OUT STD_LOGIC;
            spw_so : OUT STD_LOGIC
        );
    END COMPONENT;

    -- component declaration
    COMPONENT AXI_SpaceWire_IP_v1_0_S00_AXI_TX IS
        GENERIC (
            C_S_AXI_ID_WIDTH : INTEGER := 1;
            C_S_AXI_DATA_WIDTH : INTEGER := 32;
            C_S_AXI_ADDR_WIDTH : INTEGER := 3;
            C_S_AXI_AWUSER_WIDTH : INTEGER := 0;
            C_S_AXI_ARUSER_WIDTH : INTEGER := 0;
            C_S_AXI_WUSER_WIDTH : INTEGER := 0;
            C_S_AXI_RUSER_WIDTH : INTEGER := 0;
            C_S_AXI_BUSER_WIDTH : INTEGER := 0
        );
        PORT (
            do : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            di : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            rden : OUT STD_LOGIC;
            wren : OUT STD_LOGIC;
            rdcount : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            wrcount : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            empty : OUT STD_LOGIC;
            full : OUT STD_LOGIC;

            clk_logic : IN STD_LOGIC;
            rst_logic : IN STD_LOGIC;
            txwrite : OUT STD_LOGIC;
            txflag : OUT STD_LOGIC;
            txdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            txrdy : IN STD_LOGIC;

            S_AXI_ACLK : IN STD_LOGIC;
            S_AXI_ARESETN : IN STD_LOGIC;
            S_AXI_AWID : IN STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_AWADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
            S_AXI_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            S_AXI_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_AWLOCK : IN STD_LOGIC;
            S_AXI_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_AWUSER : IN STD_LOGIC_VECTOR(C_S_AXI_AWUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_AWVALID : IN STD_LOGIC;
            S_AXI_AWREADY : OUT STD_LOGIC;
            S_AXI_WDATA : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            S_AXI_WSTRB : IN STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);
            S_AXI_WLAST : IN STD_LOGIC;
            S_AXI_WUSER : IN STD_LOGIC_VECTOR(C_S_AXI_WUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_WVALID : IN STD_LOGIC;
            S_AXI_WREADY : OUT STD_LOGIC;
            S_AXI_BID : OUT STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_BUSER : OUT STD_LOGIC_VECTOR(C_S_AXI_BUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_BVALID : OUT STD_LOGIC;
            S_AXI_BREADY : IN STD_LOGIC;
            S_AXI_ARID : IN STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_ARADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
            S_AXI_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            S_AXI_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_ARLOCK : IN STD_LOGIC;
            S_AXI_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_ARUSER : IN STD_LOGIC_VECTOR(C_S_AXI_ARUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_ARVALID : IN STD_LOGIC;
            S_AXI_ARREADY : OUT STD_LOGIC;
            S_AXI_RID : OUT STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_RDATA : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_RLAST : OUT STD_LOGIC;
            S_AXI_RUSER : OUT STD_LOGIC_VECTOR(C_S_AXI_RUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_RVALID : OUT STD_LOGIC;
            S_AXI_RREADY : IN STD_LOGIC
        );
    END COMPONENT AXI_SpaceWire_IP_v1_0_S00_AXI_TX;

    COMPONENT AXI_SpaceWire_IP_v1_0_S01_AXI_RX IS
        GENERIC (
            C_S_AXI_ID_WIDTH : INTEGER := 1;
            C_S_AXI_DATA_WIDTH : INTEGER := 32;
            C_S_AXI_ADDR_WIDTH : INTEGER := 3;
            C_S_AXI_AWUSER_WIDTH : INTEGER := 0;
            C_S_AXI_ARUSER_WIDTH : INTEGER := 0;
            C_S_AXI_WUSER_WIDTH : INTEGER := 0;
            C_S_AXI_RUSER_WIDTH : INTEGER := 0;
            C_S_AXI_BUSER_WIDTH : INTEGER := 0
        );
        PORT (
            do : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            di : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            rden : OUT STD_LOGIC;
            wren : OUT STD_LOGIC;
            rdcount : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            wrcount : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            empty : OUT STD_LOGIC;
            full : OUT STD_LOGIC;

            clk_logic : IN STD_LOGIC;
            rst_logic : IN STD_LOGIC;
            rxvalid : IN STD_LOGIC;
            rxflag : IN STD_LOGIC;
            rxdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            rxread : OUT STD_LOGIC;
            packet_out : OUT STD_LOGIC;

            S_AXI_ACLK : IN STD_LOGIC;
            S_AXI_ARESETN : IN STD_LOGIC;
            S_AXI_AWID : IN STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_AWADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
            S_AXI_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            S_AXI_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_AWLOCK : IN STD_LOGIC;
            S_AXI_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_AWUSER : IN STD_LOGIC_VECTOR(C_S_AXI_AWUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_AWVALID : IN STD_LOGIC;
            S_AXI_AWREADY : OUT STD_LOGIC;
            S_AXI_WDATA : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            S_AXI_WSTRB : IN STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);
            S_AXI_WLAST : IN STD_LOGIC;
            S_AXI_WUSER : IN STD_LOGIC_VECTOR(C_S_AXI_WUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_WVALID : IN STD_LOGIC;
            S_AXI_WREADY : OUT STD_LOGIC;
            S_AXI_BID : OUT STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_BUSER : OUT STD_LOGIC_VECTOR(C_S_AXI_BUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_BVALID : OUT STD_LOGIC;
            S_AXI_BREADY : IN STD_LOGIC;
            S_AXI_ARID : IN STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_ARADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
            S_AXI_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            S_AXI_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_ARLOCK : IN STD_LOGIC;
            S_AXI_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S_AXI_ARUSER : IN STD_LOGIC_VECTOR(C_S_AXI_ARUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_ARVALID : IN STD_LOGIC;
            S_AXI_ARREADY : OUT STD_LOGIC;
            S_AXI_RID : OUT STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);
            S_AXI_RDATA : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_RLAST : OUT STD_LOGIC;
            S_AXI_RUSER : OUT STD_LOGIC_VECTOR(C_S_AXI_RUSER_WIDTH - 1 DOWNTO 0);
            S_AXI_RVALID : OUT STD_LOGIC;
            S_AXI_RREADY : IN STD_LOGIC
        );
    END COMPONENT AXI_SpaceWire_IP_v1_0_S01_AXI_RX;

    COMPONENT AXI_SpaceWire_IP_v1_0_S02_AXI_REG IS
        GENERIC (
            C_S_AXI_DATA_WIDTH : INTEGER := 32;
            C_S_AXI_ADDR_WIDTH : INTEGER := 5
        );
        PORT (
            clk_logic : IN STD_LOGIC;
            rst_logic : IN STD_LOGIC;
            autostart : OUT STD_LOGIC;
            linkstart : OUT STD_LOGIC;
            linkdis : OUT STD_LOGIC;
            txdivcnt : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            ctrl_in : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            time_in : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
            txfull : IN STD_LOGIC;
            txhalff : IN STD_LOGIC;
            txempty : IN STD_LOGIC;
            ctrl_out : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            time_out : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
            rxfull : IN STD_LOGIC;
            rxhalff : IN STD_LOGIC;
            rxempty : IN STD_LOGIC;
            started : IN STD_LOGIC;
            connecting : IN STD_LOGIC;
            running : IN STD_LOGIC;
            errdisc : IN STD_LOGIC;
            errpar : IN STD_LOGIC;
            erresc : IN STD_LOGIC;
            errcred : IN STD_LOGIC;

            S_AXI_ACLK : IN STD_LOGIC;
            S_AXI_ARESETN : IN STD_LOGIC;
            S_AXI_AWADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
            S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_AWVALID : IN STD_LOGIC;
            S_AXI_AWREADY : OUT STD_LOGIC;
            S_AXI_WDATA : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            S_AXI_WSTRB : IN STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);
            S_AXI_WVALID : IN STD_LOGIC;
            S_AXI_WREADY : OUT STD_LOGIC;
            S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_BVALID : OUT STD_LOGIC;
            S_AXI_BREADY : IN STD_LOGIC;
            S_AXI_ARADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
            S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            S_AXI_ARVALID : IN STD_LOGIC;
            S_AXI_ARREADY : OUT STD_LOGIC;
            S_AXI_RDATA : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
            S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            S_AXI_RVALID : OUT STD_LOGIC;
            S_AXI_RREADY : IN STD_LOGIC
        );
    END COMPONENT AXI_SpaceWire_IP_v1_0_S02_AXI_REG;

    -- Custom signals declaration.
    -- RX module
    SIGNAL s_rxvalid : STD_LOGIC;
    SIGNAL s_rxflag : STD_LOGIC;
    SIGNAL s_rxdata : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL s_rxread : STD_LOGIC;

    -- TX module
    SIGNAL s_txwrite : STD_LOGIC;
    SIGNAL s_txflag : STD_LOGIC;
    SIGNAL s_txdata : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL s_txrdy : STD_LOGIC;

    -- Registers
    SIGNAL s_autostart : STD_LOGIC;
    SIGNAL s_linkstart : STD_LOGIC;
    SIGNAL s_linkdis : STD_LOGIC;
    SIGNAL s_txdivcnt : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL s_ctrl_in : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL s_time_in : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL s_tc_in : STD_LOGIC;
    SIGNAL s_txfull : STD_LOGIC;
    SIGNAL s_txhalff : STD_LOGIC;
    SIGNAL s_txempty : STD_LOGIC;
    SIGNAL s_rxfull : STD_LOGIC;
    SIGNAL s_rxhalff : STD_LOGIC;
    SIGNAL s_rxempty : STD_LOGIC;
    SIGNAL s_ctrl_out : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL s_time_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL s_tc_out : STD_LOGIC;
    SIGNAL s_started : STD_LOGIC;
    SIGNAL s_connecting : STD_LOGIC;
    SIGNAL s_running : STD_LOGIC;
    SIGNAL s_errdisc : STD_LOGIC;
    SIGNAL s_errpar : STD_LOGIC;
    SIGNAL s_errcred : STD_LOGIC;
    SIGNAL s_erresc : STD_LOGIC;

    -- Interrupt handling
    CONSTANT intr_stretch_length : POSITIVE := 9; -- previous: 100 -- It is necessary to stretch any interrupt signal to make it acceptable for Generical Interrupt Controller (must be at least 9!). (See UG585 p. 231)

    -- Pulse stretching signals for tc_out_intr.
    -- Signal to reset pulse
    SIGNAL s_rst_pulse_tc_out : STD_LOGIC := '0';
    -- Shiftregister to stretch pulse
    SIGNAL s_pulse_reg_tc_out : STD_LOGIC_VECTOR(intr_stretch_length - 1 DOWNTO 0) := (OTHERS => '0'); -- ACHTUNG! IST DAS PULSE SIGNAL NOCH ZU KURZ ODER ZU LANG UM VON DER CPU ERKANNT ZU WERDEN, DANN HIER MIT DER LÄNGE DES SCHIEBEREIGSTERS EXPERIMENTIEREN!
    -- Actual pulse transport signal
    SIGNAL s_pulse_tc_out : STD_LOGIC := '0';

    -- Pulse stretching signals for error_intr.
    -- Signal to reset pulse
    SIGNAL s_rst_pulse_error : STD_LOGIC := '0';
    -- Shiftregister to stretch pulse
    SIGNAL s_pulse_reg_error : STD_LOGIC_VECTOR(intr_stretch_length - 1 DOWNTO 0) := (OTHERS => '0');
    -- Actual pulse transport signal
    SIGNAL s_pulse_error : STD_LOGIC := '0';
    -- Data signal
    SIGNAL s_error : STD_LOGIC;

    -- Pulse stretching signals for state_intr.
    -- Signal to reset pulse
    SIGNAL s_rst_pulse_state : STD_LOGIC := '0';
    -- Shiftregister to stretch pulse
    SIGNAL s_pulse_reg_state : STD_LOGIC_VECTOR(intr_stretch_length - 1 DOWNTO 0) := (OTHERS => '0');
    -- Actual pulse transport signal
    SIGNAL s_pulse_state : STD_LOGIC := '0';
    -- Data signal
    SIGNAL s_state : STD_LOGIC;

    -- Pulse stretching signals for packet_intr.
    -- Signal to reset pulse
    SIGNAL s_rst_pulse_packet : STD_LOGIC := '0';
    -- Shiftregister to stretch pulse
    SIGNAL s_pulse_reg_packet : STD_LOGIC_VECTOR(intr_stretch_length - 1 DOWNTO 0) := (OTHERS => '0');
    -- Actual pulse transport signal
    SIGNAL s_pulse_packet : STD_LOGIC := '0';
    -- Data signal
    SIGNAL s_packet : STD_LOGIC;
    
    -- Edge detection signal (shift register) for tc_in.
    SIGNAL s_tc_in_last : STD_LOGIC;
BEGIN
    -- Instantiation of Axi Bus Interface S00_AXI_TX
    AXI_SpaceWire_IP_v1_0_S00_AXI_TX_inst : AXI_SpaceWire_IP_v1_0_S00_AXI_TX
        GENERIC MAP(
            C_S_AXI_ID_WIDTH => C_S00_AXI_TX_ID_WIDTH,
            C_S_AXI_DATA_WIDTH => C_S00_AXI_TX_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S00_AXI_TX_ADDR_WIDTH,
            C_S_AXI_AWUSER_WIDTH => C_S00_AXI_TX_AWUSER_WIDTH,
            C_S_AXI_ARUSER_WIDTH => C_S00_AXI_TX_ARUSER_WIDTH,
            C_S_AXI_WUSER_WIDTH => C_S00_AXI_TX_WUSER_WIDTH,
            C_S_AXI_RUSER_WIDTH => C_S00_AXI_TX_RUSER_WIDTH,
            C_S_AXI_BUSER_WIDTH => C_S00_AXI_TX_BUSER_WIDTH
        )
        PORT MAP(
            do => OPEN, -- debug port
            di => OPEN, -- debug port
            rden => OPEN, -- debug port
            wren => OPEN, -- debug port
            rdcount => OPEN, -- debug port
            wrcount => OPEN, -- debug port
            empty => OPEN, -- debug port
            full => OPEN, -- debug port
            clk_logic => clk_logic,
            rst_logic => rst_logic,
            txwrite => s_txwrite,
            txflag => s_txflag,
            txdata => s_txdata,
            txrdy => s_txrdy,
            S_AXI_ACLK => s00_axi_tx_aclk,
            S_AXI_ARESETN => s00_axi_tx_aresetn,
            S_AXI_AWID => s00_axi_tx_awid,
            S_AXI_AWADDR => s00_axi_tx_awaddr,
            S_AXI_AWLEN => s00_axi_tx_awlen,
            S_AXI_AWSIZE => s00_axi_tx_awsize,
            S_AXI_AWBURST => s00_axi_tx_awburst,
            S_AXI_AWLOCK => s00_axi_tx_awlock,
            S_AXI_AWCACHE => s00_axi_tx_awcache,
            S_AXI_AWPROT => s00_axi_tx_awprot,
            S_AXI_AWQOS => s00_axi_tx_awqos,
            S_AXI_AWREGION => s00_axi_tx_awregion,
            S_AXI_AWUSER => s00_axi_tx_awuser,
            S_AXI_AWVALID => s00_axi_tx_awvalid,
            S_AXI_AWREADY => s00_axi_tx_awready,
            S_AXI_WDATA => s00_axi_tx_wdata,
            S_AXI_WSTRB => s00_axi_tx_wstrb,
            S_AXI_WLAST => s00_axi_tx_wlast,
            S_AXI_WUSER => s00_axi_tx_wuser,
            S_AXI_WVALID => s00_axi_tx_wvalid,
            S_AXI_WREADY => s00_axi_tx_wready,
            S_AXI_BID => s00_axi_tx_bid,
            S_AXI_BRESP => s00_axi_tx_bresp,
            S_AXI_BUSER => s00_axi_tx_buser,
            S_AXI_BVALID => s00_axi_tx_bvalid,
            S_AXI_BREADY => s00_axi_tx_bready,
            S_AXI_ARID => s00_axi_tx_arid,
            S_AXI_ARADDR => s00_axi_tx_araddr,
            S_AXI_ARLEN => s00_axi_tx_arlen,
            S_AXI_ARSIZE => s00_axi_tx_arsize,
            S_AXI_ARBURST => s00_axi_tx_arburst,
            S_AXI_ARLOCK => s00_axi_tx_arlock,
            S_AXI_ARCACHE => s00_axi_tx_arcache,
            S_AXI_ARPROT => s00_axi_tx_arprot,
            S_AXI_ARQOS => s00_axi_tx_arqos,
            S_AXI_ARREGION => s00_axi_tx_arregion,
            S_AXI_ARUSER => s00_axi_tx_aruser,
            S_AXI_ARVALID => s00_axi_tx_arvalid,
            S_AXI_ARREADY => s00_axi_tx_arready,
            S_AXI_RID => s00_axi_tx_rid,
            S_AXI_RDATA => s00_axi_tx_rdata,
            S_AXI_RRESP => s00_axi_tx_rresp,
            S_AXI_RLAST => s00_axi_tx_rlast,
            S_AXI_RUSER => s00_axi_tx_ruser,
            S_AXI_RVALID => s00_axi_tx_rvalid,
            S_AXI_RREADY => s00_axi_tx_rready
        );

    -- Instantiation of Axi Bus Interface S01_AXI_RX
    AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst : AXI_SpaceWire_IP_v1_0_S01_AXI_RX
        GENERIC MAP(
            C_S_AXI_ID_WIDTH => C_S01_AXI_RX_ID_WIDTH,
            C_S_AXI_DATA_WIDTH => C_S01_AXI_RX_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S01_AXI_RX_ADDR_WIDTH,
            C_S_AXI_AWUSER_WIDTH => C_S01_AXI_RX_AWUSER_WIDTH,
            C_S_AXI_ARUSER_WIDTH => C_S01_AXI_RX_ARUSER_WIDTH,
            C_S_AXI_WUSER_WIDTH => C_S01_AXI_RX_WUSER_WIDTH,
            C_S_AXI_RUSER_WIDTH => C_S01_AXI_RX_RUSER_WIDTH,
            C_S_AXI_BUSER_WIDTH => C_S01_AXI_RX_BUSER_WIDTH
        )
        PORT MAP(
            do => OPEN, -- debug port
            di => OPEN, -- debug port
            rden => OPEN, -- debug port
            wren => OPEN, -- debug port
            rdcount => OPEN, -- debug port
            wrcount => OPEN, -- debug port
            empty => OPEN, -- debug port
            full => OPEN, -- debug port
            clk_logic => clk_logic,
            rst_logic => rst_logic,
            rxvalid => s_rxvalid,
            rxflag => s_rxflag,
            rxdata => s_rxdata,
            rxread => s_rxread,
            packet_out => s_packet,
            S_AXI_ACLK => s01_axi_rx_aclk,
            S_AXI_ARESETN => s01_axi_rx_aresetn,
            S_AXI_AWID => s01_axi_rx_awid,
            S_AXI_AWADDR => s01_axi_rx_awaddr,
            S_AXI_AWLEN => s01_axi_rx_awlen,
            S_AXI_AWSIZE => s01_axi_rx_awsize,
            S_AXI_AWBURST => s01_axi_rx_awburst,
            S_AXI_AWLOCK => s01_axi_rx_awlock,
            S_AXI_AWCACHE => s01_axi_rx_awcache,
            S_AXI_AWPROT => s01_axi_rx_awprot,
            S_AXI_AWQOS => s01_axi_rx_awqos,
            S_AXI_AWREGION => s01_axi_rx_awregion,
            S_AXI_AWUSER => s01_axi_rx_awuser,
            S_AXI_AWVALID => s01_axi_rx_awvalid,
            S_AXI_AWREADY => s01_axi_rx_awready,
            S_AXI_WDATA => s01_axi_rx_wdata,
            S_AXI_WSTRB => s01_axi_rx_wstrb,
            S_AXI_WLAST => s01_axi_rx_wlast,
            S_AXI_WUSER => s01_axi_rx_wuser,
            S_AXI_WVALID => s01_axi_rx_wvalid,
            S_AXI_WREADY => s01_axi_rx_wready,
            S_AXI_BID => s01_axi_rx_bid,
            S_AXI_BRESP => s01_axi_rx_bresp,
            S_AXI_BUSER => s01_axi_rx_buser,
            S_AXI_BVALID => s01_axi_rx_bvalid,
            S_AXI_BREADY => s01_axi_rx_bready,
            S_AXI_ARID => s01_axi_rx_arid,
            S_AXI_ARADDR => s01_axi_rx_araddr,
            S_AXI_ARLEN => s01_axi_rx_arlen,
            S_AXI_ARSIZE => s01_axi_rx_arsize,
            S_AXI_ARBURST => s01_axi_rx_arburst,
            S_AXI_ARLOCK => s01_axi_rx_arlock,
            S_AXI_ARCACHE => s01_axi_rx_arcache,
            S_AXI_ARPROT => s01_axi_rx_arprot,
            S_AXI_ARQOS => s01_axi_rx_arqos,
            S_AXI_ARREGION => s01_axi_rx_arregion,
            S_AXI_ARUSER => s01_axi_rx_aruser,
            S_AXI_ARVALID => s01_axi_rx_arvalid,
            S_AXI_ARREADY => s01_axi_rx_arready,
            S_AXI_RID => s01_axi_rx_rid,
            S_AXI_RDATA => s01_axi_rx_rdata,
            S_AXI_RRESP => s01_axi_rx_rresp,
            S_AXI_RLAST => s01_axi_rx_rlast,
            S_AXI_RUSER => s01_axi_rx_ruser,
            S_AXI_RVALID => s01_axi_rx_rvalid,
            S_AXI_RREADY => s01_axi_rx_rready
        );

    -- Instantiation of Axi Bus Interface S02_AXI_REG
    AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst : AXI_SpaceWire_IP_v1_0_S02_AXI_REG
        GENERIC MAP(
            C_S_AXI_DATA_WIDTH => C_S02_AXI_REG_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH => C_S02_AXI_REG_ADDR_WIDTH
        )
        PORT MAP(
            clk_logic => clk_logic,
            rst_logic => rst_logic,
            autostart => s_autostart,
            linkstart => s_linkstart,
            linkdis => s_linkdis,
            txdivcnt => s_txdivcnt,
            ctrl_in => s_ctrl_in,
            time_in => s_time_in,
            txfull => s_txfull,
            txhalff => s_txhalff,
            txempty => s_txempty,
            ctrl_out => s_ctrl_out,
            time_out => s_time_out,
            rxfull => s_rxfull,
            rxhalff => s_rxhalff,
            rxempty => s_rxempty,
            started => s_started,
            connecting => s_connecting,
            running => s_running,
            errdisc => s_errdisc,
            errpar => s_errpar,
            erresc => s_erresc,
            errcred => s_errcred,

            S_AXI_ACLK => s02_axi_reg_aclk,
            S_AXI_ARESETN => s02_axi_reg_aresetn,
            S_AXI_AWADDR => s02_axi_reg_awaddr,
            S_AXI_AWPROT => s02_axi_reg_awprot,
            S_AXI_AWVALID => s02_axi_reg_awvalid,
            S_AXI_AWREADY => s02_axi_reg_awready,
            S_AXI_WDATA => s02_axi_reg_wdata,
            S_AXI_WSTRB => s02_axi_reg_wstrb,
            S_AXI_WVALID => s02_axi_reg_wvalid,
            S_AXI_WREADY => s02_axi_reg_wready,
            S_AXI_BRESP => s02_axi_reg_bresp,
            S_AXI_BVALID => s02_axi_reg_bvalid,
            S_AXI_BREADY => s02_axi_reg_bready,
            S_AXI_ARADDR => s02_axi_reg_araddr,
            S_AXI_ARPROT => s02_axi_reg_arprot,
            S_AXI_ARVALID => s02_axi_reg_arvalid,
            S_AXI_ARREADY => s02_axi_reg_arready,
            S_AXI_RDATA => s02_axi_reg_rdata,
            S_AXI_RRESP => s02_axi_reg_rresp,
            S_AXI_RVALID => s02_axi_reg_rvalid,
            S_AXI_RREADY => s02_axi_reg_rready
        );


    -- Add user logic here

    -- ==================
    --     Interrupts
    -- ==================

    -- error_intr:
    -- ===========
    -- Pulse stretching signals.
    error_intr0 : error_intr <= s_pulse_error;
    error_intr1 : s_rst_pulse_error <= s_pulse_reg_error(s_pulse_reg_error'length - 1);
    error_intr2 : PROCESS (s_errcred, s_errpar, s_erresc, s_errdisc) -- Interrupt should be active if any error occured within spwstream!
    BEGIN
        IF rising_edge(clk_logic) THEN
            IF s_errcred = '1' OR s_errpar = '1' OR s_erresc = '1' OR s_errdisc = '1' THEN
                s_error <= '1';
            ELSE
                s_error <= '0';
            END IF;
        END IF;
    END PROCESS;

    -- Asserts and deasserts pulse signal to stretch it for AXI Bus depending on s_error.
    error_intr3 : PROCESS (s_error, s_rst_pulse_error)
    BEGIN
        IF s_rst_pulse_error = '1' THEN
            -- Asynchronous reset.
            s_pulse_error <= '0';
        ELSIF rising_edge(s_error) THEN
            s_pulse_error <= '1';
        END IF;
    END PROCESS error_intr3;

    -- Fills and resets shift register to stretch pulse signal for tc_out.
    error_intr4 : PROCESS (s00_axi_tx_aclk) -- (Doesn't matter which AXI clock is being used).
    BEGIN
        IF rising_edge(s00_axi_tx_aclk) THEN
            IF s_pulse_error = '0' THEN
                -- Synchronous reset.
                s_pulse_reg_error <= (OTHERS => '0');
            ELSE
                s_pulse_reg_error(0) <= '1';

                FOR i IN 0 TO s_pulse_reg_error'length - 2 LOOP
                    s_pulse_reg_error(i + 1) <= s_pulse_reg_error(i);
                END LOOP;
            END IF;
        END IF;
    END PROCESS error_intr4;

    -- state_intr:
    -- ===========
    -- Pulse stretching signals.
    state_intr0 : state_intr <= s_pulse_state;
    state_intr1 : s_rst_pulse_state <= s_pulse_reg_state(s_pulse_reg_state'length - 1);
    state_intr2 : PROCESS (clk_logic)
        VARIABLE prev : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
        VARIABLE curr : STD_LOGIC_VECTOR(2 DOWNTO 0) := "000";
    BEGIN
        IF rising_edge(clk_logic) THEN
            curr := s_running & s_connecting & s_started;

            IF prev /= curr THEN
                s_state <= '1';
            ELSE
                s_state <= '0';
            END IF;

            prev := curr;
        END IF;
    END PROCESS;

    -- Asserts and deasserts pulse signal to stretch it for AXI Bus depending on s_state.
    state_intr3 : PROCESS (s_state, s_rst_pulse_state)
    BEGIN
        IF s_rst_pulse_state = '1' THEN
            -- Asynchronous reset.
            s_pulse_state <= '0';
        ELSIF rising_edge(s_state) THEN
            s_pulse_state <= '1';
        END IF;
    END PROCESS state_intr3;

    -- Fills and resets shift register to stretch pulse signal for state_intr.
    state_intr4 : PROCESS (s00_axi_tx_aclk)
    BEGIN
        IF rising_edge(s00_axi_tx_aclk) THEN
            IF s_pulse_state = '0' THEN
                -- Synchronous reset.
                s_pulse_reg_state <= (OTHERS => '0');
            ELSE
                s_pulse_reg_state(0) <= '1';

                FOR i IN 0 TO s_pulse_reg_state'length - 2 LOOP
                    s_pulse_reg_state(i + 1) <= s_pulse_reg_state(i);
                END LOOP;
            END IF;
        END IF;
    END PROCESS state_intr4;

    -- tc_out_intr:
    -- ============
    -- Pulse stretching signals
    tc_out_intr0 : tc_out_intr <= s_pulse_tc_out;
    tc_out_intr1 : s_rst_pulse_tc_out <= s_pulse_reg_tc_out(s_pulse_reg_tc_out'length - 1);

    -- Asserts and deasserts pulse signal to stretch it for AXI bus depending on received Time Codes.
    tc_out_intr2 : PROCESS (s_tc_out, s_rst_pulse_tc_out)
    BEGIN
        IF s_rst_pulse_tc_out = '1' THEN
            -- Asynchronous reset.
            s_pulse_tc_out <= '0';
        ELSIF rising_edge(s_tc_out) THEN
            s_pulse_tc_out <= '1';
        END IF;
    END PROCESS tc_out_intr2;

    -- Fills and resets shift register to stretch pulse signal for tc_out.
    tc_out_intr3 : PROCESS (s00_axi_tx_aclk)
    BEGIN
        IF rising_edge(s00_axi_tx_aclk) THEN
            IF s_pulse_tc_out = '0' THEN
                -- Synchronous reset.
                s_pulse_reg_tc_out <= (OTHERS => '0');
            ELSE
                s_pulse_reg_tc_out(0) <= '1';

                FOR i IN 0 TO s_pulse_reg_tc_out'length - 2 LOOP
                    s_pulse_reg_tc_out(i + 1) <= s_pulse_reg_tc_out(i);
                END LOOP;
            END IF;
        END IF;
    END PROCESS tc_out_intr3;

    -- Ensures that exactly one TimeCode is sent no matter how long pulse is being hold on HIGH (achieved by edge detection).
    tc_in_0 : PROCESS (clk_logic)
    BEGIN
        IF rising_edge(clk_logic) THEN
            -- Detect rising edge of tc_in
            IF tc_in = '1' and s_tc_in_last = '0' THEN
                s_tc_in <= '1'; -- only one cycle active !

            ELSE
                s_tc_in <= '0';
            END IF;
            
            s_tc_in_last <= tc_in;
        END IF;
    END PROCESS tc_in_0;

    -- packet_intr:
    -- ============
    -- Pulse stretching signals
    packet_intr0 : packet_intr <= s_pulse_packet;
    packet_intr1 : s_rst_pulse_packet <= s_pulse_reg_packet(s_pulse_reg_packet'length - 1);

    -- Asserts and deasserts pulse signal to stretch it for AXI bus depending on received Time Codes.
    packet_intr2 : PROCESS (s_packet, s_rst_pulse_packet)
    BEGIN
        IF s_rst_pulse_packet = '1' THEN
            -- Asynchronous reset.
            s_pulse_packet <= '0';
        ELSIF rising_edge(s_packet) THEN
            s_pulse_packet <= '1';
        END IF;
    END PROCESS packet_intr2;

    -- Fills and resets shift register to stretch pulse signal for tc_out.
    packet_intr3 : PROCESS (s00_axi_tx_aclk)
    BEGIN
        IF rising_edge(s00_axi_tx_aclk) THEN
            IF s_pulse_packet = '0' THEN
                -- Synchronous reset.
                s_pulse_reg_packet <= (OTHERS => '0');
            ELSE
                s_pulse_reg_packet(0) <= '1';

                FOR i IN 0 TO s_pulse_reg_packet'length - 2 LOOP
                    s_pulse_reg_packet(i + 1) <= s_pulse_reg_packet(i);
                END LOOP;
            END IF;
        END IF;
    END PROCESS packet_intr3;

    -- ==================
    --    SpaceWire IP
    -- ==================
    spwstream_inst : spwstream
        GENERIC MAP(
            sysfreq => 100.0e6,
            txclkfreq => 100.0e6,
            rximpl => impl_fast,
            rxchunk => rxchunk,
            tximpl => impl_fast,
            rxfifosize_bits => rxfifosize_bits,
            txfifosize_bits => txfifosize_bits
        )
        PORT MAP(
            clk => clk_logic, -- Top Level IO
            rxclk => rxclk, -- Top Level IO
            txclk => txclk, -- Top Level IO
            rst => rst_logic, -- Top Level IO
            autostart => s_autostart, -- Register
            linkstart => s_linkstart, -- Register
            linkdis => s_linkdis, -- Register
            txdivcnt => s_txdivcnt, -- Register
            tick_in => s_tc_in, -- GPIO
            ctrl_in => s_ctrl_in, -- Register
            time_in => s_time_in, -- Register
            txwrite => s_txwrite, -- internal
            txflag => s_txflag, -- internal
            txdata => s_txdata, -- internal
            txrdy => s_txrdy, -- internal
            txhalff => s_txhalff, -- Register
            tick_out => s_tc_out, -- Interrupt
            ctrl_out => s_ctrl_out, -- Register
            time_out => s_time_out, -- Register
            rxvalid => s_rxvalid, -- internal
            rxhalff => s_rxhalff, -- Register
            rxflag => s_rxflag, -- internal
            rxdata => s_rxdata, -- internal
            rxread => s_rxread, -- internal
            started => s_started, -- Register & Interrupt
            connecting => s_connecting, -- Register & Interrupt
            running => s_running, -- Register & Interrupt
            errdisc => s_errdisc, -- Register & Interrupt
            errpar => s_errpar, -- Register & Interrupt
            erresc => s_erresc, -- Register & Interrupt
            errcred => s_errcred, -- Register & Interrupt
            spw_di => spw_di, -- Top Level IO
            spw_si => spw_si, -- Top Level IO
            spw_do => spw_do, -- Top Level IO
            spw_so => spw_so -- Top Level IO
        );

        -- User logic ends

END arch_imp;
