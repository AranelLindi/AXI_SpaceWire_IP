library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AXI_SpaceWire_IP_v1_0_S02_AXI_REG is
    generic (
        -- Users to add parameters here

        -- User parameters ends
        -- Do not modify the parameters beyond this line

        -- Width of S_AXI data bus
        C_S_AXI_DATA_WIDTH	: integer	:= 32;
        -- Width of S_AXI address bus
        C_S_AXI_ADDR_WIDTH	: integer	:= 5
    );
    port (
        -- Users to add ports here
        
        -- spwstream clock.
        clk_logic : in std_logic;
        
        -- Synchronous reset (PL).
        rst_logic : in std_logic;

        -- Enables automatic link start on receipt of a NULL character.
        autostart : out std_logic;

        -- Enables link start once the Ready state is reached.
        -- Without autostart or linkstart, the link remains in state Ready.
        linkstart : out std_logic;

        -- Do not start link (overrides "linkstart" and "autostart") and/or
        -- disconnect a running link
        linkdis : out std_logic;

        -- Scaling factor minus 1, used to scale the transmit base clock into
        -- the transmission bit rate. The system clock (for impl_generic) or
        -- the txclk (for impl_fast) is divided by (unsigend(txdivcnt) + 1).
        -- Changing this signal will immediately change the transmission rate.
        -- During link setup, the transmission rate is always 10 Mbit/s.
        txdivcnt : out std_logic_vector(7 downto 0);

        -- Control bits of the TimeCode to be sent. Must be valid while tick_in is high.
        ctrl_in : out std_logic_vector(1 downto 0);

        -- Counter value of the TimeCode to be sent. Must be valid while tick_in is high.
        time_in : out std_logic_vector(5 downto 0);

        -- High if transmission queue is at least half full.
        txhalff : in std_logic;

        -- Control bits of the last received TimeCode.
        ctrl_out : in std_logic_vector(1 downto 0);

        -- Counter value of the last received TimeCode.
        time_out : in std_logic_vector(5 downto 0);

        -- High if the receive FIFO is at least half full.
        rxhalff : in std_logic;

        -- High if the link state machine is currently in the Started state.
        started : in std_logic;

        -- High if the link state machine is currently in the Connecting state.
        connecting : in std_logic;

        -- High if the link state machine is currently in the Run state, indicating 
        -- that the link is fully operational. If none of started, connecting or running
        -- is high, the link is in an initial state and the transmitter is not yet enabled.
        running : in std_logic;

        -- Disconnect detected in state Run. Triggers a reset and reconnect of the link.
        -- This indication is auto-clearing.
        errdisc : in std_logic;

        -- Parity error detected in state Run. Triggers a reset and reconnect of the link.
        -- This indication is auto-clearing
        errpar : in std_logic;

        -- Invalid escape sequence detected in state Run. Triggers a reset and reconnect of
        -- the link. This indication is auto-clearing.
        erresc : in std_logic;

        -- Credit error detected. Triggers a reset and reconnect of the link.
        -- This indication is auto-clearing.
        errcred : in std_logic;

        -- User ports ends
        -- Do not modify the ports beyond this line

        -- Global Clock Signal
        S_AXI_ACLK	: in std_logic;
        -- Global Reset Signal. This Signal is Active LOW
        S_AXI_ARESETN	: in std_logic;
        -- Write address (issued by master, acceped by Slave)
        S_AXI_AWADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        -- Write channel Protection type. This signal indicates the
        -- privilege and security level of the transaction, and whether
        -- the transaction is a data access or an instruction access.
        S_AXI_AWPROT	: in std_logic_vector(2 downto 0);
        -- Write address valid. This signal indicates that the master signaling
        -- valid write address and control information.
        S_AXI_AWVALID	: in std_logic;
        -- Write address ready. This signal indicates that the slave is ready
        -- to accept an address and associated control signals.
        S_AXI_AWREADY	: out std_logic;
        -- Write data (issued by master, acceped by Slave) 
        S_AXI_WDATA	: in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        -- Write strobes. This signal indicates which byte lanes hold
        -- valid data. There is one write strobe bit for each eight
        -- bits of the write data bus.    
        S_AXI_WSTRB	: in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        -- Write valid. This signal indicates that valid write
        -- data and strobes are available.
        S_AXI_WVALID	: in std_logic;
        -- Write ready. This signal indicates that the slave
        -- can accept the write data.
        S_AXI_WREADY	: out std_logic;
        -- Write response. This signal indicates the status
        -- of the write transaction.
        S_AXI_BRESP	: out std_logic_vector(1 downto 0);
        -- Write response valid. This signal indicates that the channel
        -- is signaling a valid write response.
        S_AXI_BVALID	: out std_logic;
        -- Response ready. This signal indicates that the master
        -- can accept a write response.
        S_AXI_BREADY	: in std_logic;
        -- Read address (issued by master, acceped by Slave)
        S_AXI_ARADDR	: in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        -- Protection type. This signal indicates the privilege
        -- and security level of the transaction, and whether the
        -- transaction is a data access or an instruction access.
        S_AXI_ARPROT	: in std_logic_vector(2 downto 0);
        -- Read address valid. This signal indicates that the channel
        -- is signaling valid read address and control information.
        S_AXI_ARVALID	: in std_logic;
        -- Read address ready. This signal indicates that the slave is
        -- ready to accept an address and associated control signals.
        S_AXI_ARREADY	: out std_logic;
        -- Read data (issued by slave)
        S_AXI_RDATA	: out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        -- Read response. This signal indicates the status of the
        -- read transfer.
        S_AXI_RRESP	: out std_logic_vector(1 downto 0);
        -- Read valid. This signal indicates that the channel is
        -- signaling the required read data.
        S_AXI_RVALID	: out std_logic;
        -- Read ready. This signal indicates that the master can
        -- accept the read data and response information.
        S_AXI_RREADY	: in std_logic
    );
end AXI_SpaceWire_IP_v1_0_S02_AXI_REG;

architecture arch_imp of AXI_SpaceWire_IP_v1_0_S02_AXI_REG is

    -- AXI4LITE signals
    signal axi_awaddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal axi_awready	: std_logic;
    signal axi_wready	: std_logic;
    signal axi_bresp	: std_logic_vector(1 downto 0);
    signal axi_bvalid	: std_logic;
    signal axi_araddr	: std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    signal axi_arready	: std_logic;
    signal axi_rdata	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal axi_rresp	: std_logic_vector(1 downto 0);
    signal axi_rvalid	: std_logic;

    -- Example-specific design signals
    -- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH ADDR_LSB is used for addressing 32/64 bit registers/memories ADDR_LSB = 2 for 32 bits (n downto 2) ADDR_LSB = 3 for 64 bits (n downto 3)
    constant ADDR_LSB  : integer := (C_S_AXI_DATA_WIDTH/32)+ 1;
    constant OPT_MEM_ADDR_BITS : integer := 2; -- 2**3 == 8 Rows; 8 * 4 Bytes = 32 Bytes

    ------------------------------------------------
    ---- Signals for user logic register space example
    --------------------------------------------------
    ---- Number of Slave Registers 4
    signal slv_reg0	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg1	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg2	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg3	: std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg4 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal slv_reg_rden	: std_logic;
    signal slv_reg_wren	: std_logic;
    signal reg_data_out	:std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    signal byte_index	: integer;
    signal aw_en	: std_logic;

    -- User-defined signals declaration.
    signal line0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- R/W
    signal line1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- R/W
    signal line2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- R/W
    signal line3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- Read only
    signal line4 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0); -- Read only
begin
    -- I/O Connections assignments
    S_AXI_AWREADY	<= axi_awready;
    S_AXI_WREADY	<= axi_wready;
    S_AXI_BRESP	<= axi_bresp;
    S_AXI_BVALID	<= axi_bvalid;
    S_AXI_ARREADY	<= axi_arready;
    S_AXI_RDATA	<= axi_rdata;
    S_AXI_RRESP	<= axi_rresp;
    S_AXI_RVALID	<= axi_rvalid;


    -- Implement axi_awready generation
    -- axi_awready is asserted for one S_AXI_ACLK clock cycle when both S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is de-asserted when reset is low.
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_awready <= '0';
                aw_en <= '1';
            else
                if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
                    -- slave is ready to accept write address when there is a valid write address and write data on the write address and data bus. This design expects no outstanding transactions. 
                    axi_awready <= '1';
                    aw_en <= '0';
                elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then
                    aw_en <= '1';
                    axi_awready <= '0';
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
            else
                if (axi_awready = '0' and S_AXI_AWVALID = '1' and S_AXI_WVALID = '1' and aw_en = '1') then
                    -- Write Address latching
                    axi_awaddr <= S_AXI_AWADDR;
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
                if (axi_wready = '0' and S_AXI_WVALID = '1' and S_AXI_AWVALID = '1' and aw_en = '1') then
                    -- slave is ready to accept write data when there is a valid write address and write data on the write address and data bus. This design expects no outstanding transactions.           
                    axi_wready <= '1';
                else
                    axi_wready <= '0';
                end if;
            end if;
        end if;
    end process;


    -- Implement memory mapped register select and write logic generation
    -- The write data is accepted and written to memory mapped registers when axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
    -- select byte enables of slave registers while writing. These registers are cleared when reset (active low) is applied. Slave register write enable is asserted when valid address and data are available
    -- and the slave is ready to accept the write address and write data.
    slv_reg_wren <= axi_wready and S_AXI_WVALID and axi_awready and S_AXI_AWVALID ;
    --
    process (S_AXI_ACLK)
        variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                -- R/W registers only...
                slv_reg0 <= (others => '0');
                slv_reg1 <= (others => '0');
                slv_reg2 <= (others => '0');
                --slv_reg3 <= (others => '0');
                --slv_reg4 <= (others => '0');
            else
                loc_addr := axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
                if (slv_reg_wren = '1') then
                    case loc_addr is
                        when b"000" => -- Line 0
                            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                                    -- Respective byte enables are asserted as per write strobes                   
                                    -- slave registor 0
                                    slv_reg0(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when b"001" => -- Line 1
                            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                                    -- Respective byte enables are asserted as per write strobes                   
                                    -- slave registor 1
                                    slv_reg1(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
                        when b"010" => -- Line 2
                            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                                if ( S_AXI_WSTRB(byte_index) = '1' ) then
                                    -- Respective byte enables are asserted as per write strobes                   
                                    -- slave registor 2
                                    slv_reg2(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                                end if;
                            end loop;
--                        when b"0011" => -- Line 3
--                            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
--                                if ( S_AXI_WSTRB(byte_index) = '1' ) then
--                                    -- Respective byte enables are asserted as per write strobes                   
--                                    -- slave registor 3
--                                    slv_reg3(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
--                                end if;
--                            end loop;
--                        when b"0100" => -- Line 4
--                            for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
--                                if ( S_AXI_WSTRB(byte_index) = '1' ) then
--                                    -- Respective byte enables are asserted as per write strobes
--                                    -- slave registor 4
--                                    slv_reg4(byte_index*8+7 downto byte_index*8) <= S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
--                                end if;
--                            end loop;
                        when others =>
                            slv_reg0 <= slv_reg0;
                            slv_reg1 <= slv_reg1;
                            slv_reg2 <= slv_reg2;
                            --slv_reg3 <= slv_reg3;
                            --slv_reg4 <= slv_reg4;
                    end case;
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
                axi_bresp   <= "00"; --need to work more on the responses
            else
                if (axi_awready = '1' and S_AXI_AWVALID = '1' and axi_wready = '1' and S_AXI_WVALID = '1' and axi_bvalid = '0'  ) then
                    axi_bvalid <= '1';
                    axi_bresp  <= "00";
                elsif (S_AXI_BREADY = '1' and axi_bvalid = '1') then   --check if bready is asserted while bvalid is high)
                    axi_bvalid <= '0';                                 -- (there is a possibility that bready is always asserted high)
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
                axi_araddr  <= (others => '1');
            else
                if (axi_arready = '0' and S_AXI_ARVALID = '1') then
                    -- indicates that the slave has acceped the valid read address
                    axi_arready <= '1';
                    -- Read Address latching 
                    axi_araddr  <= S_AXI_ARADDR;
                else
                    axi_arready <= '0';
                end if;
            end if;
        end if;
    end process;


    -- Implement axi_arvalid generation
    -- axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both S_AXI_ARVALID and axi_arready are asserted. The slave registers data are available on the axi_rdata bus at this instance. The 
    -- assertion of axi_rvalid marks the validity of read data on the bus and axi_rresp indicates the status of read transaction.axi_rvalid is deasserted on reset (active low). axi_rresp and axi_rdata are 
    -- cleared to zero on reset (active low).  
    process (S_AXI_ACLK)
    begin
        if rising_edge(S_AXI_ACLK) then
            if S_AXI_ARESETN = '0' then
                axi_rvalid <= '0';
                axi_rresp  <= "00";
            else
                if (axi_arready = '1' and S_AXI_ARVALID = '1' and axi_rvalid = '0') then
                    -- Valid read data is available at the read data bus
                    axi_rvalid <= '1';
                    axi_rresp  <= "00"; -- 'OKAY' response
                elsif (axi_rvalid = '1' and S_AXI_RREADY = '1') then
                    -- Read data is accepted by the master
                    axi_rvalid <= '0';
                end if;
            end if;
        end if;
    end process;


    -- Implement memory mapped register select and read logic generation
    -- Slave register read enable is asserted when valid address is available and the slave is ready to accept the read address.
    slv_reg_rden <= axi_arready and S_AXI_ARVALID and (not axi_rvalid) ;
    --
    process (slv_reg0, slv_reg1, slv_reg2, slv_reg3, slv_reg4, axi_araddr, S_AXI_ARESETN, slv_reg_rden)
        variable loc_addr :std_logic_vector(OPT_MEM_ADDR_BITS downto 0);
    begin
        -- Address decoding for reading registers
        loc_addr := axi_araddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);
        case loc_addr is
            when b"000" =>
                reg_data_out <= slv_reg0;
            when b"001" =>
                reg_data_out <= slv_reg1;
            when b"010" =>
                reg_data_out <= slv_reg2;
            when b"011" =>
                reg_data_out <= slv_reg3;
            when b"100" =>
                reg_data_out <= slv_reg4;
            when others =>
                reg_data_out  <= (others => '0');
        end case;
    end process;


    -- Output register or memory read data
    process( S_AXI_ACLK ) is
    begin
        if (rising_edge (S_AXI_ACLK)) then
            if ( S_AXI_ARESETN = '0' ) then
                axi_rdata  <= (others => '0');
            else
                if (slv_reg_rden = '1') then
                    -- When there is a valid read address (S_AXI_ARVALID) with acceptance of read address by the slave (axi_arready), output the read dada Read address mux
                    axi_rdata <= reg_data_out;     -- register read data
                end if;
            end if;
        end if;
    end process;


    -- Add user logic here
              
    -- Apply R/W register values to IO ports.
    process( clk_logic )
    begin
        if rising_edge( clk_logic ) then
            -- Read/Write registers.
            line0 <= slv_reg0;
            line1 <= slv_reg1;
            line2 <= slv_reg2;
        
        
            -- Line0: Configuration
            linkdis <= line0(0);
            linkstart <= line0(1);
            autostart <= line0(2);
            
            -- Line1: Transmission rate
            txdivcnt <= line1(7 downto 0);
            
            -- Line2: Outgoing time-codes
            time_in <= line2(5 downto 0);
            ctrl_in <= line2(9 downto 8);
        end if;
    end process;
       
    -- Write values to read only registers.
    process( clk_logic )
    begin
        if rising_edge( clk_logic ) then
            slv_reg3 <= line3;
            slv_reg4 <= line4;
        
            -- Line3: Incoming time-codes
            line3(5 downto 0) <= time_out;
            line3(9 downto 8) <= ctrl_out;
            
            -- Line4: Status
            line4(0) <= started;
            line4(1) <= connecting;
            line4(2) <= running;
            line4(8) <= errdisc;
            line4(9) <= errpar;
            line4(10) <= erresc;
            line4(11) <= errcred;
            line4(16) <= rxhalff;
            line4(16) <= txhalff;
        end if;
    end process;
    
    -- User logic ends

end arch_imp;
