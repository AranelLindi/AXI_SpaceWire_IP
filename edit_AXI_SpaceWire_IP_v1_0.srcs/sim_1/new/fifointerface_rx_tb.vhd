----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/12/2022 01:50:51 PM
-- Design Name: 
-- Module Name: fifointerface_rx_tb - fifointerface_rx_tb_arch
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifointerface_rx_tb is
    --  Port ( );
end fifointerface_rx_tb;

architecture fifointerface_rx_tb_arch of fifointerface_rx_tb is
    -- Generic constants.
    constant pl_clock_period : time := 10 ns;
    constant ps_clock_period : time := 20 ns;

    constant C_S_AXI_ID_WIDTH	: integer	:= 1;
    constant C_S_AXI_DATA_WIDTH	: integer	:= 32;
    constant C_S_AXI_ADDR_WIDTH	: integer	:= 3;
    constant C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_WUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_RUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_BUSER_WIDTH	: integer	:= 0;

    -- Parameters of Axi Slave Bus Interface S00_AXI_TX
    constant C_S01_AXI_RX_ID_WIDTH	: integer	:= 1;
    constant C_S01_AXI_RX_DATA_WIDTH	: integer	:= 32;
    constant C_S01_AXI_RX_ADDR_WIDTH	: integer	:= 3;
    constant C_S01_AXI_RX_AWUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_ARUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_WUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_RUSER_WIDTH	: integer	:= 0;
    constant C_S01_AXI_RX_BUSER_WIDTH	: integer	:= 0;

    component AXI_SpaceWire_IP_v1_0_S01_AXI_RX
        generic (
            C_S_AXI_ID_WIDTH	: integer	:= 1;
            C_S_AXI_DATA_WIDTH	: integer	:= 32;
            C_S_AXI_ADDR_WIDTH	: integer	:= 3;
            C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
            C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
            C_S_AXI_WUSER_WIDTH	: integer	:= 0;
            C_S_AXI_RUSER_WIDTH	: integer	:= 0;
            C_S_AXI_BUSER_WIDTH	: integer	:= 0
        );
        port (
            do : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            di : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            rden : out std_logic;
            wren : out std_logic;
            rdcount : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            wrcount : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
            empty : out std_logic;
            full : out std_logic;
            clk_logic : in std_logic;
            rst_logic : in std_logic;
            rxvalid : in std_logic;
            rxflag : in std_logic;
            rxdata : in std_logic_vector(7 downto 0);
            rxread : out std_logic;
            packet_out : out std_logic;
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
    end component;

    signal s_fifo_rdcount : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal s_fifo_wrcount : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal s_fifo_wren : std_logic;
    signal s_fifo_rden : std_logic;
    signal s_fifo_di : std_logic_vector(31 downto 0);
    signal s_fifo_do : std_logic_vector(31 downto 0);
    signal s_fifo_empty : std_logic;
    signal s_fifo_full : std_logic;

    signal clk_logic: std_logic;
    signal rst_logic: std_logic := '0';
    signal rxvalid: std_logic;
    signal rxflag: std_logic;
    signal rxdata: std_logic_vector(7 downto 0);
    signal rxread: std_logic;
    signal packet_out: std_logic;
    signal S_AXI_ACLK: std_logic;
    signal S_AXI_ARESETN: std_logic := '1';
    signal S_AXI_AWID: std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    signal S_AXI_AWADDR: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal S_AXI_AWLEN: std_logic_vector(7 downto 0);
    signal S_AXI_AWSIZE: std_logic_vector(2 downto 0);
    signal S_AXI_AWBURST: std_logic_vector(1 downto 0);
    signal S_AXI_AWLOCK: std_logic;
    signal S_AXI_AWCACHE: std_logic_vector(3 downto 0);
    signal S_AXI_AWPROT: std_logic_vector(2 downto 0);
    signal S_AXI_AWQOS: std_logic_vector(3 downto 0);
    signal S_AXI_AWREGION: std_logic_vector(3 downto 0);
    signal S_AXI_AWUSER: std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
    signal S_AXI_AWVALID: std_logic;
    signal S_AXI_AWREADY: std_logic;
    signal S_AXI_WDATA: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_WSTRB: std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    signal S_AXI_WLAST: std_logic;
    signal S_AXI_WUSER: std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
    signal S_AXI_WVALID: std_logic;
    signal S_AXI_WREADY: std_logic;
    signal S_AXI_BID: std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    signal S_AXI_BRESP: std_logic_vector(1 downto 0);
    signal S_AXI_BUSER: std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
    signal S_AXI_BVALID: std_logic;
    signal S_AXI_BREADY: std_logic;
    signal S_AXI_ARID: std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    signal S_AXI_ARADDR: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal S_AXI_ARLEN: std_logic_vector(7 downto 0);
    signal S_AXI_ARSIZE: std_logic_vector(2 downto 0);
    signal S_AXI_ARBURST: std_logic_vector(1 downto 0);
    signal S_AXI_ARLOCK: std_logic;
    signal S_AXI_ARCACHE: std_logic_vector(3 downto 0);
    signal S_AXI_ARPROT: std_logic_vector(2 downto 0);
    signal S_AXI_ARQOS: std_logic_vector(3 downto 0);
    signal S_AXI_ARREGION: std_logic_vector(3 downto 0);
    signal S_AXI_ARUSER: std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
    signal S_AXI_ARVALID: std_logic;
    signal S_AXI_ARREADY: std_logic;
    signal S_AXI_RID: std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
    signal S_AXI_RDATA: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal S_AXI_RRESP: std_logic_vector(1 downto 0);
    signal S_AXI_RLAST: std_logic;
    signal S_AXI_RUSER: std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
    signal S_AXI_RVALID: std_logic;
    signal S_AXI_RREADY: std_logic ;

    procedure AXI4FullRead(signal araddr : out std_logic_vector; constant araddr_val : in std_logic_vector; signal arlen : out std_logic_vector(7 downto 0); constant arlen_val : in std_logic_vector(7 downto 0); signal arburst : out std_logic_vector(1 downto 0); constant arburst_val : in std_logic_vector(1 downto 0); signal arvalid : out std_logic; signal arready : in std_logic; -- Read Address Channel
                           signal rlast : in std_logic; signal rvalid : in std_logic; signal rready : out std_logic -- Read Data Channel
                          ) is
        variable transfer_length : integer := to_integer(unsigned(arlen_val)) - 1;
    begin
        wait until rising_edge(S_AXI_ACLK);
        report "Start AXI4 Full Read...";

        -- Before starting transfer, drive control information that won't change during process.
        -- Read Address Channel
        araddr <= araddr_val;
        arlen <= arlen_val;
        arburst <= arburst_val;

        arvalid <= '1'; -- Set master handshake signal for read address channel

        wait until rising_edge(S_AXI_ACLK) and arready = '1';
        arvalid <= '0';

        --wait for ps_clock_period;       
        rready <= '1';

        -- Loop until rlast signal is HIGH
        while rlast = '0' loop
            --rready <= '1';

            wait until rising_edge(S_AXI_ACLK) and rvalid = '1';
            --wait for ps_clock_period/2;

            --rready <= '0';

            --wait for ps_clock_period/2;
        end loop;

        wait until rising_edge(S_AXI_ACLK);
        wait for ps_clock_period/2;
        --rready <= '0';

        -- Burst transfer finished so reset all relevant signals.
        araddr <= (others => '0');
        arlen <= (others => '0');
        arburst <= (others => '0');

        --arvalid <= '0';
        rready <= '0';
    end procedure AXI4FullRead;
begin

    -- Design under test.
    dut: AXI_SpaceWire_IP_v1_0_S01_AXI_RX generic map (
            C_S_AXI_ID_WIDTH         => C_S_AXI_ID_WIDTH,
            C_S_AXI_DATA_WIDTH       => C_S_AXI_DATA_WIDTH,
            C_S_AXI_ADDR_WIDTH       => C_S_AXI_ADDR_WIDTH,
            C_S_AXI_AWUSER_WIDTH     => C_S_AXI_AWUSER_WIDTH,
            C_S_AXI_ARUSER_WIDTH     => C_S_AXI_ARUSER_WIDTH,
            C_S_AXI_WUSER_WIDTH      => C_S_AXI_WUSER_WIDTH,
            C_S_AXI_RUSER_WIDTH      => C_S_AXI_RUSER_WIDTH,
            C_S_AXI_BUSER_WIDTH      => C_S_AXI_BUSER_WIDTH)
        port map (
            do => s_fifo_do,
            di => s_fifo_di,
            rden => s_fifo_rden,
            wren => s_fifo_wren,
            rdcount => s_fifo_rdcount,
            wrcount => s_fifo_wrcount,
            empty => s_fifo_empty,
            full => s_fifo_full,
            clk_logic                => clk_logic,
            rst_logic                => rst_logic,
            rxvalid                  => rxvalid,
            rxflag                   => rxflag,
            rxdata                   => rxdata,
            rxread                   => rxread,
            packet_out               => packet_out,
            S_AXI_ACLK               => S_AXI_ACLK,
            S_AXI_ARESETN            => S_AXI_ARESETN,
            S_AXI_AWID               => S_AXI_AWID,
            S_AXI_AWADDR             => S_AXI_AWADDR,
            S_AXI_AWLEN              => S_AXI_AWLEN,
            S_AXI_AWSIZE             => S_AXI_AWSIZE,
            S_AXI_AWBURST            => S_AXI_AWBURST,
            S_AXI_AWLOCK             => S_AXI_AWLOCK,
            S_AXI_AWCACHE            => S_AXI_AWCACHE,
            S_AXI_AWPROT             => S_AXI_AWPROT,
            S_AXI_AWQOS              => S_AXI_AWQOS,
            S_AXI_AWREGION           => S_AXI_AWREGION,
            S_AXI_AWUSER             => S_AXI_AWUSER,
            S_AXI_AWVALID            => S_AXI_AWVALID,
            S_AXI_AWREADY            => S_AXI_AWREADY,
            S_AXI_WDATA              => S_AXI_WDATA,
            S_AXI_WSTRB              => S_AXI_WSTRB,
            S_AXI_WLAST              => S_AXI_WLAST,
            S_AXI_WUSER              => S_AXI_WUSER,
            S_AXI_WVALID             => S_AXI_WVALID,
            S_AXI_WREADY             => S_AXI_WREADY,
            S_AXI_BID                => S_AXI_BID,
            S_AXI_BRESP              => S_AXI_BRESP,
            S_AXI_BUSER              => S_AXI_BUSER,
            S_AXI_BVALID             => S_AXI_BVALID,
            S_AXI_BREADY             => S_AXI_BREADY,
            S_AXI_ARID               => S_AXI_ARID,
            S_AXI_ARADDR             => S_AXI_ARADDR,
            S_AXI_ARLEN              => S_AXI_ARLEN,
            S_AXI_ARSIZE             => S_AXI_ARSIZE,
            S_AXI_ARBURST            => S_AXI_ARBURST,
            S_AXI_ARLOCK             => S_AXI_ARLOCK,
            S_AXI_ARCACHE            => S_AXI_ARCACHE,
            S_AXI_ARPROT             => S_AXI_ARPROT,
            S_AXI_ARQOS              => S_AXI_ARQOS,
            S_AXI_ARREGION           => S_AXI_ARREGION,
            S_AXI_ARUSER             => S_AXI_ARUSER,
            S_AXI_ARVALID            => S_AXI_ARVALID,
            S_AXI_ARREADY            => S_AXI_ARREADY,
            S_AXI_RID                => S_AXI_RID,
            S_AXI_RDATA              => S_AXI_RDATA,
            S_AXI_RRESP              => S_AXI_RRESP,
            S_AXI_RLAST              => S_AXI_RLAST,
            S_AXI_RUSER              => S_AXI_RUSER,
            S_AXI_RVALID             => S_AXI_RVALID,
            S_AXI_RREADY             => S_AXI_RREADY );

    stimulus: process
    begin

        -- Put initialisation code here

        S_AXI_ARESETN <= '0', '1' after 6 * ps_clock_period;
        rst_logic <= '1', '0' after 6 * ps_clock_period;
        wait for 1 us;

        -- Put test bench stimulus code here



        rxvalid <= '1';

        wait for 100 us;

        rxvalid <= '0';

        wait for 1 us;


        -- Perform read transfer
        for j in 0 to 9 loop
            AXI4FullRead(S_AXI_ARADDR, "000",
                         S_AXI_ARLEN, std_logic_vector(to_unsigned(3, S_AXI_AWLEN'length)),
                         S_AXI_ARBURST, "00", -- FIXED BURST                     
                         S_AXI_ARVALID,
                         S_AXI_ARREADY, -- read address channel                     
                         S_AXI_RLAST,
                         S_AXI_RVALID,
                         S_AXI_RREADY); -- read data channel
        end loop;

        rxvalid <= '1', '0' after 5 us;

        wait for 1 us;

        AXI4FullRead(S_AXI_ARADDR, "000",
                     S_AXI_ARLEN, std_logic_vector(to_unsigned(3, S_AXI_AWLEN'length)),
                     S_AXI_ARBURST, "00", -- FIXED BURST                     
                     S_AXI_ARVALID,
                     S_AXI_ARREADY, -- read address channel                     
                     S_AXI_RLAST,
                     S_AXI_RVALID,
                     S_AXI_RREADY); -- read data channel        

        rxvalid <= '1', '0' after 20 us;

        wait for 2 us;
        
        -- read until fifo is empty
        for j in 0 to 9 loop
            AXI4FullRead(S_AXI_ARADDR, "000",
                         S_AXI_ARLEN, std_logic_vector(to_unsigned(255, S_AXI_AWLEN'length)),
                         S_AXI_ARBURST, "00", -- FIXED BURST                     
                         S_AXI_ARVALID,
                         S_AXI_ARREADY, -- read address channel                     
                         S_AXI_RLAST,
                         S_AXI_RVALID,
                         S_AXI_RREADY); -- read data channel
        end loop;        

        wait;
    end process;

    process
        variable i : integer range 0 to 256 := 0; -- 0b000000000 - 0b100000000
        variable vec : std_logic_vector(8 downto 0);
    begin
        if rst_logic = '0' then
            vec := std_logic_vector(to_unsigned(i, vec'length));
            rxdata <= vec(7 downto 0);
            rxflag <= vec(8);

            if i /= 256 then
                i := i + 1;
            else
                i := 0;
            end if;
        else
            i := 0;
        end if;
        wait until rxread = '1';
    end process;


    -- PL clock.
    pl_clock: process
    begin
        clk_logic <= '0', '1' after pl_clock_period / 2;
        wait for pl_clock_period;
    end process;

    -- PS clock.
    ps_clock: process
    begin
        S_AXI_ACLK <= '0', '1' after ps_clock_period / 2;
        wait for ps_clock_period;
    end process;

end fifointerface_rx_tb_arch;