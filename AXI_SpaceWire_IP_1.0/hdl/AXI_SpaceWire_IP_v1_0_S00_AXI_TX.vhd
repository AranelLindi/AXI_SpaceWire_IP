--FIFO_DUALCLOCK_MACRO : In order to incorporate this function into the design,
--     VHDL      : the following instance declaration needs to be placed
--   instance    : in the architecture body of the design code.  The
--  declaration  : (FIFO_DUALCLOCK_MACRO_inst) and/or the port declarations
--     code      : after the "=>" assignment maybe changed to properly
--               : reference and connect this function to the design.
--               : All inputs and outputs must be connected.
Library UNIMACRO;
use UNIMACRO.vcomponents.all;

--    Library    : In addition to adding the instance declaration, a use
--  declaration  : statement for the UNISIM.vcomponents library needs to be
--      for      : added before the entity declaration.  This library
--    Xilinx     : contains the component declarations for all Xilinx
--   primitives  : primitives and points to the models that will be used
--               : for simulation.
Library UNISIM;
use UNISIM.vcomponents.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.numeric_bit.all;

entity AXI_SpaceWire_IP_v1_0_S00_AXI_TX is
    generic (
        -- Users to add parameters here

        -- Sets transmit fifo almost full threshold.
        FIFO_ALMOST_FULL_OFFSET : Integer range 0 to ( 18 * 1000 / 8 ) := 0;

        -- Sets transmit fifo almost empty threshold.
        FIFO_ALMOST_EMPTY_OFFSET : Integer range 0 to ( 18 * 1000 / 8 ) := 0;

        -- User parameters ends
        -- Do not modify the parameters beyond this line

        -- Width of ID for for write address, write data, read address and read data
        C_S_AXI_ID_WIDTH	: integer	:= 1;
        -- Width of S_AXI data bus
        C_S_AXI_DATA_WIDTH	: integer	:= 32;
        -- Width of S_AXI address bus
        C_S_AXI_ADDR_WIDTH	: integer	:= 8;
        -- Width of optional user defined signal in write address channel
        C_S_AXI_AWUSER_WIDTH	: integer	:= 0;
        -- Width of optional user defined signal in read address channel
        C_S_AXI_ARUSER_WIDTH	: integer	:= 0;
        -- Width of optional user defined signal in write data channel
        C_S_AXI_WUSER_WIDTH	: integer	:= 0;
        -- Width of optional user defined signal in read data channel
        C_S_AXI_RUSER_WIDTH	: integer	:= 0;
        -- Width of optional user defined signal in write response channel
        C_S_AXI_BUSER_WIDTH	: integer	:= 0
    );
    port (
        -- Users to add ports here

        -- System clock for SpaceWire entity.
        clk_logic : in std_logic;

        -- Synchronous reset for SpaceWire entity (achtive-high).
        rst_logic : in std_logic;

        -- Pulled high by the fifo process to write an N-Char to the transmit
        -- queue. If "txwrite" and "txrdy" are both high on the rising edge
        -- of "clk_logic", a character is added to the transmit queue.
        -- This signal has no effect if "txrdy" is low.
        txwrite : out std_logic;

        -- Control flag to be sent with the next N-Char.
        -- Must be valid while "txwrite" is high.
        txflag : out std_logic;

        -- Byte to be sent, or "00000000" for EOP or "00000001" for EEP.
        -- Must be valid while "txwrite" is high.
        txdata : out std_logic_vector(7 downto 0);

        -- High if the SpaceWire entity is ready to accept an N-Char for transmission.
        txrdy : in std_logic;

        -- User ports ends
        -- Do not modify the ports beyond this line

        -- Global Clock Signal
        S_AXI_ACLK	: in std_logic;
        -- Global Reset Signal. This Signal is Active LOW
        S_AXI_ARESETN	: in std_logic;
        -- Write Address ID
        S_AXI_AWID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        -- Write address
        S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        -- Burst length. The burst length gives the exact number of transfers in a burst
        S_AXI_AWLEN	: in std_logic_vector(7 downto 0);
        -- Burst size. This signal indicates the size of each transfer in the burst
        S_AXI_AWSIZE	: in std_logic_vector(2 downto 0);
        -- Burst type. The burst type and the size information, 
        -- determine how the address for each transfer within the burst is calculated.
        S_AXI_AWBURST	: in std_logic_vector(1 downto 0);
        -- Lock type. Provides additional information about the
        -- atomic characteristics of the transfer.
        S_AXI_AWLOCK	: in std_logic;
        -- Memory type. This signal indicates how transactions
        -- are required to progress through a system.
        S_AXI_AWCACHE	: in std_logic_vector(3 downto 0);
        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
        -- Quality of Service, QoS identifier sent for each
        -- write transaction.
        S_AXI_AWQOS	: in std_logic_vector(3 downto 0);
        -- Region identifier. Permits a single physical interface
        -- on a slave to be used for multiple logical interfaces.
        S_AXI_AWREGION	: in std_logic_vector(3 downto 0);
        -- Optional User-defined signal in the write address channel.
        S_AXI_AWUSER	: in std_logic_vector(C_S_AXI_AWUSER_WIDTH-1 downto 0);
        -- Write address valid. This signal indicates that
        -- the channel is signaling valid write address and
        -- control information.
        S_AXI_AWVALID	: in std_logic;
        -- Write address ready. This signal indicates that
        -- the slave is ready to accept an address and associated
        -- control signals.
        S_AXI_AWREADY	: out std_logic;
        -- Write Data
        S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        -- Write strobes. This signal indicates which byte
        -- lanes hold valid data. There is one write strobe
        -- bit for each eight bits of the write data bus.
        S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        -- Write last. This signal indicates the last transfer
        -- in a write burst.
        S_AXI_WLAST	: in std_logic;
        -- Optional User-defined signal in the write data channel.
        S_AXI_WUSER	: in std_logic_vector(C_S_AXI_WUSER_WIDTH-1 downto 0);
        -- Write valid. This signal indicates that valid write
        -- data and strobes are available.
        S_AXI_WVALID	: in std_logic;
        -- Write ready. This signal indicates that the slave
        -- can accept the write data.
        S_AXI_WREADY	: out std_logic;
        -- Response ID tag. This signal is the ID tag of the
        -- write response.
        S_AXI_BID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        -- Write response. This signal indicates the status
        -- of the write transaction.
        S_AXI_BRESP	: out std_logic_vector(1 downto 0);
        -- Optional User-defined signal in the write response channel.
        S_AXI_BUSER	: out std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
        -- Write response valid. This signal indicates that the
        -- channel is signaling a valid write response.
        S_AXI_BVALID	: out std_logic;
        -- Response ready. This signal indicates that the master
        -- can accept a write response.
        S_AXI_BREADY	: in std_logic;
        -- Read address ID. This signal is the identification
        -- tag for the read address group of signals.
        S_AXI_ARID	: in std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        -- Read address. This signal indicates the initial
        -- address of a read burst transaction.
        S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        -- Burst length. The burst length gives the exact number of transfers in a burst
        S_AXI_ARLEN	: in std_logic_vector(7 downto 0);
        -- Burst size. This signal indicates the size of each transfer in the burst
        S_AXI_ARSIZE	: in std_logic_vector(2 downto 0);
        -- Burst type. The burst type and the size information, 
        -- determine how the address for each transfer within the burst is calculated.
        S_AXI_ARBURST	: in std_logic_vector(1 downto 0);
        -- Lock type. Provides additional information about the
        -- atomic characteristics of the transfer.
        S_AXI_ARLOCK	: in std_logic;
        -- Memory type. This signal indicates how transactions
        -- are required to progress through a system.
        S_AXI_ARCACHE	: in std_logic_vector(3 downto 0);
        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
        -- Quality of Service, QoS identifier sent for each
        -- read transaction.
        S_AXI_ARQOS	: in std_logic_vector(3 downto 0);
        -- Region identifier. Permits a single physical interface
        -- on a slave to be used for multiple logical interfaces.
        S_AXI_ARREGION	: in std_logic_vector(3 downto 0);
        -- Optional User-defined signal in the read address channel.
        S_AXI_ARUSER	: in std_logic_vector(C_S_AXI_ARUSER_WIDTH-1 downto 0);
        -- Write address valid. This signal indicates that
        -- the channel is signaling valid read address and
        -- control information.
        S_AXI_ARVALID	: in std_logic;
        -- Read address ready. This signal indicates that
        -- the slave is ready to accept an address and associated
        -- control signals.
        S_AXI_ARREADY	: out std_logic;
        -- Read ID tag. This signal is the identification tag
        -- for the read data group of signals generated by the slave.
        S_AXI_RID	: out std_logic_vector(C_S_AXI_ID_WIDTH-1 downto 0);
        -- Read Data
        S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        -- Read response. This signal indicates the status of
        -- the read transfer.
        S_AXI_RRESP	: out std_logic_vector(1 downto 0);
        -- Read last. This signal indicates the last transfer
        -- in a read burst.
        S_AXI_RLAST	: out std_logic;
        -- Optional User-defined signal in the read address channel.
        S_AXI_RUSER	: out std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
        -- Read valid. This signal indicates that the channel
        -- is signaling the required read data.
        S_AXI_RVALID	: out std_logic;
        -- Read ready. This signal indicates that the master can
        -- accept the read data and response information.
        S_AXI_RREADY	: in std_logic
    );
end AXI_SpaceWire_IP_v1_0_S00_AXI_TX;

architecture arch_imp of AXI_SpaceWire_IP_v1_0_S00_AXI_TX is
    -- General signal declaration.
    signal s_axi_areseth : std_logic;

    -- Fifo signal declaration.
    constant c_fifo_almostfull_offset : integer range 0 to ( 18 * 1000 / 8) := FIFO_ALMOST_FULL_OFFSET;
    constant c_fifo_almostempty_offset : integer range 0 to ( 18 * 1000 / 8 ) := FIFO_ALMOST_EMPTY_OFFSET;

    signal s_fifo_almostempty : std_logic; -- Top Level IO
    signal s_fifo_almostfull : std_logic; -- Top Level IO
    signal s_fifo_do : std_logic_vector(8 downto 0); -- Internal signal
    signal s_fifo_empty : std_logic; -- Top Level IO
    signal s_fifo_full : std_logic; -- Top Level IO
    signal s_fifo_rdcount : std_logic_vector(10 downto 0); -- err? -- Top Level IO ?
    signal s_fifo_rderr : std_logic; -- Top Level IO ? 
    signal s_fifo_wrcount : std_logic_vector(10 downto 0); -- err?
    signal s_fifo_wrerr : std_logic;
    signal s_fifo_di : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal s_fifo_rden : std_logic;
    signal s_fifo_wren : std_logic;

    -- AXI4FULL signals
    signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal axi_awready	: std_logic;
    signal axi_wready	: std_logic;
    signal axi_bresp	: std_logic_vector(1 downto 0);
    signal axi_buser	: std_logic_vector(C_S_AXI_BUSER_WIDTH-1 downto 0);
    signal axi_bvalid	: std_logic;
    signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal axi_arready	: std_logic;
    signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal axi_rresp	: std_logic_vector(1 downto 0);
    signal axi_rlast	: std_logic;
    signal axi_ruser	: std_logic_vector(C_S_AXI_RUSER_WIDTH-1 downto 0);
    signal axi_rvalid	: std_logic;
    -- aw_wrap_en determines wrap boundary and enables wrapping
    signal  aw_wrap_en : std_logic;
    -- ar_wrap_en determines wrap boundary and enables wrapping
    signal  ar_wrap_en : std_logic;
    -- aw_wrap_size is the size of the write transfer, the
    -- write address wraps to a lower address if upper address
    -- limit is reached
    signal aw_wrap_size : integer;
    -- ar_wrap_size is the size of the read transfer, the
    -- read address wraps to a lower address if upper address
    -- limit is reached
    signal ar_wrap_size : integer;
    -- The axi_awv_awr_flag flag marks the presence of write address valid
    signal axi_awv_awr_flag    : std_logic;
    --The axi_arv_arr_flag flag marks the presence of read address valid
    signal axi_arv_arr_flag    : std_logic;
    -- The axi_awlen_cntr internal write address counter to keep track of beats in a burst transaction
    signal axi_awlen_cntr      : std_logic_vector(7 downto 0);
    --The axi_arlen_cntr internal read address counter to keep track of beats in a burst transaction
    signal axi_arlen_cntr      : std_logic_vector(7 downto 0);
    signal axi_arburst      : std_logic_vector(2-1 downto 0);
    signal axi_awburst      : std_logic_vector(2-1 downto 0);
    signal axi_arlen      : std_logic_vector(8-1 downto 0);
    signal axi_awlen      : std_logic_vector(8-1 downto 0);
    --local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    --ADDR_LSB is used for addressing 32/64 bit registers/memories
    --ADDR_LSB = 2 for 32 bits (n downto 2) 
    --ADDR_LSB = 3 for 42 bits (n downto 3)

    constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
    constant OPT_MEM_ADDR_BITS : integer := 5; -- 2**6 == 32 Rows (5 downto 0); 32 * 4 Bytes per Row == 256 Bytes
    constant USER_NUM_MEM: integer := 1;
    constant low : std_logic_vector (C_S_AXI_ADDR_WIDTH - 1 downto 0) := "00000000";
    ------------------------------------------------
    ---- Signals for user logic memory space example
    --------------------------------------------------
    signal mem_address : std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    signal mem_select : std_logic_vector(USER_NUM_MEM-1 downto 0);
    type word_array is array (0 to USER_NUM_MEM-1) of std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal mem_data_out : word_array;

    signal i : integer;
    signal j : integer;
    signal mem_byte_index : integer;
    type BYTE_RAM_TYPE is array (0 to 63) of std_logic_vector(7 downto 0);
begin
    -- I/O Connections assignments
    S_AXI_AWREADY	<= axi_awready;
    S_AXI_WREADY	<= axi_wready;
    S_AXI_BRESP	<= axi_bresp;
    S_AXI_BUSER	<= axi_buser;
    S_AXI_BVALID	<= axi_bvalid;
    S_AXI_ARREADY	<= axi_arready;
    S_AXI_RDATA	<= axi_rdata;
    S_AXI_RRESP	<= axi_rresp;
    S_AXI_RLAST	<= axi_rlast;
    S_AXI_RUSER	<= axi_ruser;
    S_AXI_RVALID	<= axi_rvalid;
    S_AXI_BID <= S_AXI_AWID;
    S_AXI_RID <= S_AXI_ARID;
    aw_wrap_size <= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_awlen)));
    ar_wrap_size <= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_arlen)));
    aw_wrap_en <= '1' when (((axi_awaddr AND std_logic_vector(to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH))) XOR std_logic_vector(to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH))) = low) else '0';
    ar_wrap_en <= '1' when (((axi_araddr AND std_logic_vector(to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH))) XOR std_logic_vector(to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH))) = low) else '0';


    -- Implement axi_awready generation
    -- axi_awready is asserted for one S_AXI_ACLK clock cycle when both S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is de-asserted when reset is low.
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_awready <= '0';
                axi_awv_awr_flag <= '0';
            else
                if (axi_awready = '0' and S_AXI_AWVALID = '1' and axi_awv_awr_flag = '0' and axi_arv_arr_flag = '0') then
                    -- slave is ready to accept an address and
                    -- associated control signals
                    axi_awv_awr_flag  <= '1'; -- used for generation of bresp() and bvalid
                    axi_awready <= '1';
                elsif (S_AXI_WLAST = '1' and axi_wready = '1') then
                    -- preparing to accept next address after current write burst tx completion
                    axi_awv_awr_flag  <= '0';
                else
                    axi_awready <= '0';
                end if;
            end if;
        end if;
    end process;


    -- Implement axi_awaddr latching
    -- This process is used to latch the address when both S_AXI_AWVALID and S_AXI_WVALID are valid.
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_awaddr <= (others => '0');
                axi_awburst <= (others => '0');
                axi_awlen <= (others => '0');
                axi_awlen_cntr <= (others => '0');
            else
                if (axi_awready = '0' and S_AXI_AWVALID = '1' and axi_awv_awr_flag = '0') then
                    -- address latching 
                    axi_awaddr <= S_AXI_AWADDR(C_S_AXI_ADDR_WIDTH - 1 downto 0);  ---- start address of transfer
                    axi_awlen_cntr <= (others => '0');
                    axi_awburst <= S_AXI_AWBURST;
                    axi_awlen <= S_AXI_AWLEN;
                elsif((axi_awlen_cntr <= axi_awlen) and axi_wready = '1' and S_AXI_WVALID = '1') then
                    axi_awlen_cntr <= std_logic_vector (unsigned(axi_awlen_cntr) + 1);

                    case (axi_awburst) is
                        when "00" => -- fixed burst
                        -- The write address for all the beats in the transaction are fixed
                            axi_awaddr     <= axi_awaddr;       ----for awsize = 4 bytes (010)
                        when "01" => --incremental burst
                        -- The write address for all the beats in the transaction are increments by awsize
                            axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--awaddr aligned to 4 byte boundary
                            axi_awaddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
                        when "10" => --Wrapping burst
                        -- The write address wraps when the address reaches wrap boundary 
                            if (aw_wrap_en = '1') then
                                axi_awaddr <= std_logic_vector (unsigned(axi_awaddr) - (to_unsigned(aw_wrap_size,C_S_AXI_ADDR_WIDTH)));
                            else
                                axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--awaddr aligned to 4 byte boundary
                                axi_awaddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
                            end if;
                        when others => --reserved (incremental burst for example)
                            axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--for awsize = 4 bytes (010)
                            axi_awaddr(ADDR_LSB-1 downto 0)  <= (others => '0');
                    end case;
                end if;
            end if;
        end if;
    end process;


    -- Implement axi_wready generation
    -- axi_wready is asserted for one S_AXI_ACLK clock cycle when both S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is de-asserted when reset is low.
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_wready <= '0';
            else
                if (axi_wready = '0' and S_AXI_WVALID = '1' and axi_awv_awr_flag = '1') then
                    axi_wready <= '1';
                -- elsif (axi_awv_awr_flag = '0') then
                elsif (S_AXI_WLAST = '1' and axi_wready = '1') then

                    axi_wready <= '0';
                end if;
            end if;
        end if;
    end process;


    -- Implement write response logic generation
    -- The write response and response valid signals are asserted by the slave when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. This marks the acceptance of address and indicates the status of write transaction.
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_bvalid  <= '0';
                axi_bresp  <= "00"; --need to work more on the responses
                axi_buser <= (others => '0');
            else
                if (axi_awv_awr_flag = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0' and S_AXI_WLAST = '1' ) then
                    axi_bvalid <= '1';
                    axi_bresp  <= "00";
                elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
                    --check if bready is asserted while bvalid is high)
                    axi_bvalid <= '0';
                end if;
            end if;
        end if;
    end process;


    -- Implement axi_arready generation
    -- axi_arready is asserted for one S_AXI_ACLK clock cycle when S_AXI_ARVALID is asserted. axi_awready is de-asserted when reset (active low) is asserted. The read address is also latched when S_AXI_ARVALID is asserted. axi_araddr is reset to zero on reset assertion.
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_arready <= '0';
                axi_arv_arr_flag <= '0';
            else
                if (axi_arready = '0' and S_AXI_ARVALID = '1' and axi_awv_awr_flag = '0' and axi_arv_arr_flag = '0') then
                    axi_arready <= '1';
                    axi_arv_arr_flag <= '1';
                elsif (axi_rvalid = '1' and S_AXI_RREADY = '1' and (axi_arlen_cntr = axi_arlen)) then
                    -- preparing to accept next address after current read completion
                    axi_arv_arr_flag <= '0';
                else
                    axi_arready <= '0';
                end if;
            end if;
        end if;
    end process;
    -- Implement axi_araddr latching

    --This process is used to latch the address when both 
    --S_AXI_ARVALID and S_AXI_RVALID are valid. 
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_araddr <= (others => '0');
                axi_arburst <= (others => '0');
                axi_arlen <= (others => '0');
                axi_arlen_cntr <= (others => '0');
                axi_rlast <= '0';
                axi_ruser <= (others => '0');
            else
                if (axi_arready = '0' and S_AXI_ARVALID = '1' and axi_arv_arr_flag = '0') then
                    -- address latching 
                    axi_araddr <= S_AXI_ARADDR(C_S_AXI_ADDR_WIDTH - 1 downto 0); ---- start address of transfer
                    axi_arlen_cntr <= (others => '0');
                    axi_rlast <= '0';
                    axi_arburst <= S_AXI_ARBURST;
                    axi_arlen <= S_AXI_ARLEN;
                elsif((axi_arlen_cntr <= axi_arlen) and axi_rvalid = '1' and S_AXI_RREADY = '1') then
                    axi_arlen_cntr <= std_logic_vector (unsigned(axi_arlen_cntr) + 1);
                    axi_rlast <= '0';

                    case (axi_arburst) is
                        when "00" =>  -- fixed burst
                        -- The read address for all the beats in the transaction are fixed
                            axi_araddr     <= axi_araddr;      ----for arsize = 4 bytes (010)
                        when "01" =>  --incremental burst
                        -- The read address for all the beats in the transaction are increments by awsize
                            axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1); --araddr aligned to 4 byte boundary
                            axi_araddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
                        when "10" =>  --Wrapping burst
                        -- The read address wraps when the address reaches wrap boundary 
                            if (ar_wrap_en = '1') then
                                axi_araddr <= std_logic_vector (unsigned(axi_araddr) - (to_unsigned(ar_wrap_size,C_S_AXI_ADDR_WIDTH)));
                            else
                                axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1); --araddr aligned to 4 byte boundary
                                axi_araddr(ADDR_LSB-1 downto 0)  <= (others => '0');  ----for awsize = 4 bytes (010)
                            end if;
                        when others => --reserved (incremental burst for example)
                            axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB) <= std_logic_vector (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 downto ADDR_LSB)) + 1);--for arsize = 4 bytes (010)
                            axi_araddr(ADDR_LSB-1 downto 0)  <= (others => '0');
                    end case;
                elsif((axi_arlen_cntr = axi_arlen) and axi_rlast = '0' and axi_arv_arr_flag = '1') then
                    axi_rlast <= '1';
                elsif (S_AXI_RREADY = '1') then
                    axi_rlast <= '0';
                end if;
            end if;
        end if;
    end  process;


    -- Implement axi_arvalid generation
    -- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both S_AXI_ARVALID and axi_arready are asserted. The slave registers data are available on the axi_rdata bus at this instance. The assertion of axi_rvalid marks the validity of read data on the bus and axi_rresp indicates the status of read transaction.axi_rvalid is deasserted on reset (active low). axi_rresp and axi_rdata are cleared to zero on reset (active low).
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_rvalid <= '0';
                axi_rresp  <= "00";
            else
                if (axi_arv_arr_flag = '1' and axi_rvalid = '0') then
                    axi_rvalid <= '1';
                    axi_rresp  <= "00"; -- 'OKAY' response
                elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
                    axi_rvalid <= '0';
                end  if;
            end if;
        end if;
    end  process;


    -- ------------------------------------------
    -- -- Example code to access user logic memory region
    -- ------------------------------------------
    gen_mem_sel: if (USER_NUM_MEM >= 1) generate
    begin
        mem_select  <= "1";
        mem_address <= axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) when axi_arv_arr_flag = '1' else
                       axi_awaddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) when axi_awv_awr_flag = '1' else
                       (others => '0');
    end generate gen_mem_sel;

    -- implement Block RAM(s)
    BRAM_GEN : for i in 0 to USER_NUM_MEM-1 generate
        signal mem_rden : std_logic;
        signal mem_wren : std_logic;
    begin
        mem_wren <= axi_wready and S_AXI_WVALID ;
        mem_rden <= axi_arv_arr_flag ;
       
        -- Set fifo write enable signal depending on valid axi write transaction.
        s_fifo_wren <= axi_wready and S_AXI_WVALID;

        BYTE_BRAM_GEN : for mem_byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) generate
            signal byte_ram : BYTE_RAM_TYPE;
            signal data_in  : std_logic_vector(8-1 downto 0);
            signal data_out : std_logic_vector(8-1 downto 0);
        begin
            --assigning 8 bit data
            data_in  <= S_AXI_WDATA(( mem_byte_index * 8 + 7 ) downto ( mem_byte_index * 8 ));
            data_out <= byte_ram(to_integer(unsigned(mem_address)));

            -- Memory write process.
            BYTE_RAM_PROC : process( S_AXI_ACLK ) is
            begin
                if ( rising_edge (S_AXI_ACLK) ) then
                    if ( mem_wren = '1' and S_AXI_WSTRB(mem_byte_index) = '1' ) then
                        --byte_ram(to_integer(unsigned(mem_address))) <= data_in;
                        -- Memory address differentation.
                        case mem_address is
                            when "000000" =>
                                --byte_ram(to_integer(unsigned(mem_address))) <= data_in;
                                s_fifo_di(( mem_byte_index * 8 + 7 ) downto ( mem_byte_index * 8 )) <= data_in;                                
                                -- Writing to a full fifo causes no harm on hardware so let it to outside world (e.g. software) to manage and respect that.

                            when others => null; -- does this work ?
                        end case;
                    end if;
                end if;
            end process BYTE_RAM_PROC;

            -- Memory read process.
            process( S_AXI_ACLK ) is
            begin
                if ( rising_edge (S_AXI_ACLK) ) then
                    if ( mem_rden = '1') then
                        --mem_data_out(i)((mem_byte_index*8+7) downto mem_byte_index*8) <= data_out;
                        -- Memory address differentation.
                        case mem_address is
                            when "000000" =>
                                mem_data_out(i)(( mem_byte_index * 8 + 7 ) downto ( mem_byte_index * 8 )) <= s_fifo_di(( mem_byte_index * 8 + 7 ) downto ( mem_byte_index * 8 ));
                            when others =>
                                mem_data_out(i) <= (others => '0');
                        end case;
                    end if;
                end if;
            end process;

        end generate BYTE_BRAM_GEN;

    end generate BRAM_GEN;

    --Output register or memory read data
    process(mem_data_out, axi_rvalid ) is
    begin
        if (axi_rvalid = '1') then
            -- When there is a valid read address (S_AXI_ARVALID) with 
            -- acceptance of read address by the slave (axi_arready), 
            -- output the read dada 
            axi_rdata <= mem_data_out(0);  -- memory range 0 read data
        else
            axi_rdata <= (others => '0');
        end if;
    end process;

    -- Add user logic here
    
    -- Create active_high reset signal from AXI reset (which is active_low).
    s_axi_areseth <= not S_AXI_ARESETN;

    -- SpaceWire specific assignments. ( Might be that this won't work ! If so put this into a process with more logic ! )
    s_fifo_rden <= not s_fifo_empty when txrdy = '1' else '0';
    txwrite <= s_fifo_rden; -- (txwrite needs same signal assignment as s_fifo_rden does)
    txdata <= s_fifo_do(7 downto 0);
    txflag <= s_fifo_do(8);

    -- FIFO_DUALCLOCK_MACRO: Dual-Clock First-In, First-Out (FIFO) RAM Buffer
    --                       Artix-7
    -- Xilinx HDL Language Template, version 2022.1

    -- Note -  This Unimacro model assumes the port directions to be "downto". 
    --         Simulation of this model with "to" in the port directions could lead to erroneous results.

    -----------------------------------------------------------------
    -- DATA_WIDTH | FIFO_SIZE | FIFO Depth | RDCOUNT/WRCOUNT Width --
    -- ===========|===========|============|=======================--
    --   37-72    |  "36Kb"   |     512    |         9-bit         --
    --   19-36    |  "36Kb"   |    1024    |        10-bit         --
    --   19-36    |  "18Kb"   |     512    |         9-bit         --
    --   10-18    |  "36Kb"   |    2048    |        11-bit         --
    --   10-18    |  "18Kb"   |    1024    |        10-bit         --
    --    5-9     |  "36Kb"   |    4096    |        12-bit         --
    --    5-9     |  "18Kb"   |    2048    |        11-bit         --
    --    1-4     |  "36Kb"   |    8192    |        13-bit         --
    --    1-4     |  "18Kb"   |    4096    |        12-bit         --
    -----------------------------------------------------------------

    FIFO_DUALCLOCK_MACRO_inst_TX : FIFO_DUALCLOCK_MACRO
        generic map (
            DEVICE => "7SERIES",            -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
            ALMOST_FULL_OFFSET => to_bitvector(std_logic_vector(to_unsigned(c_fifo_almostfull_offset, 32))),  -- Sets almost full threshold
            ALMOST_EMPTY_OFFSET => to_bitvector(std_logic_vector(to_unsigned(c_fifo_almostempty_offset, 32))), -- Sets the almost empty threshold
            DATA_WIDTH => 9,   -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
            FIFO_SIZE => "18Kb",            -- Target BRAM, "18Kb" or "36Kb" 
            FIRST_WORD_FALL_THROUGH => TRUE) -- Sets the FIFO FWFT to TRUE or FALSE
        port map (
            ALMOSTEMPTY => s_fifo_almostempty,   -- 1-bit output almost empty
            ALMOSTFULL => s_fifo_almostfull,     -- 1-bit output almost full
            DO(8 downto 0) => s_fifo_do,                     -- Output data, width defined by DATA_WIDTH parameter
            EMPTY => s_fifo_empty,               -- 1-bit output empty
            FULL => s_fifo_full,                 -- 1-bit output full
            RDCOUNT => s_fifo_rdcount,           -- Output read count, width determined by FIFO depth
            RDERR => s_fifo_rderr,               -- 1-bit output read error
            WRCOUNT => s_fifo_wrcount,           -- Output write count, width determined by FIFO depth
            WRERR => s_fifo_wrerr,               -- 1-bit output write error
            DI => s_fifo_di(8 downto 0),                     -- Input data, width defined by DATA_WIDTH parameter
            RDCLK => clk_logic,               -- 1-bit input read clock
            RDEN => s_fifo_rden,                 -- 1-bit input read enable
            RST => s_axi_areseth,                   -- 1-bit input reset ( CAUTION ! AXI RESET IS active_low BUT FIFO RESET IS PROBABLY active_high ! )
            WRCLK => S_AXI_ACLK,               -- 1-bit input write clock
            WREN => s_fifo_wren                  -- 1-bit input write enable
        );
        -- End of FIFO_DUALCLOCK_MACRO_inst instantiation

        -- User logic ends

end arch_imp;
