LIBRARY UNISIM;
LIBRARY UNIMACRO;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE UNIMACRO.vcomponents.ALL;
USE UNISIM.vcomponents.ALL;

ENTITY AXI_SpaceWire_IP_v1_0_S01_AXI_RX IS
    GENERIC (
        -- Users to add parameters here

        -- User parameters ends

        -- Do not modify the parameters beyond this line

        -- Width of ID for for write address, write data, read address and read data
        C_S_AXI_ID_WIDTH : INTEGER := 1;

        -- Width of S_AXI data bus
        C_S_AXI_DATA_WIDTH : INTEGER := 32;

        -- Width of S_AXI address bus
        C_S_AXI_ADDR_WIDTH : INTEGER := 3;

        -- Width of optional user defined signal in write address channel
        C_S_AXI_AWUSER_WIDTH : INTEGER := 0;

        -- Width of optional user defined signal in read address channel
        C_S_AXI_ARUSER_WIDTH : INTEGER := 0;

        -- Width of optional user defined signal in write data channel
        C_S_AXI_WUSER_WIDTH : INTEGER := 0;

        -- Width of optional user defined signal in read data channel
        C_S_AXI_RUSER_WIDTH : INTEGER := 0;

        -- Width of optional user defined signal in write response channel
        C_S_AXI_BUSER_WIDTH : INTEGER := 0
    );
    PORT (
        -- Users to add ports here

        -- DEBUG BEGIN
        do : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0); -- Fifo data out
        di : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0); -- Fifo data in
        rden : OUT STD_LOGIC; -- Fifo read enable
        wren : OUT STD_LOGIC; -- Fifo write enable
        rdcount : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0); -- Fifo read counter
        wrcount : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0); -- Fifo write counter
        empty : OUT STD_LOGIC; -- Fifo empty
        full : OUT STD_LOGIC; -- Fifo full
        -- DEBUG END

        -- System clock for SpaceWire entity.
        clk_logic : IN STD_LOGIC;

        -- Synchronous reset for SpaceWire entity (active-high).
        rst_logic : IN STD_LOGIC;

        -- High if "rxflag" and "rxdata" contain valid data.
        -- This signal is high unless the receive FIFO is empty.
        rxvalid : IN STD_LOGIC;

        -- High if the received character is EOP or EEP; low if the received
        -- character is a data byte. Valid if "rxvalid" is high.
        rxflag : IN STD_LOGIC;

        -- Received byte, or "00000000" for EOP or "00000001" for EEP.
        -- Valid if "rxvalid" is high.
        rxdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- Pulled high by the fifo process to accept a received character.
        -- If "rxvalid" and "rxread" are both high on the rising edge of "clk_logic"
        -- a character is removed from the receive FIFO and "rxvalid", "rxflag" 
        -- and "rxdata" are updated.
        -- This signal has no effect if "rxvalid" is low
        rxread : OUT STD_LOGIC;
        
        -- Interrupt! High whenever a EOP/EEP character was received!
        packet_out : OUT STD_LOGIC;

        -- User ports ends
        -- Do not modify the ports beyond this line

        -- Global Clock Signal
        S_AXI_ACLK : IN STD_LOGIC;

        -- Global Reset Signal. This Signal is Active LOW
        S_AXI_ARESETN : IN STD_LOGIC;

        -- Write Address ID
        S_AXI_AWID : IN STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);

        -- Write address
        S_AXI_AWADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);

        -- Burst length. The burst length gives the exact number of transfers in a burst
        S_AXI_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- Burst size. This signal indicates the size of each transfer in the burst
        S_AXI_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

        -- Burst type. The burst type and the size information, 
        -- determine how the address for each transfer within the burst is calculated.
        S_AXI_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- Lock type. Provides additional information about the
        -- atomic characteristics of the transfer.
        S_AXI_AWLOCK : IN STD_LOGIC;

        -- Memory type. This signal indicates how transactions
        -- are required to progress through a system.
        S_AXI_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        S_AXI_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        
        -- Quality of Service, QoS identifier sent for each
        -- write transaction.
        S_AXI_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Region identifier. Permits a single physical interface
        -- on a slave to be used for multiple logical interfaces.
        S_AXI_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Optional User-defined signal in the write address channel.
        S_AXI_AWUSER : IN STD_LOGIC_VECTOR(C_S_AXI_AWUSER_WIDTH - 1 DOWNTO 0);

        -- Write address valid. This signal indicates that
        -- the channel is signaling valid write address and
        -- control information.
        S_AXI_AWVALID : IN STD_LOGIC;

        -- Write address ready. This signal indicates that
        -- the slave is ready to accept an address and associated
        -- control signals.
        S_AXI_AWREADY : OUT STD_LOGIC;

        -- Write Data
        S_AXI_WDATA : IN STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);

        -- Write strobes. This signal indicates which byte
        -- lanes hold valid data. There is one write strobe
        -- bit for each eight bits of the write data bus.
        S_AXI_WSTRB : IN STD_LOGIC_VECTOR((C_S_AXI_DATA_WIDTH/8) - 1 DOWNTO 0);

        -- Write last. This signal indicates the last transfer
        -- in a write burst.
        S_AXI_WLAST : IN STD_LOGIC;

        -- Optional User-defined signal in the write data channel.
        S_AXI_WUSER : IN STD_LOGIC_VECTOR(C_S_AXI_WUSER_WIDTH - 1 DOWNTO 0);

        -- Write valid. This signal indicates that valid write
        -- data and strobes are available.
        S_AXI_WVALID : IN STD_LOGIC;

        -- Write ready. This signal indicates that the slave
        -- can accept the write data.
        S_AXI_WREADY : OUT STD_LOGIC;

        -- Response ID tag. This signal is the ID tag of the
        -- write response.
        S_AXI_BID : OUT STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);

        -- Write response. This signal indicates the status
        -- of the write transaction.
        S_AXI_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- Optional User-defined signal in the write response channel.
        S_AXI_BUSER : OUT STD_LOGIC_VECTOR(C_S_AXI_BUSER_WIDTH - 1 DOWNTO 0);

        -- Write response valid. This signal indicates that the
        -- channel is signaling a valid write response.
        S_AXI_BVALID : OUT STD_LOGIC;

        -- Response ready. This signal indicates that the master
        -- can accept a write response.
        S_AXI_BREADY : IN STD_LOGIC;

        -- Read address ID. This signal is the identification
        -- tag for the read address group of signals.
        S_AXI_ARID : IN STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);

        -- Read address. This signal indicates the initial
        -- address of a read burst transaction.
        S_AXI_ARADDR : IN STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);

        -- Burst length. The burst length gives the exact number of transfers in a burst
        S_AXI_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- Burst size. This signal indicates the size of each transfer in the burst
        S_AXI_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

        -- Burst type. The burst type and the size information, 
        -- determine how the address for each transfer within the burst is calculated.
        S_AXI_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- Lock type. Provides additional information about the
        -- atomic characteristics of the transfer.
        S_AXI_ARLOCK : IN STD_LOGIC;

        -- Memory type. This signal indicates how transactions
        -- are required to progress through a system.
        S_AXI_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        S_AXI_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

        -- Quality of Service, QoS identifier sent for each
        -- read transaction.
        S_AXI_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Region identifier. Permits a single physical interface
        -- on a slave to be used for multiple logical interfaces.
        S_AXI_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);

        -- Optional User-defined signal in the read address channel.
        S_AXI_ARUSER : IN STD_LOGIC_VECTOR(C_S_AXI_ARUSER_WIDTH - 1 DOWNTO 0);

        -- Write address valid. This signal indicates that
        -- the channel is signaling valid read address and
        -- control information.
        S_AXI_ARVALID : IN STD_LOGIC;

        -- Read address ready. This signal indicates that
        -- the slave is ready to accept an address and associated
        -- control signals.
        S_AXI_ARREADY : OUT STD_LOGIC;

        -- Read ID tag. This signal is the identification tag
        -- for the read data group of signals generated by the slave.
        S_AXI_RID : OUT STD_LOGIC_VECTOR(C_S_AXI_ID_WIDTH - 1 DOWNTO 0);

        -- Read Data
        S_AXI_RDATA : OUT STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);

        -- Read response. This signal indicates the status of
        -- the read transfer.
        S_AXI_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);

        -- Read last. This signal indicates the last transfer
        -- in a read burst.
        S_AXI_RLAST : OUT STD_LOGIC;

        -- Optional User-defined signal in the read address channel.
        S_AXI_RUSER : OUT STD_LOGIC_VECTOR(C_S_AXI_RUSER_WIDTH - 1 DOWNTO 0);

        -- Read valid. This signal indicates that the channel
        -- is signaling the required read data.
        S_AXI_RVALID : OUT STD_LOGIC;

        -- Read ready. This signal indicates that the master can
        -- accept the read data and response information.
        S_AXI_RREADY : IN STD_LOGIC
    );
END AXI_SpaceWire_IP_v1_0_S01_AXI_RX;

ARCHITECTURE arch_imp OF AXI_SpaceWire_IP_v1_0_S01_AXI_RX IS
    -- Fifo related signals.
    SIGNAL s_fifo_almostempty : STD_LOGIC; -- Top Level IO
    SIGNAL s_fifo_almostfull : STD_LOGIC; -- Top Level IO
    SIGNAL s_fifo_do : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0) := (OTHERS => '0'); -- Internal signal
    SIGNAL s_fifo_empty : STD_LOGIC; -- Top Level IO
    SIGNAL s_fifo_full : STD_LOGIC; -- Top Level IO
    SIGNAL s_fifo_rdcount : STD_LOGIC_VECTOR(11 DOWNTO 0); -- err? -- Top Level IO ?
    SIGNAL s_fifo_rderr : STD_LOGIC; -- Top Level IO ? 
    SIGNAL s_fifo_wrcount : STD_LOGIC_VECTOR(11 DOWNTO 0); -- err?
    SIGNAL s_fifo_wrerr : STD_LOGIC;
    SIGNAL s_fifo_di : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_fifo_rden : STD_LOGIC := '0';
    SIGNAL s_fifo_wren : STD_LOGIC := '0';

    -- Data buffer signal.
    SIGNAL s_fifo_do_buffer : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);

    -- Fifo constants declaration.
    CONSTANT c_fifo_size : INTEGER := 4097;--2049; -- p. 57 UG473 (table 2-7)

    -- Available elements register signals.
    SIGNAL s_fifo_elements_reg : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL s_rdcounter : INTEGER RANGE 0 TO c_fifo_size;
    SIGNAL s_wrcounter : INTEGER RANGE 0 TO c_fifo_size;
    SIGNAL s_size : unsigned(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');

    -- Spwwrapper declarations.
    TYPE spwwrapperstates IS (S_Idle, S_Operation);
    SIGNAL spwwrapperstate : spwwrapperstates := S_Idle;

    -- AXI4FULL signals
    SIGNAL axi_awaddr : STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_awready : STD_LOGIC;
    SIGNAL axi_wready : STD_LOGIC;
    SIGNAL axi_bresp : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL axi_buser : STD_LOGIC_VECTOR(C_S_AXI_BUSER_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_bvalid : STD_LOGIC;
    SIGNAL axi_araddr : STD_LOGIC_VECTOR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_arready : STD_LOGIC;
    SIGNAL axi_rdata : STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_rresp : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL axi_rlast : STD_LOGIC;
    SIGNAL axi_ruser : STD_LOGIC_VECTOR(C_S_AXI_RUSER_WIDTH - 1 DOWNTO 0);
    SIGNAL axi_rvalid : STD_LOGIC;

    -- aw_wrap_en determines wrap boundary and enables wrapping
    SIGNAL aw_wrap_en : STD_LOGIC;

    -- ar_wrap_en determines wrap boundary and enables wrapping
    SIGNAL ar_wrap_en : STD_LOGIC;

    -- aw_wrap_size is the size of the write transfer, the
    -- write address wraps to a lower address if upper address
    -- limit is reached
    SIGNAL aw_wrap_size : INTEGER;

    -- ar_wrap_size is the size of the read transfer, the
    -- read address wraps to a lower address if upper address
    -- limit is reached
    SIGNAL ar_wrap_size : INTEGER;

    -- The axi_awv_awr_flag flag marks the presence of write address valid
    SIGNAL axi_awv_awr_flag : STD_LOGIC;

    --The axi_arv_arr_flag flag marks the presence of read address valid
    SIGNAL axi_arv_arr_flag : STD_LOGIC;

    -- The axi_awlen_cntr internal write address counter to keep track of beats in a burst transaction
    SIGNAL axi_awlen_cntr : STD_LOGIC_VECTOR(7 DOWNTO 0);

    --The axi_arlen_cntr internal read address counter to keep track of beats in a burst transaction
    SIGNAL axi_arlen_cntr : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL axi_arburst : STD_LOGIC_VECTOR(2 - 1 DOWNTO 0);
    SIGNAL axi_awburst : STD_LOGIC_VECTOR(2 - 1 DOWNTO 0);
    SIGNAL axi_arlen : STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
    SIGNAL axi_awlen : STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
    --local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
    --ADDR_LSB is used for addressing 32/64 bit registers/memories
    --ADDR_LSB = 2 for 32 bits (n downto 2) 
    --ADDR_LSB = 3 for 42 bits (n downto 3)

    CONSTANT ADDR_LSB : INTEGER := (C_S_AXI_DATA_WIDTH/32) + 1;
    CONSTANT OPT_MEM_ADDR_BITS : INTEGER := 0; -- 2**4 == 16 Rows; 16 * 4 Bytes == 128 Bytes
    CONSTANT USER_NUM_MEM : INTEGER := 1;
    CONSTANT low : STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0) := (OTHERS => '0');

    ------------------------------------------------
    ---- Signals for user logic memory space example
    --------------------------------------------------
    SIGNAL mem_address : STD_LOGIC_VECTOR(OPT_MEM_ADDR_BITS DOWNTO 0);
    SIGNAL mem_select : STD_LOGIC_VECTOR(USER_NUM_MEM - 1 DOWNTO 0);
    TYPE word_array IS ARRAY (0 TO USER_NUM_MEM - 1) OF STD_LOGIC_VECTOR(C_S_AXI_DATA_WIDTH - 1 DOWNTO 0);
    SIGNAL mem_data_out : word_array;

    SIGNAL i : INTEGER;
    SIGNAL j : INTEGER;
    SIGNAL mem_byte_index : INTEGER;
    TYPE BYTE_RAM_TYPE IS ARRAY (0 TO 31) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
BEGIN
    -- I/O Connections assignments
    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY <= axi_wready;
    S_AXI_BRESP <= axi_bresp;
    S_AXI_BUSER <= axi_buser;
    S_AXI_BVALID <= axi_bvalid;
    S_AXI_ARREADY <= axi_arready;
    S_AXI_RDATA <= axi_rdata;
    S_AXI_RRESP <= axi_rresp;
    S_AXI_RLAST <= axi_rlast;
    S_AXI_RUSER <= axi_ruser;
    S_AXI_RVALID <= axi_rvalid;
    S_AXI_BID <= S_AXI_AWID;
    S_AXI_RID <= S_AXI_ARID;
    aw_wrap_size <= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_awlen)));
    ar_wrap_size <= ((C_S_AXI_DATA_WIDTH)/8 * to_integer(unsigned(axi_arlen)));
    aw_wrap_en <= '1' WHEN (((axi_awaddr AND STD_LOGIC_VECTOR(to_unsigned(aw_wrap_size, C_S_AXI_ADDR_WIDTH))) XOR STD_LOGIC_VECTOR(to_unsigned(aw_wrap_size, C_S_AXI_ADDR_WIDTH))) = low) ELSE
        '0';
    ar_wrap_en <= '1' WHEN (((axi_araddr AND STD_LOGIC_VECTOR(to_unsigned(ar_wrap_size, C_S_AXI_ADDR_WIDTH))) XOR STD_LOGIC_VECTOR(to_unsigned(ar_wrap_size, C_S_AXI_ADDR_WIDTH))) = low) ELSE
        '0';

    -- Implement axi_awready generation
    -- axi_awready is asserted for one S_AXI_ACLK clock cycle when both S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is de-asserted when reset is low.
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_awready <= '0';
                axi_awv_awr_flag <= '0';
            ELSE
                IF (axi_awready = '0' AND S_AXI_AWVALID = '1' AND axi_awv_awr_flag = '0' AND axi_arv_arr_flag = '0') THEN
                    -- slave is ready to accept an address and
                    -- associated control signals
                    axi_awv_awr_flag <= '1'; -- used for generation of bresp() and bvalid
                    axi_awready <= '1';
                ELSIF (S_AXI_WLAST = '1' AND axi_wready = '1') THEN
                    -- preparing to accept next address after current write burst tx completion
                    axi_awv_awr_flag <= '0';
                ELSE
                    axi_awready <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Implement axi_awaddr latching
    -- This process is used to latch the address when both S_AXI_AWVALID and S_AXI_WVALID are valid.
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_awaddr <= (OTHERS => '0');
                axi_awburst <= (OTHERS => '0');
                axi_awlen <= (OTHERS => '0');
                axi_awlen_cntr <= (OTHERS => '0');
            ELSE
                IF (axi_awready = '0' AND S_AXI_AWVALID = '1' AND axi_awv_awr_flag = '0') THEN
                    -- address latching 
                    axi_awaddr <= S_AXI_AWADDR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0); ---- start address of transfer
                    axi_awlen_cntr <= (OTHERS => '0');
                    axi_awburst <= S_AXI_AWBURST;
                    axi_awlen <= S_AXI_AWLEN;
                ELSIF ((axi_awlen_cntr <= axi_awlen) AND axi_wready = '1' AND S_AXI_WVALID = '1') THEN
                    axi_awlen_cntr <= STD_LOGIC_VECTOR (unsigned(axi_awlen_cntr) + 1);

                    CASE (axi_awburst) IS
                        WHEN "00" => -- fixed burst
                            -- The write address for all the beats in the transaction are fixed
                            axi_awaddr <= axi_awaddr; ----for awsize = 4 bytes (010)
                        WHEN "01" => --incremental burst
                            -- The write address for all the beats in the transaction are increments by awsize
                            axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB) <= STD_LOGIC_VECTOR (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB)) + 1);--awaddr aligned to 4 byte boundary
                            axi_awaddr(ADDR_LSB - 1 DOWNTO 0) <= (OTHERS => '0'); ----for awsize = 4 bytes (010)
                        WHEN "10" => --Wrapping burst
                            -- The write address wraps when the address reaches wrap boundary 
                            IF (aw_wrap_en = '1') THEN
                                axi_awaddr <= STD_LOGIC_VECTOR (unsigned(axi_awaddr) - (to_unsigned(aw_wrap_size, C_S_AXI_ADDR_WIDTH)));
                            ELSE
                                axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB) <= STD_LOGIC_VECTOR (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB)) + 1);--awaddr aligned to 4 byte boundary
                                axi_awaddr(ADDR_LSB - 1 DOWNTO 0) <= (OTHERS => '0'); ----for awsize = 4 bytes (010)
                            END IF;
                        WHEN OTHERS => --reserved (incremental burst for example)
                            axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB) <= STD_LOGIC_VECTOR (unsigned(axi_awaddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB)) + 1);--for awsize = 4 bytes (010)
                            axi_awaddr(ADDR_LSB - 1 DOWNTO 0) <= (OTHERS => '0');
                    END CASE;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Implement axi_wready generation
    -- axi_wready is asserted for one S_AXI_ACLK clock cycle when both S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is de-asserted when reset is low.
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_wready <= '0';
            ELSE
                IF (axi_wready = '0' AND S_AXI_WVALID = '1' AND axi_awv_awr_flag = '1') THEN
                    axi_wready <= '1';
                    -- elsif (axi_awv_awr_flag = '0') then
                ELSIF (S_AXI_WLAST = '1' AND axi_wready = '1') THEN

                    axi_wready <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Implement write response logic generation
    -- The write response and response valid signals are asserted by the slave when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. This marks the acceptance of address and indicates the status of write transaction.
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_bvalid <= '0';
                axi_bresp <= "00"; --need to work more on the responses
                axi_buser <= (OTHERS => '0');
            ELSE
                IF (axi_awv_awr_flag = '1' AND axi_wready = '1' AND S_AXI_WVALID = '1' AND axi_bvalid = '0' AND S_AXI_WLAST = '1') THEN
                    axi_bvalid <= '1';
                    axi_bresp <= "00";
                ELSIF (S_AXI_BREADY = '1' AND axi_bvalid = '1') THEN
                    --check if bready is asserted while bvalid is high)
                    axi_bvalid <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Implement axi_arready generation
    -- axi_arready is asserted for one S_AXI_ACLK clock cycle when S_AXI_ARVALID is asserted. axi_awready is de-asserted when reset (active low) is asserted. The read address is also latched when S_AXI_ARVALID is asserted. axi_araddr is reset to zero on reset assertion.
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_arready <= '0';
                axi_arv_arr_flag <= '0';
            ELSE
                IF (axi_arready = '0' AND S_AXI_ARVALID = '1' AND axi_awv_awr_flag = '0' AND axi_arv_arr_flag = '0') THEN
                    axi_arready <= '1';
                    axi_arv_arr_flag <= '1';
                ELSIF (axi_rvalid = '1' AND S_AXI_RREADY = '1' AND (axi_arlen_cntr = axi_arlen)) THEN
                    -- preparing to accept next address after current read completion
                    axi_arv_arr_flag <= '0';
                ELSE
                    axi_arready <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Implement axi_araddr latching
    --This process is used to latch the address when both S_AXI_ARVALID and S_AXI_RVALID are valid.
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_araddr <= (OTHERS => '0');
                axi_arburst <= (OTHERS => '0');
                axi_arlen <= (OTHERS => '0');
                axi_arlen_cntr <= (OTHERS => '0');
                axi_rlast <= '0';
                axi_ruser <= (OTHERS => '0');
            ELSE
                IF (axi_arready = '0' AND S_AXI_ARVALID = '1' AND axi_arv_arr_flag = '0') THEN
                    -- address latching 
                    axi_araddr <= S_AXI_ARADDR(C_S_AXI_ADDR_WIDTH - 1 DOWNTO 0); ---- start address of transfer
                    axi_arlen_cntr <= (OTHERS => '0');
                    axi_rlast <= '0';
                    axi_arburst <= S_AXI_ARBURST;
                    axi_arlen <= S_AXI_ARLEN;
                ELSIF ((axi_arlen_cntr <= axi_arlen) AND axi_rvalid = '1' AND S_AXI_RREADY = '1') THEN
                    axi_arlen_cntr <= STD_LOGIC_VECTOR (unsigned(axi_arlen_cntr) + 1);
                    axi_rlast <= '0';

                    CASE (axi_arburst) IS
                        WHEN "00" => -- fixed burst
                            -- The read address for all the beats in the transaction are fixed
                            axi_araddr <= axi_araddr; ----for arsize = 4 bytes (010)
                        WHEN "01" => --incremental burst
                            -- The read address for all the beats in the transaction are increments by awsize
                            axi_araddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB) <= STD_LOGIC_VECTOR (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB)) + 1); --araddr aligned to 4 byte boundary
                            axi_araddr(ADDR_LSB - 1 DOWNTO 0) <= (OTHERS => '0'); ----for awsize = 4 bytes (010)
                        WHEN "10" => --Wrapping burst
                            -- The read address wraps when the address reaches wrap boundary 
                            IF (ar_wrap_en = '1') THEN
                                axi_araddr <= STD_LOGIC_VECTOR (unsigned(axi_araddr) - (to_unsigned(ar_wrap_size, C_S_AXI_ADDR_WIDTH)));
                            ELSE
                                axi_araddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB) <= STD_LOGIC_VECTOR (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB)) + 1); --araddr aligned to 4 byte boundary
                                axi_araddr(ADDR_LSB - 1 DOWNTO 0) <= (OTHERS => '0'); ----for awsize = 4 bytes (010)
                            END IF;
                        WHEN OTHERS => --reserved (incremental burst for example)
                            axi_araddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB) <= STD_LOGIC_VECTOR (unsigned(axi_araddr(C_S_AXI_ADDR_WIDTH - 1 DOWNTO ADDR_LSB)) + 1);--for arsize = 4 bytes (010)
                            axi_araddr(ADDR_LSB - 1 DOWNTO 0) <= (OTHERS => '0');
                    END CASE;
                ELSIF ((axi_arlen_cntr = axi_arlen) AND axi_rlast = '0' AND axi_arv_arr_flag = '1') THEN
                    axi_rlast <= '1';
                ELSIF (S_AXI_RREADY = '1') THEN
                    axi_rlast <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- Implement axi_arvalid generation
    -- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both S_AXI_ARVALID and axi_arready are asserted. The slave registers data are available on the axi_rdata bus at this instance. The assertion of axi_rvalid marks the validity of read data on the bus and axi_rresp indicates the status of read transaction.axi_rvalid is deasserted on reset (active low). axi_rresp and axi_rdata are cleared to zero on reset (active low).  
    PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF S_AXI_ARESETN = '0' THEN
                axi_rvalid <= '0';
                axi_rresp <= "00";
            ELSE
                IF (axi_arv_arr_flag = '1' AND axi_rvalid = '0') THEN
                    axi_rvalid <= '1';
                    axi_rresp <= "00"; -- 'OKAY' response
                ELSIF (axi_rvalid = '1' AND S_AXI_RREADY = '1') THEN
                    axi_rvalid <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    -- ------------------------------------------
    -- -- Example code to access user logic memory region
    -- ------------------------------------------
    gen_mem_sel : IF (USER_NUM_MEM >= 1) GENERATE
    BEGIN
        mem_select <= "1";
        mem_address <= axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB) WHEN axi_arv_arr_flag = '1' ELSE
            axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB) WHEN axi_awv_awr_flag = '1' ELSE
            (OTHERS => '0');
    END GENERATE gen_mem_sel;

    -- implement Block RAM(s)
    BRAM_GEN : FOR i IN 0 TO USER_NUM_MEM - 1 GENERATE
        SIGNAL mem_rden : STD_LOGIC;
        SIGNAL mem_wren : STD_LOGIC;
    BEGIN
        mem_wren <= axi_wready AND S_AXI_WVALID;
        mem_rden <= axi_arv_arr_flag;

        BYTE_BRAM_GEN : FOR mem_byte_index IN 0 TO (C_S_AXI_DATA_WIDTH/8 - 1) GENERATE
            SIGNAL byte_ram : BYTE_RAM_TYPE;
            SIGNAL data_in : STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
            SIGNAL data_out : STD_LOGIC_VECTOR(8 - 1 DOWNTO 0);
        BEGIN
            --assigning 8 bit data
            data_in <= S_AXI_WDATA((mem_byte_index * 8 + 7) DOWNTO mem_byte_index * 8);
            -- Memory read process.
            PROCESS (S_AXI_ACLK) IS
            BEGIN
                IF (rising_edge (S_AXI_ACLK)) THEN
                    IF (mem_rden = '1') THEN
                        --mem_data_out(i)((mem_byte_index*8+7) downto mem_byte_index*8) <= data_out;
                        CASE mem_address IS
                            WHEN "0" => -- FIFO access
                                mem_data_out(i)((mem_byte_index * 8 + 7) DOWNTO (mem_byte_index * 8)) <= s_fifo_do((mem_byte_index * 8 + 7) DOWNTO ((mem_byte_index * 8)));
                            WHEN "1" => -- Elements register
                                mem_data_out(i)((mem_byte_index * 8 + 7) DOWNTO (mem_byte_index * 8)) <= s_fifo_elements_reg((mem_byte_index * 8 + 7) DOWNTO (mem_byte_index * 8));
                            WHEN OTHERS => -- only need for simulation ! 
                                mem_data_out(i)((mem_byte_index * 8 + 7) DOWNTO (mem_byte_index * 8)) <= mem_data_out(i)((mem_byte_index * 8 + 7) DOWNTO (mem_byte_index * 8));
                        END CASE;
                    END IF;
                END IF;
            END PROCESS;

        END GENERATE BYTE_BRAM_GEN;

    END GENERATE BRAM_GEN;

    --Output register or memory read data
    PROCESS (mem_data_out, axi_rvalid) IS
    BEGIN
        IF (axi_rvalid = '1') THEN
            -- When there is a valid read address (S_AXI_ARVALID) with 
            -- acceptance of read address by the slave (axi_arready), 
            -- output the read data 
            axi_rdata <= mem_data_out(0); -- memory range 0 read data
        ELSE
            axi_rdata <= (OTHERS => '0');
        END IF;
    END PROCESS;


    -- Add user logic here

    -- Debug signal assignment
    rden <= s_fifo_rden;
    wren <= s_fifo_wren;
    rdcount <= STD_LOGIC_VECTOR(to_unsigned(s_rdcounter, rdcount'length));--s_fifo_rdcount;
    wrcount <= STD_LOGIC_VECTOR(to_unsigned(s_wrcounter, wrcount'length));--s_fifo_wrcount;
    di <= s_fifo_elements_reg;--s_fifo_di;
    do <= s_fifo_do;
    empty <= s_fifo_almostfull;--s_fifo_empty;
    full <= s_fifo_full;

    -- Combinatorial process: Calculates available elements depending on read/write counters.
    size_calc : PROCESS (s_rdcounter, s_wrcounter)
    BEGIN
        IF s_wrcounter >= s_rdcounter THEN
            s_size <= to_unsigned(s_wrcounter - s_rdcounter, s_size'length);
        ELSE -- s_wrcounter < s_rdcounter
            s_size <= to_unsigned(c_fifo_size + s_wrcounter - s_rdcounter, s_size'length);
        END IF;
    END PROCESS size_calc;

    -- Applies caluclated value into register. (By using combinatorial process for calculation one clock cycle is saved instead of fully synchron processes)
    elements_reg_apply : PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            s_fifo_elements_reg <= STD_LOGIC_VECTOR(s_size);
        END IF;
    END PROCESS elements_reg_apply;

    -- Counts each reading from fifo.
    rdcount0 : PROCESS (S_AXI_ACLK)
    BEGIN
        IF rising_edge(S_AXI_ACLK) THEN
            IF s_fifo_rden = '1' THEN
                IF s_size > 0 THEN -- s_size contains available elements to read
                    IF s_rdcounter = (c_fifo_size - 1) THEN
                        s_rdcounter <= 0; -- wrap
                    ELSE
                        s_rdcounter <= s_rdcounter + 1;
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS rdcount0;

    -- Combinatorial process that asserts or deasserts the rden signal depending on axi read channel handhsake signals and fifo empty signal.
    rd_1 : PROCESS (S_AXI_RREADY, axi_rvalid)
    BEGIN
        IF S_AXI_RREADY = '1' AND axi_rvalid = '1' THEN
            IF axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS DOWNTO ADDR_LSB) = "0" THEN
                s_fifo_rden <= '1';
            ELSE
                s_fifo_rden <= '0';
            END IF;
        ELSE
            s_fifo_rden <= '0';
        END IF;
    END PROCESS rd_1;

    -- Writes received data words from spwstream into rx fifo. FSM is also used to convert specific bytes into wanted format.
    spwwrapper : PROCESS (clk_logic)
        VARIABLE v_write : STD_LOGIC_VECTOR(8 DOWNTO 0);
        VARIABLE openPacket : BOOLEAN := False; -- Important not to change value during reset otherwise an open packet will be misclassified eventually!
    BEGIN
        IF rising_edge(clk_logic) THEN
            IF rst_logic = '1' THEN
                -- Synchronous reset.
                s_wrcounter <= 0;
                s_fifo_wren <= '0';

                s_fifo_di <= (OTHERS => '0');
                v_write := (OTHERS => '0');

                rxread <= '0';
                
                packet_out <= '0';

                spwwrapperstate <= S_Idle;
            ELSE
                CASE spwwrapperstate IS
                    WHEN S_Idle =>
                        s_fifo_wren <= '0';
                        packet_out <= '0';

                        IF rxvalid = '1' AND s_fifo_almostfull = '0' THEN--s_fifo_full = '0' THEN
                            rxread <= '1'; -- Must asserted before valid data is put on rxdata/rxflag!

                            spwwrapperstate <= S_Operation;
                        END IF;

                    WHEN S_Operation =>
                        rxread <= '0';

                        IF rxflag = '1' THEN -- whenever rxflag is '1' a packet is closed
                            -- EOP/EEP/Process Id
                            CASE rxdata IS
                                WHEN "00000000" => -- EOP
                                    v_write := "111111111";
                                    packet_out <= '1'; -- Fire interrupt! (Packet was completed)

                                WHEN "00000001" => -- EEP
                                    v_write := "111111110";
                                    packet_out <= '1'; -- Fire interrupt! (Packet was completed)

                                WHEN OTHERS => -- Should not be entered (only necessary for simulation)
                                    v_write := v_write;--(others => '0'); [Changed - test again!]

                            END CASE;

                            openPacket := False;
                        ELSE
                            -- Data word (N-Char)
                            IF openPacket = False THEN
                                -- Data word is first N-Char of a packet
                                v_write := '1' & rxdata;
                                openPacket := True; -- First data word of a packet ! Now we have an open packet...
                            ELSE
                                -- (inside an open packet)
                                v_write := '0' & rxdata;
                            END IF;
                            
                            packet_out <= '0'; -- Reset interrupt!
                            
                        END IF;

                        s_fifo_di(8 DOWNTO 0) <= v_write;
                        s_fifo_wren <= '1';

                        IF s_size /= c_fifo_size - 1 THEN -- prevents that value of rdcounter is bigger than wrcounter altough fifo is empty
                            IF s_wrcounter = (c_fifo_size - 1) THEN
                                s_wrcounter <= 0; -- wrap
                            ELSE
                                s_wrcounter <= s_wrcounter + 1;
                            END IF;
                        END IF;

                        spwwrapperstate <= S_Idle;

                END CASE;
            END IF;
        END IF;
    END PROCESS;

    
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
    GENERIC MAP(
        DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
        ALMOST_FULL_OFFSET => x"F", -- Sets almost full threshold (see UG473 p. 57 table 2-8) -- CAUTION ! Signal is assigned to high if only 15 more data words would fit into the fifo !
        ALMOST_EMPTY_OFFSET => x"100", -- 256 -- Sets the almost empty threshold to 256 (one AXI4 Full Burst (256) transfer is possible -- SIGNAL IS NOT USED !
        DATA_WIDTH => 9, -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
        FIFO_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb" 
        FIRST_WORD_FALL_THROUGH => TRUE) -- Sets the FIFO FWFT to TRUE or FALSE
    PORT MAP(
        ALMOSTEMPTY => s_fifo_almostempty, -- 1-bit output almost empty
        ALMOSTFULL => s_fifo_almostfull, -- 1-bit output almost full
        DO => s_fifo_do(8 DOWNTO 0), -- Output data, width defined by DATA_WIDTH parameter
        EMPTY => s_fifo_empty, -- 1-bit output empty
        FULL => s_fifo_full, -- 1-bit output full
        RDCOUNT => s_fifo_rdcount, -- Output read count, width determined by FIFO depth
        RDERR => s_fifo_rderr, -- 1-bit output read error
        WRCOUNT => s_fifo_wrcount, -- Output write count, width determined by FIFO depth
        WRERR => s_fifo_wrerr, -- 1-bit output write error
        DI => s_fifo_di(8 DOWNTO 0), -- Input data, width defined by DATA_WIDTH parameter
        RDCLK => S_AXI_ACLK, -- 1-bit input read clock
        RDEN => s_fifo_rden, -- 1-bit input read enable
        RST => rst_logic, -- 1-bit input reset ( CAUTION ! AXI RESET IS active_low BUT FIFO RESET IS PROBABLY active_high ! )
        WRCLK => clk_logic, -- 1-bit input write clock
        WREN => s_fifo_wren -- 1-bit input write enable
    );
    -- End of FIFO_DUALCLOCK_MACRO_inst instantiation

    -- User logic ends

END arch_imp;