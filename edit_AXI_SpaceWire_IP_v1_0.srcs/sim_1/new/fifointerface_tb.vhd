----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/09/2022 03:14:55 PM
-- Design Name: 
-- Module Name: fifointerface_tb - fifointerface_tb_arch
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

entity fifointerface_tb is
    --  Port ( );
end fifointerface_tb;

architecture fifointerface_tb_arch of fifointerface_tb is
    -- Generic constants.
    constant pl_clock_period : time := 10 ns;
    constant ps_clock_period : time := 20 ns;

    constant FIFO_ALMOST_FULL_OFFSET : Integer range 0 to ( 18 * 1000 / 8 ) := 0;
    constant FIFO_ALMOST_EMPTY_OFFSET : Integer range 0 to ( 18 * 1000 / 8 ) := 0;
    constant C_S_AXI_ID_WIDTH	: integer	:= 1;
    constant C_S_AXI_DATA_WIDTH	: integer	:= 32;
    constant C_S_AXI_ADDR_WIDTH	: integer	:= 3;
    constant C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_WUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_RUSER_WIDTH	: integer	:= 0;
    constant C_S_AXI_BUSER_WIDTH	: integer	:= 0;

    -- Parameters of Axi Slave Bus Interface S00_AXI_TX
    constant C_S00_AXI_TX_ID_WIDTH	: integer	:= 1;
    constant C_S00_AXI_TX_DATA_WIDTH	: integer	:= 32;
    constant C_S00_AXI_TX_ADDR_WIDTH	: integer	:= 3;
    constant C_S00_AXI_TX_AWUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_ARUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_WUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_RUSER_WIDTH	: integer	:= 0;
    constant C_S00_AXI_TX_BUSER_WIDTH	: integer	:= 0;


    component AXI_SpaceWire_IP_v1_0_S00_AXI_TX
        generic (
            FIFO_ALMOST_FULL_OFFSET : Integer range 0 to ( 18 * 1000 / 8 ) := 0;
            FIFO_ALMOST_EMPTY_OFFSET : Integer range 0 to ( 18 * 1000 / 8 ) := 0;
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
            clk_logic : in std_logic;
            rst_logic : in std_logic;
            txwrite : out std_logic;
            txflag : out std_logic;
            txdata : out std_logic_vector(7 downto 0);
            txrdy : in std_logic;
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

    signal clk_logic: std_logic;
    signal rst_logic: std_logic;
    signal txwrite: std_logic;
    signal txflag: std_logic;
    signal txdata: std_logic_vector(7 downto 0);
    signal txrdy: std_logic;
    signal S_AXI_ACLK: std_logic;
    signal S_AXI_ARESETN: std_logic;
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
    
    
    type array_t is array(natural range <>) of std_logic_vector;


    procedure AXI4FullWrite(signal awid : out std_logic_vector; constant awid_val : in std_logic_vector; signal awaddr : out std_logic_vector; constant awaddr_val : in std_logic_vector; signal awlen : out std_logic_vector(7 downto 0); constant awlen_val : in std_logic_vector(7 downto 0); signal awburst : out std_logic_vector(1 downto 0); constant awburst_val : in std_logic_vector(1 downto 0); signal awvalid : out std_logic; signal awready : in std_logic; -- write address channel
                            signal wdata : out std_logic_vector; constant wdata_val : in array_t; signal wstrb : out std_logic_vector; constant wstrb_val : in std_logic_vector; signal wlast : out std_logic; signal wvalid : out std_logic; signal wready : in std_logic; -- write data channel
                            signal bready : out std_logic; signal bvalid : in std_logic) -- write response channel
    is
        variable transfer_length : integer := to_integer(unsigned(awlen_val)) - 1;
    begin
        wait until rising_edge(S_AXI_ACLK);
        report "Start 1";
        -- Before starting transfer, drive control information that won't change during progress
        -- Write Address Channel
        awid <= awid_val;
        awaddr <= awaddr_val;
        awlen <= awlen;
        awburst <= awburst;
        awvalid <= '1'; -- Set master handshake signal for write address channel

        bready <= '1';

        wait until rising_edge(S_AXI_ACLK) and awready = '1';
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

            wait until rising_edge(S_AXI_ACLK) and wready = '1';
            wait for ps_clock_period/2;

            --bready <= '0';

            report "i is " & integer'image(i);
        end loop;

        --wait for ps_clock_period/2;

        wait until rising_edge(S_AXI_ACLK) and bvalid = '1';
        wait for ps_clock_period/2;

        -- burst transfer finished, so reset all handshake & control signals.
        awid <= (others => '0');
        awaddr <= (others => '0');
        awlen <= (others => '0');
        awburst <= (others => '0');
        awvalid <= '0';
        wdata <= (others => '0');
        wstrb <= (others => '0');
        wvalid <= '0';
        wlast <= '0';
        bready <= '0';
    end procedure AXI4FullWrite;
begin

    -- Design under test.
    dut: AXI_SpaceWire_IP_v1_0_S00_AXI_TX generic map ( FIFO_ALMOST_FULL_OFFSET  => FIFO_ALMOST_FULL_OFFSET,
                    FIFO_ALMOST_EMPTY_OFFSET => FIFO_ALMOST_EMPTY_OFFSET,
                    C_S_AXI_ID_WIDTH         => C_S_AXI_ID_WIDTH,
                    C_S_AXI_DATA_WIDTH       => C_S_AXI_DATA_WIDTH,
                    C_S_AXI_ADDR_WIDTH       => C_S_AXI_ADDR_WIDTH,
                    C_S_AXI_AWUSER_WIDTH     => C_S_AXI_AWUSER_WIDTH,
                    C_S_AXI_ARUSER_WIDTH     => C_S_AXI_ARUSER_WIDTH,
                    C_S_AXI_WUSER_WIDTH      => C_S_AXI_WUSER_WIDTH,
                    C_S_AXI_RUSER_WIDTH      => C_S_AXI_RUSER_WIDTH,
                    C_S_AXI_BUSER_WIDTH      => C_S_AXI_BUSER_WIDTH)
        port map ( clk_logic                => clk_logic,
                 rst_logic                => rst_logic,
                 txwrite                  => txwrite,
                 txflag                   => txflag,
                 txdata                   => txdata,
                 txrdy                    => txrdy,
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
        variable data : array_t(0 to 3)(31 downto 0);
    begin

        -- Put initialisation code here
        S_AXI_ARESETN <= '0', '1' after 6 * ps_clock_period;

        wait for 5 * ps_clock_period;
        
        txrdy <= '1';
        
                -- Perform single transfer to write into TX fifo (if spwstream is activated and in running mode it should send this data asap)
        data(0) := x"ffffff0f"; -- define some pseudo data
        data(1) := x"AAAAAA0A";
        data(2) := x"0000000f";
        data(3) := x"0f0f0f0f";
        
        --report "length of data is " & integer'image(data'length);
        
        AXI4FullWrite(S_AXI_AWID, "0",
                      S_AXI_AWADDR, "000",
                      S_AXI_AWLEN, std_logic_vector(to_unsigned(data'length, S_AXI_AWLEN'length)), -- awlen is zero-based index !
                      S_AXI_AWBURST, "00", -- FIXED
                      S_AXI_AWVALID,
                      S_AXI_AWREADY,
                      S_AXI_WDATA, data,
                      S_AXI_WSTRB, "0011",
                      S_AXI_WLAST,
                      S_AXI_WVALID,
                      S_AXI_WREADY,
                      S_AXI_BREADY,
                      S_AXI_BVALID);
        
        wait for 20 * ps_clock_period;
        wait;
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

end fifointerface_tb_arch;
