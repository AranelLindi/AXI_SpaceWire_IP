-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Oct  1 00:12:00 2022
-- Host        : AranelLindi running 64-bit Ubuntu 22.04.1 LTS
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/aranel/Dokumente/Code/axi_spw_ip_repo/edit_AXI_SpaceWire_IP_v1_0.sim/sim_1/synth/func/xsim/AXI_SpaceWire_IP_v1_0_tb_func_synth.vhd
-- Design      : AXI_SpaceWire_IP_v1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_SpaceWire_IP_v1_0_S02_AXI_REG is
  port (
    \r_reg[xmit_fct_in]\ : out STD_LOGIC;
    linkdis : out STD_LOGIC;
    \txdivcnt_reg[6]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 5 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    \ctrl_in_reg[1]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s02_axi_reg_rvalid_OBUF : out STD_LOGIC;
    s02_axi_reg_bvalid_OBUF : out STD_LOGIC;
    \xmiti[fct_in]\ : in STD_LOGIC;
    \recvo[gotnull]\ : in STD_LOGIC;
    \line4_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_reg[txdivnorm]\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    \axi_awaddr_reg[4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \slv_reg2_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \line4_reg[17]_0\ : in STD_LOGIC;
    \line3_reg[9]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \line4_reg[17]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \axi_araddr_reg[4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s02_axi_reg_wvalid_IBUF : in STD_LOGIC;
    s02_axi_reg_awvalid_IBUF : in STD_LOGIC;
    s02_axi_reg_wstrb_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s02_axi_reg_arvalid_IBUF : in STD_LOGIC;
    s02_axi_reg_aresetn_IBUF : in STD_LOGIC;
    s02_axi_reg_bready_IBUF : in STD_LOGIC;
    s02_axi_reg_rready_IBUF : in STD_LOGIC
  );
end AXI_SpaceWire_IP_v1_0_S02_AXI_REG;

architecture STRUCTURE of AXI_SpaceWire_IP_v1_0_S02_AXI_REG is
  signal \^q\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal line3 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal line4 : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \^linkdis\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s02_axi_reg_bvalid_obuf\ : STD_LOGIC;
  signal \^s02_axi_reg_rvalid_obuf\ : STD_LOGIC;
  signal s_autostart : STD_LOGIC;
  signal s_linkstart : STD_LOGIC;
  signal s_txdivcnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \r[txdivreg][0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r[txdivreg][3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair61";
begin
  Q(5 downto 0) <= \^q\(5 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  linkdis <= \^linkdis\;
  s02_axi_reg_bvalid_OBUF <= \^s02_axi_reg_bvalid_obuf\;
  s02_axi_reg_rvalid_OBUF <= \^s02_axi_reg_rvalid_obuf\;
\FSM_onehot_r[state][5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDDDFFF"
    )
        port map (
      I0 => \xmiti[fct_in]\,
      I1 => \^linkdis\,
      I2 => \recvo[gotnull]\,
      I3 => s_autostart,
      I4 => s_linkstart,
      O => \r_reg[xmit_fct_in]\
    );
autostart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => p_0_in,
      Q => s_autostart,
      R => '0'
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBF00BF00BF00"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => s02_axi_reg_awvalid_IBUF,
      I2 => s02_axi_reg_wvalid_IBUF,
      I3 => aw_en_reg_n_0,
      I4 => s02_axi_reg_bready_IBUF,
      I5 => \^s02_axi_reg_bvalid_obuf\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => axi_arready0,
      D => \axi_araddr_reg[4]_0\(0),
      Q => sel0(0),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => axi_arready0,
      D => \axi_araddr_reg[4]_0\(1),
      Q => sel0(1),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => axi_arready0,
      D => \axi_araddr_reg[4]_0\(2),
      Q => sel0(2),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axi_reg_arvalid_IBUF,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_awready0,
      D => \axi_awaddr_reg[4]_0\(0),
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_awready0,
      D => \axi_awaddr_reg[4]_0\(1),
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_awready0,
      D => \axi_awaddr_reg[4]_0\(2),
      Q => axi_awaddr(4),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s02_axi_reg_aresetn_IBUF,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s02_axi_reg_wvalid_IBUF,
      I2 => s02_axi_reg_awvalid_IBUF,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s02_axi_reg_awvalid_IBUF,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s02_axi_reg_wvalid_IBUF,
      I4 => s02_axi_reg_bready_IBUF,
      I5 => \^s02_axi_reg_bvalid_obuf\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s02_axi_reg_bvalid_obuf\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(0),
      I4 => sel0(0),
      O => reg_data_out(0)
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(0),
      I1 => \slv_reg2_reg_n_0_[0]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(10),
      I4 => sel0(0),
      O => reg_data_out(10)
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505F4040000F404"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg0_reg_n_0_[10]\,
      I2 => sel0(0),
      I3 => \slv_reg1_reg_n_0_[10]\,
      I4 => sel0(1),
      I5 => \slv_reg2_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(11),
      I4 => sel0(0),
      O => reg_data_out(11)
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505F4040000F404"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg0_reg_n_0_[11]\,
      I2 => sel0(0),
      I3 => \slv_reg1_reg_n_0_[11]\,
      I4 => sel0(1),
      I5 => \slv_reg2_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[12]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[12]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[12]\,
      I5 => sel0(2),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[13]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[13]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[13]\,
      I5 => sel0(2),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[14]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[14]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[14]\,
      I5 => sel0(2),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[15]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[15]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[15]\,
      I5 => sel0(2),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(16),
      I4 => sel0(0),
      O => reg_data_out(16)
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505F4040000F404"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg0_reg_n_0_[16]\,
      I2 => sel0(0),
      I3 => \slv_reg1_reg_n_0_[16]\,
      I4 => sel0(1),
      I5 => \slv_reg2_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A8ABA8A"
    )
        port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(17),
      I4 => sel0(0),
      O => reg_data_out(17)
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0505F4040000F404"
    )
        port map (
      I0 => sel0(2),
      I1 => \slv_reg0_reg_n_0_[17]\,
      I2 => sel0(0),
      I3 => \slv_reg1_reg_n_0_[17]\,
      I4 => sel0(1),
      I5 => \slv_reg2_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[18]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[18]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[18]\,
      I5 => sel0(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[19]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[19]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[19]\,
      I5 => sel0(2),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(1),
      I4 => sel0(0),
      O => reg_data_out(1)
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(1),
      I1 => \slv_reg2_reg_n_0_[1]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[1]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[20]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[20]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[20]\,
      I5 => sel0(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[21]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[21]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[21]\,
      I5 => sel0(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[22]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[22]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[22]\,
      I5 => sel0(2),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[23]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[23]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[23]\,
      I5 => sel0(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[24]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[24]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[24]\,
      I5 => sel0(2),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[25]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[25]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[25]\,
      I5 => sel0(2),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[26]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[26]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[26]\,
      I5 => sel0(2),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[27]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[27]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[27]\,
      I5 => sel0(2),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[28]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[28]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[28]\,
      I5 => sel0(2),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[29]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[29]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[29]\,
      I5 => sel0(2),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(2),
      I4 => sel0(0),
      O => reg_data_out(2)
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(2),
      I1 => \slv_reg2_reg_n_0_[2]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[2]\,
      I4 => sel0(0),
      I5 => p_0_in,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[30]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[30]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[30]\,
      I5 => sel0(2),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s02_axi_reg_arvalid_IBUF,
      I2 => \^s02_axi_reg_rvalid_obuf\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[31]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[31]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[31]\,
      I5 => sel0(2),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => sel0(2),
      O => reg_data_out(3)
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(3),
      I1 => \slv_reg2_reg_n_0_[3]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[3]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => sel0(2),
      O => reg_data_out(4)
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(4),
      I1 => \slv_reg2_reg_n_0_[4]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[4]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => sel0(2),
      O => reg_data_out(5)
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(5),
      I1 => \slv_reg2_reg_n_0_[5]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[5]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[6]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[6]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[6]\,
      I5 => sel0(2),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \slv_reg2_reg_n_0_[7]\,
      I1 => sel0(1),
      I2 => \slv_reg1_reg_n_0_[7]\,
      I3 => sel0(0),
      I4 => \slv_reg0_reg_n_0_[7]\,
      I5 => sel0(2),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(8),
      I4 => sel0(0),
      O => reg_data_out(8)
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(8),
      I1 => \slv_reg2_reg_n_0_[8]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[8]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0A3A0A"
    )
        port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => line4(9),
      I4 => sel0(0),
      O => reg_data_out(9)
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => line3(9),
      I1 => \slv_reg2_reg_n_0_[9]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[9]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => \axi_rdata_reg[31]_0\(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => \axi_rdata_reg[31]_0\(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => \axi_rdata_reg[31]_0\(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => \axi_rdata_reg[31]_0\(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => \axi_rdata_reg[31]_0\(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => \axi_rdata_reg[31]_0\(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => \axi_rdata_reg[31]_0\(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => \axi_rdata_reg[31]_0\(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => \axi_rdata_reg[31]_0\(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => \axi_rdata_reg[31]_0\(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => \axi_rdata_reg[31]_0\(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => \axi_rdata_reg[31]_0\(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => \axi_rdata_reg[31]_0\(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => \axi_rdata_reg[31]_0\(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => \axi_rdata_reg[31]_0\(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => \axi_rdata_reg[31]_0\(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => \axi_rdata_reg[31]_0\(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => \axi_rdata_reg[31]_0\(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => \axi_rdata_reg[31]_0\(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => \axi_rdata_reg[31]_0\(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => \axi_rdata_reg[31]_0\(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => \axi_rdata_reg[31]_0\(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => \axi_rdata_reg[31]_0\(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => \axi_rdata_reg[31]_0\(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => \axi_rdata_reg[31]_0\(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => \axi_rdata_reg[31]_0\(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => \axi_rdata_reg[31]_0\(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => \axi_rdata_reg[31]_0\(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => \axi_rdata_reg[31]_0\(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => \axi_rdata_reg[31]_0\(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => \axi_rdata_reg[31]_0\(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => \axi_rdata_reg[31]_0\(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s02_axi_reg_arvalid_IBUF,
      I1 => \^s_axi_arready\,
      I2 => \^s02_axi_reg_rvalid_obuf\,
      I3 => s02_axi_reg_rready_IBUF,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s02_axi_reg_rvalid_obuf\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => s02_axi_reg_wvalid_IBUF,
      I2 => s02_axi_reg_awvalid_IBUF,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\ctrl_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[8]\,
      Q => \ctrl_in_reg[1]_0\(6),
      R => '0'
    );
\ctrl_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[9]\,
      Q => \ctrl_in_reg[1]_0\(7),
      R => '0'
    );
\line3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(0),
      Q => line3(0),
      R => '0'
    );
\line3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(1),
      Q => line3(1),
      R => '0'
    );
\line3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(2),
      Q => line3(2),
      R => '0'
    );
\line3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(3),
      Q => line3(3),
      R => '0'
    );
\line3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(4),
      Q => line3(4),
      R => '0'
    );
\line3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(5),
      Q => line3(5),
      R => '0'
    );
\line3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(6),
      Q => line3(8),
      R => '0'
    );
\line3_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line3_reg[9]_0\(7),
      Q => line3(9),
      R => '0'
    );
\line4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[0]_0\(2),
      Q => line4(0),
      R => '0'
    );
\line4_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[17]_1\(2),
      Q => line4(10),
      R => '0'
    );
\line4_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[17]_1\(3),
      Q => line4(11),
      R => '0'
    );
\line4_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[17]_1\(4),
      Q => line4(16),
      R => '0'
    );
\line4_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[17]_1\(5),
      Q => line4(17),
      R => '0'
    );
\line4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[0]_0\(1),
      Q => line4(1),
      R => '0'
    );
\line4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[0]_0\(0),
      Q => line4(2),
      R => '0'
    );
\line4_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[17]_1\(0),
      Q => line4(8),
      R => '0'
    );
\line4_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \line4_reg[17]_1\(1),
      Q => line4(9),
      R => '0'
    );
linkdis_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[0]\,
      Q => \^linkdis\,
      R => '0'
    );
linkstart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg0_reg_n_0_[1]\,
      Q => s_linkstart,
      R => '0'
    );
\r[txdivnorm]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(5),
      I2 => \line4_reg[0]_0\(0),
      I3 => \^q\(2),
      I4 => s_txdivcnt(3),
      I5 => \r_reg[txdivnorm]\,
      O => \txdivcnt_reg[6]_0\
    );
\r[txdivreg][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_txdivcnt(0),
      I1 => \line4_reg[0]_0\(0),
      O => D(0)
    );
\r[txdivreg][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => s_txdivcnt(3),
      I1 => \line4_reg[0]_0\(0),
      O => D(1)
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => s02_axi_reg_wstrb_IBUF(1),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => s02_axi_reg_wstrb_IBUF(2),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => s02_axi_reg_wstrb_IBUF(3),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s02_axi_reg_awvalid_IBUF,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s02_axi_reg_wvalid_IBUF,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => s02_axi_reg_wstrb_IBUF(0),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(23),
      D => \slv_reg2_reg[31]_0\(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(2),
      Q => p_0_in,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(31),
      D => \slv_reg2_reg[31]_0\(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(7),
      D => \slv_reg2_reg[31]_0\(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => p_1_in(15),
      D => \slv_reg2_reg[31]_0\(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s02_axi_reg_wstrb_IBUF(1),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s02_axi_reg_wstrb_IBUF(2),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s02_axi_reg_wstrb_IBUF(3),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(3),
      I3 => axi_awaddr(2),
      I4 => s02_axi_reg_wstrb_IBUF(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(10),
      Q => \slv_reg1_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(11),
      Q => \slv_reg1_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(12),
      Q => \slv_reg1_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(13),
      Q => \slv_reg1_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(14),
      Q => \slv_reg1_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(15),
      Q => \slv_reg1_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(16),
      Q => \slv_reg1_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(17),
      Q => \slv_reg1_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(18),
      Q => \slv_reg1_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(19),
      Q => \slv_reg1_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(1),
      Q => \slv_reg1_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(20),
      Q => \slv_reg1_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(21),
      Q => \slv_reg1_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(22),
      Q => \slv_reg1_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(23),
      Q => \slv_reg1_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(24),
      Q => \slv_reg1_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(25),
      Q => \slv_reg1_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(26),
      Q => \slv_reg1_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(27),
      Q => \slv_reg1_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(28),
      Q => \slv_reg1_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(29),
      Q => \slv_reg1_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(2),
      Q => \slv_reg1_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(30),
      Q => \slv_reg1_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(31),
      Q => \slv_reg1_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(3),
      Q => \slv_reg1_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(4),
      Q => \slv_reg1_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(5),
      Q => \slv_reg1_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(6),
      Q => \slv_reg1_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(7),
      Q => \slv_reg1_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(8),
      Q => \slv_reg1_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(9),
      Q => \slv_reg1_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s02_axi_reg_wstrb_IBUF(1),
      I4 => axi_awaddr(3),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s02_axi_reg_wstrb_IBUF(2),
      I4 => axi_awaddr(3),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s02_axi_reg_wstrb_IBUF(3),
      I4 => axi_awaddr(3),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(4),
      I2 => axi_awaddr(2),
      I3 => s02_axi_reg_wstrb_IBUF(0),
      I4 => axi_awaddr(3),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(0),
      Q => \slv_reg2_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(10),
      Q => \slv_reg2_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(11),
      Q => \slv_reg2_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(12),
      Q => \slv_reg2_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(13),
      Q => \slv_reg2_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(14),
      Q => \slv_reg2_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(15),
      Q => \slv_reg2_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(16),
      Q => \slv_reg2_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(17),
      Q => \slv_reg2_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(18),
      Q => \slv_reg2_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(19),
      Q => \slv_reg2_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(1),
      Q => \slv_reg2_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(20),
      Q => \slv_reg2_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(21),
      Q => \slv_reg2_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(22),
      Q => \slv_reg2_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(23),
      Q => \slv_reg2_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(24),
      Q => \slv_reg2_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(25),
      Q => \slv_reg2_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(26),
      Q => \slv_reg2_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(27),
      Q => \slv_reg2_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(28),
      Q => \slv_reg2_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(29),
      Q => \slv_reg2_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(2),
      Q => \slv_reg2_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(30),
      Q => \slv_reg2_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(31),
      Q => \slv_reg2_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(3),
      Q => \slv_reg2_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(4),
      Q => \slv_reg2_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(5),
      Q => \slv_reg2_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(6),
      Q => \slv_reg2_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(7),
      Q => \slv_reg2_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(8),
      Q => \slv_reg2_reg_n_0_[8]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => \slv_reg2_reg[31]_0\(9),
      Q => \slv_reg2_reg_n_0_[9]\,
      R => axi_awready_i_1_n_0
    );
\time_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[0]\,
      Q => \ctrl_in_reg[1]_0\(0),
      R => '0'
    );
\time_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[1]\,
      Q => \ctrl_in_reg[1]_0\(1),
      R => '0'
    );
\time_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[2]\,
      Q => \ctrl_in_reg[1]_0\(2),
      R => '0'
    );
\time_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[3]\,
      Q => \ctrl_in_reg[1]_0\(3),
      R => '0'
    );
\time_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[4]\,
      Q => \ctrl_in_reg[1]_0\(4),
      R => '0'
    );
\time_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg2_reg_n_0_[5]\,
      Q => \ctrl_in_reg[1]_0\(5),
      R => '0'
    );
\txdivcnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[0]\,
      Q => s_txdivcnt(0),
      R => '0'
    );
\txdivcnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[1]\,
      Q => \^q\(0),
      R => '0'
    );
\txdivcnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[2]\,
      Q => \^q\(1),
      R => '0'
    );
\txdivcnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[3]\,
      Q => s_txdivcnt(3),
      R => '0'
    );
\txdivcnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[4]\,
      Q => \^q\(2),
      R => '0'
    );
\txdivcnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[5]\,
      Q => \^q\(3),
      R => '0'
    );
\txdivcnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[6]\,
      Q => \^q\(4),
      R => '0'
    );
\txdivcnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \line4_reg[17]_0\,
      CE => '1',
      D => \slv_reg1_reg_n_0_[7]\,
      Q => \^q\(5),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spwlink is
  port (
    \r_reg[xmit_fct_in]_0\ : out STD_LOGIC;
    \r_reg[timerdone]__0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_r_reg[state][5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_reg[timercnt][9]_0\ : out STD_LOGIC;
    \r_reg[errcred]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    linkdis_reg : out STD_LOGIC;
    \v[pend_data]\ : out STD_LOGIC;
    \xmiti[txen]\ : out STD_LOGIC;
    \r_reg[tx_credit][3]_0\ : out STD_LOGIC;
    \r_reg[allow_char]0\ : out STD_LOGIC;
    \rin[sent_fct]\ : out STD_LOGIC;
    \r_reg[rx_credit][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \linko[started]1\ : out STD_LOGIC;
    \FSM_onehot_r_reg[state][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_r_reg[state][1]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \v[rxeep]3_out\ : out STD_LOGIC;
    \v[rxfifo_waddr]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \r_reg[rxfifo_waddr][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[rxfifo_waddr][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txfifo_raddr][0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txfifo_raddr][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txpacket]\ : out STD_LOGIC;
    \FSM_onehot_r_reg[state][1]_1\ : out STD_LOGIC;
    \FSM_onehot_r_reg[state][0]_1\ : out STD_LOGIC;
    \FSM_onehot_r_reg[state][0]_2\ : out STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \r_reg[tx_credit][5]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_r_reg[state][0]_3\ : in STD_LOGIC;
    \FSM_onehot_r_reg[state][0]_4\ : in STD_LOGIC;
    \r_reg[timercnt][0]_0\ : in STD_LOGIC;
    \r_reg[timercnt][0]_1\ : in STD_LOGIC;
    \r_reg[timercnt][0]_2\ : in STD_LOGIC;
    \FSM_onehot_r_reg[state][1]_2\ : in STD_LOGIC;
    \recvo[tick_out]\ : in STD_LOGIC;
    \recvo[rxchar]\ : in STD_LOGIC;
    linkdis : in STD_LOGIC;
    \r_reg[txpacket]__0\ : in STD_LOGIC;
    \r_reg[txfifo_rvalid]__0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txdiscard]__0\ : in STD_LOGIC;
    \recvo[gotfct]\ : in STD_LOGIC;
    \r_reg[allow_char]__0\ : in STD_LOGIC;
    \r_reg[pend_char]__0\ : in STD_LOGIC;
    \recvo[errpar]\ : in STD_LOGIC;
    \recvo[erresc]\ : in STD_LOGIC;
    \r_reg[sent_fct]__0\ : in STD_LOGIC;
    \r_reg[xmit_fct_in]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_reg[pend_fct]__0\ : in STD_LOGIC;
    \r_reg[allow_fct]__0\ : in STD_LOGIC;
    s_tc_in : in STD_LOGIC;
    \v[parity]14_out\ : in STD_LOGIC;
    \r_reg[inact]\ : in STD_LOGIC;
    \r_reg[txdivreg][7]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \r_reg[rxfull]__0\ : in STD_LOGIC;
    \r_reg[rxeep]__0\ : in STD_LOGIC;
    \r_reg[rxeep]\ : in STD_LOGIC;
    \r[rxfull]_i_17\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_mem_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txenreg]__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txenreg]\ : in STD_LOGIC;
    \r_reg[inact]__0\ : in STD_LOGIC;
    \r_reg[inbvalid]\ : in STD_LOGIC;
    \FSM_onehot_r_reg[state][4]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_reg[rx_credit][0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end spwlink;

architecture STRUCTURE of spwlink is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FSM_onehot_r[state][0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][5]_i_8_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_r_reg[state][5]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r[errcred]_i_1_n_0\ : STD_LOGIC;
  signal \r[errcred]_i_2_n_0\ : STD_LOGIC;
  signal \r[errcred]_i_3_n_0\ : STD_LOGIC;
  signal \r[errcred]_i_4_n_0\ : STD_LOGIC;
  signal \r[rx_credit][1]_i_1_n_0\ : STD_LOGIC;
  signal \r[rx_credit][2]_i_1_n_0\ : STD_LOGIC;
  signal \r[rx_credit][3]_i_1_n_0\ : STD_LOGIC;
  signal \r[rx_credit][3]_i_2_n_0\ : STD_LOGIC;
  signal \r[rx_credit][4]_i_1_n_0\ : STD_LOGIC;
  signal \r[rx_credit][5]_i_2_n_0\ : STD_LOGIC;
  signal \r[rx_credit][5]_i_3_n_0\ : STD_LOGIC;
  signal \r[rx_credit][5]_i_4_n_0\ : STD_LOGIC;
  signal \r[rxroom][3]_i_7_n_0\ : STD_LOGIC;
  signal \r[timercnt][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][1]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][1]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][2]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][2]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][3]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][3]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][4]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][4]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][5]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][5]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][6]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][6]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][7]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][7]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][8]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][8]_i_2_n_0\ : STD_LOGIC;
  signal \r[timercnt][9]_i_1_n_0\ : STD_LOGIC;
  signal \r[timercnt][9]_i_2_n_0\ : STD_LOGIC;
  signal \r[timerdone]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][1]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][2]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][3]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][4]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][5]_i_1_n_0\ : STD_LOGIC;
  signal \r[tx_credit][5]_i_2_n_0\ : STD_LOGIC;
  signal \r[txdiscard]_i_2_n_0\ : STD_LOGIC;
  signal \r[xmit_fct_in]_i_2_n_0\ : STD_LOGIC;
  signal \r[xmit_fct_in]_i_3_n_0\ : STD_LOGIC;
  signal \r[xmit_fct_in]_i_4_n_0\ : STD_LOGIC;
  signal \r[xmit_fct_in]_i_5_n_0\ : STD_LOGIC;
  signal \r[xmit_fct_in]_i_6_n_0\ : STD_LOGIC;
  signal \r[xmit_fct_in]_i_7_n_0\ : STD_LOGIC;
  signal \^r_reg[errcred]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_reg[rx_credit]\ : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \^r_reg[rx_credit][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_reg[rxroom][3]_i_6_n_0\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_6_n_1\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_6_n_2\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_6_n_3\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_11_n_0\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_11_n_1\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_11_n_2\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_11_n_3\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_12_n_2\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_12_n_3\ : STD_LOGIC;
  signal \^r_reg[timercnt][9]_0\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][0]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][1]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][2]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][3]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][4]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][5]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][6]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][7]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][8]\ : STD_LOGIC;
  signal \r_reg[timercnt_n_0_][9]\ : STD_LOGIC;
  signal \^r_reg[timerdone]__0\ : STD_LOGIC;
  signal \r_reg[tx_credit]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^r_reg[tx_credit][3]_0\ : STD_LOGIC;
  signal \^r_reg[xmit_fct_in]_0\ : STD_LOGIC;
  signal \rin[rx_credit]\ : STD_LOGIC;
  signal \^v[pend_data]\ : STD_LOGIC;
  signal \v[xmit_fct_in]\ : STD_LOGIC;
  signal \^xmiti[txen]\ : STD_LOGIC;
  signal \NLW_r_reg[rxroom][3]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_r_reg[rxroom][5]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_reg[rxroom][5]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][1]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][1]_i_3\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][1]_i_4\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][5]_i_3\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][5]_i_8\ : label is "soft_lutpair65";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_reg[state][0]\ : label is "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_reg[state][1]\ : label is "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_reg[state][2]\ : label is "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_reg[state][3]\ : label is "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_reg[state][4]\ : label is "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_r_reg[state][5]\ : label is "s_errorwait:100000,s_ready:010000,s_started:001000,s_connecting:000100,s_run:000010,s_errorreset:000001";
  attribute SOFT_HLUTNM of \line4[10]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \line4[9]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \r[allow_char]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \r[allow_fct]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \r[allow_fct]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \r[bitcnt][9]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \r[disccnt][7]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \r[errcred]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \r[errcred]_i_4\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \r[inact]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \r[pend_time][7]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \r[rx_credit][2]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \r[rx_credit][3]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \r[rx_credit][5]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \r[rx_credit][5]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \r[rxeep]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \r[timercnt][1]_i_2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \r[timercnt][2]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \r[timercnt][3]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \r[timercnt][7]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \r[token1][fctpiggy]_i_3\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \r[tx_credit][1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \r[tx_credit][2]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \r[tx_credit][4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \r[tx_credit][5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \r[tx_credit][5]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \r[txdivreg][2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \r[txdivreg][4]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \r[txdivreg][5]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \r[txdivreg][6]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \r[txdivreg][7]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \r[txenreg]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \r[xmit_fct_in]_i_5\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \r[xmit_fct_in]_i_7\ : label is "soft_lutpair78";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_reg[rxroom][3]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxroom][5]_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxroom][5]_i_12\ : label is 35;
begin
  ADDRBWRADDR(0) <= \^addrbwraddr\(0);
  \FSM_onehot_r_reg[state][5]_0\(5 downto 0) <= \^fsm_onehot_r_reg[state][5]_0\(5 downto 0);
  \r_reg[errcred]_0\(2 downto 0) <= \^r_reg[errcred]_0\(2 downto 0);
  \r_reg[rx_credit][0]_0\(0) <= \^r_reg[rx_credit][0]_0\(0);
  \r_reg[timercnt][9]_0\ <= \^r_reg[timercnt][9]_0\;
  \r_reg[timerdone]__0\ <= \^r_reg[timerdone]__0\;
  \r_reg[tx_credit][3]_0\ <= \^r_reg[tx_credit][3]_0\;
  \r_reg[xmit_fct_in]_0\ <= \^r_reg[xmit_fct_in]_0\;
  \v[pend_data]\ <= \^v[pend_data]\;
  \xmiti[txen]\ <= \^xmiti[txen]\;
\FSM_onehot_r[state][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF4"
    )
        port map (
      I0 => \FSM_onehot_r_reg[state][0]_3\,
      I1 => \^fsm_onehot_r_reg[state][5]_0\(3),
      I2 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I3 => \FSM_onehot_r_reg[state][0]_4\,
      I4 => \FSM_onehot_r[state][0]_i_3_n_0\,
      O => \FSM_onehot_r[state][0]_i_1_n_0\
    );
\FSM_onehot_r[state][0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I1 => \FSM_onehot_r_reg[state][1]_2\,
      I2 => \recvo[tick_out]\,
      I3 => \recvo[rxchar]\,
      I4 => \^r_reg[timerdone]__0\,
      I5 => \^r_reg[timercnt][9]_0\,
      O => \FSM_onehot_r[state][0]_i_3_n_0\
    );
\FSM_onehot_r[state][1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I1 => \FSM_onehot_r_reg[state][1]_2\,
      I2 => \recvo[tick_out]\,
      I3 => \recvo[rxchar]\,
      I4 => \^r_reg[timerdone]__0\,
      I5 => \^r_reg[timercnt][9]_0\,
      O => \FSM_onehot_r[state][1]_i_1_n_0\
    );
\FSM_onehot_r[state][1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][9]\,
      I1 => \FSM_onehot_r[state][1]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][1]_i_4_n_0\,
      I3 => \r_reg[timercnt_n_0_][8]\,
      O => \^r_reg[timercnt][9]_0\
    );
\FSM_onehot_r[state][1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][3]\,
      I1 => \r_reg[timercnt_n_0_][0]\,
      I2 => \r_reg[timercnt_n_0_][1]\,
      I3 => \r_reg[timercnt_n_0_][2]\,
      O => \FSM_onehot_r[state][1]_i_3_n_0\
    );
\FSM_onehot_r[state][1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][5]\,
      I1 => \r_reg[timercnt_n_0_][4]\,
      I2 => \r_reg[timercnt_n_0_][7]\,
      I3 => \r_reg[timercnt_n_0_][6]\,
      O => \FSM_onehot_r[state][1]_i_4_n_0\
    );
\FSM_onehot_r[state][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFEE"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I1 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I2 => \FSM_onehot_r_reg[state][0]_3\,
      I3 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I4 => \FSM_onehot_r[state][5]_i_5_n_0\,
      O => \FSM_onehot_r[state][5]_i_1_n_0\
    );
\FSM_onehot_r[state][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4C4C4C4C4"
    )
        port map (
      I0 => \r_reg[timercnt][0]_0\,
      I1 => \^fsm_onehot_r_reg[state][5]_0\(4),
      I2 => \r_reg[timercnt][0]_1\,
      I3 => \FSM_onehot_r[state][5]_i_8_n_0\,
      I4 => \r_reg[timercnt][0]_2\,
      I5 => \^fsm_onehot_r_reg[state][5]_0\(3),
      O => \FSM_onehot_r[state][5]_i_2_n_0\
    );
\FSM_onehot_r[state][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \FSM_onehot_r_reg[state][1]_2\,
      I2 => linkdis,
      I3 => \^r_reg[errcred]_0\(2),
      O => \FSM_onehot_r[state][5]_i_3_n_0\
    );
\FSM_onehot_r[state][5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE0C0C0"
    )
        port map (
      I0 => \^r_reg[timerdone]__0\,
      I1 => \r_reg[timercnt][0]_1\,
      I2 => \^fsm_onehot_r_reg[state][5]_0\(5),
      I3 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I4 => \^r_reg[timercnt][9]_0\,
      O => \FSM_onehot_r[state][5]_i_5_n_0\
    );
\FSM_onehot_r[state][5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \^r_reg[timerdone]__0\,
      I1 => \r_reg[timercnt_n_0_][8]\,
      I2 => \FSM_onehot_r[state][1]_i_4_n_0\,
      I3 => \FSM_onehot_r[state][1]_i_3_n_0\,
      I4 => \r_reg[timercnt_n_0_][9]\,
      O => \FSM_onehot_r[state][5]_i_8_n_0\
    );
\FSM_onehot_r_reg[state][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => \FSM_onehot_r[state][5]_i_1_n_0\,
      D => \FSM_onehot_r[state][0]_i_1_n_0\,
      Q => \^fsm_onehot_r_reg[state][5]_0\(0),
      S => rst_logic_IBUF
    );
\FSM_onehot_r_reg[state][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => \FSM_onehot_r[state][5]_i_1_n_0\,
      D => \FSM_onehot_r[state][1]_i_1_n_0\,
      Q => \^fsm_onehot_r_reg[state][5]_0\(1),
      R => rst_logic_IBUF
    );
\FSM_onehot_r_reg[state][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => \FSM_onehot_r[state][5]_i_1_n_0\,
      D => \FSM_onehot_r_reg[state][4]_0\(0),
      Q => \^fsm_onehot_r_reg[state][5]_0\(2),
      R => rst_logic_IBUF
    );
\FSM_onehot_r_reg[state][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => \FSM_onehot_r[state][5]_i_1_n_0\,
      D => \FSM_onehot_r_reg[state][4]_0\(1),
      Q => \^fsm_onehot_r_reg[state][5]_0\(3),
      R => rst_logic_IBUF
    );
\FSM_onehot_r_reg[state][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => \FSM_onehot_r[state][5]_i_1_n_0\,
      D => \FSM_onehot_r_reg[state][4]_0\(2),
      Q => \^fsm_onehot_r_reg[state][5]_0\(4),
      R => rst_logic_IBUF
    );
\FSM_onehot_r_reg[state][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => \FSM_onehot_r[state][5]_i_1_n_0\,
      D => \^fsm_onehot_r_reg[state][5]_0\(0),
      Q => \^fsm_onehot_r_reg[state][5]_0\(5),
      R => rst_logic_IBUF
    );
\line4[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \recvo[erresc]\,
      O => \^r_reg[errcred]_0\(1)
    );
\line4[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \recvo[errpar]\,
      O => \^r_reg[errcred]_0\(0)
    );
\plusOp__62_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => s_mem_reg(0),
      I1 => \r_reg[txdiscard]__0\,
      I2 => \^v[pend_data]\,
      I3 => \r_reg[txfifo_rvalid]__0\,
      O => \r_reg[txfifo_raddr][0]\(0)
    );
\plusOp__63_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => s_mem_reg(0),
      I1 => \r_reg[txdiscard]__0\,
      I2 => \^v[pend_data]\,
      I3 => \r_reg[txfifo_rvalid]__0\,
      O => \r_reg[txfifo_raddr][0]_0\(0)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"999A9A9A"
    )
        port map (
      I0 => \r[rxfull]_i_17\(0),
      I1 => \r_reg[rxfull]__0\,
      I2 => \r_reg[rxeep]__0\,
      I3 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I4 => \recvo[rxchar]\,
      O => \r_reg[rxfifo_waddr][0]_0\(0)
    );
\r[allow_char]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r_reg[sent_fct]__0\,
      I1 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I2 => \^fsm_onehot_r_reg[state][5]_0\(3),
      O => \r_reg[allow_char]0\
    );
\r[allow_fct]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^fsm_onehot_r_reg[state][5]_0\(3),
      I2 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I3 => \^fsm_onehot_r_reg[state][5]_0\(1),
      O => \rin[sent_fct]\
    );
\r[allow_fct]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(3),
      O => \linko[started]1\
    );
\r[bitcnt][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I1 => \v[parity]14_out\,
      O => SR(0)
    );
\r[disccnt][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I1 => \r_reg[inact]\,
      O => \FSM_onehot_r_reg[state][0]_0\(0)
    );
\r[errcred]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3F2"
    )
        port map (
      I0 => \r[errcred]_i_2_n_0\,
      I1 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I2 => \r[errcred]_i_3_n_0\,
      I3 => \^r_reg[errcred]_0\(2),
      O => \r[errcred]_i_1_n_0\
    );
\r[errcred]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \r_reg[tx_credit]\(4),
      I1 => \r_reg[tx_credit]\(5),
      I2 => \recvo[gotfct]\,
      I3 => \r[errcred]_i_4_n_0\,
      O => \r[errcred]_i_2_n_0\
    );
\r[errcred]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \r[rx_credit][5]_i_3_n_0\,
      I1 => \r_reg[rx_credit]\(3),
      I2 => \r_reg[rx_credit]\(5),
      I3 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I4 => \r_reg[rx_credit]\(4),
      O => \r[errcred]_i_3_n_0\
    );
\r[errcred]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_reg[tx_credit]\(2),
      I1 => \r_reg[tx_credit]\(0),
      I2 => \r_reg[tx_credit]\(1),
      I3 => \r_reg[tx_credit]\(3),
      O => \r[errcred]_i_4_n_0\
    );
\r[inact]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I1 => \r_reg[inact]__0\,
      O => \FSM_onehot_r_reg[state][0]_1\
    );
\r[inbvalid]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I1 => \r_reg[inbvalid]\,
      O => \FSM_onehot_r_reg[state][0]_2\
    );
\r[pend_data][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \^xmiti[txen]\,
      I1 => \r_reg[allow_char]__0\,
      I2 => \r_reg[txdiscard]__0\,
      I3 => \r_reg[txfifo_rvalid]__0\,
      I4 => \^r_reg[tx_credit][3]_0\,
      I5 => \r_reg[pend_char]__0\,
      O => \^v[pend_data]\
    );
\r[pend_data][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \r_reg[tx_credit]\(3),
      I1 => \r_reg[tx_credit]\(1),
      I2 => \r_reg[tx_credit]\(0),
      I3 => \r_reg[tx_credit]\(2),
      I4 => \r_reg[tx_credit]\(5),
      I5 => \r_reg[tx_credit]\(4),
      O => \^r_reg[tx_credit][3]_0\
    );
\r[pend_time][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => s_tc_in,
      O => E(0)
    );
\r[rx_credit][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \r_reg[rx_credit]\(1),
      I1 => \^r_reg[rx_credit][0]_0\(0),
      I2 => \recvo[rxchar]\,
      O => \r[rx_credit][1]_i_1_n_0\
    );
\r[rx_credit][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => \r_reg[rx_credit]\(2),
      I1 => \r_reg[rx_credit]\(1),
      I2 => \recvo[rxchar]\,
      I3 => \^r_reg[rx_credit][0]_0\(0),
      O => \r[rx_credit][2]_i_1_n_0\
    );
\r[rx_credit][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA9AAAA"
    )
        port map (
      I0 => \r[rx_credit][3]_i_2_n_0\,
      I1 => \r_reg[rx_credit]\(2),
      I2 => \r_reg[rx_credit]\(1),
      I3 => \^r_reg[rx_credit][0]_0\(0),
      I4 => \recvo[rxchar]\,
      O => \r[rx_credit][3]_i_1_n_0\
    );
\r[rx_credit][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \r_reg[rx_credit]\(3),
      I1 => \r_reg[pend_fct]__0\,
      I2 => \r_reg[allow_fct]__0\,
      I3 => \^r_reg[xmit_fct_in]_0\,
      I4 => \^xmiti[txen]\,
      O => \r[rx_credit][3]_i_2_n_0\
    );
\r[rx_credit][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A96A"
    )
        port map (
      I0 => \r_reg[rx_credit]\(4),
      I1 => \r_reg[rx_credit]\(3),
      I2 => \r[rx_credit][5]_i_4_n_0\,
      I3 => \r[rx_credit][5]_i_3_n_0\,
      O => \r[rx_credit][4]_i_1_n_0\
    );
\r[rx_credit][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^fsm_onehot_r_reg[state][5]_0\(0),
      O => \rin[rx_credit]\
    );
\r[rx_credit][5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAA6"
    )
        port map (
      I0 => \r_reg[rx_credit]\(5),
      I1 => \r[rx_credit][5]_i_3_n_0\,
      I2 => \r_reg[rx_credit]\(4),
      I3 => \r_reg[rx_credit]\(3),
      I4 => \r[rx_credit][5]_i_4_n_0\,
      O => \r[rx_credit][5]_i_2_n_0\
    );
\r[rx_credit][5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \recvo[rxchar]\,
      I1 => \^r_reg[rx_credit][0]_0\(0),
      I2 => \r_reg[rx_credit]\(1),
      I3 => \r_reg[rx_credit]\(2),
      O => \r[rx_credit][5]_i_3_n_0\
    );
\r[rx_credit][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FE000000"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(3),
      I1 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I2 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I3 => \^r_reg[xmit_fct_in]_0\,
      I4 => \r_reg[allow_fct]__0\,
      I5 => \r_reg[pend_fct]__0\,
      O => \r[rx_credit][5]_i_4_n_0\
    );
\r[rxeep]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \r_reg[rxfull]__0\,
      I1 => \r_reg[rxeep]__0\,
      I2 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I3 => \r_reg[rxeep]\,
      O => \v[rxeep]3_out\
    );
\r[rxfifo_waddr][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"999A9A9A"
    )
        port map (
      I0 => \r[rxfull]_i_17\(0),
      I1 => \r_reg[rxfull]__0\,
      I2 => \r_reg[rxeep]__0\,
      I3 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I4 => \recvo[rxchar]\,
      O => \r_reg[rxfifo_waddr][0]\(0)
    );
\r[rxroom][3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"999A9A9A"
    )
        port map (
      I0 => \r[rxfull]_i_17\(0),
      I1 => \r_reg[rxfull]__0\,
      I2 => \r_reg[rxeep]__0\,
      I3 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I4 => \recvo[rxchar]\,
      O => \r[rxroom][3]_i_7_n_0\
    );
\r[timercnt][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \^r_reg[timercnt][9]_0\,
      I5 => \r_reg[timercnt_n_0_][0]\,
      O => \r[timercnt][0]_i_1_n_0\
    );
\r[timercnt][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][1]_i_2_n_0\,
      O => \r[timercnt][1]_i_1_n_0\
    );
\r[timercnt][1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => \^r_reg[timercnt][9]_0\,
      I1 => \r_reg[timercnt_n_0_][1]\,
      I2 => \r_reg[timercnt_n_0_][0]\,
      O => \r[timercnt][1]_i_2_n_0\
    );
\r[timercnt][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][2]_i_2_n_0\,
      O => \r[timercnt][2]_i_1_n_0\
    );
\r[timercnt][2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFE"
    )
        port map (
      I0 => \^r_reg[timercnt][9]_0\,
      I1 => \r_reg[timercnt_n_0_][0]\,
      I2 => \r_reg[timercnt_n_0_][1]\,
      I3 => \r_reg[timercnt_n_0_][2]\,
      O => \r[timercnt][2]_i_2_n_0\
    );
\r[timercnt][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][3]_i_2_n_0\,
      O => \r[timercnt][3]_i_1_n_0\
    );
\r[timercnt][3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABFFFE"
    )
        port map (
      I0 => \^r_reg[timercnt][9]_0\,
      I1 => \r_reg[timercnt_n_0_][2]\,
      I2 => \r_reg[timercnt_n_0_][1]\,
      I3 => \r_reg[timercnt_n_0_][0]\,
      I4 => \r_reg[timercnt_n_0_][3]\,
      O => \r[timercnt][3]_i_2_n_0\
    );
\r[timercnt][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][4]_i_2_n_0\,
      O => \r[timercnt][4]_i_1_n_0\
    );
\r[timercnt][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABFFFFFFFE"
    )
        port map (
      I0 => \^r_reg[timercnt][9]_0\,
      I1 => \r_reg[timercnt_n_0_][3]\,
      I2 => \r_reg[timercnt_n_0_][0]\,
      I3 => \r_reg[timercnt_n_0_][1]\,
      I4 => \r_reg[timercnt_n_0_][2]\,
      I5 => \r_reg[timercnt_n_0_][4]\,
      O => \r[timercnt][4]_i_2_n_0\
    );
\r[timercnt][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][5]_i_2_n_0\,
      I5 => \^r_reg[timercnt][9]_0\,
      O => \r[timercnt][5]_i_1_n_0\
    );
\r[timercnt][5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][5]\,
      I1 => \r_reg[timercnt_n_0_][3]\,
      I2 => \r_reg[timercnt_n_0_][0]\,
      I3 => \r_reg[timercnt_n_0_][1]\,
      I4 => \r_reg[timercnt_n_0_][2]\,
      I5 => \r_reg[timercnt_n_0_][4]\,
      O => \r[timercnt][5]_i_2_n_0\
    );
\r[timercnt][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][6]_i_2_n_0\,
      O => \r[timercnt][6]_i_1_n_0\
    );
\r[timercnt][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABFFFE"
    )
        port map (
      I0 => \^r_reg[timercnt][9]_0\,
      I1 => \r_reg[timercnt_n_0_][5]\,
      I2 => \FSM_onehot_r[state][1]_i_3_n_0\,
      I3 => \r_reg[timercnt_n_0_][4]\,
      I4 => \r_reg[timercnt_n_0_][6]\,
      O => \r[timercnt][6]_i_2_n_0\
    );
\r[timercnt][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r[timercnt][7]_i_2_n_0\,
      I1 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I2 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I4 => \FSM_onehot_r[state][5]_i_2_n_0\,
      O => \r[timercnt][7]_i_1_n_0\
    );
\r[timercnt][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][7]\,
      I1 => \r_reg[timercnt_n_0_][5]\,
      I2 => \FSM_onehot_r[state][1]_i_3_n_0\,
      I3 => \r_reg[timercnt_n_0_][4]\,
      I4 => \r_reg[timercnt_n_0_][6]\,
      O => \r[timercnt][7]_i_2_n_0\
    );
\r[timercnt][8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][8]_i_2_n_0\,
      I5 => \^r_reg[timercnt][9]_0\,
      O => \r[timercnt][8]_i_1_n_0\
    );
\r[timercnt][8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][8]\,
      I1 => \r_reg[timercnt_n_0_][5]\,
      I2 => \r_reg[timercnt_n_0_][4]\,
      I3 => \r_reg[timercnt_n_0_][7]\,
      I4 => \r_reg[timercnt_n_0_][6]\,
      I5 => \FSM_onehot_r[state][1]_i_3_n_0\,
      O => \r[timercnt][8]_i_2_n_0\
    );
\r[timercnt][9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFF"
    )
        port map (
      I0 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I1 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I2 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I4 => \r[timercnt][9]_i_2_n_0\,
      I5 => \r_reg[timercnt_n_0_][9]\,
      O => \r[timercnt][9]_i_1_n_0\
    );
\r[timercnt][9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_reg[timercnt_n_0_][8]\,
      I1 => \r_reg[timercnt_n_0_][5]\,
      I2 => \r_reg[timercnt_n_0_][4]\,
      I3 => \r_reg[timercnt_n_0_][7]\,
      I4 => \r_reg[timercnt_n_0_][6]\,
      I5 => \FSM_onehot_r[state][1]_i_3_n_0\,
      O => \r[timercnt][9]_i_2_n_0\
    );
\r[timerdone]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000300000002"
    )
        port map (
      I0 => \^r_reg[timercnt][9]_0\,
      I1 => \FSM_onehot_r[state][5]_i_5_n_0\,
      I2 => \FSM_onehot_r[state][0]_i_3_n_0\,
      I3 => \FSM_onehot_r[state][5]_i_3_n_0\,
      I4 => \FSM_onehot_r[state][5]_i_2_n_0\,
      I5 => \^r_reg[timerdone]__0\,
      O => \r[timerdone]_i_1_n_0\
    );
\r[token1][fctpiggy]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I2 => \^fsm_onehot_r_reg[state][5]_0\(3),
      O => \^xmiti[txen]\
    );
\r[tx_credit][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_reg[tx_credit]\(0),
      I1 => \^v[pend_data]\,
      O => \r[tx_credit][0]_i_1_n_0\
    );
\r[tx_credit][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \r_reg[tx_credit]\(0),
      I1 => \^v[pend_data]\,
      I2 => \r_reg[tx_credit]\(1),
      O => \r[tx_credit][1]_i_1_n_0\
    );
\r[tx_credit][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => \r_reg[tx_credit]\(2),
      I1 => \r_reg[tx_credit]\(0),
      I2 => \^v[pend_data]\,
      I3 => \r_reg[tx_credit]\(1),
      O => \r[tx_credit][2]_i_1_n_0\
    );
\r[tx_credit][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFBFFFB0004"
    )
        port map (
      I0 => \r_reg[tx_credit]\(1),
      I1 => \^v[pend_data]\,
      I2 => \r_reg[tx_credit]\(0),
      I3 => \r_reg[tx_credit]\(2),
      I4 => \recvo[gotfct]\,
      I5 => \r_reg[tx_credit]\(3),
      O => \r[tx_credit][3]_i_1_n_0\
    );
\r[tx_credit][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \r_reg[tx_credit]\(4),
      I1 => \r[tx_credit][5]_i_2_n_0\,
      I2 => \r_reg[tx_credit]\(3),
      I3 => \recvo[gotfct]\,
      O => \r[tx_credit][4]_i_1_n_0\
    );
\r[tx_credit][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \r_reg[tx_credit]\(5),
      I1 => \r_reg[tx_credit]\(4),
      I2 => \recvo[gotfct]\,
      I3 => \r_reg[tx_credit]\(3),
      I4 => \r[tx_credit][5]_i_2_n_0\,
      O => \r[tx_credit][5]_i_1_n_0\
    );
\r[tx_credit][5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \r_reg[tx_credit]\(2),
      I1 => \r_reg[tx_credit]\(0),
      I2 => \^v[pend_data]\,
      I3 => \r_reg[tx_credit]\(1),
      O => \r[tx_credit][5]_i_2_n_0\
    );
\r[txdiscard]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \r[txdiscard]_i_2_n_0\,
      I1 => linkdis,
      I2 => rst_logic_IBUF,
      O => linkdis_reg
    );
\r[txdiscard]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02FFFFFF02020E0E"
    )
        port map (
      I0 => \r_reg[txpacket]__0\,
      I1 => \^v[pend_data]\,
      I2 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I3 => \r_reg[txfifo_rvalid]__0\,
      I4 => D(0),
      I5 => \r_reg[txdiscard]__0\,
      O => \r[txdiscard]_i_2_n_0\
    );
\r[txdivreg][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \r_reg[txdivreg][7]\(0),
      O => \FSM_onehot_r_reg[state][1]_0\(0)
    );
\r[txdivreg][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \r_reg[txdivreg][7]\(1),
      O => \FSM_onehot_r_reg[state][1]_0\(1)
    );
\r[txdivreg][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \r_reg[txdivreg][7]\(2),
      O => \FSM_onehot_r_reg[state][1]_0\(2)
    );
\r[txdivreg][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \r_reg[txdivreg][7]\(3),
      O => \FSM_onehot_r_reg[state][1]_0\(3)
    );
\r[txdivreg][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \r_reg[txdivreg][7]\(4),
      O => \FSM_onehot_r_reg[state][1]_0\(4)
    );
\r[txdivreg][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \r_reg[txdivreg][7]\(5),
      O => \FSM_onehot_r_reg[state][1]_0\(5)
    );
\r[txenreg]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFE00"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I1 => \^fsm_onehot_r_reg[state][5]_0\(2),
      I2 => \^fsm_onehot_r_reg[state][5]_0\(3),
      I3 => \r_reg[txenreg]__0\(0),
      I4 => \r_reg[txenreg]\,
      O => \FSM_onehot_r_reg[state][1]_1\
    );
\r[txpacket]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003A00"
    )
        port map (
      I0 => \r_reg[txpacket]__0\,
      I1 => D(0),
      I2 => \^v[pend_data]\,
      I3 => \^fsm_onehot_r_reg[state][5]_0\(1),
      I4 => rst_logic_IBUF,
      O => \r_reg[txpacket]\
    );
\r[xmit_fct_in]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00D400FF000000D4"
    )
        port map (
      I0 => \r[xmit_fct_in]_i_2_n_0\,
      I1 => \r_reg[xmit_fct_in]_1\(4),
      I2 => \r[xmit_fct_in]_i_3_n_0\,
      I3 => \r[xmit_fct_in]_i_4_n_0\,
      I4 => \r[xmit_fct_in]_i_5_n_0\,
      I5 => \r_reg[xmit_fct_in]_1\(5),
      O => \v[xmit_fct_in]\
    );
\r[xmit_fct_in]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555AAAA6AAA"
    )
        port map (
      I0 => \r_reg[rx_credit]\(4),
      I1 => \^xmiti[txen]\,
      I2 => \^r_reg[xmit_fct_in]_0\,
      I3 => \r_reg[allow_fct]__0\,
      I4 => \r_reg[pend_fct]__0\,
      I5 => \r_reg[rx_credit]\(3),
      O => \r[xmit_fct_in]_i_2_n_0\
    );
\r[xmit_fct_in]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \r_reg[xmit_fct_in]_1\(3),
      I1 => \r[rx_credit][3]_i_2_n_0\,
      I2 => \r[xmit_fct_in]_i_6_n_0\,
      O => \r[xmit_fct_in]_i_3_n_0\
    );
\r[xmit_fct_in]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEEAAAAAEEAAAAA"
    )
        port map (
      I0 => \^fsm_onehot_r_reg[state][5]_0\(0),
      I1 => \r_reg[rx_credit]\(4),
      I2 => \r_reg[rx_credit]\(3),
      I3 => \r[rx_credit][5]_i_4_n_0\,
      I4 => \r_reg[rx_credit]\(5),
      I5 => \r[xmit_fct_in]_i_7_n_0\,
      O => \r[xmit_fct_in]_i_4_n_0\
    );
\r[xmit_fct_in]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => \r_reg[rx_credit]\(5),
      I1 => \r_reg[rx_credit]\(3),
      I2 => \r[rx_credit][5]_i_4_n_0\,
      I3 => \r_reg[rx_credit]\(4),
      O => \r[xmit_fct_in]_i_5_n_0\
    );
\r[xmit_fct_in]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF0D0000FFFFDF0D"
    )
        port map (
      I0 => \^r_reg[rx_credit][0]_0\(0),
      I1 => \r_reg[xmit_fct_in]_1\(0),
      I2 => \r_reg[rx_credit]\(1),
      I3 => \r_reg[xmit_fct_in]_1\(1),
      I4 => \r_reg[xmit_fct_in]_1\(2),
      I5 => \r_reg[rx_credit]\(2),
      O => \r[xmit_fct_in]_i_6_n_0\
    );
\r[xmit_fct_in]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_reg[rx_credit]\(2),
      I1 => \r_reg[rx_credit]\(1),
      I2 => \^r_reg[rx_credit][0]_0\(0),
      O => \r[xmit_fct_in]_i_7_n_0\
    );
\r_reg[errcred]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[errcred]_i_1_n_0\,
      Q => \^r_reg[errcred]_0\(2),
      R => rst_logic_IBUF
    );
\r_reg[rx_credit][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r_reg[rx_credit][0]_1\(0),
      Q => \^r_reg[rx_credit][0]_0\(0),
      R => \rin[rx_credit]\
    );
\r_reg[rx_credit][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[rx_credit][1]_i_1_n_0\,
      Q => \r_reg[rx_credit]\(1),
      R => \rin[rx_credit]\
    );
\r_reg[rx_credit][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[rx_credit][2]_i_1_n_0\,
      Q => \r_reg[rx_credit]\(2),
      R => \rin[rx_credit]\
    );
\r_reg[rx_credit][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[rx_credit][3]_i_1_n_0\,
      Q => \r_reg[rx_credit]\(3),
      R => \rin[rx_credit]\
    );
\r_reg[rx_credit][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[rx_credit][4]_i_1_n_0\,
      Q => \r_reg[rx_credit]\(4),
      R => \rin[rx_credit]\
    );
\r_reg[rx_credit][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[rx_credit][5]_i_2_n_0\,
      Q => \r_reg[rx_credit]\(5),
      R => \rin[rx_credit]\
    );
\r_reg[rxroom][3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[rxroom][3]_i_6_n_0\,
      CO(2) => \r_reg[rxroom][3]_i_6_n_1\,
      CO(1) => \r_reg[rxroom][3]_i_6_n_2\,
      CO(0) => \r_reg[rxroom][3]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r[rxfull]_i_17\(0),
      O(3 downto 1) => \v[rxfifo_waddr]_0\(2 downto 0),
      O(0) => \NLW_r_reg[rxroom][3]_i_6_O_UNCONNECTED\(0),
      S(3 downto 1) => \r[rxfull]_i_17\(3 downto 1),
      S(0) => \r[rxroom][3]_i_7_n_0\
    );
\r_reg[rxroom][5]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[rxroom][3]_i_6_n_0\,
      CO(3) => \r_reg[rxroom][5]_i_11_n_0\,
      CO(2) => \r_reg[rxroom][5]_i_11_n_1\,
      CO(1) => \r_reg[rxroom][5]_i_11_n_2\,
      CO(0) => \r_reg[rxroom][5]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[rxfifo_waddr]_0\(6 downto 3),
      S(3 downto 0) => \r[rxfull]_i_17\(7 downto 4)
    );
\r_reg[rxroom][5]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[rxroom][5]_i_11_n_0\,
      CO(3 downto 2) => \NLW_r_reg[rxroom][5]_i_12_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_reg[rxroom][5]_i_12_n_2\,
      CO(0) => \r_reg[rxroom][5]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_reg[rxroom][5]_i_12_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[rxfifo_waddr]_0\(9 downto 7),
      S(3) => '0',
      S(2 downto 0) => \r[rxfull]_i_17\(10 downto 8)
    );
\r_reg[timercnt][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][0]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][0]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][1]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][1]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][2]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][2]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][3]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][3]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][4]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][4]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][5]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][5]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][6]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][6]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][7]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][7]\,
      S => rst_logic_IBUF
    );
\r_reg[timercnt][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][8]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][8]\,
      R => rst_logic_IBUF
    );
\r_reg[timercnt][9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timercnt][9]_i_1_n_0\,
      Q => \r_reg[timercnt_n_0_][9]\,
      S => rst_logic_IBUF
    );
\r_reg[timerdone]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[timerdone]_i_1_n_0\,
      Q => \^r_reg[timerdone]__0\,
      R => rst_logic_IBUF
    );
\r_reg[tx_credit][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[tx_credit][0]_i_1_n_0\,
      Q => \r_reg[tx_credit]\(0),
      R => \rin[rx_credit]\
    );
\r_reg[tx_credit][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[tx_credit][1]_i_1_n_0\,
      Q => \r_reg[tx_credit]\(1),
      R => \rin[rx_credit]\
    );
\r_reg[tx_credit][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[tx_credit][2]_i_1_n_0\,
      Q => \r_reg[tx_credit]\(2),
      R => \rin[rx_credit]\
    );
\r_reg[tx_credit][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[tx_credit][3]_i_1_n_0\,
      Q => \r_reg[tx_credit]\(3),
      R => \rin[rx_credit]\
    );
\r_reg[tx_credit][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[tx_credit][4]_i_1_n_0\,
      Q => \r_reg[tx_credit]\(4),
      R => \rin[rx_credit]\
    );
\r_reg[tx_credit][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \r[tx_credit][5]_i_1_n_0\,
      Q => \r_reg[tx_credit]\(5),
      R => \rin[rx_credit]\
    );
\r_reg[txfifo_rvalid]2_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^addrbwraddr\(0),
      I1 => Q(0),
      I2 => O(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => O(1),
      O => S(0)
    );
\r_reg[xmit_fct_in]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tx_credit][5]_0\,
      CE => '1',
      D => \v[xmit_fct_in]\,
      Q => \^r_reg[xmit_fct_in]_0\,
      R => rst_logic_IBUF
    );
\s_mem_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56AA"
    )
        port map (
      I0 => s_mem_reg(0),
      I1 => \r_reg[txdiscard]__0\,
      I2 => \^v[pend_data]\,
      I3 => \r_reg[txfifo_rvalid]__0\,
      O => \^addrbwraddr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spwram is
  port (
    \rdata_reg[1]_0\ : out STD_LOGIC;
    \r_reg[splitbit]\ : in STD_LOGIC;
    \rdata_reg[0]_0\ : in STD_LOGIC;
    rxclk_IBUF_BUFG : in STD_LOGIC;
    \rrx_reg[bufdata]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \rrx_reg[bufwrite]__0\ : in STD_LOGIC;
    \rdata_reg[0]_1\ : in STD_LOGIC;
    di : in STD_LOGIC;
    \rrx_reg[headptr]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[tailptr]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end spwram;

architecture STRUCTURE of spwram is
  signal rdata0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_bufdout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s_mem_reg_0_7_0_0_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_s_mem_reg_0_7_1_1_SPO_UNCONNECTED : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of s_mem_reg_0_7_0_0 : label is 16;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of s_mem_reg_0_7_0_0 : label is "spwstream_inst/recvfront_sel1.recvfront_fast_inst/bufmem/s_mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of s_mem_reg_0_7_0_0 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of s_mem_reg_0_7_0_0 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of s_mem_reg_0_7_0_0 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of s_mem_reg_0_7_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of s_mem_reg_0_7_0_0 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of s_mem_reg_0_7_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of s_mem_reg_0_7_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of s_mem_reg_0_7_0_0 : label is 0;
  attribute RTL_RAM_BITS of s_mem_reg_0_7_1_1 : label is 16;
  attribute RTL_RAM_NAME of s_mem_reg_0_7_1_1 : label is "spwstream_inst/recvfront_sel1.recvfront_fast_inst/bufmem/s_mem_reg";
  attribute RTL_RAM_TYPE of s_mem_reg_0_7_1_1 : label is "RAM_TDP";
  attribute XILINX_LEGACY_PRIM of s_mem_reg_0_7_1_1 : label is "RAM16X1D";
  attribute XILINX_TRANSFORM_PINMAP of s_mem_reg_0_7_1_1 : label is "GND:DPRA4,A4";
  attribute ram_addr_begin of s_mem_reg_0_7_1_1 : label is 0;
  attribute ram_addr_end of s_mem_reg_0_7_1_1 : label is 7;
  attribute ram_offset of s_mem_reg_0_7_1_1 : label is 0;
  attribute ram_slice_begin of s_mem_reg_0_7_1_1 : label is 1;
  attribute ram_slice_end of s_mem_reg_0_7_1_1 : label is 1;
begin
\r[splitbit]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_bufdout(1),
      I1 => \r_reg[splitbit]\,
      I2 => s_bufdout(0),
      O => \rdata_reg[1]_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \rdata_reg[0]_0\,
      CE => '1',
      D => rdata0(0),
      Q => s_bufdout(0),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \rdata_reg[0]_0\,
      CE => '1',
      D => rdata0(1),
      Q => s_bufdout(1),
      R => '0'
    );
s_mem_reg_0_7_0_0: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \rdata_reg[0]_1\,
      A1 => di,
      A2 => \rrx_reg[headptr]\(0),
      A3 => '0',
      A4 => '0',
      D => \rrx_reg[bufdata]\(0),
      DPO => rdata0(0),
      DPRA0 => \r_reg[tailptr]\(0),
      DPRA1 => \r_reg[tailptr]\(1),
      DPRA2 => \r_reg[tailptr]\(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_s_mem_reg_0_7_0_0_SPO_UNCONNECTED,
      WCLK => rxclk_IBUF_BUFG,
      WE => \rrx_reg[bufwrite]__0\
    );
s_mem_reg_0_7_1_1: unisim.vcomponents.RAM32X1D
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => \rdata_reg[0]_1\,
      A1 => di,
      A2 => \rrx_reg[headptr]\(0),
      A3 => '0',
      A4 => '0',
      D => \rrx_reg[bufdata]\(1),
      DPO => rdata0(1),
      DPRA0 => \r_reg[tailptr]\(0),
      DPRA1 => \r_reg[tailptr]\(1),
      DPRA2 => \r_reg[tailptr]\(2),
      DPRA3 => '0',
      DPRA4 => '0',
      SPO => NLW_s_mem_reg_0_7_1_1_SPO_UNCONNECTED,
      WCLK => rxclk_IBUF_BUFG,
      WE => \rrx_reg[bufwrite]__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \spwram__parameterized1\ is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRBWRADDR : out STD_LOGIC_VECTOR ( 9 downto 0 );
    s_mem_reg_0 : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_mem_reg_1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    wdata : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_mem_reg_2 : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_mem_reg_3 : in STD_LOGIC;
    s_rxread : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \spwram__parameterized1\ : entity is "spwram";
end \spwram__parameterized1\;

architecture STRUCTURE of \spwram__parameterized1\ is
  signal \^addrbwraddr\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal s_mem_reg_i_15_n_0 : STD_LOGIC;
  signal s_mem_reg_i_3_n_2 : STD_LOGIC;
  signal s_mem_reg_i_3_n_3 : STD_LOGIC;
  signal s_mem_reg_i_4_n_0 : STD_LOGIC;
  signal s_mem_reg_i_4_n_1 : STD_LOGIC;
  signal s_mem_reg_i_4_n_2 : STD_LOGIC;
  signal s_mem_reg_i_4_n_3 : STD_LOGIC;
  signal s_mem_reg_i_5_n_0 : STD_LOGIC;
  signal s_mem_reg_i_5_n_1 : STD_LOGIC;
  signal s_mem_reg_i_5_n_2 : STD_LOGIC;
  signal s_mem_reg_i_5_n_3 : STD_LOGIC;
  signal NLW_s_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_s_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_s_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_s_mem_reg_i_3_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_s_mem_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_s_mem_reg_i_5_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_reg : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_reg : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of s_mem_reg : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of s_mem_reg : label is 18432;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of s_mem_reg : label is "spwstream_inst/rxmem/s_mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of s_mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of s_mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of s_mem_reg : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of s_mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of s_mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of s_mem_reg : label is 8;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of s_mem_reg_i_3 : label is 35;
  attribute ADDER_THRESHOLD of s_mem_reg_i_4 : label is 35;
  attribute ADDER_THRESHOLD of s_mem_reg_i_5 : label is 35;
begin
  ADDRBWRADDR(9 downto 0) <= \^addrbwraddr\(9 downto 0);
s_mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => Q(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(13 downto 4) => \^addrbwraddr\(9 downto 0),
      ADDRBWRADDR(3) => O(0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CLKARDCLK => s_mem_reg_0,
      CLKBWRCLK => s_mem_reg_0,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => wdata(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1) => '0',
      DIPADIP(0) => wdata(8),
      DIPBDIP(1 downto 0) => B"01",
      DOADO(15 downto 0) => NLW_s_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_s_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPADOP(1 downto 0) => NLW_s_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1) => NLW_s_mem_reg_DOPBDOP_UNCONNECTED(1),
      DOPBDOP(0) => DOPBDOP(0),
      ENARDEN => WEA(0),
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => s_mem_reg_1,
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
s_mem_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => s_mem_reg_2(0),
      I1 => s_mem_reg_3,
      I2 => s_rxread,
      O => s_mem_reg_i_15_n_0
    );
s_mem_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => s_mem_reg_i_4_n_0,
      CO(3 downto 2) => NLW_s_mem_reg_i_3_CO_UNCONNECTED(3 downto 2),
      CO(1) => s_mem_reg_i_3_n_2,
      CO(0) => s_mem_reg_i_3_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_s_mem_reg_i_3_O_UNCONNECTED(3),
      O(2 downto 0) => \^addrbwraddr\(9 downto 7),
      S(3) => '0',
      S(2 downto 0) => s_mem_reg_2(10 downto 8)
    );
s_mem_reg_i_4: unisim.vcomponents.CARRY4
     port map (
      CI => s_mem_reg_i_5_n_0,
      CO(3) => s_mem_reg_i_4_n_0,
      CO(2) => s_mem_reg_i_4_n_1,
      CO(1) => s_mem_reg_i_4_n_2,
      CO(0) => s_mem_reg_i_4_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^addrbwraddr\(6 downto 3),
      S(3 downto 0) => s_mem_reg_2(7 downto 4)
    );
s_mem_reg_i_5: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_mem_reg_i_5_n_0,
      CO(2) => s_mem_reg_i_5_n_1,
      CO(1) => s_mem_reg_i_5_n_2,
      CO(0) => s_mem_reg_i_5_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => s_mem_reg_2(0),
      O(3 downto 1) => \^addrbwraddr\(2 downto 0),
      O(0) => NLW_s_mem_reg_i_5_O_UNCONNECTED(0),
      S(3 downto 1) => s_mem_reg_2(3 downto 1),
      S(0) => s_mem_reg_i_15_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \spwram__parameterized1_0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_mem_reg_0 : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 10 downto 0 );
    ADDRBWRADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_mem_reg_1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DIPADIP : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \spwram__parameterized1_0\ : entity is "spwram";
end \spwram__parameterized1_0\;

architecture STRUCTURE of \spwram__parameterized1_0\ is
  signal NLW_s_mem_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_s_mem_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_s_mem_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_s_mem_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of s_mem_reg : label is "p1_d8";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of s_mem_reg : label is "p1_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of s_mem_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of s_mem_reg : label is 18432;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of s_mem_reg : label is "spwstream_inst/txmem/s_mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of s_mem_reg : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of s_mem_reg : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of s_mem_reg : label is 2047;
  attribute ram_offset : integer;
  attribute ram_offset of s_mem_reg : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of s_mem_reg : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of s_mem_reg : label is 8;
begin
s_mem_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => Q(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(13 downto 3) => ADDRBWRADDR(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"111",
      CLKARDCLK => s_mem_reg_0,
      CLKBWRCLK => s_mem_reg_0,
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => s_mem_reg_1(7 downto 0),
      DIBDI(15 downto 0) => B"0000000011111111",
      DIPADIP(1) => '0',
      DIPADIP(0) => DIPADIP(0),
      DIPBDIP(1 downto 0) => B"01",
      DOADO(15 downto 0) => NLW_s_mem_reg_DOADO_UNCONNECTED(15 downto 0),
      DOBDO(15 downto 8) => NLW_s_mem_reg_DOBDO_UNCONNECTED(15 downto 8),
      DOBDO(7 downto 0) => D(7 downto 0),
      DOPADOP(1 downto 0) => NLW_s_mem_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1) => NLW_s_mem_reg_DOPBDOP_UNCONNECTED(1),
      DOPBDOP(0) => D(8),
      ENARDEN => WEA(0),
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => WEA(0),
      WEA(0) => '1',
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spwrecv is
  port (
    \recvo[tick_out]\ : out STD_LOGIC;
    \recvo[rxchar]\ : out STD_LOGIC;
    \recvo[gotfct]\ : out STD_LOGIC;
    \r_reg[null_seen]_0\ : out STD_LOGIC;
    \r_reg[parity]_0\ : out STD_LOGIC;
    \recvo[errpar]\ : out STD_LOGIC;
    \recvo[erresc]\ : out STD_LOGIC;
    \r_reg[gotfct]_0\ : out STD_LOGIC;
    \r_reg[erresc]_0\ : out STD_LOGIC;
    \FSM_onehot_r_reg[state][5]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_reg[timerdone]\ : out STD_LOGIC;
    \r_reg[bit_seen]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_tc_out : out STD_LOGIC;
    \r_reg[bitcnt][0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \v[parity]14_out\ : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[rxchar]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    wdata : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \r_reg[rxchar]_1\ : out STD_LOGIC;
    \r_reg[disccnt][6]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[timereg][7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_r_reg[state][4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    recv_inbvalid : in STD_LOGIC;
    \r_reg[tick_out]_0\ : in STD_LOGIC;
    \v[escaped]\ : in STD_LOGIC;
    \FSM_onehot_r_reg[state][2]\ : in STD_LOGIC;
    \r_reg[timerdone]__0\ : in STD_LOGIC;
    recv_inbits : in STD_LOGIC;
    \r_reg[rxeep]__0\ : in STD_LOGIC;
    \r_reg[rxfull]__0\ : in STD_LOGIC;
    \r_reg[rx_credit][0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[rxpacket]\ : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \r_reg[inact]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[disccnt][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[disccnt][0]_0\ : in STD_LOGIC
  );
end spwrecv;

architecture STRUCTURE of spwrecv is
  signal \FSM_onehot_r[state][5]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_r[state][5]_i_9_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \line4[8]_i_2_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r[bitcnt][3]_i_1_n_0\ : STD_LOGIC;
  signal \r[bitcnt][9]_i_4_n_0\ : STD_LOGIC;
  signal \r[bitcnt][9]_i_5_n_0\ : STD_LOGIC;
  signal \r[control]_i_1_n_0\ : STD_LOGIC;
  signal \r[datareg][7]_i_1_n_0\ : STD_LOGIC;
  signal \r[disccnt][1]_i_1_n_0\ : STD_LOGIC;
  signal \r[disccnt][2]_i_1_n_0\ : STD_LOGIC;
  signal \r[disccnt][4]_i_1_n_0\ : STD_LOGIC;
  signal \r[disccnt][6]_i_1_n_0\ : STD_LOGIC;
  signal \r[disccnt][6]_i_2_n_0\ : STD_LOGIC;
  signal \r[disccnt][7]_i_2_n_0\ : STD_LOGIC;
  signal \r[erresc]_i_1_n_0\ : STD_LOGIC;
  signal \r[errpar]_i_1_n_0\ : STD_LOGIC;
  signal \r[escaped]_i_1_n_0\ : STD_LOGIC;
  signal \r[gotfct]_i_1_n_0\ : STD_LOGIC;
  signal \r[null_seen]_i_1_n_0\ : STD_LOGIC;
  signal \r[parity]_i_1_n_0\ : STD_LOGIC;
  signal \r[rxchar]_i_1_n_0\ : STD_LOGIC;
  signal \r[rxflag]_i_1_n_0\ : STD_LOGIC;
  signal \r[rxflag]_i_2_n_0\ : STD_LOGIC;
  signal \^r_reg[bitcnt][0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_reg[bitcnt_n_0_][1]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][2]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][3]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][4]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][5]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][6]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][7]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][8]\ : STD_LOGIC;
  signal \r_reg[bitcnt_n_0_][9]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][0]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][1]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][2]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][3]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][4]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][5]\ : STD_LOGIC;
  signal \r_reg[bitshift_n_0_][8]\ : STD_LOGIC;
  signal \r_reg[control]__0\ : STD_LOGIC;
  signal \r_reg[datareg]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg[disccnt_n_0_][1]\ : STD_LOGIC;
  signal \r_reg[disccnt_n_0_][2]\ : STD_LOGIC;
  signal \r_reg[disccnt_n_0_][3]\ : STD_LOGIC;
  signal \r_reg[disccnt_n_0_][4]\ : STD_LOGIC;
  signal \r_reg[disccnt_n_0_][5]\ : STD_LOGIC;
  signal \r_reg[disccnt_n_0_][6]\ : STD_LOGIC;
  signal \r_reg[disccnt_n_0_][7]\ : STD_LOGIC;
  signal \^r_reg[erresc]_0\ : STD_LOGIC;
  signal \r_reg[escaped]__0\ : STD_LOGIC;
  signal \^r_reg[null_seen]_0\ : STD_LOGIC;
  signal \^r_reg[parity]_0\ : STD_LOGIC;
  signal \r_reg[rxflag]__0\ : STD_LOGIC;
  signal \^r_reg[timerdone]\ : STD_LOGIC;
  signal \^recvo[erresc]\ : STD_LOGIC;
  signal \^recvo[errpar]\ : STD_LOGIC;
  signal \recvo[gotbit]\ : STD_LOGIC;
  signal \^recvo[gotfct]\ : STD_LOGIC;
  signal \^recvo[rxchar]\ : STD_LOGIC;
  signal \^recvo[tick_out]\ : STD_LOGIC;
  signal \v[bitcnt]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \v[datareg]1_in\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^v[parity]14_out\ : STD_LOGIC;
  signal \v[timereg]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][5]_i_10\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_onehot_r[state][5]_i_9\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \line4[8]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \r[bitcnt][1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \r[bitcnt][2]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \r[bitcnt][4]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \r[bitcnt][5]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \r[bitcnt][6]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \r[bitcnt][7]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \r[bitcnt][8]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \r[bitcnt][9]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \r[bitcnt][9]_i_4\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \r[bitcnt][9]_i_5\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \r[datareg][0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \r[datareg][2]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \r[datareg][3]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \r[datareg][4]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \r[datareg][5]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \r[datareg][6]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \r[datareg][7]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \r[disccnt][1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \r[disccnt][3]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \r[disccnt][6]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \r[disccnt][7]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \r[rxflag]_i_2\ : label is "soft_lutpair87";
begin
  Q(0) <= \^q\(0);
  \r_reg[bitcnt][0]_0\(0) <= \^r_reg[bitcnt][0]_0\(0);
  \r_reg[erresc]_0\ <= \^r_reg[erresc]_0\;
  \r_reg[null_seen]_0\ <= \^r_reg[null_seen]_0\;
  \r_reg[parity]_0\ <= \^r_reg[parity]_0\;
  \r_reg[timerdone]\ <= \^r_reg[timerdone]\;
  \recvo[erresc]\ <= \^recvo[erresc]\;
  \recvo[errpar]\ <= \^recvo[errpar]\;
  \recvo[gotfct]\ <= \^recvo[gotfct]\;
  \recvo[rxchar]\ <= \^recvo[rxchar]\;
  \recvo[tick_out]\ <= \^recvo[tick_out]\;
  \v[parity]14_out\ <= \^v[parity]14_out\;
\FSM_onehot_r[state][0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFE0000"
    )
        port map (
      I0 => \^recvo[gotfct]\,
      I1 => \^recvo[tick_out]\,
      I2 => \^recvo[rxchar]\,
      I3 => \^r_reg[erresc]_0\,
      I4 => \FSM_onehot_r_reg[state][4]\(4),
      I5 => \FSM_onehot_r_reg[state][4]\(3),
      O => \r_reg[gotfct]_0\
    );
\FSM_onehot_r[state][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[timerdone]\,
      I1 => \FSM_onehot_r_reg[state][4]\(2),
      O => \FSM_onehot_r_reg[state][5]\(0)
    );
\FSM_onehot_r[state][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_r_reg[state][4]\(3),
      I1 => \^recvo[gotfct]\,
      I2 => \^recvo[tick_out]\,
      I3 => \^recvo[rxchar]\,
      I4 => \^r_reg[erresc]_0\,
      O => \FSM_onehot_r_reg[state][5]\(1)
    );
\FSM_onehot_r[state][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_r_reg[state][4]\(4),
      I1 => \^recvo[gotfct]\,
      I2 => \^recvo[tick_out]\,
      I3 => \^recvo[rxchar]\,
      I4 => \^r_reg[erresc]_0\,
      O => \FSM_onehot_r_reg[state][5]\(2)
    );
\FSM_onehot_r[state][4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEFE"
    )
        port map (
      I0 => \^recvo[erresc]\,
      I1 => \^recvo[errpar]\,
      I2 => \recvo[gotbit]\,
      I3 => \r_reg[disccnt_n_0_][6]\,
      I4 => \r_reg[disccnt_n_0_][7]\,
      I5 => \line4[8]_i_2_n_0\,
      O => \^r_reg[erresc]_0\
    );
\FSM_onehot_r[state][5]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^recvo[gotfct]\,
      I1 => \^recvo[tick_out]\,
      I2 => \^recvo[rxchar]\,
      O => \FSM_onehot_r[state][5]_i_10_n_0\
    );
\FSM_onehot_r[state][5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000007"
    )
        port map (
      I0 => \FSM_onehot_r_reg[state][2]\,
      I1 => \r_reg[timerdone]__0\,
      I2 => \^recvo[gotfct]\,
      I3 => \^recvo[tick_out]\,
      I4 => \^recvo[rxchar]\,
      I5 => \^r_reg[erresc]_0\,
      O => \^r_reg[timerdone]\
    );
\FSM_onehot_r[state][5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF10"
    )
        port map (
      I0 => \line4[8]_i_2_n_0\,
      I1 => \FSM_onehot_r[state][5]_i_9_n_0\,
      I2 => \recvo[gotbit]\,
      I3 => \^recvo[errpar]\,
      I4 => \^recvo[erresc]\,
      I5 => \FSM_onehot_r[state][5]_i_10_n_0\,
      O => \r_reg[bit_seen]_0\
    );
\FSM_onehot_r[state][5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][7]\,
      I1 => \r_reg[disccnt_n_0_][6]\,
      O => \FSM_onehot_r[state][5]_i_9_n_0\
    );
\line4[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][6]\,
      I1 => \r_reg[disccnt_n_0_][7]\,
      I2 => \line4[8]_i_2_n_0\,
      I3 => \FSM_onehot_r_reg[state][4]\(1),
      I4 => \recvo[gotbit]\,
      O => \r_reg[disccnt][6]_0\(0)
    );
\line4[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][5]\,
      I1 => \^q\(0),
      I2 => \r_reg[disccnt_n_0_][1]\,
      I3 => \r_reg[disccnt_n_0_][3]\,
      I4 => \r_reg[disccnt_n_0_][2]\,
      I5 => \r_reg[disccnt_n_0_][4]\,
      O => \line4[8]_i_2_n_0\
    );
\r[bitcnt][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][1]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(0)
    );
\r[bitcnt][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][2]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(1)
    );
\r[bitcnt][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][3]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(2)
    );
\r[bitcnt][3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE2FFFFFFE200"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][4]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      I2 => recv_inbits,
      I3 => recv_inbvalid,
      I4 => \^v[parity]14_out\,
      I5 => \r_reg[bitcnt_n_0_][3]\,
      O => \r[bitcnt][3]_i_1_n_0\
    );
\r[bitcnt][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][5]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(4)
    );
\r[bitcnt][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][6]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(5)
    );
\r[bitcnt][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][7]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(6)
    );
\r[bitcnt][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][8]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(7)
    );
\r[bitcnt][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitcnt_n_0_][9]\,
      I1 => \^r_reg[bitcnt][0]_0\(0),
      O => \v[bitcnt]\(8)
    );
\r[bitcnt][9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[bitcnt][0]_0\(0),
      I1 => recv_inbits,
      O => \v[bitcnt]\(9)
    );
\r[bitcnt][9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][4]\,
      I1 => \r_reg[bitshift_n_0_][2]\,
      I2 => \r_reg[bitshift_n_0_][1]\,
      I3 => \r[bitcnt][9]_i_4_n_0\,
      I4 => \r[bitcnt][9]_i_5_n_0\,
      O => \^v[parity]14_out\
    );
\r[bitcnt][9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => \r_reg[bitshift_n_0_][8]\,
      I3 => recv_inbvalid,
      O => \r[bitcnt][9]_i_4_n_0\
    );
\r[bitcnt][9]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][5]\,
      I1 => \r_reg[bitshift_n_0_][0]\,
      I2 => \r_reg[bitshift_n_0_][3]\,
      I3 => \^r_reg[null_seen]_0\,
      O => \r[bitcnt][9]_i_5_n_0\
    );
\r[control]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => recv_inbits,
      I1 => recv_inbvalid,
      I2 => \^r_reg[bitcnt][0]_0\(0),
      I3 => \^v[parity]14_out\,
      I4 => \r_reg[control]__0\,
      O => \r[control]_i_1_n_0\
    );
\r[datareg][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][0]\,
      I1 => p_0_in(1),
      I2 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(0)
    );
\r[datareg][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][1]\,
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(1)
    );
\r[datareg][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][2]\,
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(2)
    );
\r[datareg][3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][3]\,
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(3)
    );
\r[datareg][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][4]\,
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(4)
    );
\r[datareg][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[bitshift_n_0_][5]\,
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(5)
    );
\r[datareg][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(6)
    );
\r[datareg][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10D0D010"
    )
        port map (
      I0 => \r_reg[escaped]__0\,
      I1 => \r_reg[control]__0\,
      I2 => \v[escaped]\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => \r[datareg][7]_i_1_n_0\
    );
\r[datareg][7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \r_reg[control]__0\,
      O => \v[datareg]1_in\(7)
    );
\r[disccnt][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][1]\,
      I1 => \^q\(0),
      O => \r[disccnt][1]_i_1_n_0\
    );
\r[disccnt][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA9"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][2]\,
      I1 => \^q\(0),
      I2 => \r_reg[disccnt_n_0_][1]\,
      I3 => \r_reg[inact]\,
      O => \r[disccnt][2]_i_1_n_0\
    );
\r[disccnt][3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][3]\,
      I1 => \r_reg[disccnt_n_0_][1]\,
      I2 => \^q\(0),
      I3 => \r_reg[disccnt_n_0_][2]\,
      O => minusOp(3)
    );
\r[disccnt][4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA9"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][4]\,
      I1 => \r_reg[disccnt_n_0_][2]\,
      I2 => \r_reg[disccnt_n_0_][3]\,
      I3 => \r_reg[disccnt_n_0_][1]\,
      I4 => \^q\(0),
      I5 => \r_reg[inact]\,
      O => \r[disccnt][4]_i_1_n_0\
    );
\r[disccnt][5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][4]\,
      I1 => \r_reg[disccnt_n_0_][2]\,
      I2 => \r_reg[disccnt_n_0_][3]\,
      I3 => \r_reg[disccnt_n_0_][1]\,
      I4 => \^q\(0),
      I5 => \r_reg[disccnt_n_0_][5]\,
      O => minusOp(5)
    );
\r[disccnt][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][6]\,
      I1 => \r_reg[disccnt_n_0_][7]\,
      I2 => \line4[8]_i_2_n_0\,
      I3 => \r_reg[inact]\,
      O => \r[disccnt][6]_i_1_n_0\
    );
\r[disccnt][6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][6]\,
      I1 => \line4[8]_i_2_n_0\,
      I2 => \r_reg[inact]\,
      O => \r[disccnt][6]_i_2_n_0\
    );
\r[disccnt][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][6]\,
      I1 => \r_reg[disccnt_n_0_][7]\,
      I2 => \line4[8]_i_2_n_0\,
      O => \r[disccnt][7]_i_2_n_0\
    );
\r[disccnt][7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \r_reg[disccnt_n_0_][7]\,
      I1 => \line4[8]_i_2_n_0\,
      I2 => \r_reg[disccnt_n_0_][6]\,
      O => minusOp(7)
    );
\r[erresc]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80808000"
    )
        port map (
      I0 => \v[escaped]\,
      I1 => \r_reg[control]__0\,
      I2 => \r_reg[escaped]__0\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => \^recvo[erresc]\,
      O => \r[erresc]_i_1_n_0\
    );
\r[errpar]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF9000"
    )
        port map (
      I0 => \^r_reg[parity]_0\,
      I1 => recv_inbits,
      I2 => \^r_reg[bitcnt][0]_0\(0),
      I3 => recv_inbvalid,
      I4 => \^recvo[errpar]\,
      O => \r[errpar]_i_1_n_0\
    );
\r[escaped]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080FF8000"
    )
        port map (
      I0 => \r_reg[control]__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => \v[escaped]\,
      I4 => \r_reg[escaped]__0\,
      I5 => \FSM_onehot_r_reg[state][4]\(0),
      O => \r[escaped]_i_1_n_0\
    );
\r[gotfct]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \v[escaped]\,
      I1 => \r_reg[control]__0\,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => \FSM_onehot_r_reg[state][4]\(0),
      I5 => \r_reg[escaped]__0\,
      O => \r[gotfct]_i_1_n_0\
    );
\r[null_seen]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => recv_inbvalid,
      I1 => \^v[parity]14_out\,
      I2 => \^r_reg[null_seen]_0\,
      O => \r[null_seen]_i_1_n_0\
    );
\r[parity]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000262A"
    )
        port map (
      I0 => \^r_reg[parity]_0\,
      I1 => recv_inbvalid,
      I2 => \^r_reg[bitcnt][0]_0\(0),
      I3 => recv_inbits,
      I4 => \^v[parity]14_out\,
      O => \r[parity]_i_1_n_0\
    );
\r[rx_credit][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^recvo[rxchar]\,
      I1 => \r_reg[rx_credit][0]\(0),
      O => \r_reg[rxchar]_0\(0)
    );
\r[rxchar]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002AA2"
    )
        port map (
      I0 => \v[escaped]\,
      I1 => \r_reg[control]__0\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \FSM_onehot_r_reg[state][4]\(0),
      I5 => \r_reg[escaped]__0\,
      O => \r[rxchar]_i_1_n_0\
    );
\r[rxflag]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5450505054005050"
    )
        port map (
      I0 => \FSM_onehot_r_reg[state][4]\(0),
      I1 => \r[rxflag]_i_2_n_0\,
      I2 => \r_reg[rxflag]__0\,
      I3 => \r_reg[control]__0\,
      I4 => \v[escaped]\,
      I5 => \r_reg[escaped]__0\,
      O => \r[rxflag]_i_1_n_0\
    );
\r[rxflag]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      O => \r[rxflag]_i_2_n_0\
    );
\r[rxpacket]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007200"
    )
        port map (
      I0 => \^recvo[rxchar]\,
      I1 => \r_reg[rxflag]__0\,
      I2 => \r_reg[rxpacket]\,
      I3 => \FSM_onehot_r_reg[state][4]\(1),
      I4 => rst_logic_IBUF,
      O => \r_reg[rxchar]_1\
    );
\r[timereg][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028000000"
    )
        port map (
      I0 => \r_reg[escaped]__0\,
      I1 => recv_inbits,
      I2 => \^r_reg[parity]_0\,
      I3 => recv_inbvalid,
      I4 => \^r_reg[bitcnt][0]_0\(0),
      I5 => \r_reg[control]__0\,
      O => \v[timereg]\
    );
\r_reg[bit_seen]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => recv_inbvalid,
      Q => \recvo[gotbit]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitcnt][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(0),
      Q => \^r_reg[bitcnt][0]_0\(0),
      R => SR(0)
    );
\r_reg[bitcnt][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(1),
      Q => \r_reg[bitcnt_n_0_][1]\,
      R => SR(0)
    );
\r_reg[bitcnt][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(2),
      Q => \r_reg[bitcnt_n_0_][2]\,
      R => SR(0)
    );
\r_reg[bitcnt][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[bitcnt][3]_i_1_n_0\,
      Q => \r_reg[bitcnt_n_0_][3]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitcnt][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(4),
      Q => \r_reg[bitcnt_n_0_][4]\,
      R => SR(0)
    );
\r_reg[bitcnt][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(5),
      Q => \r_reg[bitcnt_n_0_][5]\,
      R => SR(0)
    );
\r_reg[bitcnt][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(6),
      Q => \r_reg[bitcnt_n_0_][6]\,
      R => SR(0)
    );
\r_reg[bitcnt][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(7),
      Q => \r_reg[bitcnt_n_0_][7]\,
      R => SR(0)
    );
\r_reg[bitcnt][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(8),
      Q => \r_reg[bitcnt_n_0_][8]\,
      R => SR(0)
    );
\r_reg[bitcnt][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \v[bitcnt]\(9),
      Q => \r_reg[bitcnt_n_0_][9]\,
      R => SR(0)
    );
\r_reg[bitshift][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \r_reg[bitshift_n_0_][1]\,
      Q => \r_reg[bitshift_n_0_][0]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \r_reg[bitshift_n_0_][2]\,
      Q => \r_reg[bitshift_n_0_][1]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \r_reg[bitshift_n_0_][3]\,
      Q => \r_reg[bitshift_n_0_][2]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \r_reg[bitshift_n_0_][4]\,
      Q => \r_reg[bitshift_n_0_][3]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \r_reg[bitshift_n_0_][5]\,
      Q => \r_reg[bitshift_n_0_][4]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => p_0_in(0),
      Q => \r_reg[bitshift_n_0_][5]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => p_0_in(1),
      Q => p_0_in(0),
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => \r_reg[bitshift_n_0_][8]\,
      Q => p_0_in(1),
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[bitshift][8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => recv_inbvalid,
      D => recv_inbits,
      Q => \r_reg[bitshift_n_0_][8]\,
      S => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[control]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[control]_i_1_n_0\,
      Q => \r_reg[control]__0\,
      R => '0'
    );
\r_reg[datareg][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(0),
      Q => \r_reg[datareg]\(0),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(1),
      Q => \r_reg[datareg]\(1),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(2),
      Q => \r_reg[datareg]\(2),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(3),
      Q => \r_reg[datareg]\(3),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(4),
      Q => \r_reg[datareg]\(4),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(5),
      Q => \r_reg[datareg]\(5),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(6),
      Q => \r_reg[datareg]\(6),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[datareg][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[datareg][7]_i_1_n_0\,
      D => \v[datareg]1_in\(7),
      Q => \r_reg[datareg]\(7),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[disccnt][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][6]_i_1_n_0\,
      D => \r_reg[disccnt][0]_0\,
      Q => \^q\(0),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[disccnt][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][7]_i_2_n_0\,
      D => \r[disccnt][1]_i_1_n_0\,
      Q => \r_reg[disccnt_n_0_][1]\,
      R => \r_reg[disccnt][7]_0\(0)
    );
\r_reg[disccnt][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][6]_i_1_n_0\,
      D => \r[disccnt][2]_i_1_n_0\,
      Q => \r_reg[disccnt_n_0_][2]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[disccnt][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][7]_i_2_n_0\,
      D => minusOp(3),
      Q => \r_reg[disccnt_n_0_][3]\,
      R => \r_reg[disccnt][7]_0\(0)
    );
\r_reg[disccnt][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][6]_i_1_n_0\,
      D => \r[disccnt][4]_i_1_n_0\,
      Q => \r_reg[disccnt_n_0_][4]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[disccnt][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][7]_i_2_n_0\,
      D => minusOp(5),
      Q => \r_reg[disccnt_n_0_][5]\,
      R => \r_reg[disccnt][7]_0\(0)
    );
\r_reg[disccnt][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][6]_i_1_n_0\,
      D => \r[disccnt][6]_i_2_n_0\,
      Q => \r_reg[disccnt_n_0_][6]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[disccnt][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \r[disccnt][7]_i_2_n_0\,
      D => minusOp(7),
      Q => \r_reg[disccnt_n_0_][7]\,
      R => \r_reg[disccnt][7]_0\(0)
    );
\r_reg[erresc]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[erresc]_i_1_n_0\,
      Q => \^recvo[erresc]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[errpar]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[errpar]_i_1_n_0\,
      Q => \^recvo[errpar]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[escaped]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[escaped]_i_1_n_0\,
      Q => \r_reg[escaped]__0\,
      R => '0'
    );
\r_reg[gotfct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[gotfct]_i_1_n_0\,
      Q => \^recvo[gotfct]\,
      R => '0'
    );
\r_reg[null_seen]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[null_seen]_i_1_n_0\,
      Q => \^r_reg[null_seen]_0\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[parity]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[parity]_i_1_n_0\,
      Q => \^r_reg[parity]_0\,
      R => '0'
    );
\r_reg[rxchar]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[rxchar]_i_1_n_0\,
      Q => \^recvo[rxchar]\,
      R => '0'
    );
\r_reg[rxflag]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \r[rxflag]_i_1_n_0\,
      Q => \r_reg[rxflag]__0\,
      R => '0'
    );
\r_reg[tick_out]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => '1',
      D => \v[timereg]\,
      Q => \^recvo[tick_out]\,
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => \r_reg[bitshift_n_0_][0]\,
      Q => \r_reg[timereg][7]_0\(0),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => \r_reg[bitshift_n_0_][1]\,
      Q => \r_reg[timereg][7]_0\(1),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => \r_reg[bitshift_n_0_][2]\,
      Q => \r_reg[timereg][7]_0\(2),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => \r_reg[bitshift_n_0_][3]\,
      Q => \r_reg[timereg][7]_0\(3),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => \r_reg[bitshift_n_0_][4]\,
      Q => \r_reg[timereg][7]_0\(4),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => \r_reg[bitshift_n_0_][5]\,
      Q => \r_reg[timereg][7]_0\(5),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => p_0_in(0),
      Q => \r_reg[timereg][7]_0\(6),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
\r_reg[timereg][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \r_reg[tick_out]_0\,
      CE => \v[timereg]\,
      D => p_0_in(1),
      Q => \r_reg[timereg][7]_0\(7),
      R => \FSM_onehot_r_reg[state][4]\(0)
    );
s_mem_reg_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(3),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(3)
    );
s_mem_reg_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(2),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(2)
    );
s_mem_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(1),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(1)
    );
s_mem_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_reg[rxeep]__0\,
      I1 => \r_reg[datareg]\(0),
      O => wdata(0)
    );
s_mem_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \r_reg[rxflag]__0\,
      I1 => \r_reg[rxeep]__0\,
      O => wdata(8)
    );
\s_mem_reg_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => \^recvo[rxchar]\,
      I1 => \FSM_onehot_r_reg[state][4]\(1),
      I2 => \r_reg[rxeep]__0\,
      I3 => \r_reg[rxfull]__0\,
      O => WEA(0)
    );
s_mem_reg_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(7),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(7)
    );
s_mem_reg_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(6),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(6)
    );
s_mem_reg_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(5),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(5)
    );
s_mem_reg_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r_reg[datareg]\(4),
      I1 => \r_reg[rxeep]__0\,
      O => wdata(4)
    );
s_pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^recvo[tick_out]\,
      I1 => \FSM_onehot_r_reg[state][4]\(1),
      O => s_tc_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_tc_in_reg : out STD_LOGIC;
    \r_reg[pend_tick]\ : out STD_LOGIC;
    \r_reg[pend_fct]\ : out STD_LOGIC;
    \r_reg[allow_fct]\ : out STD_LOGIC;
    \r_reg[tokmux]\ : out STD_LOGIC;
    syncdff_ff1_reg_0 : in STD_LOGIC;
    syncdff_ff2_reg_0 : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \xmiti[txen]\ : in STD_LOGIC;
    \r_reg[token0][char][7]\ : in STD_LOGIC;
    \r_reg[tokmux]__0\ : in STD_LOGIC;
    \r_reg[sysflip0]__0\ : in STD_LOGIC;
    \r_reg[sysflip1]__0\ : in STD_LOGIC;
    \r_reg[sent_fct]\ : in STD_LOGIC;
    s_tc_in : in STD_LOGIC;
    \r_reg[pend_tick]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[pend_tick]__0\ : in STD_LOGIC;
    \r_reg[pend_char]\ : in STD_LOGIC;
    \r_reg[pend_char]_0\ : in STD_LOGIC;
    \r_reg[pend_char]_1\ : in STD_LOGIC;
    v_havetoken124_out : in STD_LOGIC;
    \r_reg[sent_fct]_0\ : in STD_LOGIC;
    \r_reg[pend_fct]_0\ : in STD_LOGIC;
    \r_reg[sent_fct]_1\ : in STD_LOGIC;
    \rin[sent_fct]\ : in STD_LOGIC;
    \r_reg[sent_fct]__0\ : in STD_LOGIC
  );
end syncdff;

architecture STRUCTURE of syncdff is
  signal \r[pend_tick]_i_2_n_0\ : STD_LOGIC;
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  \out\ <= syncdff_ff2;
\r[pend_char]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5F5D5F5"
    )
        port map (
      I0 => \r_reg[pend_char]_0\,
      I1 => \r_reg[pend_tick]__0\,
      I2 => \r_reg[pend_char]_1\,
      I3 => \r_reg[pend_char]\,
      I4 => \r[pend_tick]_i_2_n_0\,
      O => \r_reg[pend_tick]\
    );
\r[pend_fct]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE0F0F0"
    )
        port map (
      I0 => \r[pend_tick]_i_2_n_0\,
      I1 => v_havetoken124_out,
      I2 => \r_reg[sent_fct]_0\,
      I3 => \r_reg[pend_fct]_0\,
      I4 => \r_reg[sent_fct]_1\,
      I5 => \rin[sent_fct]\,
      O => \r_reg[pend_fct]\
    );
\r[pend_tick]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888FF88"
    )
        port map (
      I0 => s_tc_in,
      I1 => \r_reg[pend_tick]_0\(0),
      I2 => \r[pend_tick]_i_2_n_0\,
      I3 => \r_reg[pend_tick]__0\,
      I4 => \r_reg[pend_char]\,
      O => s_tc_in_reg
    );
\r[pend_tick]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FF06666"
    )
        port map (
      I0 => \r_reg[sysflip0]__0\,
      I1 => syncdff_ff2,
      I2 => \r_reg[sysflip1]__0\,
      I3 => \r_reg[sent_fct]\,
      I4 => \r_reg[tokmux]__0\,
      O => \r[pend_tick]_i_2_n_0\
    );
\r[sent_fct]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10101000"
    )
        port map (
      I0 => \r[pend_tick]_i_2_n_0\,
      I1 => v_havetoken124_out,
      I2 => \r_reg[sent_fct]_1\,
      I3 => \r_reg[pend_fct]_0\,
      I4 => \r_reg[sent_fct]_0\,
      I5 => \r_reg[sent_fct]__0\,
      O => \r_reg[allow_fct]\
    );
\r[sysflip0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF01"
    )
        port map (
      I0 => \r_reg[token0][char][7]\,
      I1 => \r_reg[tokmux]__0\,
      I2 => syncdff_ff2,
      I3 => \r_reg[sysflip0]__0\,
      O => \r_reg[tokmux]\
    );
\r[token0][fctpiggy]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000002"
    )
        port map (
      I0 => \xmiti[txen]\,
      I1 => \r_reg[token0][char][7]\,
      I2 => \r_reg[tokmux]__0\,
      I3 => syncdff_ff2,
      I4 => \r_reg[sysflip0]__0\,
      O => E(0)
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg_0,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1_reg_0,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg_0,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_1 is
  port (
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[tokmux]\ : out STD_LOGIC;
    \r_reg[tokmux]_0\ : out STD_LOGIC;
    syncdff_ff1_reg_0 : in STD_LOGIC;
    syncdff_ff2_reg_0 : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \xmiti[txen]\ : in STD_LOGIC;
    \r_reg[tokmux]_1\ : in STD_LOGIC;
    \r_reg[tokmux]__0\ : in STD_LOGIC;
    \r_reg[sysflip1]__0\ : in STD_LOGIC;
    \r_reg[tokmux]_2\ : in STD_LOGIC;
    \r_reg[sysflip0]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_1 : entity is "syncdff";
end syncdff_1;

architecture STRUCTURE of syncdff_1 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  \out\ <= syncdff_ff2;
\r[sysflip1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF04"
    )
        port map (
      I0 => \r_reg[tokmux]_1\,
      I1 => \r_reg[tokmux]__0\,
      I2 => syncdff_ff2,
      I3 => \r_reg[sysflip1]__0\,
      O => \r_reg[tokmux]_0\
    );
\r[token1][fctpiggy]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000020"
    )
        port map (
      I0 => \xmiti[txen]\,
      I1 => \r_reg[tokmux]_1\,
      I2 => \r_reg[tokmux]__0\,
      I3 => syncdff_ff2,
      I4 => \r_reg[sysflip1]__0\,
      O => E(0)
    );
\r[tokmux]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA7D28287D"
    )
        port map (
      I0 => \r_reg[tokmux]__0\,
      I1 => syncdff_ff2,
      I2 => \r_reg[sysflip1]__0\,
      I3 => \r_reg[tokmux]_2\,
      I4 => \r_reg[sysflip0]__0\,
      I5 => \r_reg[tokmux]_1\,
      O => \r_reg[tokmux]\
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg_0,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1_reg_0,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg_0,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_10 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[bitcntp][2]\ : out STD_LOGIC;
    \rrx_reg[bitcnt]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff1_reg_0 : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_reg[inact]__0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_10 : entity is "syncdff";
end syncdff_10;

architecture STRUCTURE of syncdff_10 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  D(0) <= syncdff_ff2;
\r[inact]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => Q(2),
      I1 => syncdff_ff2,
      I2 => Q(1),
      I3 => \r_reg[inact]__0\(1),
      I4 => \r_reg[inact]__0\(0),
      I5 => Q(0),
      O => \r_reg[bitcntp][2]\
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => \rrx_reg[bitcnt]\(0),
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_11 is
  port (
    syncdff_ff2_reg_0 : out STD_LOGIC;
    \r_reg[inbvalid]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    syncdff_ff1_reg_0 : in STD_LOGIC;
    syncdff_ff1_reg_1 : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC;
    \r_reg[tailptr]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_11 : entity is "syncdff";
end syncdff_11;

architecture STRUCTURE of syncdff_11 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
\r[inbvalid]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => syncdff_ff2,
      I1 => \r_reg[tailptr]\(0),
      I2 => \r_reg[tailptr]\(1),
      I3 => \r_reg[inbvalid]\(0),
      I4 => \r_reg[tailptr]\(2),
      I5 => \r_reg[inbvalid]\(1),
      O => syncdff_ff2_reg_0
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_1,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1_reg_0,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_1,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_12 is
  port (
    \out\ : out STD_LOGIC;
    di : in STD_LOGIC;
    syncdff_ff1_reg_0 : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_12 : entity is "syncdff";
end syncdff_12;

architecture STRUCTURE of syncdff_12 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  \out\ <= syncdff_ff2;
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => di,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_13 is
  port (
    \out\ : out STD_LOGIC;
    \rrx_reg[headptr]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff1_reg_0 : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_13 : entity is "syncdff";
end syncdff_13;

architecture STRUCTURE of syncdff_13 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  \out\ <= syncdff_ff2;
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => \rrx_reg[headptr]\(0),
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_2 is
  port (
    \rtx_reg[f_spwso]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    txclk_IBUF_BUFG : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \rtx_reg[f_spwso]__0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \rtx_reg[f_spwdo]__0\ : in STD_LOGIC;
    \rtx_reg[txclken]__0\ : in STD_LOGIC;
    \rtx_reg[f_spwso]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_2 : entity is "syncdff";
end syncdff_2;

architecture STRUCTURE of syncdff_2 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
\rtx[f_spwso]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6900AA000000AA00"
    )
        port map (
      I0 => \rtx_reg[f_spwso]__0\,
      I1 => Q(0),
      I2 => \rtx_reg[f_spwdo]__0\,
      I3 => syncdff_ff2,
      I4 => \rtx_reg[txclken]__0\,
      I5 => \rtx_reg[f_spwso]_0\,
      O => \rtx_reg[f_spwso]\
    );
\rtx[txclken]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => syncdff_ff2,
      O => SR(0)
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => '1',
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_3 is
  port (
    \out\ : out STD_LOGIC;
    syncdff_ff2_reg_0 : out STD_LOGIC;
    \r_reg[sysflip0]__0\ : in STD_LOGIC;
    txclk_IBUF_BUFG : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \rtx_reg[b_update]__0\ : in STD_LOGIC;
    \rtx_reg[b_mux]__0\ : in STD_LOGIC;
    \rtx_reg[txflip0]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_3 : entity is "syncdff";
end syncdff_3;

architecture STRUCTURE of syncdff_3 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  \out\ <= syncdff_ff2;
\rtx[txflip0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => syncdff_ff2,
      I1 => \rtx_reg[b_update]__0\,
      I2 => \rtx_reg[b_mux]__0\,
      I3 => \rtx_reg[txflip0]\,
      O => syncdff_ff2_reg_0
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => \r_reg[sysflip0]__0\,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_4 is
  port (
    syncdff_ff2_reg_0 : out STD_LOGIC;
    syncdff_ff2_reg_1 : out STD_LOGIC;
    syncdff_ff2_reg_2 : out STD_LOGIC;
    \r_reg[sysflip1]__0\ : in STD_LOGIC;
    txclk_IBUF_BUFG : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \rtx_reg[b_update]__0\ : in STD_LOGIC;
    \rtx_reg[b_mux]__0\ : in STD_LOGIC;
    \rtx_reg[txflip1]\ : in STD_LOGIC;
    \rtx_reg[b_txflip]__0\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    \rtx_reg[b_valid]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_4 : entity is "syncdff";
end syncdff_4;

architecture STRUCTURE of syncdff_4 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
\rtx[b_mux]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99FF3C00"
    )
        port map (
      I0 => syncdff_ff2,
      I1 => \rtx_reg[b_txflip]__0\,
      I2 => \out\,
      I3 => \rtx_reg[b_update]__0\,
      I4 => \rtx_reg[b_mux]__0\,
      O => syncdff_ff2_reg_1
    );
\rtx[b_valid]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B78FFFF4B780000"
    )
        port map (
      I0 => syncdff_ff2,
      I1 => \rtx_reg[b_mux]__0\,
      I2 => \rtx_reg[b_txflip]__0\,
      I3 => \out\,
      I4 => \rtx_reg[b_update]__0\,
      I5 => \rtx_reg[b_valid]__0\,
      O => syncdff_ff2_reg_2
    );
\rtx[txflip1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => syncdff_ff2,
      I1 => \rtx_reg[b_update]__0\,
      I2 => \rtx_reg[b_mux]__0\,
      I3 => \rtx_reg[txflip1]\,
      O => syncdff_ff2_reg_0
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => \r_reg[sysflip1]__0\,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_5 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff1_reg_0 : in STD_LOGIC;
    txclk_IBUF_BUFG : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_5 : entity is "syncdff";
end syncdff_5;

architecture STRUCTURE of syncdff_5 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  E(0) <= syncdff_ff2;
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1_reg_0,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_6 is
  port (
    \out\ : out STD_LOGIC;
    \rtx_reg[c_bits][0]\ : out STD_LOGIC;
    \rtx_reg[c_bits][0]_0\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff2_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[txenreg]\ : in STD_LOGIC;
    txclk_IBUF_BUFG : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \rtx_reg[d_cnt10]\ : in STD_LOGIC;
    \rtx_reg[d_cnt10]_0\ : in STD_LOGIC;
    \rtx_reg[d_cnt10]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_6 : entity is "syncdff";
end syncdff_6;

architecture STRUCTURE of syncdff_6 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  \out\ <= syncdff_ff2;
\rtx[b_update]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => syncdff_ff2,
      O => syncdff_ff2_reg_0(0)
    );
\rtx[d_bits][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => syncdff_ff2,
      I1 => \rtx_reg[d_cnt10]_1\,
      I2 => \rtx_reg[d_cnt10]_0\,
      O => SR(0)
    );
\rtx[d_cnt10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \rtx_reg[d_cnt10]\,
      I1 => \rtx_reg[d_cnt10]_0\,
      I2 => \rtx_reg[d_cnt10]_1\,
      I3 => syncdff_ff2,
      O => \rtx_reg[c_bits][0]\
    );
\rtx[d_cnt4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \rtx_reg[d_cnt10]\,
      I1 => \rtx_reg[d_cnt10]_0\,
      I2 => \rtx_reg[d_cnt10]_1\,
      I3 => syncdff_ff2,
      O => \rtx_reg[c_bits][0]_0\
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => \r_reg[txenreg]\,
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      CLR => rst_logic_IBUF,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_7 is
  port (
    syncdff_ff2_reg_0 : out STD_LOGIC;
    rxclk_IBUF_BUFG : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_7 : entity is "syncdff";
end syncdff_7;

architecture STRUCTURE of syncdff_7 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
\rrx[c_val][1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => syncdff_ff2,
      O => syncdff_ff2_reg_0
    );
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => '1',
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_8 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rrx_reg[bitcnt]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff1_reg_0 : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_8 : entity is "syncdff";
end syncdff_8;

architecture STRUCTURE of syncdff_8 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  D(0) <= syncdff_ff2;
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => \rrx_reg[bitcnt]\(0),
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity syncdff_9 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \rrx_reg[bitcnt]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff1_reg_0 : in STD_LOGIC;
    \r_reg[rxdis]__0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of syncdff_9 : entity is "syncdff";
end syncdff_9;

architecture STRUCTURE of syncdff_9 is
  signal syncdff_ff1 : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncdff_ff1 : signal is "soft";
  attribute shift_extract : string;
  attribute shift_extract of syncdff_ff1 : signal is "NO";
  signal syncdff_ff2 : STD_LOGIC;
  attribute RTL_KEEP of syncdff_ff2 : signal is "soft";
  attribute shift_extract of syncdff_ff2 : signal is "NO";
  attribute KEEP : string;
  attribute KEEP of syncdff_ff1_reg : label is "yes";
  attribute RLOC : string;
  attribute RLOC of syncdff_ff1_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff1_reg : label is "NO";
  attribute KEEP of syncdff_ff2_reg : label is "yes";
  attribute RLOC of syncdff_ff2_reg : label is "X0Y0";
  attribute shift_extract of syncdff_ff2_reg : label is "NO";
begin
  D(0) <= syncdff_ff2;
syncdff_ff1_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => \rrx_reg[bitcnt]\(0),
      Q => syncdff_ff1
    );
syncdff_ff2_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg_0,
      CE => '1',
      CLR => \r_reg[rxdis]__0\,
      D => syncdff_ff1,
      Q => syncdff_ff2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unimacro_FIFO_DUALCLOCK_MACRO is
  port (
    WRCOUNT : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    v : out STD_LOGIC_VECTOR ( 10 downto 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_4\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_5\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_6\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_7\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_8\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_9\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_10\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_11\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_12\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_13\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_14\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_15\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_16\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_17\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_18\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_19\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_20\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_21\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_22\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_23\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_24\ : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_25\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_26\ : in STD_LOGIC;
    s_rxread : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_rx_rready_IBUF : in STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_27\ : in STD_LOGIC;
    s_rxvalid : in STD_LOGIC;
    L : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_rdcounter : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \s_fifo_elements_reg_reg[3]\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_0\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_1\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_0\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_1\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_2\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_3\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_4\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_5\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_6\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[10]_7\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_0\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_1\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_2\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_3\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_4\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_5\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_6\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_7\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_8\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_9\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[7]_10\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_2\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_3\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_4\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_5\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_6\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_7\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_8\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_9\ : in STD_LOGIC;
    \s_fifo_elements_reg_reg[3]_10\ : in STD_LOGIC
  );
end unimacro_FIFO_DUALCLOCK_MACRO;

architecture STRUCTURE of unimacro_FIFO_DUALCLOCK_MACRO is
  signal DOP : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^wrcount\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \bl.fifo_18_inst_bl.fifo_18_bl_i_1__0_n_0\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_0\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_1\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_10\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_11\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_12\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_13\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_14\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_15\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_16\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_17\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_18\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_19\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_2\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_3\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_30\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_31\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_32\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_33\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_34\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_35\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_36\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_37\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_38\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_39\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_4\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_40\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_41\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_42\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_43\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_44\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_45\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_46\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_47\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_48\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_49\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_5\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_50\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_51\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_52\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_53\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_54\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_55\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_56\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_57\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_58\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_59\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_6\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_60\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_61\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_65\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_7\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_8\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_9\ : STD_LOGIC;
  signal \calc_0.v[3]_C_i_6_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[10]_C_i_1_n_2\ : STD_LOGIC;
  signal \calc_0.v_reg[10]_C_i_1_n_3\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_C_i_1_n_1\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_C_i_1_n_2\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_C_i_1_n_3\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_C_i_1_n_1\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_C_i_1_n_2\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_C_i_1_n_3\ : STD_LOGIC;
  signal \NLW_calc_0.v_reg[10]_C_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_calc_0.v_reg[10]_C_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1__0\ : label is "soft_lutpair34";
  attribute box_type : string;
  attribute box_type of \bl.fifo_18_inst_bl.fifo_18_bl\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \calc_0.v_reg[0]_LDC_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \calc_0.v_reg[0]_LDC_i_2\ : label is "soft_lutpair48";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \calc_0.v_reg[10]_C_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \calc_0.v_reg[10]_LDC_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \calc_0.v_reg[10]_LDC_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \calc_0.v_reg[1]_LDC_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \calc_0.v_reg[1]_LDC_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \calc_0.v_reg[2]_LDC_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \calc_0.v_reg[2]_LDC_i_2\ : label is "soft_lutpair46";
  attribute ADDER_THRESHOLD of \calc_0.v_reg[3]_C_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \calc_0.v_reg[3]_LDC_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \calc_0.v_reg[3]_LDC_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \calc_0.v_reg[4]_LDC_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \calc_0.v_reg[4]_LDC_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \calc_0.v_reg[5]_LDC_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \calc_0.v_reg[5]_LDC_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \calc_0.v_reg[6]_LDC_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \calc_0.v_reg[6]_LDC_i_2\ : label is "soft_lutpair42";
  attribute ADDER_THRESHOLD of \calc_0.v_reg[7]_C_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \calc_0.v_reg[7]_LDC_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \calc_0.v_reg[7]_LDC_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \calc_0.v_reg[8]_LDC_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \calc_0.v_reg[8]_LDC_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \calc_0.v_reg[9]_LDC_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \calc_0.v_reg[9]_LDC_i_2\ : label is "soft_lutpair39";
begin
  WRCOUNT(9 downto 0) <= \^wrcount\(9 downto 0);
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_61\,
      I1 => L,
      I2 => Q(0),
      O => D(0)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_60\,
      I1 => L,
      I2 => Q(1),
      O => D(1)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_59\,
      I1 => L,
      I2 => Q(2),
      O => D(2)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_58\,
      I1 => L,
      I2 => Q(3),
      O => D(3)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_57\,
      I1 => L,
      I2 => Q(4),
      O => D(4)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_56\,
      I1 => L,
      I2 => Q(5),
      O => D(5)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_55\,
      I1 => L,
      I2 => Q(6),
      O => D(6)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_54\,
      I1 => L,
      I2 => Q(7),
      O => D(7)
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_65\,
      I1 => L,
      I2 => Q(8),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_1\(0)
    );
\bl.fifo_18_inst_bl.fifo_18_bl\: unisim.vcomponents.FIFO18E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0006",
      ALMOST_FULL_OFFSET => X"07F8",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_SYN => false,
      FIFO_MODE => "FIFO18",
      FIRST_WORD_FALL_THROUGH => true,
      INIT => X"000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000"
    )
        port map (
      ALMOSTEMPTY => \bl.fifo_18_inst_bl.fifo_18_bl_n_0\,
      ALMOSTFULL => \bl.fifo_18_inst_bl.fifo_18_bl_n_1\,
      DI(31 downto 8) => B"000000000000000000000000",
      DI(7 downto 0) => DOBDO(7 downto 0),
      DIP(3 downto 1) => B"000",
      DIP(0) => DOPBDOP(0),
      DO(31) => \bl.fifo_18_inst_bl.fifo_18_bl_n_30\,
      DO(30) => \bl.fifo_18_inst_bl.fifo_18_bl_n_31\,
      DO(29) => \bl.fifo_18_inst_bl.fifo_18_bl_n_32\,
      DO(28) => \bl.fifo_18_inst_bl.fifo_18_bl_n_33\,
      DO(27) => \bl.fifo_18_inst_bl.fifo_18_bl_n_34\,
      DO(26) => \bl.fifo_18_inst_bl.fifo_18_bl_n_35\,
      DO(25) => \bl.fifo_18_inst_bl.fifo_18_bl_n_36\,
      DO(24) => \bl.fifo_18_inst_bl.fifo_18_bl_n_37\,
      DO(23) => \bl.fifo_18_inst_bl.fifo_18_bl_n_38\,
      DO(22) => \bl.fifo_18_inst_bl.fifo_18_bl_n_39\,
      DO(21) => \bl.fifo_18_inst_bl.fifo_18_bl_n_40\,
      DO(20) => \bl.fifo_18_inst_bl.fifo_18_bl_n_41\,
      DO(19) => \bl.fifo_18_inst_bl.fifo_18_bl_n_42\,
      DO(18) => \bl.fifo_18_inst_bl.fifo_18_bl_n_43\,
      DO(17) => \bl.fifo_18_inst_bl.fifo_18_bl_n_44\,
      DO(16) => \bl.fifo_18_inst_bl.fifo_18_bl_n_45\,
      DO(15) => \bl.fifo_18_inst_bl.fifo_18_bl_n_46\,
      DO(14) => \bl.fifo_18_inst_bl.fifo_18_bl_n_47\,
      DO(13) => \bl.fifo_18_inst_bl.fifo_18_bl_n_48\,
      DO(12) => \bl.fifo_18_inst_bl.fifo_18_bl_n_49\,
      DO(11) => \bl.fifo_18_inst_bl.fifo_18_bl_n_50\,
      DO(10) => \bl.fifo_18_inst_bl.fifo_18_bl_n_51\,
      DO(9) => \bl.fifo_18_inst_bl.fifo_18_bl_n_52\,
      DO(8) => \bl.fifo_18_inst_bl.fifo_18_bl_n_53\,
      DO(7) => \bl.fifo_18_inst_bl.fifo_18_bl_n_54\,
      DO(6) => \bl.fifo_18_inst_bl.fifo_18_bl_n_55\,
      DO(5) => \bl.fifo_18_inst_bl.fifo_18_bl_n_56\,
      DO(4) => \bl.fifo_18_inst_bl.fifo_18_bl_n_57\,
      DO(3) => \bl.fifo_18_inst_bl.fifo_18_bl_n_58\,
      DO(2) => \bl.fifo_18_inst_bl.fifo_18_bl_n_59\,
      DO(1) => \bl.fifo_18_inst_bl.fifo_18_bl_n_60\,
      DO(0) => \bl.fifo_18_inst_bl.fifo_18_bl_n_61\,
      DOP(3 downto 1) => DOP(3 downto 1),
      DOP(0) => \bl.fifo_18_inst_bl.fifo_18_bl_n_65\,
      EMPTY => \bl.fifo_18_inst_bl.fifo_18_bl_n_2\,
      FULL => \bl.fifo_18_inst_bl.fifo_18_bl_n_3\,
      RDCLK => CLK,
      RDCOUNT(11) => \bl.fifo_18_inst_bl.fifo_18_bl_n_6\,
      RDCOUNT(10) => \bl.fifo_18_inst_bl.fifo_18_bl_n_7\,
      RDCOUNT(9) => \bl.fifo_18_inst_bl.fifo_18_bl_n_8\,
      RDCOUNT(8) => \bl.fifo_18_inst_bl.fifo_18_bl_n_9\,
      RDCOUNT(7) => \bl.fifo_18_inst_bl.fifo_18_bl_n_10\,
      RDCOUNT(6) => \bl.fifo_18_inst_bl.fifo_18_bl_n_11\,
      RDCOUNT(5) => \bl.fifo_18_inst_bl.fifo_18_bl_n_12\,
      RDCOUNT(4) => \bl.fifo_18_inst_bl.fifo_18_bl_n_13\,
      RDCOUNT(3) => \bl.fifo_18_inst_bl.fifo_18_bl_n_14\,
      RDCOUNT(2) => \bl.fifo_18_inst_bl.fifo_18_bl_n_15\,
      RDCOUNT(1) => \bl.fifo_18_inst_bl.fifo_18_bl_n_16\,
      RDCOUNT(0) => \bl.fifo_18_inst_bl.fifo_18_bl_n_17\,
      RDEN => \bl.fifo_18_inst_bl.fifo_18_bl_i_1__0_n_0\,
      RDERR => \bl.fifo_18_inst_bl.fifo_18_bl_n_4\,
      REGCE => '1',
      RST => rst_logic_IBUF,
      RSTREG => '1',
      WRCLK => \bl.fifo_18_inst_bl.fifo_18_bl_26\,
      WRCOUNT(11) => \bl.fifo_18_inst_bl.fifo_18_bl_n_18\,
      WRCOUNT(10) => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      WRCOUNT(9 downto 0) => \^wrcount\(9 downto 0),
      WREN => s_rxread,
      WRERR => \bl.fifo_18_inst_bl.fifo_18_bl_n_5\
    );
\bl.fifo_18_inst_bl.fifo_18_bl_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_2\,
      I1 => s01_axi_rx_rready_IBUF,
      I2 => \bl.fifo_18_inst_bl.fifo_18_bl_27\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_i_1__0_n_0\
    );
\calc_0.v[3]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2E2E21DE2E2E2"
    )
        port map (
      I0 => \s_fifo_elements_reg_reg[3]\,
      I1 => \s_fifo_elements_reg_reg[3]_0\,
      I2 => \s_fifo_elements_reg_reg[3]_1\,
      I3 => \bl.fifo_18_inst_bl.fifo_18_bl_27\,
      I4 => s01_axi_rx_rready_IBUF,
      I5 => \bl.fifo_18_inst_bl.fifo_18_bl_n_2\,
      O => \calc_0.v[3]_C_i_6_n_0\
    );
\calc_0.v_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(0),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_24\
    );
\calc_0.v_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(0),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_25\
    );
\calc_0.v_reg[10]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_0.v_reg[7]_C_i_1_n_0\,
      CO(3 downto 2) => \NLW_calc_0.v_reg[10]_C_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_0.v_reg[10]_C_i_1_n_2\,
      CO(0) => \calc_0.v_reg[10]_C_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_calc_0.v_reg[10]_C_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => v(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => s_rdcounter(10 downto 8)
    );
\calc_0.v_reg[10]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_4\
    );
\calc_0.v_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_5\
    );
\calc_0.v_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(1),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_22\
    );
\calc_0.v_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(1),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_23\
    );
\calc_0.v_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(2),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_20\
    );
\calc_0.v_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(2),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_21\
    );
\calc_0.v_reg[3]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_0.v_reg[3]_C_i_1_n_0\,
      CO(2) => \calc_0.v_reg[3]_C_i_1_n_1\,
      CO(1) => \calc_0.v_reg[3]_C_i_1_n_2\,
      CO(0) => \calc_0.v_reg[3]_C_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => s_rdcounter(0),
      O(3 downto 0) => v(3 downto 0),
      S(3 downto 1) => s_rdcounter(3 downto 1),
      S(0) => \calc_0.v[3]_C_i_6_n_0\
    );
\calc_0.v_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(3),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_18\
    );
\calc_0.v_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(3),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_19\
    );
\calc_0.v_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(4),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_16\
    );
\calc_0.v_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(4),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_17\
    );
\calc_0.v_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(5),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_14\
    );
\calc_0.v_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(5),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_15\
    );
\calc_0.v_reg[6]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(6),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_12\
    );
\calc_0.v_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(6),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_13\
    );
\calc_0.v_reg[7]_C_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_0.v_reg[3]_C_i_1_n_0\,
      CO(3) => \calc_0.v_reg[7]_C_i_1_n_0\,
      CO(2) => \calc_0.v_reg[7]_C_i_1_n_1\,
      CO(1) => \calc_0.v_reg[7]_C_i_1_n_2\,
      CO(0) => \calc_0.v_reg[7]_C_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => v(7 downto 4),
      S(3 downto 0) => s_rdcounter(7 downto 4)
    );
\calc_0.v_reg[7]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(7),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_10\
    );
\calc_0.v_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(7),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_11\
    );
\calc_0.v_reg[8]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(8),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_8\
    );
\calc_0.v_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(8),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_9\
    );
\calc_0.v_reg[9]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(9),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_6\
    );
\calc_0.v_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \^wrcount\(9),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_7\
    );
\s_fifo_elements_reg0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(7),
      I1 => \s_fifo_elements_reg_reg[7]\,
      I2 => \s_fifo_elements_reg_reg[7]_0\,
      I3 => \s_fifo_elements_reg_reg[7]_1\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(3)
    );
\s_fifo_elements_reg0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(6),
      I1 => \s_fifo_elements_reg_reg[7]_2\,
      I2 => \s_fifo_elements_reg_reg[7]_3\,
      I3 => \s_fifo_elements_reg_reg[7]_4\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(2)
    );
\s_fifo_elements_reg0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(5),
      I1 => \s_fifo_elements_reg_reg[7]_5\,
      I2 => \s_fifo_elements_reg_reg[7]_6\,
      I3 => \s_fifo_elements_reg_reg[7]_7\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(1)
    );
\s_fifo_elements_reg0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(4),
      I1 => \s_fifo_elements_reg_reg[7]_8\,
      I2 => \s_fifo_elements_reg_reg[7]_9\,
      I3 => \s_fifo_elements_reg_reg[7]_10\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(0)
    );
\s_fifo_elements_reg0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      I1 => \s_fifo_elements_reg_reg[10]\,
      I2 => \s_fifo_elements_reg_reg[10]_0\,
      I3 => \s_fifo_elements_reg_reg[10]_1\,
      O => S(2)
    );
\s_fifo_elements_reg0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(9),
      I1 => \s_fifo_elements_reg_reg[10]_2\,
      I2 => \s_fifo_elements_reg_reg[10]_3\,
      I3 => \s_fifo_elements_reg_reg[10]_4\,
      O => S(1)
    );
\s_fifo_elements_reg0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(8),
      I1 => \s_fifo_elements_reg_reg[10]_5\,
      I2 => \s_fifo_elements_reg_reg[10]_6\,
      I3 => \s_fifo_elements_reg_reg[10]_7\,
      O => S(0)
    );
s_fifo_elements_reg0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(3),
      I1 => \s_fifo_elements_reg_reg[3]_2\,
      I2 => \s_fifo_elements_reg_reg[3]_3\,
      I3 => \s_fifo_elements_reg_reg[3]_4\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_3\(3)
    );
s_fifo_elements_reg0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(2),
      I1 => \s_fifo_elements_reg_reg[3]_5\,
      I2 => \s_fifo_elements_reg_reg[3]_6\,
      I3 => \s_fifo_elements_reg_reg[3]_7\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_3\(2)
    );
s_fifo_elements_reg0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(1),
      I1 => \s_fifo_elements_reg_reg[3]_8\,
      I2 => \s_fifo_elements_reg_reg[3]_9\,
      I3 => \s_fifo_elements_reg_reg[3]_10\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_3\(1)
    );
s_fifo_elements_reg0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^wrcount\(0),
      I1 => \s_fifo_elements_reg_reg[3]\,
      I2 => \s_fifo_elements_reg_reg[3]_0\,
      I3 => \s_fifo_elements_reg_reg[3]_1\,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_3\(0)
    );
s_mem_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_3\,
      I1 => s_rxvalid,
      I2 => s_rxread,
      I3 => rst_logic_IBUF,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity unimacro_FIFO_DUALCLOCK_MACRO_14 is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \calc_0.v_reg[10]\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_3\ : in STD_LOGIC;
    s00_axi_tx_aclk_IBUF_BUFG : in STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_4\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \bl.fifo_18_inst_bl.fifo_18_bl_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    txflag_reg : in STD_LOGIC;
    s00_axi_tx_aresetn_IBUF : in STD_LOGIC;
    \calc_0.v_reg[10]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \calc_0.v_reg[4]\ : in STD_LOGIC;
    \calc_0.v_reg[5]\ : in STD_LOGIC;
    \calc_0.v_reg[6]\ : in STD_LOGIC;
    \calc_0.v_reg[9]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of unimacro_FIFO_DUALCLOCK_MACRO_14 : entity is "unimacro_FIFO_DUALCLOCK_MACRO";
end unimacro_FIFO_DUALCLOCK_MACRO_14;

architecture STRUCTURE of unimacro_FIFO_DUALCLOCK_MACRO_14 is
  signal DOP_0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_0\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_1\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_10\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_11\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_12\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_13\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_14\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_15\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_16\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_17\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_18\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_19\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_2\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_20\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_21\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_22\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_23\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_24\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_25\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_26\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_27\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_28\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_29\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_3\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_30\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_31\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_32\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_33\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_34\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_35\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_36\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_37\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_38\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_39\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_4\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_40\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_41\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_42\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_43\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_44\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_45\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_46\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_47\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_48\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_49\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_5\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_50\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_51\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_52\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_53\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_6\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_7\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_8\ : STD_LOGIC;
  signal \bl.fifo_18_inst_bl.fifo_18_bl_n_9\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \bl.fifo_18_inst_bl.fifo_18_bl\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bl.fifo_18_inst_bl.fifo_18_bl_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \calc_0.v[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \calc_0.v[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \calc_0.v[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_fifo_rden_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \txdata[7]_i_1\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
\bl.fifo_18_inst_bl.fifo_18_bl\: unisim.vcomponents.FIFO18E1
    generic map(
      ALMOST_EMPTY_OFFSET => X"0006",
      ALMOST_FULL_OFFSET => X"07F8",
      DATA_WIDTH => 9,
      DO_REG => 1,
      EN_SYN => false,
      FIFO_MODE => "FIFO18",
      FIRST_WORD_FALL_THROUGH => true,
      INIT => X"000000000",
      IS_RDCLK_INVERTED => '0',
      IS_RDEN_INVERTED => '0',
      IS_RSTREG_INVERTED => '0',
      IS_RST_INVERTED => '0',
      IS_WRCLK_INVERTED => '0',
      IS_WREN_INVERTED => '0',
      SIM_DEVICE => "7SERIES",
      SRVAL => X"000000000"
    )
        port map (
      ALMOSTEMPTY => \bl.fifo_18_inst_bl.fifo_18_bl_n_0\,
      ALMOSTFULL => \bl.fifo_18_inst_bl.fifo_18_bl_n_1\,
      DI(31 downto 8) => B"000000000000000000000000",
      DI(7 downto 0) => Q(7 downto 0),
      DIP(3 downto 1) => B"000",
      DIP(0) => \bl.fifo_18_inst_bl.fifo_18_bl_5\(0),
      DO(31) => \bl.fifo_18_inst_bl.fifo_18_bl_n_30\,
      DO(30) => \bl.fifo_18_inst_bl.fifo_18_bl_n_31\,
      DO(29) => \bl.fifo_18_inst_bl.fifo_18_bl_n_32\,
      DO(28) => \bl.fifo_18_inst_bl.fifo_18_bl_n_33\,
      DO(27) => \bl.fifo_18_inst_bl.fifo_18_bl_n_34\,
      DO(26) => \bl.fifo_18_inst_bl.fifo_18_bl_n_35\,
      DO(25) => \bl.fifo_18_inst_bl.fifo_18_bl_n_36\,
      DO(24) => \bl.fifo_18_inst_bl.fifo_18_bl_n_37\,
      DO(23) => \bl.fifo_18_inst_bl.fifo_18_bl_n_38\,
      DO(22) => \bl.fifo_18_inst_bl.fifo_18_bl_n_39\,
      DO(21) => \bl.fifo_18_inst_bl.fifo_18_bl_n_40\,
      DO(20) => \bl.fifo_18_inst_bl.fifo_18_bl_n_41\,
      DO(19) => \bl.fifo_18_inst_bl.fifo_18_bl_n_42\,
      DO(18) => \bl.fifo_18_inst_bl.fifo_18_bl_n_43\,
      DO(17) => \bl.fifo_18_inst_bl.fifo_18_bl_n_44\,
      DO(16) => \bl.fifo_18_inst_bl.fifo_18_bl_n_45\,
      DO(15) => \bl.fifo_18_inst_bl.fifo_18_bl_n_46\,
      DO(14) => \bl.fifo_18_inst_bl.fifo_18_bl_n_47\,
      DO(13) => \bl.fifo_18_inst_bl.fifo_18_bl_n_48\,
      DO(12) => \bl.fifo_18_inst_bl.fifo_18_bl_n_49\,
      DO(11) => \bl.fifo_18_inst_bl.fifo_18_bl_n_50\,
      DO(10) => \bl.fifo_18_inst_bl.fifo_18_bl_n_51\,
      DO(9) => \bl.fifo_18_inst_bl.fifo_18_bl_n_52\,
      DO(8) => \bl.fifo_18_inst_bl.fifo_18_bl_n_53\,
      DO(7 downto 0) => D(7 downto 0),
      DOP(3 downto 1) => DOP_0(3 downto 1),
      DOP(0) => DOP(0),
      EMPTY => \bl.fifo_18_inst_bl.fifo_18_bl_n_2\,
      FULL => \bl.fifo_18_inst_bl.fifo_18_bl_n_3\,
      RDCLK => CLK,
      RDCOUNT(11) => \bl.fifo_18_inst_bl.fifo_18_bl_n_6\,
      RDCOUNT(10) => \bl.fifo_18_inst_bl.fifo_18_bl_n_7\,
      RDCOUNT(9) => \bl.fifo_18_inst_bl.fifo_18_bl_n_8\,
      RDCOUNT(8) => \bl.fifo_18_inst_bl.fifo_18_bl_n_9\,
      RDCOUNT(7) => \bl.fifo_18_inst_bl.fifo_18_bl_n_10\,
      RDCOUNT(6) => \bl.fifo_18_inst_bl.fifo_18_bl_n_11\,
      RDCOUNT(5) => \bl.fifo_18_inst_bl.fifo_18_bl_n_12\,
      RDCOUNT(4) => \bl.fifo_18_inst_bl.fifo_18_bl_n_13\,
      RDCOUNT(3) => \bl.fifo_18_inst_bl.fifo_18_bl_n_14\,
      RDCOUNT(2) => \bl.fifo_18_inst_bl.fifo_18_bl_n_15\,
      RDCOUNT(1) => \bl.fifo_18_inst_bl.fifo_18_bl_n_16\,
      RDCOUNT(0) => \bl.fifo_18_inst_bl.fifo_18_bl_n_17\,
      RDEN => \bl.fifo_18_inst_bl.fifo_18_bl_3\,
      RDERR => \bl.fifo_18_inst_bl.fifo_18_bl_n_4\,
      REGCE => '1',
      RST => \^sr\(0),
      RSTREG => '1',
      WRCLK => s00_axi_tx_aclk_IBUF_BUFG,
      WRCOUNT(11) => \bl.fifo_18_inst_bl.fifo_18_bl_n_18\,
      WRCOUNT(10) => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      WRCOUNT(9) => \bl.fifo_18_inst_bl.fifo_18_bl_n_20\,
      WRCOUNT(8) => \bl.fifo_18_inst_bl.fifo_18_bl_n_21\,
      WRCOUNT(7) => \bl.fifo_18_inst_bl.fifo_18_bl_n_22\,
      WRCOUNT(6) => \bl.fifo_18_inst_bl.fifo_18_bl_n_23\,
      WRCOUNT(5) => \bl.fifo_18_inst_bl.fifo_18_bl_n_24\,
      WRCOUNT(4) => \bl.fifo_18_inst_bl.fifo_18_bl_n_25\,
      WRCOUNT(3) => \bl.fifo_18_inst_bl.fifo_18_bl_n_26\,
      WRCOUNT(2) => \bl.fifo_18_inst_bl.fifo_18_bl_n_27\,
      WRCOUNT(1) => \bl.fifo_18_inst_bl.fifo_18_bl_n_28\,
      WRCOUNT(0) => \bl.fifo_18_inst_bl.fifo_18_bl_n_29\,
      WREN => \bl.fifo_18_inst_bl.fifo_18_bl_4\,
      WRERR => \bl.fifo_18_inst_bl.fifo_18_bl_n_5\
    );
\bl.fifo_18_inst_bl.fifo_18_bl_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_tx_aresetn_IBUF,
      O => \^sr\(0)
    );
\calc_0.v[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_29\,
      I1 => \calc_0.v_reg[10]_0\(0),
      I2 => s00_axi_tx_aresetn_IBUF,
      O => \calc_0.v_reg[10]\(0)
    );
\calc_0.v[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(10),
      I1 => \calc_0.v_reg[9]\,
      I2 => \calc_0.v_reg[10]_0\(9),
      I3 => s00_axi_tx_aresetn_IBUF,
      I4 => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      O => \calc_0.v_reg[10]\(10)
    );
\calc_0.v[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(0),
      I1 => \calc_0.v_reg[10]_0\(1),
      I2 => s00_axi_tx_aresetn_IBUF,
      I3 => \bl.fifo_18_inst_bl.fifo_18_bl_n_28\,
      O => \calc_0.v_reg[10]\(1)
    );
\calc_0.v[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(2),
      I1 => \calc_0.v_reg[10]_0\(0),
      I2 => \calc_0.v_reg[10]_0\(1),
      I3 => s00_axi_tx_aresetn_IBUF,
      I4 => \bl.fifo_18_inst_bl.fifo_18_bl_n_27\,
      O => \calc_0.v_reg[10]\(2)
    );
\calc_0.v[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAFFFF6AAA0000"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(3),
      I1 => \calc_0.v_reg[10]_0\(1),
      I2 => \calc_0.v_reg[10]_0\(0),
      I3 => \calc_0.v_reg[10]_0\(2),
      I4 => s00_axi_tx_aresetn_IBUF,
      I5 => \bl.fifo_18_inst_bl.fifo_18_bl_n_26\,
      O => \calc_0.v_reg[10]\(3)
    );
\calc_0.v[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(4),
      I1 => \calc_0.v_reg[4]\,
      I2 => s00_axi_tx_aresetn_IBUF,
      I3 => \bl.fifo_18_inst_bl.fifo_18_bl_n_25\,
      O => \calc_0.v_reg[10]\(4)
    );
\calc_0.v[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(5),
      I1 => \calc_0.v_reg[5]\,
      I2 => s00_axi_tx_aresetn_IBUF,
      I3 => \bl.fifo_18_inst_bl.fifo_18_bl_n_24\,
      O => \calc_0.v_reg[10]\(5)
    );
\calc_0.v[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(6),
      I1 => \calc_0.v_reg[6]\,
      I2 => s00_axi_tx_aresetn_IBUF,
      I3 => \bl.fifo_18_inst_bl.fifo_18_bl_n_23\,
      O => \calc_0.v_reg[10]\(6)
    );
\calc_0.v[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AFF9A00"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(7),
      I1 => \calc_0.v_reg[6]\,
      I2 => \calc_0.v_reg[10]_0\(6),
      I3 => s00_axi_tx_aresetn_IBUF,
      I4 => \bl.fifo_18_inst_bl.fifo_18_bl_n_22\,
      O => \calc_0.v_reg[10]\(7)
    );
\calc_0.v[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF20FFFFDF200000"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(6),
      I1 => \calc_0.v_reg[6]\,
      I2 => \calc_0.v_reg[10]_0\(7),
      I3 => \calc_0.v_reg[10]_0\(8),
      I4 => s00_axi_tx_aresetn_IBUF,
      I5 => \bl.fifo_18_inst_bl.fifo_18_bl_n_21\,
      O => \calc_0.v_reg[10]\(8)
    );
\calc_0.v[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(9),
      I1 => \calc_0.v_reg[9]\,
      I2 => s00_axi_tx_aresetn_IBUF,
      I3 => \bl.fifo_18_inst_bl.fifo_18_bl_n_20\,
      O => \calc_0.v_reg[10]\(9)
    );
s_fifo_rden_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_2\,
      I1 => \bl.fifo_18_inst_bl.fifo_18_bl_3\,
      I2 => txflag_reg,
      I3 => s00_axi_tx_aresetn_IBUF,
      O => \bl.fifo_18_inst_bl.fifo_18_bl_0\
    );
\s_fifo_space_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_22\,
      I1 => \calc_0.v_reg[10]_0\(7),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_1\(3)
    );
\s_fifo_space_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_23\,
      I1 => \calc_0.v_reg[10]_0\(6),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_1\(2)
    );
\s_fifo_space_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_24\,
      I1 => \calc_0.v_reg[10]_0\(5),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_1\(1)
    );
\s_fifo_space_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_25\,
      I1 => \calc_0.v_reg[10]_0\(4),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_1\(0)
    );
\s_fifo_space_reg0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \calc_0.v_reg[10]_0\(10),
      I1 => \bl.fifo_18_inst_bl.fifo_18_bl_n_19\,
      O => S(2)
    );
\s_fifo_space_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_20\,
      I1 => \calc_0.v_reg[10]_0\(9),
      O => S(1)
    );
\s_fifo_space_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_21\,
      I1 => \calc_0.v_reg[10]_0\(8),
      O => S(0)
    );
s_fifo_space_reg0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_26\,
      I1 => \calc_0.v_reg[10]_0\(3),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(3)
    );
s_fifo_space_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_27\,
      I1 => \calc_0.v_reg[10]_0\(2),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(2)
    );
s_fifo_space_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_28\,
      I1 => \calc_0.v_reg[10]_0\(1),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(1)
    );
s_fifo_space_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \bl.fifo_18_inst_bl.fifo_18_bl_n_29\,
      I1 => \calc_0.v_reg[10]_0\(0),
      O => \bl.fifo_18_inst_bl.fifo_18_bl_2\(0)
    );
\txdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => txflag_reg,
      I1 => \bl.fifo_18_inst_bl.fifo_18_bl_3\,
      I2 => \bl.fifo_18_inst_bl.fifo_18_bl_n_2\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_SpaceWire_IP_v1_0_S00_AXI_TX is
  port (
    s_txwrite : out STD_LOGIC;
    DIPADIP : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_wready_OBUF : out STD_LOGIC;
    s00_axi_tx_awready_OBUF : out STD_LOGIC;
    s00_axi_tx_rvalid_OBUF : out STD_LOGIC;
    s00_axi_tx_arready_OBUF : out STD_LOGIC;
    s00_axi_tx_bvalid_OBUF : out STD_LOGIC;
    s00_axi_tx_rlast_OBUF : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_rdata_OBUF : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    s00_axi_tx_aclk_IBUF_BUFG : in STD_LOGIC;
    s00_axi_tx_aresetn_IBUF : in STD_LOGIC;
    s00_axi_tx_rready_IBUF : in STD_LOGIC;
    s00_axi_tx_awvalid_IBUF : in STD_LOGIC;
    s00_axi_tx_arvalid_IBUF : in STD_LOGIC;
    s00_axi_tx_wvalid_IBUF : in STD_LOGIC;
    s00_axi_tx_wstrb_IBUF : in STD_LOGIC_VECTOR ( 3 downto 0 );
    txflag_reg_0 : in STD_LOGIC;
    s00_axi_tx_wlast_IBUF : in STD_LOGIC;
    s00_axi_tx_awaddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_araddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_bready_IBUF : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_awburst_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_awlen_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_arburst_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_tx_wdata_IBUF : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end AXI_SpaceWire_IP_v1_0_S00_AXI_TX;

architecture STRUCTURE of AXI_SpaceWire_IP_v1_0_S00_AXI_TX is
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[10]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[11]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[12]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[13]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[14]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[15]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[9]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[16]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[17]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[18]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[19]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[20]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[21]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[22]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[23]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[24]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[25]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[26]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[27]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[28]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[29]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[30]\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[31]\ : STD_LOGIC;
  signal \BRAM_GEN[0].mem_wren\ : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_0 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_1 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_10 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_2 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_22 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_23 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_24 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_25 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_26 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_27 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_28 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_29 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_3 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_30 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_31 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_32 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_33 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_4 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_5 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_6 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_7 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_8 : STD_LOGIC;
  signal L : STD_LOGIC;
  signal RST : STD_LOGIC;
  signal axi_araddr1 : STD_LOGIC;
  signal axi_araddr13_out : STD_LOGIC;
  signal \axi_araddr3__3\ : STD_LOGIC;
  signal axi_araddr3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_7_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_i_8_n_0 : STD_LOGIC;
  signal axi_araddr3_carry_n_1 : STD_LOGIC;
  signal axi_araddr3_carry_n_2 : STD_LOGIC;
  signal axi_araddr3_carry_n_3 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_2_n_0\ : STD_LOGIC;
  signal axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_arlen_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal axi_arlen_cntr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_arlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_arready_i_1__0_n_0\ : STD_LOGIC;
  signal axi_arv_arr_flag : STD_LOGIC;
  signal axi_arv_arr_flag_i_1_n_0 : STD_LOGIC;
  signal axi_arv_arr_flag_i_2_n_0 : STD_LOGIC;
  signal axi_arv_arr_flag_i_3_n_0 : STD_LOGIC;
  signal axi_arv_arr_flag_i_4_n_0 : STD_LOGIC;
  signal axi_arv_arr_flag_i_5_n_0 : STD_LOGIC;
  signal axi_arv_arr_flag_i_6_n_0 : STD_LOGIC;
  signal axi_awaddr1 : STD_LOGIC;
  signal \axi_awaddr3__3\ : STD_LOGIC;
  signal axi_awaddr3_carry_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_2_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_3_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_4_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_5_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_6_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_7_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_i_8_n_0 : STD_LOGIC;
  signal axi_awaddr3_carry_n_1 : STD_LOGIC;
  signal axi_awaddr3_carry_n_2 : STD_LOGIC;
  signal axi_awaddr3_carry_n_3 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal axi_awburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_awlen_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awlen_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal axi_awlen_cntr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_awlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awlen_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_awready_i_1__0_n_0\ : STD_LOGIC;
  signal axi_awv_awr_flag : STD_LOGIC;
  signal axi_awv_awr_flag_i_1_n_0 : STD_LOGIC;
  signal \axi_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal axi_rlast0 : STD_LOGIC;
  signal axi_rlast_i_1_n_0 : STD_LOGIC;
  signal \axi_rvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_wready_i_1__0_n_0\ : STD_LOGIC;
  signal \calc_0.v[10]_i_3_n_0\ : STD_LOGIC;
  signal \calc_0.v[4]_i_2_n_0\ : STD_LOGIC;
  signal \calc_0.v[5]_i_2_n_0\ : STD_LOGIC;
  signal \calc_0.v[8]_i_2_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_11_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^s00_axi_tx_arready_obuf\ : STD_LOGIC;
  signal \^s00_axi_tx_awready_obuf\ : STD_LOGIC;
  signal \^s00_axi_tx_bvalid_obuf\ : STD_LOGIC;
  signal \^s00_axi_tx_rlast_obuf\ : STD_LOGIC;
  signal \^s00_axi_tx_rvalid_obuf\ : STD_LOGIC;
  signal \^s00_axi_tx_wready_obuf\ : STD_LOGIC;
  signal s_fifo_di : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_4\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_5\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_6\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__0_n_7\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__1_n_5\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__1_n_6\ : STD_LOGIC;
  signal \s_fifo_space_reg0_carry__1_n_7\ : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_0 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_1 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_2 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_3 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_4 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_5 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_6 : STD_LOGIC;
  signal s_fifo_space_reg0_carry_n_7 : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_fifo_space_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal s_fifo_wren_reg_n_0 : STD_LOGIC;
  signal \^s_txwrite\ : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal NLW_axi_araddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_awaddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_fifo_space_reg0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_fifo_space_reg0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1\ : label is "soft_lutpair16";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of axi_araddr3_carry : label is 11;
  attribute SOFT_HLUTNM of \axi_arlen_cntr[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[7]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_arready_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_arv_arr_flag_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of axi_arv_arr_flag_i_4 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of axi_arv_arr_flag_i_5 : label is "soft_lutpair8";
  attribute COMPARATOR_THRESHOLD of axi_awaddr3_carry : label is 11;
  attribute SOFT_HLUTNM of \axi_awaddr[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_awlen_cntr[7]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_rvalid_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \calc_0.v[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \calc_0.v[5]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[10]_inst_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[11]_inst_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[12]_inst_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[13]_inst_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[14]_inst_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[15]_inst_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[16]_inst_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[17]_inst_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[18]_inst_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[19]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[1]_inst_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[20]_inst_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[21]_inst_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[22]_inst_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[23]_inst_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[24]_inst_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[25]_inst_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[26]_inst_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[27]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[28]_inst_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[29]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[2]_inst_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[30]_inst_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[31]_inst_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[3]_inst_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[4]_inst_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[5]_inst_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[6]_inst_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[7]_inst_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[8]_inst_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s00_axi_tx_rdata_OBUF[9]_inst_i_1\ : label is "soft_lutpair29";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of s_fifo_space_reg0_carry : label is 35;
  attribute ADDER_THRESHOLD of \s_fifo_space_reg0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_fifo_space_reg0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of s_fifo_wren_i_1 : label is "soft_lutpair3";
begin
  s00_axi_tx_arready_OBUF <= \^s00_axi_tx_arready_obuf\;
  s00_axi_tx_awready_OBUF <= \^s00_axi_tx_awready_obuf\;
  s00_axi_tx_bvalid_OBUF <= \^s00_axi_tx_bvalid_obuf\;
  s00_axi_tx_rlast_OBUF <= \^s00_axi_tx_rlast_obuf\;
  s00_axi_tx_rvalid_OBUF <= \^s00_axi_tx_rvalid_obuf\;
  s00_axi_tx_wready_OBUF <= \^s00_axi_tx_wready_obuf\;
  s_txwrite <= \^s_txwrite\;
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[0]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[1]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[2]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[3]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[4]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[5]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[6]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[7]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][0]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(0),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][1]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(1),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][2]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(2),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][3]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(3),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][4]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(4),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][5]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(5),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][6]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(6),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out[0][7]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(7),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_tx_wstrb_IBUF(0),
      I1 => s00_axi_tx_wvalid_IBUF,
      I2 => \^s00_axi_tx_wready_obuf\,
      I3 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0\,
      O => s_fifo_di
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => L,
      I1 => axi_arv_arr_flag,
      I2 => axi_awv_awr_flag,
      I3 => \axi_awaddr_reg_n_0_[2]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(0),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(1),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(2),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(3),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(4),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(5),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(6),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => s_fifo_di,
      D => s00_axi_tx_wdata_IBUF(7),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[10]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[10]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => L,
      I1 => axi_arv_arr_flag,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[8]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \s_fifo_space_reg_reg_n_0_[9]\,
      I1 => L,
      I2 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[9]\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(2),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[11]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(3),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[12]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(4),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[13]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(5),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[14]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(6),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[15]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(7),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][8]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(0),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(1),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_tx_wstrb_IBUF(1),
      I1 => s00_axi_tx_wvalid_IBUF,
      I2 => \^s00_axi_tx_wready_obuf\,
      I3 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(10),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[10]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(11),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[11]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(12),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[12]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(13),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[13]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(14),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[14]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(15),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[15]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(8),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di[15]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(9),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[9]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[16]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(0),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[17]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(1),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[18]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(2),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[19]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(3),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[20]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(4),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[21]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(5),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[22]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(6),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0][23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[23]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(7),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_tx_wstrb_IBUF(2),
      I1 => s00_axi_tx_wvalid_IBUF,
      I2 => \^s00_axi_tx_wready_obuf\,
      I3 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(16),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[16]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(17),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[17]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(18),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[18]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(19),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[19]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(20),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[20]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(21),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[21]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(22),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[22]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di[23]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(23),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[2].s_fifo_di_reg_n_0_[23]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[24]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(0),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[25]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(1),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[26]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(2),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[27]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(3),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[28]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(4),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[29]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(5),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[30]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(6),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0][31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[31]\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(7),
      R => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][15]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_tx_wstrb_IBUF(3),
      I1 => s00_axi_tx_wvalid_IBUF,
      I2 => \^s00_axi_tx_wready_obuf\,
      I3 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di[7]_i_2_n_0\,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(24),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[24]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(25),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[25]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(26),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[26]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(27),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[27]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(28),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[28]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(29),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[29]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(30),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[30]\,
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di[31]_i_1_n_0\,
      D => s00_axi_tx_wdata_IBUF(31),
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[3].s_fifo_di_reg_n_0_[31]\,
      R => '0'
    );
FIFO_DUALCLOCK_MACRO_inst_TX: entity work.unimacro_FIFO_DUALCLOCK_MACRO_14
     port map (
      CLK => CLK,
      D(7) => FIFO_DUALCLOCK_MACRO_inst_TX_n_0,
      D(6) => FIFO_DUALCLOCK_MACRO_inst_TX_n_1,
      D(5) => FIFO_DUALCLOCK_MACRO_inst_TX_n_2,
      D(4) => FIFO_DUALCLOCK_MACRO_inst_TX_n_3,
      D(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_4,
      D(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_5,
      D(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_6,
      D(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_7,
      DOP(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_8,
      E(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      Q(7) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[7]\,
      Q(6) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[6]\,
      Q(5) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[5]\,
      Q(4) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[4]\,
      Q(3) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[3]\,
      Q(2) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[2]\,
      Q(1) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[1]\,
      Q(0) => \BRAM_GEN[0].BYTE_BRAM_GEN[0].s_fifo_di_reg_n_0_[0]\,
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_23,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_24,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_25,
      SR(0) => RST,
      \bl.fifo_18_inst_bl.fifo_18_bl_0\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_22,
      \bl.fifo_18_inst_bl.fifo_18_bl_1\(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_26,
      \bl.fifo_18_inst_bl.fifo_18_bl_1\(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_27,
      \bl.fifo_18_inst_bl.fifo_18_bl_1\(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_28,
      \bl.fifo_18_inst_bl.fifo_18_bl_1\(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_29,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_30,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_31,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_32,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_33,
      \bl.fifo_18_inst_bl.fifo_18_bl_3\ => \^s_txwrite\,
      \bl.fifo_18_inst_bl.fifo_18_bl_4\ => s_fifo_wren_reg_n_0,
      \bl.fifo_18_inst_bl.fifo_18_bl_5\(0) => \BRAM_GEN[0].BYTE_BRAM_GEN[1].s_fifo_di_reg_n_0_[8]\,
      \calc_0.v_reg[10]\(10 downto 0) => p_0_in(10 downto 0),
      \calc_0.v_reg[10]_0\(10 downto 0) => \calc_0.v_reg\(10 downto 0),
      \calc_0.v_reg[4]\ => \calc_0.v[4]_i_2_n_0\,
      \calc_0.v_reg[5]\ => \calc_0.v[5]_i_2_n_0\,
      \calc_0.v_reg[6]\ => \calc_0.v[8]_i_2_n_0\,
      \calc_0.v_reg[9]\ => \calc_0.v[10]_i_3_n_0\,
      s00_axi_tx_aclk_IBUF_BUFG => s00_axi_tx_aclk_IBUF_BUFG,
      s00_axi_tx_aresetn_IBUF => s00_axi_tx_aresetn_IBUF,
      txflag_reg => txflag_reg_0
    );
axi_araddr3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr3__3\,
      CO(2) => axi_araddr3_carry_n_1,
      CO(1) => axi_araddr3_carry_n_2,
      CO(0) => axi_araddr3_carry_n_3,
      CYINIT => '1',
      DI(3) => axi_araddr3_carry_i_1_n_0,
      DI(2) => axi_araddr3_carry_i_2_n_0,
      DI(1) => axi_araddr3_carry_i_3_n_0,
      DI(0) => axi_araddr3_carry_i_4_n_0,
      O(3 downto 0) => NLW_axi_araddr3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axi_araddr3_carry_i_5_n_0,
      S(2) => axi_araddr3_carry_i_6_n_0,
      S(1) => axi_araddr3_carry_i_7_n_0,
      S(0) => axi_araddr3_carry_i_8_n_0
    );
axi_araddr3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(7),
      I1 => \axi_arlen_reg_n_0_[7]\,
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => axi_araddr3_carry_i_1_n_0
    );
axi_araddr3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => \axi_arlen_reg_n_0_[5]\,
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => axi_araddr3_carry_i_2_n_0
    );
axi_araddr3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => axi_araddr3_carry_i_3_n_0
    );
axi_araddr3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => axi_arlen_cntr_reg(0),
      O => axi_araddr3_carry_i_4_n_0
    );
axi_araddr3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => axi_arlen_cntr_reg(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => axi_araddr3_carry_i_5_n_0
    );
axi_araddr3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => axi_arlen_cntr_reg(5),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => axi_araddr3_carry_i_6_n_0
    );
axi_araddr3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => axi_arlen_cntr_reg(3),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => axi_araddr3_carry_i_7_n_0
    );
axi_araddr3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => \axi_arlen_reg_n_0_[0]\,
      O => axi_araddr3_carry_i_8_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA03AAFFAAFCAA00"
    )
        port map (
      I0 => s00_axi_tx_araddr_IBUF(0),
      I1 => \axi_arlen_reg_n_0_[0]\,
      I2 => axi_arburst(0),
      I3 => axi_araddr13_out,
      I4 => \axi_araddr[2]_i_2_n_0\,
      I5 => L,
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => s00_axi_tx_rready_IBUF,
      I2 => \axi_araddr3__3\,
      I3 => axi_arburst(0),
      I4 => axi_arburst(1),
      O => \axi_araddr[2]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => L,
      R => RST
    );
\axi_arburst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => \axi_arburst_reg[1]_0\(0),
      Q => axi_arburst(0),
      R => RST
    );
\axi_arburst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => \axi_arburst_reg[1]_0\(1),
      Q => axi_arburst(1),
      R => RST
    );
\axi_arlen[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s00_axi_tx_arvalid_IBUF,
      I2 => \^s00_axi_tx_arready_obuf\,
      O => axi_araddr13_out
    );
\axi_arlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_arlen_cntr_reg(0),
      O => \axi_arlen_cntr[0]_i_1_n_0\
    );
\axi_arlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_arlen_cntr_reg(1),
      I1 => axi_arlen_cntr_reg(0),
      O => plusOp(1)
    );
\axi_arlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_arlen_cntr_reg(2),
      I1 => axi_arlen_cntr_reg(0),
      I2 => axi_arlen_cntr_reg(1),
      O => plusOp(2)
    );
\axi_arlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(3),
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => axi_arlen_cntr_reg(2),
      O => plusOp(3)
    );
\axi_arlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(4),
      I1 => axi_arlen_cntr_reg(2),
      I2 => axi_arlen_cntr_reg(0),
      I3 => axi_arlen_cntr_reg(1),
      I4 => axi_arlen_cntr_reg(3),
      O => plusOp(4)
    );
\axi_arlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => axi_arlen_cntr_reg(3),
      I2 => axi_arlen_cntr_reg(1),
      I3 => axi_arlen_cntr_reg(0),
      I4 => axi_arlen_cntr_reg(2),
      I5 => axi_arlen_cntr_reg(4),
      O => plusOp(5)
    );
\axi_arlen_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_arlen_cntr_reg(6),
      I1 => \axi_arlen_cntr[7]_i_4_n_0\,
      O => plusOp(6)
    );
\axi_arlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s00_axi_tx_arvalid_IBUF,
      I2 => \^s00_axi_tx_arready_obuf\,
      I3 => s00_axi_tx_aresetn_IBUF,
      O => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \axi_araddr3__3\,
      I1 => s00_axi_tx_rready_IBUF,
      I2 => \^s00_axi_tx_rvalid_obuf\,
      O => axi_araddr1
    );
\axi_arlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_arlen_cntr_reg(7),
      I1 => \axi_arlen_cntr[7]_i_4_n_0\,
      I2 => axi_arlen_cntr_reg(6),
      O => plusOp(7)
    );
\axi_arlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => axi_arlen_cntr_reg(3),
      I2 => axi_arlen_cntr_reg(1),
      I3 => axi_arlen_cntr_reg(0),
      I4 => axi_arlen_cntr_reg(2),
      I5 => axi_arlen_cntr_reg(4),
      O => \axi_arlen_cntr[7]_i_4_n_0\
    );
\axi_arlen_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => \axi_arlen_cntr[0]_i_1_n_0\,
      Q => axi_arlen_cntr_reg(0),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(1),
      Q => axi_arlen_cntr_reg(1),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(2),
      Q => axi_arlen_cntr_reg(2),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(3),
      Q => axi_arlen_cntr_reg(3),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(4),
      Q => axi_arlen_cntr_reg(4),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(5),
      Q => axi_arlen_cntr_reg(5),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(6),
      Q => axi_arlen_cntr_reg(6),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr1,
      D => plusOp(7),
      Q => axi_arlen_cntr_reg(7),
      R => \axi_arlen_cntr[7]_i_1_n_0\
    );
\axi_arlen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(0),
      Q => \axi_arlen_reg_n_0_[0]\,
      R => RST
    );
\axi_arlen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(1),
      Q => \axi_arlen_reg_n_0_[1]\,
      R => RST
    );
\axi_arlen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(2),
      Q => \axi_arlen_reg_n_0_[2]\,
      R => RST
    );
\axi_arlen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(3),
      Q => \axi_arlen_reg_n_0_[3]\,
      R => RST
    );
\axi_arlen_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(4),
      Q => \axi_arlen_reg_n_0_[4]\,
      R => RST
    );
\axi_arlen_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(5),
      Q => \axi_arlen_reg_n_0_[5]\,
      R => RST
    );
\axi_arlen_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(6),
      Q => \axi_arlen_reg_n_0_[6]\,
      R => RST
    );
\axi_arlen_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_araddr13_out,
      D => D(7),
      Q => \axi_arlen_reg_n_0_[7]\,
      R => RST
    );
\axi_arready_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => axi_arv_arr_flag,
      I2 => s00_axi_tx_arvalid_IBUF,
      I3 => \^s00_axi_tx_arready_obuf\,
      I4 => axi_arv_arr_flag_i_2_n_0,
      O => \axi_arready_i_1__0_n_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_arready_i_1__0_n_0\,
      Q => \^s00_axi_tx_arready_obuf\,
      R => RST
    );
axi_arv_arr_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50505350"
    )
        port map (
      I0 => axi_arv_arr_flag_i_2_n_0,
      I1 => axi_awv_awr_flag,
      I2 => axi_arv_arr_flag,
      I3 => s00_axi_tx_arvalid_IBUF,
      I4 => \^s00_axi_tx_arready_obuf\,
      O => axi_arv_arr_flag_i_1_n_0
    );
axi_arv_arr_flag_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_arv_arr_flag_i_3_n_0,
      I1 => axi_arv_arr_flag_i_4_n_0,
      I2 => axi_arv_arr_flag_i_5_n_0,
      I3 => axi_arv_arr_flag_i_6_n_0,
      I4 => s00_axi_tx_rready_IBUF,
      I5 => \^s00_axi_tx_rvalid_obuf\,
      O => axi_arv_arr_flag_i_2_n_0
    );
axi_arv_arr_flag_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => axi_arlen_cntr_reg(5),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => axi_arv_arr_flag_i_3_n_0
    );
axi_arv_arr_flag_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => \axi_arlen_reg_n_0_[0]\,
      O => axi_arv_arr_flag_i_4_n_0
    );
axi_arv_arr_flag_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => axi_arlen_cntr_reg(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => axi_arv_arr_flag_i_5_n_0
    );
axi_arv_arr_flag_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => axi_arlen_cntr_reg(3),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => axi_arv_arr_flag_i_6_n_0
    );
axi_arv_arr_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => axi_arv_arr_flag_i_1_n_0,
      Q => axi_arv_arr_flag,
      R => RST
    );
axi_awaddr3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_awaddr3__3\,
      CO(2) => axi_awaddr3_carry_n_1,
      CO(1) => axi_awaddr3_carry_n_2,
      CO(0) => axi_awaddr3_carry_n_3,
      CYINIT => '1',
      DI(3) => axi_awaddr3_carry_i_1_n_0,
      DI(2) => axi_awaddr3_carry_i_2_n_0,
      DI(1) => axi_awaddr3_carry_i_3_n_0,
      DI(0) => axi_awaddr3_carry_i_4_n_0,
      O(3 downto 0) => NLW_axi_awaddr3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axi_awaddr3_carry_i_5_n_0,
      S(2) => axi_awaddr3_carry_i_6_n_0,
      S(1) => axi_awaddr3_carry_i_7_n_0,
      S(0) => axi_awaddr3_carry_i_8_n_0
    );
axi_awaddr3_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(7),
      I1 => \axi_awlen_reg_n_0_[7]\,
      I2 => \axi_awlen_reg_n_0_[6]\,
      I3 => axi_awlen_cntr_reg(6),
      O => axi_awaddr3_carry_i_1_n_0
    );
axi_awaddr3_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(5),
      I1 => \axi_awlen_reg_n_0_[5]\,
      I2 => \axi_awlen_reg_n_0_[4]\,
      I3 => axi_awlen_cntr_reg(4),
      O => axi_awaddr3_carry_i_2_n_0
    );
axi_awaddr3_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(3),
      I1 => \axi_awlen_reg_n_0_[3]\,
      I2 => \axi_awlen_reg_n_0_[2]\,
      I3 => axi_awlen_cntr_reg(2),
      O => axi_awaddr3_carry_i_3_n_0
    );
axi_awaddr3_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_awlen_cntr_reg(1),
      I1 => \axi_awlen_reg_n_0_[1]\,
      I2 => \axi_awlen_reg_n_0_[0]\,
      I3 => axi_awlen_cntr_reg(0),
      O => axi_awaddr3_carry_i_4_n_0
    );
axi_awaddr3_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[7]\,
      I1 => axi_awlen_cntr_reg(7),
      I2 => \axi_awlen_reg_n_0_[6]\,
      I3 => axi_awlen_cntr_reg(6),
      O => axi_awaddr3_carry_i_5_n_0
    );
axi_awaddr3_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[5]\,
      I1 => axi_awlen_cntr_reg(5),
      I2 => \axi_awlen_reg_n_0_[4]\,
      I3 => axi_awlen_cntr_reg(4),
      O => axi_awaddr3_carry_i_6_n_0
    );
axi_awaddr3_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[3]\,
      I1 => axi_awlen_cntr_reg(3),
      I2 => \axi_awlen_reg_n_0_[2]\,
      I3 => axi_awlen_cntr_reg(2),
      O => axi_awaddr3_carry_i_7_n_0
    );
axi_awaddr3_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_awlen_reg_n_0_[1]\,
      I1 => axi_awlen_cntr_reg(1),
      I2 => axi_awlen_cntr_reg(0),
      I3 => \axi_awlen_reg_n_0_[0]\,
      O => axi_awaddr3_carry_i_8_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA03AAFFAAFCAA00"
    )
        port map (
      I0 => s00_axi_tx_awaddr_IBUF(0),
      I1 => \axi_awlen_reg_n_0_[0]\,
      I2 => axi_awburst(0),
      I3 => p_11_in,
      I4 => \axi_awaddr[2]_i_2_n_0\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => s00_axi_tx_wvalid_IBUF,
      I1 => \^s00_axi_tx_wready_obuf\,
      I2 => \axi_awaddr3__3\,
      I3 => axi_awburst(0),
      I4 => axi_awburst(1),
      O => \axi_awaddr[2]_i_2_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => RST
    );
\axi_awburst[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^s00_axi_tx_awready_obuf\,
      I1 => s00_axi_tx_awvalid_IBUF,
      I2 => axi_awv_awr_flag,
      O => p_11_in
    );
\axi_awburst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awburst_reg[1]_0\(0),
      Q => axi_awburst(0),
      R => RST
    );
\axi_awburst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awburst_reg[1]_0\(1),
      Q => axi_awburst(1),
      R => RST
    );
\axi_awlen_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_awlen_cntr_reg(0),
      O => \axi_awlen_cntr[0]_i_1_n_0\
    );
\axi_awlen_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_awlen_cntr_reg(1),
      I1 => axi_awlen_cntr_reg(0),
      O => \plusOp__0\(1)
    );
\axi_awlen_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_awlen_cntr_reg(2),
      I1 => axi_awlen_cntr_reg(0),
      I2 => axi_awlen_cntr_reg(1),
      O => \plusOp__0\(2)
    );
\axi_awlen_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => axi_awlen_cntr_reg(3),
      I1 => axi_awlen_cntr_reg(1),
      I2 => axi_awlen_cntr_reg(0),
      I3 => axi_awlen_cntr_reg(2),
      O => \plusOp__0\(3)
    );
\axi_awlen_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => axi_awlen_cntr_reg(4),
      I1 => axi_awlen_cntr_reg(2),
      I2 => axi_awlen_cntr_reg(0),
      I3 => axi_awlen_cntr_reg(1),
      I4 => axi_awlen_cntr_reg(3),
      O => \plusOp__0\(4)
    );
\axi_awlen_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => axi_awlen_cntr_reg(5),
      I1 => axi_awlen_cntr_reg(3),
      I2 => axi_awlen_cntr_reg(1),
      I3 => axi_awlen_cntr_reg(0),
      I4 => axi_awlen_cntr_reg(2),
      I5 => axi_awlen_cntr_reg(4),
      O => \plusOp__0\(5)
    );
\axi_awlen_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_awlen_cntr_reg(6),
      I1 => \axi_awlen_cntr[7]_i_4_n_0\,
      O => \plusOp__0\(6)
    );
\axi_awlen_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => s00_axi_tx_awvalid_IBUF,
      I2 => \^s00_axi_tx_awready_obuf\,
      I3 => s00_axi_tx_aresetn_IBUF,
      O => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \axi_awaddr3__3\,
      I1 => \^s00_axi_tx_wready_obuf\,
      I2 => s00_axi_tx_wvalid_IBUF,
      O => axi_awaddr1
    );
\axi_awlen_cntr[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_awlen_cntr_reg(7),
      I1 => \axi_awlen_cntr[7]_i_4_n_0\,
      I2 => axi_awlen_cntr_reg(6),
      O => \plusOp__0\(7)
    );
\axi_awlen_cntr[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_awlen_cntr_reg(5),
      I1 => axi_awlen_cntr_reg(3),
      I2 => axi_awlen_cntr_reg(1),
      I3 => axi_awlen_cntr_reg(0),
      I4 => axi_awlen_cntr_reg(2),
      I5 => axi_awlen_cntr_reg(4),
      O => \axi_awlen_cntr[7]_i_4_n_0\
    );
\axi_awlen_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \axi_awlen_cntr[0]_i_1_n_0\,
      Q => axi_awlen_cntr_reg(0),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(1),
      Q => axi_awlen_cntr_reg(1),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(2),
      Q => axi_awlen_cntr_reg(2),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(3),
      Q => axi_awlen_cntr_reg(3),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(4),
      Q => axi_awlen_cntr_reg(4),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(5),
      Q => axi_awlen_cntr_reg(5),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(6),
      Q => axi_awlen_cntr_reg(6),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => axi_awaddr1,
      D => \plusOp__0\(7),
      Q => axi_awlen_cntr_reg(7),
      R => \axi_awlen_cntr[7]_i_1_n_0\
    );
\axi_awlen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(0),
      Q => \axi_awlen_reg_n_0_[0]\,
      R => RST
    );
\axi_awlen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(1),
      Q => \axi_awlen_reg_n_0_[1]\,
      R => RST
    );
\axi_awlen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(2),
      Q => \axi_awlen_reg_n_0_[2]\,
      R => RST
    );
\axi_awlen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(3),
      Q => \axi_awlen_reg_n_0_[3]\,
      R => RST
    );
\axi_awlen_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(4),
      Q => \axi_awlen_reg_n_0_[4]\,
      R => RST
    );
\axi_awlen_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(5),
      Q => \axi_awlen_reg_n_0_[5]\,
      R => RST
    );
\axi_awlen_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(6),
      Q => \axi_awlen_reg_n_0_[6]\,
      R => RST
    );
\axi_awlen_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => p_11_in,
      D => \axi_awlen_reg[7]_0\(7),
      Q => \axi_awlen_reg_n_0_[7]\,
      R => RST
    );
\axi_awready_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDC001000100010"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => \^s00_axi_tx_awready_obuf\,
      I2 => s00_axi_tx_awvalid_IBUF,
      I3 => axi_awv_awr_flag,
      I4 => s00_axi_tx_wlast_IBUF,
      I5 => \^s00_axi_tx_wready_obuf\,
      O => \axi_awready_i_1__0_n_0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_awready_i_1__0_n_0\,
      Q => \^s00_axi_tx_awready_obuf\,
      R => RST
    );
axi_awv_awr_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777000F0000"
    )
        port map (
      I0 => s00_axi_tx_wlast_IBUF,
      I1 => \^s00_axi_tx_wready_obuf\,
      I2 => axi_arv_arr_flag,
      I3 => \^s00_axi_tx_awready_obuf\,
      I4 => s00_axi_tx_awvalid_IBUF,
      I5 => axi_awv_awr_flag,
      O => axi_awv_awr_flag_i_1_n_0
    );
axi_awv_awr_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => axi_awv_awr_flag_i_1_n_0,
      Q => axi_awv_awr_flag,
      R => RST
    );
\axi_bvalid_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s00_axi_tx_bready_IBUF,
      I1 => \^s00_axi_tx_bvalid_obuf\,
      I2 => axi_awv_awr_flag,
      I3 => s00_axi_tx_wvalid_IBUF,
      I4 => s00_axi_tx_wlast_IBUF,
      I5 => \^s00_axi_tx_wready_obuf\,
      O => \axi_bvalid_i_1__0_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_bvalid_i_1__0_n_0\,
      Q => \^s00_axi_tx_bvalid_obuf\,
      R => RST
    );
axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044044400"
    )
        port map (
      I0 => axi_araddr13_out,
      I1 => s00_axi_tx_aresetn_IBUF,
      I2 => s00_axi_tx_rready_IBUF,
      I3 => axi_rlast0,
      I4 => \^s00_axi_tx_rlast_obuf\,
      I5 => axi_araddr1,
      O => axi_rlast_i_1_n_0
    );
axi_rlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => axi_arv_arr_flag_i_3_n_0,
      I1 => axi_arv_arr_flag_i_4_n_0,
      I2 => axi_arv_arr_flag_i_5_n_0,
      I3 => axi_arv_arr_flag_i_6_n_0,
      I4 => axi_arv_arr_flag,
      I5 => \^s00_axi_tx_rlast_obuf\,
      O => axi_rlast0
    );
axi_rlast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => axi_rlast_i_1_n_0,
      Q => \^s00_axi_tx_rlast_obuf\,
      R => '0'
    );
\axi_rvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s00_axi_tx_rready_IBUF,
      I2 => \^s00_axi_tx_rvalid_obuf\,
      O => \axi_rvalid_i_1__0_n_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_rvalid_i_1__0_n_0\,
      Q => \^s00_axi_tx_rvalid_obuf\,
      R => RST
    );
\axi_wready_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => s00_axi_tx_wvalid_IBUF,
      I1 => axi_awv_awr_flag,
      I2 => s00_axi_tx_wlast_IBUF,
      I3 => \^s00_axi_tx_wready_obuf\,
      O => \axi_wready_i_1__0_n_0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \axi_wready_i_1__0_n_0\,
      Q => \^s00_axi_tx_wready_obuf\,
      R => RST
    );
\calc_0.v[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^s_txwrite\,
      I1 => s00_axi_tx_aresetn_IBUF,
      O => sel
    );
\calc_0.v[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \calc_0.v_reg\(8),
      I1 => \calc_0.v_reg\(7),
      I2 => \calc_0.v[8]_i_2_n_0\,
      I3 => \calc_0.v_reg\(6),
      O => \calc_0.v[10]_i_3_n_0\
    );
\calc_0.v[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \calc_0.v_reg\(2),
      I1 => \calc_0.v_reg\(0),
      I2 => \calc_0.v_reg\(1),
      I3 => \calc_0.v_reg\(3),
      O => \calc_0.v[4]_i_2_n_0\
    );
\calc_0.v[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \calc_0.v_reg\(3),
      I1 => \calc_0.v_reg\(1),
      I2 => \calc_0.v_reg\(0),
      I3 => \calc_0.v_reg\(2),
      I4 => \calc_0.v_reg\(4),
      O => \calc_0.v[5]_i_2_n_0\
    );
\calc_0.v[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \calc_0.v_reg\(4),
      I1 => \calc_0.v_reg\(2),
      I2 => \calc_0.v_reg\(0),
      I3 => \calc_0.v_reg\(1),
      I4 => \calc_0.v_reg\(3),
      I5 => \calc_0.v_reg\(5),
      O => \calc_0.v[8]_i_2_n_0\
    );
\calc_0.v_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(0),
      Q => \calc_0.v_reg\(0),
      R => '0'
    );
\calc_0.v_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(10),
      Q => \calc_0.v_reg\(10),
      R => '0'
    );
\calc_0.v_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(1),
      Q => \calc_0.v_reg\(1),
      R => '0'
    );
\calc_0.v_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(2),
      Q => \calc_0.v_reg\(2),
      R => '0'
    );
\calc_0.v_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(3),
      Q => \calc_0.v_reg\(3),
      R => '0'
    );
\calc_0.v_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(4),
      Q => \calc_0.v_reg\(4),
      R => '0'
    );
\calc_0.v_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(5),
      Q => \calc_0.v_reg\(5),
      R => '0'
    );
\calc_0.v_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(6),
      Q => \calc_0.v_reg\(6),
      R => '0'
    );
\calc_0.v_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(7),
      Q => \calc_0.v_reg\(7),
      R => '0'
    );
\calc_0.v_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(8),
      Q => \calc_0.v_reg\(8),
      R => '0'
    );
\calc_0.v_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => sel,
      D => p_0_in(9),
      Q => \calc_0.v_reg\(9),
      R => '0'
    );
\s00_axi_tx_rdata_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(0),
      O => s00_axi_tx_rdata_OBUF(0)
    );
\s00_axi_tx_rdata_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(2),
      O => s00_axi_tx_rdata_OBUF(10)
    );
\s00_axi_tx_rdata_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(3),
      O => s00_axi_tx_rdata_OBUF(11)
    );
\s00_axi_tx_rdata_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(4),
      O => s00_axi_tx_rdata_OBUF(12)
    );
\s00_axi_tx_rdata_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(5),
      O => s00_axi_tx_rdata_OBUF(13)
    );
\s00_axi_tx_rdata_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(6),
      O => s00_axi_tx_rdata_OBUF(14)
    );
\s00_axi_tx_rdata_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(7),
      O => s00_axi_tx_rdata_OBUF(15)
    );
\s00_axi_tx_rdata_OBUF[16]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(0),
      O => s00_axi_tx_rdata_OBUF(16)
    );
\s00_axi_tx_rdata_OBUF[17]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(1),
      O => s00_axi_tx_rdata_OBUF(17)
    );
\s00_axi_tx_rdata_OBUF[18]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(2),
      O => s00_axi_tx_rdata_OBUF(18)
    );
\s00_axi_tx_rdata_OBUF[19]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(3),
      O => s00_axi_tx_rdata_OBUF(19)
    );
\s00_axi_tx_rdata_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(1),
      O => s00_axi_tx_rdata_OBUF(1)
    );
\s00_axi_tx_rdata_OBUF[20]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(4),
      O => s00_axi_tx_rdata_OBUF(20)
    );
\s00_axi_tx_rdata_OBUF[21]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(5),
      O => s00_axi_tx_rdata_OBUF(21)
    );
\s00_axi_tx_rdata_OBUF[22]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(6),
      O => s00_axi_tx_rdata_OBUF(22)
    );
\s00_axi_tx_rdata_OBUF[23]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[2].mem_data_out_reg[0]_2\(7),
      O => s00_axi_tx_rdata_OBUF(23)
    );
\s00_axi_tx_rdata_OBUF[24]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(0),
      O => s00_axi_tx_rdata_OBUF(24)
    );
\s00_axi_tx_rdata_OBUF[25]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(1),
      O => s00_axi_tx_rdata_OBUF(25)
    );
\s00_axi_tx_rdata_OBUF[26]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(2),
      O => s00_axi_tx_rdata_OBUF(26)
    );
\s00_axi_tx_rdata_OBUF[27]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(3),
      O => s00_axi_tx_rdata_OBUF(27)
    );
\s00_axi_tx_rdata_OBUF[28]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(4),
      O => s00_axi_tx_rdata_OBUF(28)
    );
\s00_axi_tx_rdata_OBUF[29]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(5),
      O => s00_axi_tx_rdata_OBUF(29)
    );
\s00_axi_tx_rdata_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(2),
      O => s00_axi_tx_rdata_OBUF(2)
    );
\s00_axi_tx_rdata_OBUF[30]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(6),
      O => s00_axi_tx_rdata_OBUF(30)
    );
\s00_axi_tx_rdata_OBUF[31]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[3].mem_data_out_reg[0]_3\(7),
      O => s00_axi_tx_rdata_OBUF(31)
    );
\s00_axi_tx_rdata_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(3),
      O => s00_axi_tx_rdata_OBUF(3)
    );
\s00_axi_tx_rdata_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(4),
      O => s00_axi_tx_rdata_OBUF(4)
    );
\s00_axi_tx_rdata_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(5),
      O => s00_axi_tx_rdata_OBUF(5)
    );
\s00_axi_tx_rdata_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(6),
      O => s00_axi_tx_rdata_OBUF(6)
    );
\s00_axi_tx_rdata_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(7),
      O => s00_axi_tx_rdata_OBUF(7)
    );
\s00_axi_tx_rdata_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(0),
      O => s00_axi_tx_rdata_OBUF(8)
    );
\s00_axi_tx_rdata_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s00_axi_tx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(1),
      O => s00_axi_tx_rdata_OBUF(9)
    );
s_fifo_rden_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_22,
      Q => \^s_txwrite\,
      R => '0'
    );
s_fifo_space_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_fifo_space_reg0_carry_n_0,
      CO(2) => s_fifo_space_reg0_carry_n_1,
      CO(1) => s_fifo_space_reg0_carry_n_2,
      CO(0) => s_fifo_space_reg0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => \calc_0.v_reg\(3 downto 0),
      O(3) => s_fifo_space_reg0_carry_n_4,
      O(2) => s_fifo_space_reg0_carry_n_5,
      O(1) => s_fifo_space_reg0_carry_n_6,
      O(0) => s_fifo_space_reg0_carry_n_7,
      S(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_30,
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_31,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_32,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_33
    );
\s_fifo_space_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_fifo_space_reg0_carry_n_0,
      CO(3) => \s_fifo_space_reg0_carry__0_n_0\,
      CO(2) => \s_fifo_space_reg0_carry__0_n_1\,
      CO(1) => \s_fifo_space_reg0_carry__0_n_2\,
      CO(0) => \s_fifo_space_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \calc_0.v_reg\(7 downto 4),
      O(3) => \s_fifo_space_reg0_carry__0_n_4\,
      O(2) => \s_fifo_space_reg0_carry__0_n_5\,
      O(1) => \s_fifo_space_reg0_carry__0_n_6\,
      O(0) => \s_fifo_space_reg0_carry__0_n_7\,
      S(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_26,
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_27,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_28,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_29
    );
\s_fifo_space_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_fifo_space_reg0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_s_fifo_space_reg0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_fifo_space_reg0_carry__1_n_2\,
      CO(0) => \s_fifo_space_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \calc_0.v_reg\(9 downto 8),
      O(3) => \NLW_s_fifo_space_reg0_carry__1_O_UNCONNECTED\(3),
      O(2) => \s_fifo_space_reg0_carry__1_n_5\,
      O(1) => \s_fifo_space_reg0_carry__1_n_6\,
      O(0) => \s_fifo_space_reg0_carry__1_n_7\,
      S(3) => '0',
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_23,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_24,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_25
    );
\s_fifo_space_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => s_fifo_space_reg0_carry_n_7,
      Q => \s_fifo_space_reg_reg_n_0_[0]\,
      R => '0'
    );
\s_fifo_space_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__1_n_5\,
      Q => \s_fifo_space_reg_reg_n_0_[10]\,
      R => '0'
    );
\s_fifo_space_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => s_fifo_space_reg0_carry_n_6,
      Q => \s_fifo_space_reg_reg_n_0_[1]\,
      R => '0'
    );
\s_fifo_space_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => s_fifo_space_reg0_carry_n_5,
      Q => \s_fifo_space_reg_reg_n_0_[2]\,
      R => '0'
    );
\s_fifo_space_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => s_fifo_space_reg0_carry_n_4,
      Q => \s_fifo_space_reg_reg_n_0_[3]\,
      R => '0'
    );
\s_fifo_space_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__0_n_7\,
      Q => \s_fifo_space_reg_reg_n_0_[4]\,
      R => '0'
    );
\s_fifo_space_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__0_n_6\,
      Q => \s_fifo_space_reg_reg_n_0_[5]\,
      R => '0'
    );
\s_fifo_space_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__0_n_5\,
      Q => \s_fifo_space_reg_reg_n_0_[6]\,
      R => '0'
    );
\s_fifo_space_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__0_n_4\,
      Q => \s_fifo_space_reg_reg_n_0_[7]\,
      R => '0'
    );
\s_fifo_space_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__1_n_7\,
      Q => \s_fifo_space_reg_reg_n_0_[8]\,
      R => '0'
    );
\s_fifo_space_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_fifo_space_reg0_carry__1_n_6\,
      Q => \s_fifo_space_reg_reg_n_0_[9]\,
      R => '0'
    );
s_fifo_wren_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_tx_wvalid_IBUF,
      I1 => \^s00_axi_tx_wready_obuf\,
      O => \BRAM_GEN[0].mem_wren\
    );
s_fifo_wren_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \BRAM_GEN[0].mem_wren\,
      Q => s_fifo_wren_reg_n_0,
      R => RST
    );
s_mem_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_txwrite\,
      I1 => txflag_reg_0,
      O => WEA(0)
    );
\txdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_7,
      Q => Q(0),
      R => RST
    );
\txdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_6,
      Q => Q(1),
      R => RST
    );
\txdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_5,
      Q => Q(2),
      R => RST
    );
\txdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_4,
      Q => Q(3),
      R => RST
    );
\txdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_3,
      Q => Q(4),
      R => RST
    );
\txdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_2,
      Q => Q(5),
      R => RST
    );
\txdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_1,
      Q => Q(6),
      R => RST
    );
\txdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_0,
      Q => Q(7),
      R => RST
    );
txflag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => FIFO_DUALCLOCK_MACRO_inst_TX_n_10,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_8,
      Q => DIPADIP(0),
      R => RST
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_SpaceWire_IP_v1_0_S01_AXI_RX is
  port (
    s_rxread : out STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl\ : out STD_LOGIC;
    s01_axi_rx_wready_OBUF : out STD_LOGIC;
    s01_axi_rx_awready_OBUF : out STD_LOGIC;
    s01_axi_rx_arready_OBUF : out STD_LOGIC;
    s01_axi_rx_rvalid_OBUF : out STD_LOGIC;
    s01_axi_rx_bvalid_OBUF : out STD_LOGIC;
    s01_axi_rx_rlast_OBUF : out STD_LOGIC;
    s01_axi_rx_rdata_OBUF : out STD_LOGIC_VECTOR ( 10 downto 0 );
    CLK : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    \bl.fifo_18_inst_bl.fifo_18_bl_0\ : in STD_LOGIC;
    DOBDO : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : in STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_rx_aresetn_IBUF : in STD_LOGIC;
    s01_axi_rx_rready_IBUF : in STD_LOGIC;
    s01_axi_rx_arvalid_IBUF : in STD_LOGIC;
    s_rxvalid : in STD_LOGIC;
    s01_axi_rx_wvalid_IBUF : in STD_LOGIC;
    s01_axi_rx_wlast_IBUF : in STD_LOGIC;
    s01_axi_rx_awvalid_IBUF : in STD_LOGIC;
    s01_axi_rx_bready_IBUF : in STD_LOGIC;
    s01_axi_rx_araddr_IBUF : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \axi_arburst_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end AXI_SpaceWire_IP_v1_0_S01_AXI_RX;

architecture STRUCTURE of AXI_SpaceWire_IP_v1_0_S01_AXI_RX is
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0_n_0\ : STD_LOGIC;
  signal \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_0 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_1 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_11 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_12 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_13 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_14 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_15 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_16 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_17 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_18 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_19 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_2 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_3 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_31 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_32 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_33 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_34 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_35 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_36 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_37 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_38 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_39 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_4 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_40 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_41 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_42 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_43 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_44 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_45 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_46 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_47 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_48 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_49 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_5 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_50 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_51 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_52 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_53 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_54 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_55 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_56 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_57 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_58 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_59 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_6 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_60 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_61 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_62 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_63 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_7 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_8 : STD_LOGIC;
  signal FIFO_DUALCLOCK_MACRO_inst_TX_n_9 : STD_LOGIC;
  signal L : STD_LOGIC;
  signal RSTB : STD_LOGIC;
  signal axi_araddr1 : STD_LOGIC;
  signal axi_araddr12_out : STD_LOGIC;
  signal \axi_araddr3__3\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_6__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_7__0_n_0\ : STD_LOGIC;
  signal \axi_araddr3_carry_i_8__0_n_0\ : STD_LOGIC;
  signal axi_araddr3_carry_n_1 : STD_LOGIC;
  signal axi_araddr3_carry_n_2 : STD_LOGIC;
  signal axi_araddr3_carry_n_3 : STD_LOGIC;
  signal \axi_araddr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_2__0_n_0\ : STD_LOGIC;
  signal axi_arburst : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \axi_arlen_cntr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_arlen_cntr[7]_i_4__0_n_0\ : STD_LOGIC;
  signal axi_arlen_cntr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_arlen_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_arlen_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_arready_i_1__1_n_0\ : STD_LOGIC;
  signal axi_arv_arr_flag : STD_LOGIC;
  signal \axi_arv_arr_flag_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_arv_arr_flag_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_arv_arr_flag_i_3__0_n_0\ : STD_LOGIC;
  signal \axi_arv_arr_flag_i_4__0_n_0\ : STD_LOGIC;
  signal \axi_arv_arr_flag_i_5__0_n_0\ : STD_LOGIC;
  signal \axi_arv_arr_flag_i_6__0_n_0\ : STD_LOGIC;
  signal \axi_awready_i_1__1_n_0\ : STD_LOGIC;
  signal axi_awv_awr_flag : STD_LOGIC;
  signal \axi_awv_awr_flag_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_bvalid_i_1__1_n_0\ : STD_LOGIC;
  signal axi_rlast0 : STD_LOGIC;
  signal \axi_rlast_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rvalid_i_1__1_n_0\ : STD_LOGIC;
  signal \axi_wready_i_1__1_n_0\ : STD_LOGIC;
  signal \^bl.fifo_18_inst_bl.fifo_18_bl\ : STD_LOGIC;
  signal \calc_0.v_reg[0]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[0]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[10]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[10]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[1]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[1]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[2]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[2]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[3]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[4]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[4]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[5]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[5]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[6]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[6]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[7]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[8]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[8]_P_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[9]_C_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \calc_0.v_reg[9]_P_n_0\ : STD_LOGIC;
  signal \plusOp__1\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^s01_axi_rx_arready_obuf\ : STD_LOGIC;
  signal \^s01_axi_rx_awready_obuf\ : STD_LOGIC;
  signal \^s01_axi_rx_bvalid_obuf\ : STD_LOGIC;
  signal \^s01_axi_rx_rlast_obuf\ : STD_LOGIC;
  signal \^s01_axi_rx_rvalid_obuf\ : STD_LOGIC;
  signal \^s01_axi_rx_wready_obuf\ : STD_LOGIC;
  signal s_fifo_elements_reg0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \s_fifo_elements_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \s_fifo_elements_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \s_fifo_elements_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \s_fifo_elements_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \s_fifo_elements_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \s_fifo_elements_reg0_carry__1_n_3\ : STD_LOGIC;
  signal s_fifo_elements_reg0_carry_n_0 : STD_LOGIC;
  signal s_fifo_elements_reg0_carry_n_1 : STD_LOGIC;
  signal s_fifo_elements_reg0_carry_n_2 : STD_LOGIC;
  signal s_fifo_elements_reg0_carry_n_3 : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \s_fifo_elements_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal s_rdcounter : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^s_rxread\ : STD_LOGIC;
  signal v : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_axi_araddr3_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_s_fifo_elements_reg0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_s_fifo_elements_reg0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0\ : label is "soft_lutpair60";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of axi_araddr3_carry : label is 11;
  attribute SOFT_HLUTNM of \axi_arlen_cntr[0]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[1]_i_1__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[2]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[3]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[4]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \axi_arlen_cntr[7]_i_3__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_arready_i_1__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_arv_arr_flag_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \axi_arv_arr_flag_i_4__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \axi_arv_arr_flag_i_5__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \axi_rvalid_i_1__1\ : label is "soft_lutpair53";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[0]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[10]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[1]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[2]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[3]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[4]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[5]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[6]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[7]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[8]_LDC\ : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of \calc_0.v_reg[9]_LDC\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP of \calc_0.v_reg[9]_LDC\ : label is "VCC:GE";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[0]_inst_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[10]_inst_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[1]_inst_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[2]_inst_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[3]_inst_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[4]_inst_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[5]_inst_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[6]_inst_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[7]_inst_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[8]_inst_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s01_axi_rx_rdata_OBUF[9]_inst_i_1\ : label is "soft_lutpair55";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of s_fifo_elements_reg0_carry : label is 35;
  attribute ADDER_THRESHOLD of \s_fifo_elements_reg0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \s_fifo_elements_reg0_carry__1\ : label is 35;
begin
  \bl.fifo_18_inst_bl.fifo_18_bl\ <= \^bl.fifo_18_inst_bl.fifo_18_bl\;
  s01_axi_rx_arready_OBUF <= \^s01_axi_rx_arready_obuf\;
  s01_axi_rx_awready_OBUF <= \^s01_axi_rx_awready_obuf\;
  s01_axi_rx_bvalid_OBUF <= \^s01_axi_rx_bvalid_obuf\;
  s01_axi_rx_rlast_OBUF <= \^s01_axi_rx_rlast_obuf\;
  s01_axi_rx_rvalid_OBUF <= \^s01_axi_rx_rvalid_obuf\;
  s01_axi_rx_wready_OBUF <= \^s01_axi_rx_wready_obuf\;
  s_rxread <= \^s_rxread\;
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_18,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(0),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_17,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(1),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_16,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(2),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_15,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(3),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_14,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(4),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_13,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(5),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_12,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(6),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_11,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(7),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_fifo_elements_reg_reg_n_0_[10]\,
      I1 => L,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_fifo_elements_reg_reg_n_0_[9]\,
      I1 => L,
      O => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0_n_0\
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][10]_i_1__0_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(2),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => FIFO_DUALCLOCK_MACRO_inst_TX_n_19,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(0),
      R => '0'
    );
\BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_arv_arr_flag,
      D => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out[0][9]_i_1__0_n_0\,
      Q => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(1),
      R => '0'
    );
FIFO_DUALCLOCK_MACRO_inst_TX: entity work.unimacro_FIFO_DUALCLOCK_MACRO
     port map (
      CLK => CLK,
      D(7) => FIFO_DUALCLOCK_MACRO_inst_TX_n_11,
      D(6) => FIFO_DUALCLOCK_MACRO_inst_TX_n_12,
      D(5) => FIFO_DUALCLOCK_MACRO_inst_TX_n_13,
      D(4) => FIFO_DUALCLOCK_MACRO_inst_TX_n_14,
      D(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_15,
      D(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_16,
      D(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_17,
      D(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_18,
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPBDOP(0) => DOPBDOP(0),
      L => L,
      Q(8) => \s_fifo_elements_reg_reg_n_0_[8]\,
      Q(7) => \s_fifo_elements_reg_reg_n_0_[7]\,
      Q(6) => \s_fifo_elements_reg_reg_n_0_[6]\,
      Q(5) => \s_fifo_elements_reg_reg_n_0_[5]\,
      Q(4) => \s_fifo_elements_reg_reg_n_0_[4]\,
      Q(3) => \s_fifo_elements_reg_reg_n_0_[3]\,
      Q(2) => \s_fifo_elements_reg_reg_n_0_[2]\,
      Q(1) => \s_fifo_elements_reg_reg_n_0_[1]\,
      Q(0) => \s_fifo_elements_reg_reg_n_0_[0]\,
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_31,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_32,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_33,
      WRCOUNT(9) => FIFO_DUALCLOCK_MACRO_inst_TX_n_0,
      WRCOUNT(8) => FIFO_DUALCLOCK_MACRO_inst_TX_n_1,
      WRCOUNT(7) => FIFO_DUALCLOCK_MACRO_inst_TX_n_2,
      WRCOUNT(6) => FIFO_DUALCLOCK_MACRO_inst_TX_n_3,
      WRCOUNT(5) => FIFO_DUALCLOCK_MACRO_inst_TX_n_4,
      WRCOUNT(4) => FIFO_DUALCLOCK_MACRO_inst_TX_n_5,
      WRCOUNT(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_6,
      WRCOUNT(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_7,
      WRCOUNT(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_8,
      WRCOUNT(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_9,
      \bl.fifo_18_inst_bl.fifo_18_bl_0\ => \^bl.fifo_18_inst_bl.fifo_18_bl\,
      \bl.fifo_18_inst_bl.fifo_18_bl_1\(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_19,
      \bl.fifo_18_inst_bl.fifo_18_bl_10\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_48,
      \bl.fifo_18_inst_bl.fifo_18_bl_11\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_49,
      \bl.fifo_18_inst_bl.fifo_18_bl_12\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_50,
      \bl.fifo_18_inst_bl.fifo_18_bl_13\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_51,
      \bl.fifo_18_inst_bl.fifo_18_bl_14\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_52,
      \bl.fifo_18_inst_bl.fifo_18_bl_15\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_53,
      \bl.fifo_18_inst_bl.fifo_18_bl_16\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_54,
      \bl.fifo_18_inst_bl.fifo_18_bl_17\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_55,
      \bl.fifo_18_inst_bl.fifo_18_bl_18\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_56,
      \bl.fifo_18_inst_bl.fifo_18_bl_19\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_57,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_34,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_35,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_36,
      \bl.fifo_18_inst_bl.fifo_18_bl_2\(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_37,
      \bl.fifo_18_inst_bl.fifo_18_bl_20\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_58,
      \bl.fifo_18_inst_bl.fifo_18_bl_21\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_59,
      \bl.fifo_18_inst_bl.fifo_18_bl_22\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_60,
      \bl.fifo_18_inst_bl.fifo_18_bl_23\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_61,
      \bl.fifo_18_inst_bl.fifo_18_bl_24\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_62,
      \bl.fifo_18_inst_bl.fifo_18_bl_25\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_63,
      \bl.fifo_18_inst_bl.fifo_18_bl_26\ => \bl.fifo_18_inst_bl.fifo_18_bl_0\,
      \bl.fifo_18_inst_bl.fifo_18_bl_27\ => \^s01_axi_rx_rvalid_obuf\,
      \bl.fifo_18_inst_bl.fifo_18_bl_3\(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_38,
      \bl.fifo_18_inst_bl.fifo_18_bl_3\(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_39,
      \bl.fifo_18_inst_bl.fifo_18_bl_3\(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_40,
      \bl.fifo_18_inst_bl.fifo_18_bl_3\(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_41,
      \bl.fifo_18_inst_bl.fifo_18_bl_4\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_42,
      \bl.fifo_18_inst_bl.fifo_18_bl_5\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_43,
      \bl.fifo_18_inst_bl.fifo_18_bl_6\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_44,
      \bl.fifo_18_inst_bl.fifo_18_bl_7\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_45,
      \bl.fifo_18_inst_bl.fifo_18_bl_8\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_46,
      \bl.fifo_18_inst_bl.fifo_18_bl_9\ => FIFO_DUALCLOCK_MACRO_inst_TX_n_47,
      rst_logic_IBUF => rst_logic_IBUF,
      s01_axi_rx_rready_IBUF => s01_axi_rx_rready_IBUF,
      \s_fifo_elements_reg_reg[10]\ => \calc_0.v_reg[10]_C_n_0\,
      \s_fifo_elements_reg_reg[10]_0\ => \calc_0.v_reg[10]_LDC_n_0\,
      \s_fifo_elements_reg_reg[10]_1\ => \calc_0.v_reg[10]_P_n_0\,
      \s_fifo_elements_reg_reg[10]_2\ => \calc_0.v_reg[9]_C_n_0\,
      \s_fifo_elements_reg_reg[10]_3\ => \calc_0.v_reg[9]_LDC_n_0\,
      \s_fifo_elements_reg_reg[10]_4\ => \calc_0.v_reg[9]_P_n_0\,
      \s_fifo_elements_reg_reg[10]_5\ => \calc_0.v_reg[8]_C_n_0\,
      \s_fifo_elements_reg_reg[10]_6\ => \calc_0.v_reg[8]_LDC_n_0\,
      \s_fifo_elements_reg_reg[10]_7\ => \calc_0.v_reg[8]_P_n_0\,
      \s_fifo_elements_reg_reg[3]\ => \calc_0.v_reg[0]_C_n_0\,
      \s_fifo_elements_reg_reg[3]_0\ => \calc_0.v_reg[0]_LDC_n_0\,
      \s_fifo_elements_reg_reg[3]_1\ => \calc_0.v_reg[0]_P_n_0\,
      \s_fifo_elements_reg_reg[3]_10\ => \calc_0.v_reg[1]_P_n_0\,
      \s_fifo_elements_reg_reg[3]_2\ => \calc_0.v_reg[3]_C_n_0\,
      \s_fifo_elements_reg_reg[3]_3\ => \calc_0.v_reg[3]_LDC_n_0\,
      \s_fifo_elements_reg_reg[3]_4\ => \calc_0.v_reg[3]_P_n_0\,
      \s_fifo_elements_reg_reg[3]_5\ => \calc_0.v_reg[2]_C_n_0\,
      \s_fifo_elements_reg_reg[3]_6\ => \calc_0.v_reg[2]_LDC_n_0\,
      \s_fifo_elements_reg_reg[3]_7\ => \calc_0.v_reg[2]_P_n_0\,
      \s_fifo_elements_reg_reg[3]_8\ => \calc_0.v_reg[1]_C_n_0\,
      \s_fifo_elements_reg_reg[3]_9\ => \calc_0.v_reg[1]_LDC_n_0\,
      \s_fifo_elements_reg_reg[7]\ => \calc_0.v_reg[7]_C_n_0\,
      \s_fifo_elements_reg_reg[7]_0\ => \calc_0.v_reg[7]_LDC_n_0\,
      \s_fifo_elements_reg_reg[7]_1\ => \calc_0.v_reg[7]_P_n_0\,
      \s_fifo_elements_reg_reg[7]_10\ => \calc_0.v_reg[4]_P_n_0\,
      \s_fifo_elements_reg_reg[7]_2\ => \calc_0.v_reg[6]_C_n_0\,
      \s_fifo_elements_reg_reg[7]_3\ => \calc_0.v_reg[6]_LDC_n_0\,
      \s_fifo_elements_reg_reg[7]_4\ => \calc_0.v_reg[6]_P_n_0\,
      \s_fifo_elements_reg_reg[7]_5\ => \calc_0.v_reg[5]_C_n_0\,
      \s_fifo_elements_reg_reg[7]_6\ => \calc_0.v_reg[5]_LDC_n_0\,
      \s_fifo_elements_reg_reg[7]_7\ => \calc_0.v_reg[5]_P_n_0\,
      \s_fifo_elements_reg_reg[7]_8\ => \calc_0.v_reg[4]_C_n_0\,
      \s_fifo_elements_reg_reg[7]_9\ => \calc_0.v_reg[4]_LDC_n_0\,
      s_rdcounter(10 downto 0) => s_rdcounter(10 downto 0),
      s_rxread => \^s_rxread\,
      s_rxvalid => s_rxvalid,
      v(10 downto 0) => v(10 downto 0)
    );
axi_araddr3_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \axi_araddr3__3\,
      CO(2) => axi_araddr3_carry_n_1,
      CO(1) => axi_araddr3_carry_n_2,
      CO(0) => axi_araddr3_carry_n_3,
      CYINIT => '1',
      DI(3) => \axi_araddr3_carry_i_1__0_n_0\,
      DI(2) => \axi_araddr3_carry_i_2__0_n_0\,
      DI(1) => \axi_araddr3_carry_i_3__0_n_0\,
      DI(0) => \axi_araddr3_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_axi_araddr3_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \axi_araddr3_carry_i_5__0_n_0\,
      S(2) => \axi_araddr3_carry_i_6__0_n_0\,
      S(1) => \axi_araddr3_carry_i_7__0_n_0\,
      S(0) => \axi_araddr3_carry_i_8__0_n_0\
    );
\axi_araddr3_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(7),
      I1 => \axi_arlen_reg_n_0_[7]\,
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => \axi_araddr3_carry_i_1__0_n_0\
    );
\axi_araddr3_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => \axi_arlen_reg_n_0_[5]\,
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => \axi_araddr3_carry_i_2__0_n_0\
    );
\axi_araddr3_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(3),
      I1 => \axi_arlen_reg_n_0_[3]\,
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => \axi_araddr3_carry_i_3__0_n_0\
    );
\axi_araddr3_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"44D4"
    )
        port map (
      I0 => axi_arlen_cntr_reg(1),
      I1 => \axi_arlen_reg_n_0_[1]\,
      I2 => \axi_arlen_reg_n_0_[0]\,
      I3 => axi_arlen_cntr_reg(0),
      O => \axi_araddr3_carry_i_4__0_n_0\
    );
\axi_araddr3_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => axi_arlen_cntr_reg(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => \axi_araddr3_carry_i_5__0_n_0\
    );
\axi_araddr3_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => axi_arlen_cntr_reg(5),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => \axi_araddr3_carry_i_6__0_n_0\
    );
\axi_araddr3_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => axi_arlen_cntr_reg(3),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => \axi_araddr3_carry_i_7__0_n_0\
    );
\axi_araddr3_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => \axi_arlen_reg_n_0_[0]\,
      O => \axi_araddr3_carry_i_8__0_n_0\
    );
\axi_araddr[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA03AAFFAAFCAA00"
    )
        port map (
      I0 => s01_axi_rx_araddr_IBUF(0),
      I1 => \axi_arlen_reg_n_0_[0]\,
      I2 => axi_arburst(0),
      I3 => axi_araddr12_out,
      I4 => \axi_araddr[2]_i_2__0_n_0\,
      I5 => L,
      O => \axi_araddr[2]_i_1__0_n_0\
    );
\axi_araddr[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => s01_axi_rx_rready_IBUF,
      I2 => \axi_araddr3__3\,
      I3 => axi_arburst(0),
      I4 => axi_arburst(1),
      O => \axi_araddr[2]_i_2__0_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_araddr[2]_i_1__0_n_0\,
      Q => L,
      R => RSTB
    );
\axi_arburst_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => \axi_arburst_reg[1]_0\(0),
      Q => axi_arburst(0),
      R => RSTB
    );
\axi_arburst_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => \axi_arburst_reg[1]_0\(1),
      Q => axi_arburst(1),
      R => RSTB
    );
\axi_arlen[7]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s01_axi_rx_aresetn_IBUF,
      O => RSTB
    );
\axi_arlen[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s01_axi_rx_arvalid_IBUF,
      I2 => \^s01_axi_rx_arready_obuf\,
      O => axi_araddr12_out
    );
\axi_arlen_cntr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_arlen_cntr_reg(0),
      O => \axi_arlen_cntr[0]_i_1__0_n_0\
    );
\axi_arlen_cntr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_arlen_cntr_reg(1),
      I1 => axi_arlen_cntr_reg(0),
      O => \plusOp__1\(1)
    );
\axi_arlen_cntr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_arlen_cntr_reg(2),
      I1 => axi_arlen_cntr_reg(0),
      I2 => axi_arlen_cntr_reg(1),
      O => \plusOp__1\(2)
    );
\axi_arlen_cntr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(3),
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => axi_arlen_cntr_reg(2),
      O => \plusOp__1\(3)
    );
\axi_arlen_cntr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(4),
      I1 => axi_arlen_cntr_reg(2),
      I2 => axi_arlen_cntr_reg(0),
      I3 => axi_arlen_cntr_reg(1),
      I4 => axi_arlen_cntr_reg(3),
      O => \plusOp__1\(4)
    );
\axi_arlen_cntr[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => axi_arlen_cntr_reg(3),
      I2 => axi_arlen_cntr_reg(1),
      I3 => axi_arlen_cntr_reg(0),
      I4 => axi_arlen_cntr_reg(2),
      I5 => axi_arlen_cntr_reg(4),
      O => \plusOp__1\(5)
    );
\axi_arlen_cntr[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => axi_arlen_cntr_reg(6),
      I1 => \axi_arlen_cntr[7]_i_4__0_n_0\,
      O => \plusOp__1\(6)
    );
\axi_arlen_cntr[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s01_axi_rx_arvalid_IBUF,
      I2 => \^s01_axi_rx_arready_obuf\,
      I3 => s01_axi_rx_aresetn_IBUF,
      O => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr[7]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \axi_araddr3__3\,
      I1 => s01_axi_rx_rready_IBUF,
      I2 => \^s01_axi_rx_rvalid_obuf\,
      O => axi_araddr1
    );
\axi_arlen_cntr[7]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => axi_arlen_cntr_reg(7),
      I1 => \axi_arlen_cntr[7]_i_4__0_n_0\,
      I2 => axi_arlen_cntr_reg(6),
      O => \plusOp__1\(7)
    );
\axi_arlen_cntr[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axi_arlen_cntr_reg(5),
      I1 => axi_arlen_cntr_reg(3),
      I2 => axi_arlen_cntr_reg(1),
      I3 => axi_arlen_cntr_reg(0),
      I4 => axi_arlen_cntr_reg(2),
      I5 => axi_arlen_cntr_reg(4),
      O => \axi_arlen_cntr[7]_i_4__0_n_0\
    );
\axi_arlen_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \axi_arlen_cntr[0]_i_1__0_n_0\,
      Q => axi_arlen_cntr_reg(0),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(1),
      Q => axi_arlen_cntr_reg(1),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(2),
      Q => axi_arlen_cntr_reg(2),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(3),
      Q => axi_arlen_cntr_reg(3),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(4),
      Q => axi_arlen_cntr_reg(4),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(5),
      Q => axi_arlen_cntr_reg(5),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(6),
      Q => axi_arlen_cntr_reg(6),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr1,
      D => \plusOp__1\(7),
      Q => axi_arlen_cntr_reg(7),
      R => \axi_arlen_cntr[7]_i_1__0_n_0\
    );
\axi_arlen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(0),
      Q => \axi_arlen_reg_n_0_[0]\,
      R => RSTB
    );
\axi_arlen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(1),
      Q => \axi_arlen_reg_n_0_[1]\,
      R => RSTB
    );
\axi_arlen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(2),
      Q => \axi_arlen_reg_n_0_[2]\,
      R => RSTB
    );
\axi_arlen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(3),
      Q => \axi_arlen_reg_n_0_[3]\,
      R => RSTB
    );
\axi_arlen_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(4),
      Q => \axi_arlen_reg_n_0_[4]\,
      R => RSTB
    );
\axi_arlen_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(5),
      Q => \axi_arlen_reg_n_0_[5]\,
      R => RSTB
    );
\axi_arlen_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(6),
      Q => \axi_arlen_reg_n_0_[6]\,
      R => RSTB
    );
\axi_arlen_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => axi_araddr12_out,
      D => D(7),
      Q => \axi_arlen_reg_n_0_[7]\,
      R => RSTB
    );
\axi_arready_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => axi_awv_awr_flag,
      I1 => axi_arv_arr_flag,
      I2 => s01_axi_rx_arvalid_IBUF,
      I3 => \^s01_axi_rx_arready_obuf\,
      I4 => \axi_arv_arr_flag_i_2__0_n_0\,
      O => \axi_arready_i_1__1_n_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_arready_i_1__1_n_0\,
      Q => \^s01_axi_rx_arready_obuf\,
      R => RSTB
    );
\axi_arv_arr_flag_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50505350"
    )
        port map (
      I0 => \axi_arv_arr_flag_i_2__0_n_0\,
      I1 => axi_awv_awr_flag,
      I2 => axi_arv_arr_flag,
      I3 => s01_axi_rx_arvalid_IBUF,
      I4 => \^s01_axi_rx_arready_obuf\,
      O => \axi_arv_arr_flag_i_1__0_n_0\
    );
\axi_arv_arr_flag_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \axi_arv_arr_flag_i_3__0_n_0\,
      I1 => \axi_arv_arr_flag_i_4__0_n_0\,
      I2 => \axi_arv_arr_flag_i_5__0_n_0\,
      I3 => \axi_arv_arr_flag_i_6__0_n_0\,
      I4 => s01_axi_rx_rready_IBUF,
      I5 => \^s01_axi_rx_rvalid_obuf\,
      O => \axi_arv_arr_flag_i_2__0_n_0\
    );
\axi_arv_arr_flag_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[5]\,
      I1 => axi_arlen_cntr_reg(5),
      I2 => \axi_arlen_reg_n_0_[4]\,
      I3 => axi_arlen_cntr_reg(4),
      O => \axi_arv_arr_flag_i_3__0_n_0\
    );
\axi_arv_arr_flag_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[1]\,
      I1 => axi_arlen_cntr_reg(1),
      I2 => axi_arlen_cntr_reg(0),
      I3 => \axi_arlen_reg_n_0_[0]\,
      O => \axi_arv_arr_flag_i_4__0_n_0\
    );
\axi_arv_arr_flag_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[7]\,
      I1 => axi_arlen_cntr_reg(7),
      I2 => \axi_arlen_reg_n_0_[6]\,
      I3 => axi_arlen_cntr_reg(6),
      O => \axi_arv_arr_flag_i_5__0_n_0\
    );
\axi_arv_arr_flag_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \axi_arlen_reg_n_0_[3]\,
      I1 => axi_arlen_cntr_reg(3),
      I2 => \axi_arlen_reg_n_0_[2]\,
      I3 => axi_arlen_cntr_reg(2),
      O => \axi_arv_arr_flag_i_6__0_n_0\
    );
axi_arv_arr_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_arv_arr_flag_i_1__0_n_0\,
      Q => axi_arv_arr_flag,
      R => RSTB
    );
\axi_awready_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCDC001000100010"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => \^s01_axi_rx_awready_obuf\,
      I2 => s01_axi_rx_awvalid_IBUF,
      I3 => axi_awv_awr_flag,
      I4 => s01_axi_rx_wlast_IBUF,
      I5 => \^s01_axi_rx_wready_obuf\,
      O => \axi_awready_i_1__1_n_0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_awready_i_1__1_n_0\,
      Q => \^s01_axi_rx_awready_obuf\,
      R => RSTB
    );
\axi_awv_awr_flag_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77777777000F0000"
    )
        port map (
      I0 => s01_axi_rx_wlast_IBUF,
      I1 => \^s01_axi_rx_wready_obuf\,
      I2 => axi_arv_arr_flag,
      I3 => \^s01_axi_rx_awready_obuf\,
      I4 => s01_axi_rx_awvalid_IBUF,
      I5 => axi_awv_awr_flag,
      O => \axi_awv_awr_flag_i_1__0_n_0\
    );
axi_awv_awr_flag_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_awv_awr_flag_i_1__0_n_0\,
      Q => axi_awv_awr_flag,
      R => RSTB
    );
\axi_bvalid_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7444444444444444"
    )
        port map (
      I0 => s01_axi_rx_bready_IBUF,
      I1 => \^s01_axi_rx_bvalid_obuf\,
      I2 => axi_awv_awr_flag,
      I3 => s01_axi_rx_wvalid_IBUF,
      I4 => s01_axi_rx_wlast_IBUF,
      I5 => \^s01_axi_rx_wready_obuf\,
      O => \axi_bvalid_i_1__1_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_bvalid_i_1__1_n_0\,
      Q => \^s01_axi_rx_bvalid_obuf\,
      R => RSTB
    );
\axi_rlast_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044044400"
    )
        port map (
      I0 => axi_araddr12_out,
      I1 => s01_axi_rx_aresetn_IBUF,
      I2 => s01_axi_rx_rready_IBUF,
      I3 => axi_rlast0,
      I4 => \^s01_axi_rx_rlast_obuf\,
      I5 => axi_araddr1,
      O => \axi_rlast_i_1__0_n_0\
    );
\axi_rlast_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \axi_arv_arr_flag_i_3__0_n_0\,
      I1 => \axi_arv_arr_flag_i_4__0_n_0\,
      I2 => \axi_arv_arr_flag_i_5__0_n_0\,
      I3 => \axi_arv_arr_flag_i_6__0_n_0\,
      I4 => axi_arv_arr_flag,
      I5 => \^s01_axi_rx_rlast_obuf\,
      O => axi_rlast0
    );
axi_rlast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_rlast_i_1__0_n_0\,
      Q => \^s01_axi_rx_rlast_obuf\,
      R => '0'
    );
\axi_rvalid_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => axi_arv_arr_flag,
      I1 => s01_axi_rx_rready_IBUF,
      I2 => \^s01_axi_rx_rvalid_obuf\,
      O => \axi_rvalid_i_1__1_n_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_rvalid_i_1__1_n_0\,
      Q => \^s01_axi_rx_rvalid_obuf\,
      R => RSTB
    );
\axi_wready_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F88"
    )
        port map (
      I0 => s01_axi_rx_wvalid_IBUF,
      I1 => axi_awv_awr_flag,
      I2 => s01_axi_rx_wlast_IBUF,
      I3 => \^s01_axi_rx_wready_obuf\,
      O => \axi_wready_i_1__1_n_0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \axi_wready_i_1__1_n_0\,
      Q => \^s01_axi_rx_wready_obuf\,
      R => RSTB
    );
\calc_0.v[10]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[10]_P_n_0\,
      I1 => \calc_0.v_reg[10]_LDC_n_0\,
      I2 => \calc_0.v_reg[10]_C_n_0\,
      O => s_rdcounter(10)
    );
\calc_0.v[10]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[9]_P_n_0\,
      I1 => \calc_0.v_reg[9]_LDC_n_0\,
      I2 => \calc_0.v_reg[9]_C_n_0\,
      O => s_rdcounter(9)
    );
\calc_0.v[10]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[8]_P_n_0\,
      I1 => \calc_0.v_reg[8]_LDC_n_0\,
      I2 => \calc_0.v_reg[8]_C_n_0\,
      O => s_rdcounter(8)
    );
\calc_0.v[3]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[0]_P_n_0\,
      I1 => \calc_0.v_reg[0]_LDC_n_0\,
      I2 => \calc_0.v_reg[0]_C_n_0\,
      O => s_rdcounter(0)
    );
\calc_0.v[3]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[3]_P_n_0\,
      I1 => \calc_0.v_reg[3]_LDC_n_0\,
      I2 => \calc_0.v_reg[3]_C_n_0\,
      O => s_rdcounter(3)
    );
\calc_0.v[3]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[2]_P_n_0\,
      I1 => \calc_0.v_reg[2]_LDC_n_0\,
      I2 => \calc_0.v_reg[2]_C_n_0\,
      O => s_rdcounter(2)
    );
\calc_0.v[3]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[1]_P_n_0\,
      I1 => \calc_0.v_reg[1]_LDC_n_0\,
      I2 => \calc_0.v_reg[1]_C_n_0\,
      O => s_rdcounter(1)
    );
\calc_0.v[7]_C_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[7]_P_n_0\,
      I1 => \calc_0.v_reg[7]_LDC_n_0\,
      I2 => \calc_0.v_reg[7]_C_n_0\,
      O => s_rdcounter(7)
    );
\calc_0.v[7]_C_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[6]_P_n_0\,
      I1 => \calc_0.v_reg[6]_LDC_n_0\,
      I2 => \calc_0.v_reg[6]_C_n_0\,
      O => s_rdcounter(6)
    );
\calc_0.v[7]_C_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[5]_P_n_0\,
      I1 => \calc_0.v_reg[5]_LDC_n_0\,
      I2 => \calc_0.v_reg[5]_C_n_0\,
      O => s_rdcounter(5)
    );
\calc_0.v[7]_C_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_0.v_reg[4]_P_n_0\,
      I1 => \calc_0.v_reg[4]_LDC_n_0\,
      I2 => \calc_0.v_reg[4]_C_n_0\,
      O => s_rdcounter(4)
    );
\calc_0.v_reg[0]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_63,
      D => v(0),
      Q => \calc_0.v_reg[0]_C_n_0\
    );
\calc_0.v_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_63,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_62,
      GE => '1',
      Q => \calc_0.v_reg[0]_LDC_n_0\
    );
\calc_0.v_reg[0]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(0),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_62,
      Q => \calc_0.v_reg[0]_P_n_0\
    );
\calc_0.v_reg[10]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_43,
      D => v(10),
      Q => \calc_0.v_reg[10]_C_n_0\
    );
\calc_0.v_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_43,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_42,
      GE => '1',
      Q => \calc_0.v_reg[10]_LDC_n_0\
    );
\calc_0.v_reg[10]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(10),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_42,
      Q => \calc_0.v_reg[10]_P_n_0\
    );
\calc_0.v_reg[1]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_61,
      D => v(1),
      Q => \calc_0.v_reg[1]_C_n_0\
    );
\calc_0.v_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_61,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_60,
      GE => '1',
      Q => \calc_0.v_reg[1]_LDC_n_0\
    );
\calc_0.v_reg[1]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(1),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_60,
      Q => \calc_0.v_reg[1]_P_n_0\
    );
\calc_0.v_reg[2]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_59,
      D => v(2),
      Q => \calc_0.v_reg[2]_C_n_0\
    );
\calc_0.v_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_59,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_58,
      GE => '1',
      Q => \calc_0.v_reg[2]_LDC_n_0\
    );
\calc_0.v_reg[2]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(2),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_58,
      Q => \calc_0.v_reg[2]_P_n_0\
    );
\calc_0.v_reg[3]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_57,
      D => v(3),
      Q => \calc_0.v_reg[3]_C_n_0\
    );
\calc_0.v_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_57,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_56,
      GE => '1',
      Q => \calc_0.v_reg[3]_LDC_n_0\
    );
\calc_0.v_reg[3]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(3),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_56,
      Q => \calc_0.v_reg[3]_P_n_0\
    );
\calc_0.v_reg[4]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_55,
      D => v(4),
      Q => \calc_0.v_reg[4]_C_n_0\
    );
\calc_0.v_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_55,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_54,
      GE => '1',
      Q => \calc_0.v_reg[4]_LDC_n_0\
    );
\calc_0.v_reg[4]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(4),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_54,
      Q => \calc_0.v_reg[4]_P_n_0\
    );
\calc_0.v_reg[5]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_53,
      D => v(5),
      Q => \calc_0.v_reg[5]_C_n_0\
    );
\calc_0.v_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_53,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_52,
      GE => '1',
      Q => \calc_0.v_reg[5]_LDC_n_0\
    );
\calc_0.v_reg[5]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(5),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_52,
      Q => \calc_0.v_reg[5]_P_n_0\
    );
\calc_0.v_reg[6]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_51,
      D => v(6),
      Q => \calc_0.v_reg[6]_C_n_0\
    );
\calc_0.v_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_51,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_50,
      GE => '1',
      Q => \calc_0.v_reg[6]_LDC_n_0\
    );
\calc_0.v_reg[6]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(6),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_50,
      Q => \calc_0.v_reg[6]_P_n_0\
    );
\calc_0.v_reg[7]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_49,
      D => v(7),
      Q => \calc_0.v_reg[7]_C_n_0\
    );
\calc_0.v_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_49,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_48,
      GE => '1',
      Q => \calc_0.v_reg[7]_LDC_n_0\
    );
\calc_0.v_reg[7]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(7),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_48,
      Q => \calc_0.v_reg[7]_P_n_0\
    );
\calc_0.v_reg[8]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_47,
      D => v(8),
      Q => \calc_0.v_reg[8]_C_n_0\
    );
\calc_0.v_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_47,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_46,
      GE => '1',
      Q => \calc_0.v_reg[8]_LDC_n_0\
    );
\calc_0.v_reg[8]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(8),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_46,
      Q => \calc_0.v_reg[8]_P_n_0\
    );
\calc_0.v_reg[9]_C\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_45,
      D => v(9),
      Q => \calc_0.v_reg[9]_C_n_0\
    );
\calc_0.v_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => FIFO_DUALCLOCK_MACRO_inst_TX_n_45,
      D => '1',
      G => FIFO_DUALCLOCK_MACRO_inst_TX_n_44,
      GE => '1',
      Q => \calc_0.v_reg[9]_LDC_n_0\
    );
\calc_0.v_reg[9]_P\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => v(9),
      PRE => FIFO_DUALCLOCK_MACRO_inst_TX_n_44,
      Q => \calc_0.v_reg[9]_P_n_0\
    );
\s01_axi_rx_rdata_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(0),
      O => s01_axi_rx_rdata_OBUF(0)
    );
\s01_axi_rx_rdata_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(2),
      O => s01_axi_rx_rdata_OBUF(10)
    );
\s01_axi_rx_rdata_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(1),
      O => s01_axi_rx_rdata_OBUF(1)
    );
\s01_axi_rx_rdata_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(2),
      O => s01_axi_rx_rdata_OBUF(2)
    );
\s01_axi_rx_rdata_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(3),
      O => s01_axi_rx_rdata_OBUF(3)
    );
\s01_axi_rx_rdata_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(4),
      O => s01_axi_rx_rdata_OBUF(4)
    );
\s01_axi_rx_rdata_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(5),
      O => s01_axi_rx_rdata_OBUF(5)
    );
\s01_axi_rx_rdata_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(6),
      O => s01_axi_rx_rdata_OBUF(6)
    );
\s01_axi_rx_rdata_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[0].mem_data_out_reg[0]_0\(7),
      O => s01_axi_rx_rdata_OBUF(7)
    );
\s01_axi_rx_rdata_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(0),
      O => s01_axi_rx_rdata_OBUF(8)
    );
\s01_axi_rx_rdata_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^s01_axi_rx_rvalid_obuf\,
      I1 => \BRAM_GEN[0].BYTE_BRAM_GEN[1].mem_data_out_reg[0]_1\(1),
      O => s01_axi_rx_rdata_OBUF(9)
    );
s_fifo_elements_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => s_fifo_elements_reg0_carry_n_0,
      CO(2) => s_fifo_elements_reg0_carry_n_1,
      CO(1) => s_fifo_elements_reg0_carry_n_2,
      CO(0) => s_fifo_elements_reg0_carry_n_3,
      CYINIT => '1',
      DI(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_6,
      DI(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_7,
      DI(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_8,
      DI(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_9,
      O(3 downto 0) => s_fifo_elements_reg0(3 downto 0),
      S(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_38,
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_39,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_40,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_41
    );
\s_fifo_elements_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => s_fifo_elements_reg0_carry_n_0,
      CO(3) => \s_fifo_elements_reg0_carry__0_n_0\,
      CO(2) => \s_fifo_elements_reg0_carry__0_n_1\,
      CO(1) => \s_fifo_elements_reg0_carry__0_n_2\,
      CO(0) => \s_fifo_elements_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_2,
      DI(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_3,
      DI(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_4,
      DI(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_5,
      O(3 downto 0) => s_fifo_elements_reg0(7 downto 4),
      S(3) => FIFO_DUALCLOCK_MACRO_inst_TX_n_34,
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_35,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_36,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_37
    );
\s_fifo_elements_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \s_fifo_elements_reg0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_s_fifo_elements_reg0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \s_fifo_elements_reg0_carry__1_n_2\,
      CO(0) => \s_fifo_elements_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_0,
      DI(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_1,
      O(3) => \NLW_s_fifo_elements_reg0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => s_fifo_elements_reg0(10 downto 8),
      S(3) => '0',
      S(2) => FIFO_DUALCLOCK_MACRO_inst_TX_n_31,
      S(1) => FIFO_DUALCLOCK_MACRO_inst_TX_n_32,
      S(0) => FIFO_DUALCLOCK_MACRO_inst_TX_n_33
    );
\s_fifo_elements_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(0),
      Q => \s_fifo_elements_reg_reg_n_0_[0]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(10),
      Q => \s_fifo_elements_reg_reg_n_0_[10]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(1),
      Q => \s_fifo_elements_reg_reg_n_0_[1]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(2),
      Q => \s_fifo_elements_reg_reg_n_0_[2]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(3),
      Q => \s_fifo_elements_reg_reg_n_0_[3]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(4),
      Q => \s_fifo_elements_reg_reg_n_0_[4]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(5),
      Q => \s_fifo_elements_reg_reg_n_0_[5]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(6),
      Q => \s_fifo_elements_reg_reg_n_0_[6]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(7),
      Q => \s_fifo_elements_reg_reg_n_0_[7]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(8),
      Q => \s_fifo_elements_reg_reg_n_0_[8]\,
      R => '0'
    );
\s_fifo_elements_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => s_fifo_elements_reg0(9),
      Q => \s_fifo_elements_reg_reg_n_0_[9]\,
      R => '0'
    );
s_fifo_wren_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \bl.fifo_18_inst_bl.fifo_18_bl_0\,
      CE => '1',
      D => \^bl.fifo_18_inst_bl.fifo_18_bl\,
      Q => \^s_rxread\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spwrecvfront_fast is
  port (
    recv_inbvalid : out STD_LOGIC;
    recv_inbits : out STD_LOGIC;
    \r_reg[inact]\ : out STD_LOGIC;
    \v[escaped]\ : out STD_LOGIC;
    \r_reg[bitcntp][2]_0\ : out STD_LOGIC;
    syncdff_ff2_reg : out STD_LOGIC;
    \r_reg[inact]__0_0\ : out STD_LOGIC;
    \r_reg[splitinx]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    syncdff_ff1_reg : in STD_LOGIC;
    rxclk_IBUF_BUFG : in STD_LOGIC;
    spw_di_IBUF : in STD_LOGIC;
    spw_si_IBUF : in STD_LOGIC;
    \r_reg[inbvalid]_0\ : in STD_LOGIC;
    \r_reg[inact]__0_1\ : in STD_LOGIC;
    \r_reg[escaped]\ : in STD_LOGIC;
    \r_reg[escaped]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end spwrecvfront_fast;

architecture STRUCTURE of spwrecvfront_fast is
  signal bufmem_n_0 : STD_LOGIC;
  signal di : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r[splitinx]_i_1_n_0\ : STD_LOGIC;
  signal \r[tailptr][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[tailptr][1]_i_1_n_0\ : STD_LOGIC;
  signal \r[tailptr][2]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[bitcntp]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^r_reg[inact]\ : STD_LOGIC;
  signal \r_reg[inbvalid_n_0_]\ : STD_LOGIC;
  signal \r_reg[rxdis]__0\ : STD_LOGIC;
  signal \r_reg[splitinx_n_0_]\ : STD_LOGIC;
  signal \r_reg[tailptr]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^recv_inbits\ : STD_LOGIC;
  signal \^recv_inbvalid\ : STD_LOGIC;
  signal \rrx[bitcnt][0]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[bitcnt][1]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[bitcnt][2]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[bufdata][0]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[bufdata][1]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[d_count][0]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[d_count][1]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[d_shift][1]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[headptr][0]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[headptr][1]_i_1_n_0\ : STD_LOGIC;
  signal \rrx[headptr][2]_i_1_n_0\ : STD_LOGIC;
  signal \rrx_reg[b_di0]__0\ : STD_LOGIC;
  signal \rrx_reg[b_di1]__0\ : STD_LOGIC;
  signal \rrx_reg[b_si0]__0\ : STD_LOGIC;
  signal \rrx_reg[b_si1]__0\ : STD_LOGIC;
  signal \rrx_reg[bitcnt]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rrx_reg[bufdata]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rrx_reg[bufwrite]0__0\ : STD_LOGIC;
  signal \rrx_reg[bufwrite]__0\ : STD_LOGIC;
  signal \rrx_reg[c_bit_n_0_][1]\ : STD_LOGIC;
  signal \rrx_reg[c_val_n_0_][0]\ : STD_LOGIC;
  signal \rrx_reg[c_xor1]0\ : STD_LOGIC;
  signal \rrx_reg[c_xor1]__0\ : STD_LOGIC;
  signal \rrx_reg[d_count_n_0_][0]\ : STD_LOGIC;
  signal \rrx_reg[d_count_n_0_][1]\ : STD_LOGIC;
  signal \rrx_reg[headptr_n_0_][0]\ : STD_LOGIC;
  signal \rrx_reg[headptr_n_0_][2]\ : STD_LOGIC;
  signal \rrxin[c_bit]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_a_di0 : STD_LOGIC;
  signal s_a_di1 : STD_LOGIC;
  signal s_a_di2 : STD_LOGIC;
  signal s_a_si0 : STD_LOGIC;
  signal s_a_si1 : STD_LOGIC;
  signal s_a_si2 : STD_LOGIC;
  signal syncrx_reset_n_0 : STD_LOGIC;
  signal \syncsys[bitcnt]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \syncsys[headptr]\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[splitinx]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \r[tailptr][0]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \r[tailptr][1]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \r[tailptr][2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \rrx[bitcnt][1]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \rrx[bitcnt][2]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \rrx[c_val][0]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \rrx[c_val][1]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \rrx[d_count][0]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \rrx[headptr][1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \rrx[headptr][2]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \rrx_reg[bufwrite]0\ : label is "soft_lutpair99";
  attribute IOB : string;
  attribute IOB of s_a_di1_reg : label is "TRUE";
  attribute IOB of s_a_di2_reg : label is "TRUE";
  attribute IOB of s_a_si1_reg : label is "TRUE";
  attribute IOB of s_a_si2_reg : label is "TRUE";
begin
  \r_reg[inact]\ <= \^r_reg[inact]\;
  recv_inbits <= \^recv_inbits\;
  recv_inbvalid <= \^recv_inbvalid\;
bufmem: entity work.spwram
     port map (
      di => di,
      \r_reg[splitbit]\ => \r_reg[splitinx_n_0_]\,
      \r_reg[tailptr]\(2 downto 0) => \r_reg[tailptr]\(2 downto 0),
      \rdata_reg[0]_0\ => syncdff_ff1_reg,
      \rdata_reg[0]_1\ => \rrx_reg[headptr_n_0_][0]\,
      \rdata_reg[1]_0\ => bufmem_n_0,
      \rrx_reg[bufdata]\(1 downto 0) => \rrx_reg[bufdata]\(1 downto 0),
      \rrx_reg[bufwrite]__0\ => \rrx_reg[bufwrite]__0\,
      \rrx_reg[headptr]\(0) => \rrx_reg[headptr_n_0_][2]\,
      rxclk_IBUF_BUFG => rxclk_IBUF_BUFG
    );
\r[datareg][7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6000"
    )
        port map (
      I0 => \^recv_inbits\,
      I1 => \r_reg[escaped]\,
      I2 => \^recv_inbvalid\,
      I3 => \r_reg[escaped]_0\(0),
      O => \v[escaped]\
    );
\r[disccnt][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^r_reg[inact]\,
      I1 => Q(0),
      O => \r_reg[inact]__0_0\
    );
\r[splitinx]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_reg[inbvalid_n_0_]\,
      I1 => \r_reg[splitinx_n_0_]\,
      O => \r[splitinx]_i_1_n_0\
    );
\r[tailptr][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \r_reg[splitinx_n_0_]\,
      I1 => \r_reg[inbvalid_n_0_]\,
      I2 => \r_reg[tailptr]\(0),
      O => \r[tailptr][0]_i_1_n_0\
    );
\r[tailptr][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => \r_reg[tailptr]\(0),
      I1 => \r_reg[inbvalid_n_0_]\,
      I2 => \r_reg[splitinx_n_0_]\,
      I3 => \r_reg[tailptr]\(1),
      O => \r[tailptr][1]_i_1_n_0\
    );
\r[tailptr][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => \r_reg[tailptr]\(1),
      I1 => \r_reg[tailptr]\(0),
      I2 => \r_reg[inbvalid_n_0_]\,
      I3 => \r_reg[splitinx_n_0_]\,
      I4 => \r_reg[tailptr]\(2),
      O => \r[tailptr][2]_i_1_n_0\
    );
\r_reg[bitcntp][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \syncsys[bitcnt]\(0),
      Q => \r_reg[bitcntp]\(0),
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[bitcntp][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \syncsys[bitcnt]\(1),
      Q => \r_reg[bitcntp]\(1),
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[bitcntp][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \syncsys[bitcnt]\(2),
      Q => \r_reg[bitcntp]\(2),
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[inact]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r_reg[inact]__0_1\,
      Q => \^r_reg[inact]\,
      R => '0'
    );
\r_reg[inbvalid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r_reg[inbvalid]_0\,
      Q => \r_reg[inbvalid_n_0_]\,
      R => '0'
    );
\r_reg[rxdis]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r_reg[splitinx]_0\(0),
      Q => \r_reg[rxdis]__0\,
      R => '0'
    );
\r_reg[splitbit]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => bufmem_n_0,
      Q => \^recv_inbits\,
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[splitinx]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r[splitinx]_i_1_n_0\,
      Q => \r_reg[splitinx_n_0_]\,
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[splitvalid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r_reg[inbvalid_n_0_]\,
      Q => \^recv_inbvalid\,
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[tailptr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r[tailptr][0]_i_1_n_0\,
      Q => \r_reg[tailptr]\(0),
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[tailptr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r[tailptr][1]_i_1_n_0\,
      Q => \r_reg[tailptr]\(1),
      R => \r_reg[splitinx]_0\(0)
    );
\r_reg[tailptr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff1_reg,
      CE => '1',
      D => \r[tailptr][2]_i_1_n_0\,
      Q => \r_reg[tailptr]\(2),
      R => \r_reg[splitinx]_0\(0)
    );
\rrx[bitcnt][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rrx_reg[c_val_n_0_][0]\,
      I1 => \rrx_reg[bitcnt]\(0),
      O => \rrx[bitcnt][0]_i_1_n_0\
    );
\rrx[bitcnt][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rrx_reg[bitcnt]\(0),
      I1 => \rrx_reg[c_val_n_0_][0]\,
      I2 => \rrx_reg[bitcnt]\(1),
      O => \rrx[bitcnt][1]_i_1_n_0\
    );
\rrx[bitcnt][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rrx_reg[bitcnt]\(0),
      I1 => \rrx_reg[bitcnt]\(1),
      I2 => \rrx_reg[c_val_n_0_][0]\,
      I3 => \rrx_reg[bitcnt]\(2),
      O => \rrx[bitcnt][2]_i_1_n_0\
    );
\rrx[bufdata][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \rrx_reg[d_count_n_0_][0]\,
      I2 => p_0_in(1),
      I3 => \rrx_reg[c_val_n_0_][0]\,
      I4 => \rrx_reg[bufdata]\(0),
      O => \rrx[bufdata][0]_i_1_n_0\
    );
\rrx[bufdata][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \rrx_reg[d_count_n_0_][0]\,
      I2 => \rrx_reg[c_bit_n_0_][1]\,
      I3 => \rrx_reg[c_val_n_0_][0]\,
      I4 => \rrx_reg[bufdata]\(1),
      O => \rrx[bufdata][1]_i_1_n_0\
    );
\rrx[c_bit][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ED84"
    )
        port map (
      I0 => \rrx_reg[b_si0]__0\,
      I1 => \rrx_reg[b_di0]__0\,
      I2 => \rrx_reg[c_xor1]__0\,
      I3 => \rrx_reg[b_di1]__0\,
      O => \rrxin[c_bit]\(0)
    );
\rrx[c_val][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BED7D7BE"
    )
        port map (
      I0 => \rrx_reg[c_xor1]__0\,
      I1 => \rrx_reg[b_di1]__0\,
      I2 => \rrx_reg[b_si1]__0\,
      I3 => \rrx_reg[b_di0]__0\,
      I4 => \rrx_reg[b_si0]__0\,
      O => p_1_out(0)
    );
\rrx[c_val][1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28414128"
    )
        port map (
      I0 => \rrx_reg[c_xor1]__0\,
      I1 => \rrx_reg[b_di1]__0\,
      I2 => \rrx_reg[b_si1]__0\,
      I3 => \rrx_reg[b_di0]__0\,
      I4 => \rrx_reg[b_si0]__0\,
      O => p_1_out(1)
    );
\rrx[c_xor1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rrx_reg[b_di1]__0\,
      I1 => \rrx_reg[b_si1]__0\,
      O => \rrx_reg[c_xor1]0\
    );
\rrx[d_count][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \rrx_reg[d_count_n_0_][1]\,
      I1 => \rrx_reg[c_val_n_0_][0]\,
      I2 => p_1_in,
      I3 => \rrx_reg[d_count_n_0_][0]\,
      O => \rrx[d_count][0]_i_1_n_0\
    );
\rrx[d_count][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \rrx_reg[d_count_n_0_][0]\,
      I1 => \rrx_reg[c_val_n_0_][0]\,
      I2 => p_1_in,
      I3 => \rrx_reg[d_count_n_0_][1]\,
      O => \rrx[d_count][1]_i_1_n_0\
    );
\rrx[d_shift][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \rrx_reg[c_bit_n_0_][1]\,
      I1 => p_1_in,
      I2 => p_0_in(1),
      I3 => \rrx_reg[c_val_n_0_][0]\,
      I4 => p_0_in(0),
      O => \rrx[d_shift][1]_i_1_n_0\
    );
\rrx[headptr][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \rrx_reg[bufwrite]__0\,
      I1 => \rrx_reg[headptr_n_0_][0]\,
      O => \rrx[headptr][0]_i_1_n_0\
    );
\rrx[headptr][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \rrx_reg[headptr_n_0_][0]\,
      I1 => \rrx_reg[bufwrite]__0\,
      I2 => di,
      O => \rrx[headptr][1]_i_1_n_0\
    );
\rrx[headptr][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \rrx_reg[headptr_n_0_][0]\,
      I1 => di,
      I2 => \rrx_reg[bufwrite]__0\,
      I3 => \rrx_reg[headptr_n_0_][2]\,
      O => \rrx[headptr][2]_i_1_n_0\
    );
\rrx_reg[b_di0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => s_a_di0,
      Q => \rrx_reg[b_di0]__0\,
      R => '0'
    );
\rrx_reg[b_di1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => s_a_di1,
      Q => \rrx_reg[b_di1]__0\,
      R => '0'
    );
\rrx_reg[b_si0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => s_a_si0,
      Q => \rrx_reg[b_si0]__0\,
      R => '0'
    );
\rrx_reg[b_si1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => s_a_si1,
      Q => \rrx_reg[b_si1]__0\,
      R => '0'
    );
\rrx_reg[bitcnt][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[bitcnt][0]_i_1_n_0\,
      Q => \rrx_reg[bitcnt]\(0),
      R => syncrx_reset_n_0
    );
\rrx_reg[bitcnt][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[bitcnt][1]_i_1_n_0\,
      Q => \rrx_reg[bitcnt]\(1),
      R => syncrx_reset_n_0
    );
\rrx_reg[bitcnt][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[bitcnt][2]_i_1_n_0\,
      Q => \rrx_reg[bitcnt]\(2),
      R => syncrx_reset_n_0
    );
\rrx_reg[bufdata][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[bufdata][0]_i_1_n_0\,
      Q => \rrx_reg[bufdata]\(0),
      R => '0'
    );
\rrx_reg[bufdata][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[bufdata][1]_i_1_n_0\,
      Q => \rrx_reg[bufdata]\(1),
      R => '0'
    );
\rrx_reg[bufwrite]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx_reg[bufwrite]0__0\,
      Q => \rrx_reg[bufwrite]__0\,
      R => syncrx_reset_n_0
    );
\rrx_reg[bufwrite]0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => \rrx_reg[c_val_n_0_][0]\,
      I1 => p_1_in,
      I2 => \rrx_reg[d_count_n_0_][1]\,
      I3 => \rrx_reg[d_count_n_0_][0]\,
      O => \rrx_reg[bufwrite]0__0\
    );
\rrx_reg[c_bit][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrxin[c_bit]\(0),
      Q => p_0_in(1),
      R => '0'
    );
\rrx_reg[c_bit][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx_reg[b_di1]__0\,
      Q => \rrx_reg[c_bit_n_0_][1]\,
      R => '0'
    );
\rrx_reg[c_val][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => p_1_out(0),
      Q => \rrx_reg[c_val_n_0_][0]\,
      R => syncrx_reset_n_0
    );
\rrx_reg[c_val][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => p_1_out(1),
      Q => p_1_in,
      R => syncrx_reset_n_0
    );
\rrx_reg[c_xor1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx_reg[c_xor1]0\,
      Q => \rrx_reg[c_xor1]__0\,
      R => syncrx_reset_n_0
    );
\rrx_reg[d_count][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[d_count][0]_i_1_n_0\,
      Q => \rrx_reg[d_count_n_0_][0]\,
      R => syncrx_reset_n_0
    );
\rrx_reg[d_count][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[d_count][1]_i_1_n_0\,
      Q => \rrx_reg[d_count_n_0_][1]\,
      S => syncrx_reset_n_0
    );
\rrx_reg[d_shift][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[d_shift][1]_i_1_n_0\,
      Q => p_0_in(0),
      R => '0'
    );
\rrx_reg[headptr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[headptr][0]_i_1_n_0\,
      Q => \rrx_reg[headptr_n_0_][0]\,
      R => syncrx_reset_n_0
    );
\rrx_reg[headptr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[headptr][1]_i_1_n_0\,
      Q => di,
      R => syncrx_reset_n_0
    );
\rrx_reg[headptr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => \rrx[headptr][2]_i_1_n_0\,
      Q => \rrx_reg[headptr_n_0_][2]\,
      R => syncrx_reset_n_0
    );
s_a_di0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => s_a_di2,
      Q => s_a_di0,
      R => '0'
    );
s_a_di1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => spw_di_IBUF,
      Q => s_a_di1,
      R => '0'
    );
s_a_di2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => spw_di_IBUF,
      Q => s_a_di2,
      R => '0'
    );
s_a_si0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => s_a_si2,
      Q => s_a_si0,
      R => '0'
    );
s_a_si1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => spw_si_IBUF,
      Q => s_a_si1,
      R => '0'
    );
s_a_si2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => rxclk_IBUF_BUFG,
      CE => '1',
      D => spw_si_IBUF,
      Q => s_a_si2,
      R => '0'
    );
syncrx_reset: entity work.syncdff_7
     port map (
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      rxclk_IBUF_BUFG => rxclk_IBUF_BUFG,
      syncdff_ff2_reg_0 => syncrx_reset_n_0
    );
syncsys_bitcnt0: entity work.syncdff_8
     port map (
      D(0) => \syncsys[bitcnt]\(0),
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      \rrx_reg[bitcnt]\(0) => \rrx_reg[bitcnt]\(0),
      syncdff_ff1_reg_0 => syncdff_ff1_reg
    );
syncsys_bitcnt1: entity work.syncdff_9
     port map (
      D(0) => \syncsys[bitcnt]\(1),
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      \rrx_reg[bitcnt]\(0) => \rrx_reg[bitcnt]\(1),
      syncdff_ff1_reg_0 => syncdff_ff1_reg
    );
syncsys_bitcnt2: entity work.syncdff_10
     port map (
      D(0) => \syncsys[bitcnt]\(2),
      Q(2 downto 0) => \r_reg[bitcntp]\(2 downto 0),
      \r_reg[bitcntp][2]\ => \r_reg[bitcntp][2]_0\,
      \r_reg[inact]__0\(1 downto 0) => \syncsys[bitcnt]\(1 downto 0),
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      \rrx_reg[bitcnt]\(0) => \rrx_reg[bitcnt]\(2),
      syncdff_ff1_reg_0 => syncdff_ff1_reg
    );
syncsys_headptr0: entity work.syncdff_11
     port map (
      \r_reg[inbvalid]\(1 downto 0) => \syncsys[headptr]\(2 downto 1),
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      \r_reg[tailptr]\(2 downto 0) => \r_reg[tailptr]\(2 downto 0),
      syncdff_ff1_reg_0 => \rrx_reg[headptr_n_0_][0]\,
      syncdff_ff1_reg_1 => syncdff_ff1_reg,
      syncdff_ff2_reg_0 => syncdff_ff2_reg
    );
syncsys_headptr1: entity work.syncdff_12
     port map (
      di => di,
      \out\ => \syncsys[headptr]\(1),
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      syncdff_ff1_reg_0 => syncdff_ff1_reg
    );
syncsys_headptr2: entity work.syncdff_13
     port map (
      \out\ => \syncsys[headptr]\(2),
      \r_reg[rxdis]__0\ => \r_reg[rxdis]__0\,
      \rrx_reg[headptr]\(0) => \rrx_reg[headptr_n_0_][2]\,
      syncdff_ff1_reg_0 => syncdff_ff1_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spwxmit_fast is
  port (
    \r_reg[txenreg]\ : out STD_LOGIC;
    \r_reg[allow_fct]__0\ : out STD_LOGIC;
    \r_reg[allow_char]__0\ : out STD_LOGIC;
    spw_do_OBUF : out STD_LOGIC;
    spw_so_OBUF : out STD_LOGIC;
    \r_reg[sent_fct]__0\ : out STD_LOGIC;
    \r_reg[pend_char]__0\ : out STD_LOGIC;
    \r_reg[pend_fct]__0\ : out STD_LOGIC;
    \r_reg[txdivsafe]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    txclk_IBUF_BUFG : in STD_LOGIC;
    rst_logic_IBUF : in STD_LOGIC;
    syncdff_ff2_reg : in STD_LOGIC;
    \rin[sent_fct]\ : in STD_LOGIC;
    \linko[started]1\ : in STD_LOGIC;
    \r_reg[allow_char]0\ : in STD_LOGIC;
    \r_reg[txenreg]__0_0\ : in STD_LOGIC;
    \r_reg[pend_char]_0\ : in STD_LOGIC;
    \r_reg[txfifo_rvalid]__0\ : in STD_LOGIC;
    \r_reg[txdiscard]__0\ : in STD_LOGIC;
    \xmiti[txen]\ : in STD_LOGIC;
    \r_reg[pend_fct]_0\ : in STD_LOGIC;
    \r_reg[txdivnorm]_0\ : in STD_LOGIC;
    \r[txdivnorm]_i_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_tc_in : in STD_LOGIC;
    \r_reg[pend_tick]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \r_reg[pend_data][8]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[pend_data][8]_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \r_reg[pend_time][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[pend_time][7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end spwxmit_fast;

architecture STRUCTURE of spwxmit_fast is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in29_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in4_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in6_in : STD_LOGIC;
  signal \r[pend_char]_i_2_n_0\ : STD_LOGIC;
  signal \r[token1][char][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][1]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][2]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][3]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][4]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][5]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][6]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][char][7]_i_1_n_0\ : STD_LOGIC;
  signal \r[token1][fctpiggy]_i_4_n_0\ : STD_LOGIC;
  signal \r[txdivnorm]_i_1_n_0\ : STD_LOGIC;
  signal \r[txdivsafe]_i_1_n_0\ : STD_LOGIC;
  signal \r[txdivtmp][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[txdivtmp][1]_i_1_n_0\ : STD_LOGIC;
  signal \^r_reg[allow_char]__0\ : STD_LOGIC;
  signal \^r_reg[allow_fct]__0\ : STD_LOGIC;
  signal \^r_reg[pend_char]__0\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][0]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][1]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][2]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][3]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][4]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][5]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][6]\ : STD_LOGIC;
  signal \r_reg[pend_data_n_0_][7]\ : STD_LOGIC;
  signal \^r_reg[pend_fct]__0\ : STD_LOGIC;
  signal \r_reg[pend_tick]__0\ : STD_LOGIC;
  signal \r_reg[pend_time]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^r_reg[sent_fct]__0\ : STD_LOGIC;
  signal \r_reg[sysflip0]__0\ : STD_LOGIC;
  signal \r_reg[sysflip1]__0\ : STD_LOGIC;
  signal \r_reg[token0][char]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg[token0][fct_n_0_]\ : STD_LOGIC;
  signal \r_reg[token0][fctpiggy_n_0_]\ : STD_LOGIC;
  signal \r_reg[token0][flag_n_0_]\ : STD_LOGIC;
  signal \r_reg[token0][tick_n_0_]\ : STD_LOGIC;
  signal \r_reg[token1][char]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg[token1][fct_n_0_]\ : STD_LOGIC;
  signal \r_reg[token1][fctpiggy_n_0_]\ : STD_LOGIC;
  signal \r_reg[token1][flag_n_0_]\ : STD_LOGIC;
  signal \r_reg[token1][tick_n_0_]\ : STD_LOGIC;
  signal \r_reg[tokmux]__0\ : STD_LOGIC;
  signal \r_reg[txdivnorm]__0\ : STD_LOGIC;
  signal \r_reg[txdivreg]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_reg[txdivsafe_n_0_]\ : STD_LOGIC;
  signal \r_reg[txdivtmp]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^r_reg[txenreg]\ : STD_LOGIC;
  signal \rtx[b_token][char][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][3]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][4]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][5]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][6]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][char][7]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][fct]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][fctpiggy]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][flag]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_token][tick]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[b_update]_i_2_n_0\ : STD_LOGIC;
  signal \rtx[c_bits][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[c_bits][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[c_bits][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[c_busy]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[c_esc]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[c_fct]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[d_bits][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[d_bits][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][3]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][4]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][5]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][6]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][7]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][8]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_count][9]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_parity]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][3]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][4]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][5]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][6]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][7]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][8]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_shift][9]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[e_valid]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[f_spwdo]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][3]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][4]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][5]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][6]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcnt][7]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcy][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcy][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkcy][2]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkdone][0]_i_1_n_0\ : STD_LOGIC;
  signal \rtx[txclkdone][1]_i_1_n_0\ : STD_LOGIC;
  signal \rtx_reg[b_mux]__0\ : STD_LOGIC;
  signal \rtx_reg[b_token][char]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rtx_reg[b_token][fct]__0\ : STD_LOGIC;
  signal \rtx_reg[b_token][fctpiggy]__0\ : STD_LOGIC;
  signal \rtx_reg[b_token][flag_n_0_]\ : STD_LOGIC;
  signal \rtx_reg[b_token][tick]__0\ : STD_LOGIC;
  signal \rtx_reg[b_txflip]__0\ : STD_LOGIC;
  signal \rtx_reg[b_update]__0\ : STD_LOGIC;
  signal \rtx_reg[b_valid]__0\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][2]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][3]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][4]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][5]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][6]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][7]\ : STD_LOGIC;
  signal \rtx_reg[c_bits_n_0_][8]\ : STD_LOGIC;
  signal \rtx_reg[c_busy]__0\ : STD_LOGIC;
  signal \rtx_reg[c_esc_n_0_]\ : STD_LOGIC;
  signal \rtx_reg[c_fct_n_0_]\ : STD_LOGIC;
  signal \rtx_reg[c_update]0\ : STD_LOGIC;
  signal \rtx_reg[c_update_n_0_]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][2]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][3]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][4]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][5]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][6]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][7]\ : STD_LOGIC;
  signal \rtx_reg[d_bits_n_0_][8]\ : STD_LOGIC;
  signal \rtx_reg[d_cnt10]__0\ : STD_LOGIC;
  signal \rtx_reg[d_cnt4]__0\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][2]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][4]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][5]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][6]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][7]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][8]\ : STD_LOGIC;
  signal \rtx_reg[e_count_n_0_][9]\ : STD_LOGIC;
  signal \rtx_reg[e_parity]__0\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][2]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][3]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][4]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][5]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][6]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][7]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][8]\ : STD_LOGIC;
  signal \rtx_reg[e_shift_n_0_][9]\ : STD_LOGIC;
  signal \rtx_reg[e_valid_n_0_]\ : STD_LOGIC;
  signal \rtx_reg[f_spwdo]__0\ : STD_LOGIC;
  signal \rtx_reg[f_spwso]__0\ : STD_LOGIC;
  signal \rtx_reg[txclkcnt_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[txclkcnt_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[txclkcy_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[txclkcy_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[txclkcy_n_0_][2]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][2]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][3]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][4]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][5]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][6]\ : STD_LOGIC;
  signal \rtx_reg[txclkdiv_n_0_][7]\ : STD_LOGIC;
  signal \rtx_reg[txclkdone_n_0_][0]\ : STD_LOGIC;
  signal \rtx_reg[txclkdone_n_0_][1]\ : STD_LOGIC;
  signal \rtx_reg[txclken]0__0\ : STD_LOGIC;
  signal \rtx_reg[txclken]__0\ : STD_LOGIC;
  signal \rtx_reg[txclkpre]0__0\ : STD_LOGIC;
  signal \rtx_reg[txclkpre]__0\ : STD_LOGIC;
  signal \rtx_reg[txdivnorm_n_0_]\ : STD_LOGIC;
  signal \rtx_reg[txflip_n_0_0]\ : STD_LOGIC;
  signal \rtx_reg[txflip_n_0_1]\ : STD_LOGIC;
  signal \rtxin[b_txflip]\ : STD_LOGIC;
  signal \syncsys[txflip0]\ : STD_LOGIC;
  signal \syncsys[txflip1]\ : STD_LOGIC;
  signal syncsys_txflip0_n_2 : STD_LOGIC;
  signal syncsys_txflip0_n_3 : STD_LOGIC;
  signal syncsys_txflip0_n_4 : STD_LOGIC;
  signal syncsys_txflip0_n_5 : STD_LOGIC;
  signal syncsys_txflip0_n_6 : STD_LOGIC;
  signal syncsys_txflip1_n_2 : STD_LOGIC;
  signal syncsys_txflip1_n_3 : STD_LOGIC;
  signal \synctx[sysflip0]\ : STD_LOGIC;
  signal \synctx[txdivsafe]\ : STD_LOGIC;
  signal \synctx[txen]\ : STD_LOGIC;
  signal synctx_rst_n_0 : STD_LOGIC;
  signal synctx_rst_n_1 : STD_LOGIC;
  signal synctx_sysflip0_n_1 : STD_LOGIC;
  signal synctx_sysflip1_n_0 : STD_LOGIC;
  signal synctx_sysflip1_n_1 : STD_LOGIC;
  signal synctx_sysflip1_n_2 : STD_LOGIC;
  signal synctx_txen_n_1 : STD_LOGIC;
  signal synctx_txen_n_2 : STD_LOGIC;
  signal synctx_txen_n_4 : STD_LOGIC;
  signal \v[token0][tick]\ : STD_LOGIC;
  signal \v[token1][tick]\ : STD_LOGIC;
  signal v_havetoken124_out : STD_LOGIC;
  signal \v_token[fct]\ : STD_LOGIC;
  signal \v_token[fctpiggy]\ : STD_LOGIC;
  signal \v_token[flag]\ : STD_LOGIC;
  signal \vtx[c_bits]_rep__0_n_0\ : STD_LOGIC;
  signal \vtx[c_bits]_rep__1_n_0\ : STD_LOGIC;
  signal \vtx[c_bits]_rep__2_n_0\ : STD_LOGIC;
  signal \vtx[c_bits]_rep__3_n_0\ : STD_LOGIC;
  signal \vtx[c_bits]_rep__4_n_0\ : STD_LOGIC;
  signal \vtx[c_bits]_rep_n_0\ : STD_LOGIC;
  signal \vtx[d_bits]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r[token1][fct]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \r[token1][tick]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \r[txdivsafe]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \r[txdivtmp][1]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \rtx[b_token][char][0]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rtx[b_token][char][1]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \rtx[b_token][char][2]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rtx[b_token][char][3]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \rtx[b_token][char][4]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \rtx[b_token][char][5]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \rtx[b_token][char][6]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \rtx[b_token][char][7]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \rtx[b_token][fct]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \rtx[b_token][fctpiggy]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \rtx[b_token][flag]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \rtx[b_token][tick]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \rtx[b_update]_i_2\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rtx[c_bits][0]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rtx[c_bits][1]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \rtx[d_bits][1]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \rtx[d_bits][2]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \rtx[e_count][1]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \rtx[e_count][2]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \rtx[e_count][3]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \rtx[e_count][4]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \rtx[e_count][5]_i_1\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \rtx[e_count][6]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \rtx[e_count][7]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \rtx[e_count][8]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \rtx[e_count][9]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rtx[e_parity]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \rtx[e_shift][0]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rtx[e_shift][1]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \rtx[e_shift][2]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \rtx[e_shift][3]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \rtx[e_shift][4]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \rtx[e_shift][5]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \rtx[e_shift][6]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rtx[e_shift][7]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \rtx[e_shift][8]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rtx[e_shift][9]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \rtx[e_valid]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \rtx[txclkcnt][0]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rtx[txclkcnt][1]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \rtx[txclkcy][1]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \rtx[txclkcy][2]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \rtx[txclkdone][0]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \rtx[txclkdone][1]_i_1\ : label is "soft_lutpair105";
  attribute IOB : string;
  attribute IOB of s_spwdo_reg : label is "TRUE";
  attribute IOB of s_spwso_reg : label is "TRUE";
  attribute SOFT_HLUTNM of \vtx[c_bits]_rep\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \vtx[c_bits]_rep__0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \vtx[c_bits]_rep__1\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \vtx[c_bits]_rep__2\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \vtx[c_bits]_rep__3\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \vtx[c_bits]_rep__4\ : label is "soft_lutpair126";
begin
  E(0) <= \^e\(0);
  \r_reg[allow_char]__0\ <= \^r_reg[allow_char]__0\;
  \r_reg[allow_fct]__0\ <= \^r_reg[allow_fct]__0\;
  \r_reg[pend_char]__0\ <= \^r_reg[pend_char]__0\;
  \r_reg[pend_fct]__0\ <= \^r_reg[pend_fct]__0\;
  \r_reg[sent_fct]__0\ <= \^r_reg[sent_fct]__0\;
  \r_reg[txenreg]\ <= \^r_reg[txenreg]\;
\r[pend_char]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFFFFF"
    )
        port map (
      I0 => \^r_reg[pend_char]__0\,
      I1 => \r_reg[pend_char]_0\,
      I2 => \r_reg[txfifo_rvalid]__0\,
      I3 => \r_reg[txdiscard]__0\,
      I4 => \^r_reg[allow_char]__0\,
      O => \r[pend_char]_i_2_n_0\
    );
\r[token1][char][0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(0),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][0]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][0]_i_1_n_0\
    );
\r[token1][char][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(1),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][1]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][1]_i_1_n_0\
    );
\r[token1][char][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(2),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][2]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][2]_i_1_n_0\
    );
\r[token1][char][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(3),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][3]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][3]_i_1_n_0\
    );
\r[token1][char][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(4),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][4]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][4]_i_1_n_0\
    );
\r[token1][char][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(5),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][5]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][5]_i_1_n_0\
    );
\r[token1][char][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(6),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][6]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][6]_i_1_n_0\
    );
\r[token1][char][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0808080"
    )
        port map (
      I0 => \r_reg[pend_time]\(7),
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_char]__0\,
      I3 => \r_reg[pend_data_n_0_][7]\,
      I4 => \^r_reg[pend_char]__0\,
      O => \r[token1][char][7]_i_1_n_0\
    );
\r[token1][fct]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70707000"
    )
        port map (
      I0 => \^r_reg[allow_char]__0\,
      I1 => \r_reg[pend_tick]__0\,
      I2 => \^r_reg[allow_fct]__0\,
      I3 => \r_reg[pend_fct]_0\,
      I4 => \^r_reg[pend_fct]__0\,
      O => \v_token[fct]\
    );
\r[token1][fctpiggy]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A8000000"
    )
        port map (
      I0 => \^r_reg[allow_fct]__0\,
      I1 => \r_reg[pend_fct]_0\,
      I2 => \^r_reg[pend_fct]__0\,
      I3 => \^r_reg[allow_char]__0\,
      I4 => \^r_reg[pend_char]__0\,
      I5 => \r_reg[pend_tick]__0\,
      O => \v_token[fctpiggy]\
    );
\r[token1][fctpiggy]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0057005700575757"
    )
        port map (
      I0 => \^r_reg[allow_fct]__0\,
      I1 => \r_reg[pend_fct]_0\,
      I2 => \^r_reg[pend_fct]__0\,
      I3 => \^r_reg[allow_char]__0\,
      I4 => \^r_reg[pend_char]__0\,
      I5 => \r_reg[pend_tick]__0\,
      O => \r[token1][fctpiggy]_i_4_n_0\
    );
\r[token1][flag]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => p_1_in6_in,
      I1 => \^r_reg[allow_char]__0\,
      I2 => \^r_reg[pend_char]__0\,
      I3 => \r_reg[pend_tick]__0\,
      O => \v_token[flag]\
    );
\r[token1][tick]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_reg[pend_tick]__0\,
      I1 => \^r_reg[allow_char]__0\,
      O => v_havetoken124_out
    );
\r[txdivnorm]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055550001"
    )
        port map (
      I0 => rst_logic_IBUF,
      I1 => \r_reg[txdivsafe_n_0_]\,
      I2 => \r_reg[txdivtmp]\(0),
      I3 => \r_reg[txdivtmp]\(1),
      I4 => \r_reg[txdivnorm]__0\,
      I5 => \r_reg[txdivnorm]_0\,
      O => \r[txdivnorm]_i_1_n_0\
    );
\r[txdivnorm]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_reg[txdivsafe_n_0_]\,
      I1 => \r_reg[txdivtmp]\(0),
      I2 => \r_reg[txdivtmp]\(1),
      I3 => \r[txdivnorm]_i_2\(1),
      I4 => \r[txdivnorm]_i_2\(2),
      I5 => \r[txdivnorm]_i_2\(0),
      O => \r_reg[txdivsafe]_0\
    );
\r[txdivreg][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_reg[txdivtmp]\(1),
      I1 => \r_reg[txdivtmp]\(0),
      I2 => \r_reg[txdivsafe_n_0_]\,
      O => \^e\(0)
    );
\r[txdivsafe]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \r_reg[txdivtmp]\(1),
      I1 => \r_reg[txdivtmp]\(0),
      I2 => \r_reg[txdivsafe_n_0_]\,
      O => \r[txdivsafe]_i_1_n_0\
    );
\r[txdivtmp][0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_reg[txdivtmp]\(0),
      O => \r[txdivtmp][0]_i_1_n_0\
    );
\r[txdivtmp][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => \r_reg[txdivtmp]\(0),
      I1 => \r_reg[txdivtmp]\(1),
      I2 => \r_reg[txdivsafe_n_0_]\,
      O => \r[txdivtmp][1]_i_1_n_0\
    );
\r_reg[allow_char]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[allow_char]0\,
      Q => \^r_reg[allow_char]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[allow_fct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \linko[started]1\,
      Q => \^r_reg[allow_fct]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[pend_char]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip0_n_3,
      Q => \^r_reg[pend_char]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[pend_data][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(0),
      Q => \r_reg[pend_data_n_0_][0]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(1),
      Q => \r_reg[pend_data_n_0_][1]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(2),
      Q => \r_reg[pend_data_n_0_][2]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(3),
      Q => \r_reg[pend_data_n_0_][3]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(4),
      Q => \r_reg[pend_data_n_0_][4]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(5),
      Q => \r_reg[pend_data_n_0_][5]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(6),
      Q => \r_reg[pend_data_n_0_][6]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(7),
      Q => \r_reg[pend_data_n_0_][7]\,
      R => rst_logic_IBUF
    );
\r_reg[pend_data][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_data][8]_0\(0),
      D => \r_reg[pend_data][8]_1\(8),
      Q => p_1_in6_in,
      R => rst_logic_IBUF
    );
\r_reg[pend_fct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip0_n_4,
      Q => \^r_reg[pend_fct]__0\,
      R => '0'
    );
\r_reg[pend_tick]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip0_n_2,
      Q => \r_reg[pend_tick]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[pend_time][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(0),
      Q => \r_reg[pend_time]\(0),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(1),
      Q => \r_reg[pend_time]\(1),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(2),
      Q => \r_reg[pend_time]\(2),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(3),
      Q => \r_reg[pend_time]\(3),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(4),
      Q => \r_reg[pend_time]\(4),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(5),
      Q => \r_reg[pend_time]\(5),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(6),
      Q => \r_reg[pend_time]\(6),
      R => rst_logic_IBUF
    );
\r_reg[pend_time][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \r_reg[pend_time][7]_0\(0),
      D => \r_reg[pend_time][7]_1\(7),
      Q => \r_reg[pend_time]\(7),
      R => rst_logic_IBUF
    );
\r_reg[sent_fct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip0_n_5,
      Q => \^r_reg[sent_fct]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[sysflip0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip0_n_6,
      Q => \r_reg[sysflip0]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[sysflip1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip1_n_3,
      Q => \r_reg[sysflip1]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[token0][char][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][0]_i_1_n_0\,
      Q => \r_reg[token0][char]\(0),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][1]_i_1_n_0\,
      Q => \r_reg[token0][char]\(1),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][2]_i_1_n_0\,
      Q => \r_reg[token0][char]\(2),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][3]_i_1_n_0\,
      Q => \r_reg[token0][char]\(3),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][4]_i_1_n_0\,
      Q => \r_reg[token0][char]\(4),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][5]_i_1_n_0\,
      Q => \r_reg[token0][char]\(5),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][6]_i_1_n_0\,
      Q => \r_reg[token0][char]\(6),
      R => rst_logic_IBUF
    );
\r_reg[token0][char][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \r[token1][char][7]_i_1_n_0\,
      Q => \r_reg[token0][char]\(7),
      R => rst_logic_IBUF
    );
\r_reg[token0][fct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \v_token[fct]\,
      Q => \r_reg[token0][fct_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token0][fctpiggy]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \v_token[fctpiggy]\,
      Q => \r_reg[token0][fctpiggy_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token0][flag]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => \v_token[flag]\,
      Q => \r_reg[token0][flag_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token0][tick]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token0][tick]\,
      D => v_havetoken124_out,
      Q => \r_reg[token0][tick_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token1][char][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][0]_i_1_n_0\,
      Q => \r_reg[token1][char]\(0),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][1]_i_1_n_0\,
      Q => \r_reg[token1][char]\(1),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][2]_i_1_n_0\,
      Q => \r_reg[token1][char]\(2),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][3]_i_1_n_0\,
      Q => \r_reg[token1][char]\(3),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][4]_i_1_n_0\,
      Q => \r_reg[token1][char]\(4),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][5]_i_1_n_0\,
      Q => \r_reg[token1][char]\(5),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][6]_i_1_n_0\,
      Q => \r_reg[token1][char]\(6),
      R => rst_logic_IBUF
    );
\r_reg[token1][char][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \r[token1][char][7]_i_1_n_0\,
      Q => \r_reg[token1][char]\(7),
      R => rst_logic_IBUF
    );
\r_reg[token1][fct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \v_token[fct]\,
      Q => \r_reg[token1][fct_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token1][fctpiggy]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \v_token[fctpiggy]\,
      Q => \r_reg[token1][fctpiggy_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token1][flag]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => \v_token[flag]\,
      Q => \r_reg[token1][flag_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[token1][tick]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \v[token1][tick]\,
      D => v_havetoken124_out,
      Q => \r_reg[token1][tick_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[tokmux]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => syncsys_txflip1_n_2,
      Q => \r_reg[tokmux]__0\,
      R => \rin[sent_fct]\
    );
\r_reg[txdivnorm]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r[txdivnorm]_i_1_n_0\,
      Q => \r_reg[txdivnorm]__0\,
      R => '0'
    );
\r_reg[txdivreg][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(0),
      Q => \r_reg[txdivreg]\(0),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(1),
      Q => \r_reg[txdivreg]\(1),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(2),
      Q => \r_reg[txdivreg]\(2),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(3),
      Q => \r_reg[txdivreg]\(3),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(4),
      Q => \r_reg[txdivreg]\(4),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(5),
      Q => \r_reg[txdivreg]\(5),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(6),
      Q => \r_reg[txdivreg]\(6),
      R => rst_logic_IBUF
    );
\r_reg[txdivreg][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => \^e\(0),
      D => D(7),
      Q => \r_reg[txdivreg]\(7),
      R => rst_logic_IBUF
    );
\r_reg[txdivsafe]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r[txdivsafe]_i_1_n_0\,
      Q => \r_reg[txdivsafe_n_0_]\,
      R => rst_logic_IBUF
    );
\r_reg[txdivtmp][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r[txdivtmp][0]_i_1_n_0\,
      Q => \r_reg[txdivtmp]\(0),
      R => rst_logic_IBUF
    );
\r_reg[txdivtmp][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r[txdivtmp][1]_i_1_n_0\,
      Q => \r_reg[txdivtmp]\(1),
      R => rst_logic_IBUF
    );
\r_reg[txenreg]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[txenreg]__0_0\,
      Q => \^r_reg[txenreg]\,
      R => \rin[sent_fct]\
    );
\rtx[b_token][char][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(0),
      I1 => \r_reg[token0][char]\(0),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][0]_i_1_n_0\
    );
\rtx[b_token][char][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(1),
      I1 => \r_reg[token0][char]\(1),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][1]_i_1_n_0\
    );
\rtx[b_token][char][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(2),
      I1 => \r_reg[token0][char]\(2),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][2]_i_1_n_0\
    );
\rtx[b_token][char][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(3),
      I1 => \r_reg[token0][char]\(3),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][3]_i_1_n_0\
    );
\rtx[b_token][char][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(4),
      I1 => \r_reg[token0][char]\(4),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][4]_i_1_n_0\
    );
\rtx[b_token][char][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(5),
      I1 => \r_reg[token0][char]\(5),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][5]_i_1_n_0\
    );
\rtx[b_token][char][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(6),
      I1 => \r_reg[token0][char]\(6),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][6]_i_1_n_0\
    );
\rtx[b_token][char][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \r_reg[token1][char]\(7),
      I1 => \r_reg[token0][char]\(7),
      I2 => \rtx_reg[b_mux]__0\,
      O => \rtx[b_token][char][7]_i_1_n_0\
    );
\rtx[b_token][fct]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg[token1][fct_n_0_]\,
      I1 => \rtx_reg[b_mux]__0\,
      I2 => \r_reg[token0][fct_n_0_]\,
      O => \rtx[b_token][fct]_i_1_n_0\
    );
\rtx[b_token][fctpiggy]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg[token1][fctpiggy_n_0_]\,
      I1 => \rtx_reg[b_mux]__0\,
      I2 => \r_reg[token0][fctpiggy_n_0_]\,
      O => \rtx[b_token][fctpiggy]_i_1_n_0\
    );
\rtx[b_token][flag]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg[token1][flag_n_0_]\,
      I1 => \rtx_reg[b_mux]__0\,
      I2 => \r_reg[token0][flag_n_0_]\,
      O => \rtx[b_token][flag]_i_1_n_0\
    );
\rtx[b_token][tick]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \r_reg[token1][tick_n_0_]\,
      I1 => \rtx_reg[b_mux]__0\,
      I2 => \r_reg[token0][tick_n_0_]\,
      O => \rtx[b_token][tick]_i_1_n_0\
    );
\rtx[b_txflip]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[txflip_n_0_1]\,
      I1 => \rtx_reg[b_mux]__0\,
      I2 => \rtx_reg[txflip_n_0_0]\,
      O => \rtxin[b_txflip]\
    );
\rtx[b_update]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][0]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[c_busy]__0\,
      O => \rtx[b_update]_i_2_n_0\
    );
\rtx[c_bits][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \rtx_reg[c_bits_n_0_][0]\,
      I1 => \rtx_reg[b_token][flag_n_0_]\,
      I2 => \rtx_reg[c_update_n_0_]\,
      O => \rtx[c_bits][0]_i_1_n_0\
    );
\rtx[c_bits][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => \rtx_reg[c_bits_n_0_][1]\,
      I1 => \rtx_reg[b_token][char]\(0),
      I2 => \rtx_reg[c_update_n_0_]\,
      O => \rtx[c_bits][1]_i_1_n_0\
    );
\rtx[c_bits][2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFCAAAA"
    )
        port map (
      I0 => \rtx_reg[c_bits_n_0_][2]\,
      I1 => \rtx_reg[b_token][char]\(1),
      I2 => \rtx_reg[b_token][flag_n_0_]\,
      I3 => \rtx_reg[b_token][char]\(0),
      I4 => \rtx_reg[c_update_n_0_]\,
      O => \rtx[c_bits][2]_i_1_n_0\
    );
\rtx[c_busy]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FFEF00"
    )
        port map (
      I0 => \rtx_reg[b_token][fctpiggy]__0\,
      I1 => \rtx_reg[b_token][tick]__0\,
      I2 => \rtx_reg[b_valid]__0\,
      I3 => \rtx_reg[c_update_n_0_]\,
      I4 => \rtx_reg[c_busy]__0\,
      O => \rtx[c_busy]_i_1_n_0\
    );
\rtx[c_esc]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FD0"
    )
        port map (
      I0 => \rtx_reg[b_valid]__0\,
      I1 => \rtx_reg[b_token][tick]__0\,
      I2 => \rtx_reg[c_update_n_0_]\,
      I3 => \rtx_reg[c_esc_n_0_]\,
      O => \rtx[c_esc]_i_1_n_0\
    );
\rtx[c_fct]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4FFF4F00"
    )
        port map (
      I0 => \rtx_reg[c_busy]__0\,
      I1 => \rtx_reg[b_token][fct]__0\,
      I2 => \rtx_reg[b_valid]__0\,
      I3 => \rtx_reg[c_update_n_0_]\,
      I4 => \rtx_reg[c_fct_n_0_]\,
      O => \rtx[c_fct]_i_1_n_0\
    );
\rtx[c_update]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in29_in,
      I1 => \rtx_reg[txclken]__0\,
      O => \rtx_reg[c_update]0\
    );
\rtx[d_bits][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \rtx_reg[c_fct_n_0_]\,
      I1 => \rtx_reg[c_bits_n_0_][1]\,
      I2 => \synctx[txen]\,
      I3 => \rtx_reg[c_esc_n_0_]\,
      O => \rtx[d_bits][1]_i_1_n_0\
    );
\rtx[d_bits][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \rtx_reg[c_fct_n_0_]\,
      I1 => \rtx_reg[c_bits_n_0_][2]\,
      I2 => \synctx[txen]\,
      I3 => \rtx_reg[c_esc_n_0_]\,
      O => \rtx[d_bits][2]_i_1_n_0\
    );
\rtx[e_count][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][1]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][0]_i_1_n_0\
    );
\rtx[e_count][1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][2]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][1]_i_1_n_0\
    );
\rtx[e_count][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in29_in,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][2]_i_1_n_0\
    );
\rtx[e_count][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_cnt4]__0\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_count_n_0_][4]\,
      O => \rtx[e_count][3]_i_1_n_0\
    );
\rtx[e_count][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][5]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][4]_i_1_n_0\
    );
\rtx[e_count][5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][6]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][5]_i_1_n_0\
    );
\rtx[e_count][6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][7]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][6]_i_1_n_0\
    );
\rtx[e_count][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][8]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][7]_i_1_n_0\
    );
\rtx[e_count][8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][9]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      O => \rtx[e_count][8]_i_1_n_0\
    );
\rtx[e_count][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][0]\,
      I1 => \rtx_reg[d_cnt10]__0\,
      O => \rtx[e_count][9]_i_1_n_0\
    );
\rtx[e_parity]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][0]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][1]\,
      I3 => \rtx_reg[e_parity]__0\,
      O => \rtx[e_parity]_i_1_n_0\
    );
\rtx[e_shift][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F90"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][0]\,
      I1 => \rtx_reg[e_parity]__0\,
      I2 => \rtx_reg[e_count_n_0_][0]\,
      I3 => \rtx_reg[e_shift_n_0_][1]\,
      O => \rtx[e_shift][0]_i_1_n_0\
    );
\rtx[e_shift][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][0]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][2]\,
      O => \rtx[e_shift][1]_i_1_n_0\
    );
\rtx[e_shift][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][1]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][3]\,
      O => \rtx[e_shift][2]_i_1_n_0\
    );
\rtx[e_shift][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][2]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][4]\,
      O => \rtx[e_shift][3]_i_1_n_0\
    );
\rtx[e_shift][4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][3]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][5]\,
      O => \rtx[e_shift][4]_i_1_n_0\
    );
\rtx[e_shift][5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][4]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][6]\,
      O => \rtx[e_shift][5]_i_1_n_0\
    );
\rtx[e_shift][6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][5]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][7]\,
      O => \rtx[e_shift][6]_i_1_n_0\
    );
\rtx[e_shift][7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][6]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][8]\,
      O => \rtx[e_shift][7]_i_1_n_0\
    );
\rtx[e_shift][8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \rtx_reg[d_bits_n_0_][7]\,
      I1 => \rtx_reg[e_count_n_0_][0]\,
      I2 => \rtx_reg[e_shift_n_0_][9]\,
      O => \rtx[e_shift][8]_i_1_n_0\
    );
\rtx[e_shift][9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][0]\,
      I1 => \rtx_reg[d_bits_n_0_][8]\,
      O => \rtx[e_shift][9]_i_1_n_0\
    );
\rtx[e_valid]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \rtx_reg[e_count_n_0_][0]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[e_valid_n_0_]\,
      O => \rtx[e_valid]_i_1_n_0\
    );
\rtx[f_spwdo]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FF8800"
    )
        port map (
      I0 => \rtx_reg[e_shift_n_0_][0]\,
      I1 => \rtx_reg[e_valid_n_0_]\,
      I2 => \rtx_reg[f_spwso]__0\,
      I3 => \rtx_reg[txclken]__0\,
      I4 => \rtx_reg[f_spwdo]__0\,
      O => \rtx[f_spwdo]_i_1_n_0\
    );
\rtx[txclkcnt][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][0]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[txclkcnt_n_0_][0]\,
      O => \rtx[txclkcnt][0]_i_1_n_0\
    );
\rtx[txclkcnt][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][1]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[txclkcnt_n_0_][0]\,
      I3 => \rtx_reg[txclkcnt_n_0_][1]\,
      O => \rtx[txclkcnt][1]_i_1_n_0\
    );
\rtx[txclkcnt][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][2]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => p_0_in1_in(0),
      I3 => \rtx_reg[txclkcy_n_0_][0]\,
      O => \rtx[txclkcnt][2]_i_1_n_0\
    );
\rtx[txclkcnt][3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B88B8"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][3]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[txclkcy_n_0_][0]\,
      I3 => p_0_in1_in(0),
      I4 => p_0_in1_in(1),
      O => \rtx[txclkcnt][3]_i_1_n_0\
    );
\rtx[txclkcnt][4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][4]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => p_1_in(0),
      I3 => \rtx_reg[txclkcy_n_0_][1]\,
      O => \rtx[txclkcnt][4]_i_1_n_0\
    );
\rtx[txclkcnt][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B88B8"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][5]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[txclkcy_n_0_][1]\,
      I3 => p_1_in(0),
      I4 => p_1_in(1),
      O => \rtx[txclkcnt][5]_i_1_n_0\
    );
\rtx[txclkcnt][6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][6]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => p_1_in4_in(0),
      I3 => \rtx_reg[txclkcy_n_0_][2]\,
      O => \rtx[txclkcnt][6]_i_1_n_0\
    );
\rtx[txclkcnt][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BB8B88B8"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][7]\,
      I1 => \rtx_reg[txclken]__0\,
      I2 => \rtx_reg[txclkcy_n_0_][2]\,
      I3 => p_1_in4_in(0),
      I4 => p_1_in4_in(1),
      O => \rtx[txclkcnt][7]_i_1_n_0\
    );
\rtx[txclkcy][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \rtx_reg[txclkcnt_n_0_][0]\,
      I1 => \rtx_reg[txclkcnt_n_0_][1]\,
      O => \rtx[txclkcy][0]_i_1_n_0\
    );
\rtx[txclkcy][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rtx_reg[txclkcy_n_0_][0]\,
      I1 => p_0_in1_in(1),
      I2 => p_0_in1_in(0),
      O => \rtx[txclkcy][1]_i_1_n_0\
    );
\rtx[txclkcy][2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \rtx_reg[txclkcy_n_0_][1]\,
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      O => \rtx[txclkcy][2]_i_1_n_0\
    );
\rtx[txclkdone][0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \rtx_reg[txclkcnt_n_0_][1]\,
      I1 => p_0_in1_in(0),
      I2 => p_0_in1_in(1),
      I3 => \rtx_reg[txclkcnt_n_0_][0]\,
      O => \rtx[txclkdone][0]_i_1_n_0\
    );
\rtx[txclkdone][1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_1_in4_in(1),
      I1 => p_1_in4_in(0),
      I2 => p_1_in(0),
      I3 => p_1_in(1),
      O => \rtx[txclkdone][1]_i_1_n_0\
    );
\rtx_reg[b_mux]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_sysflip1_n_1,
      Q => \rtx_reg[b_mux]__0\,
      R => synctx_txen_n_4
    );
\rtx_reg[b_token][char][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][0]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(0),
      R => '0'
    );
\rtx_reg[b_token][char][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][1]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(1),
      R => '0'
    );
\rtx_reg[b_token][char][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][2]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(2),
      R => '0'
    );
\rtx_reg[b_token][char][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][3]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(3),
      R => '0'
    );
\rtx_reg[b_token][char][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][4]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(4),
      R => '0'
    );
\rtx_reg[b_token][char][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][5]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(5),
      R => '0'
    );
\rtx_reg[b_token][char][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][6]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(6),
      R => '0'
    );
\rtx_reg[b_token][char][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][char][7]_i_1_n_0\,
      Q => \rtx_reg[b_token][char]\(7),
      R => '0'
    );
\rtx_reg[b_token][fct]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][fct]_i_1_n_0\,
      Q => \rtx_reg[b_token][fct]__0\,
      R => '0'
    );
\rtx_reg[b_token][fctpiggy]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][fctpiggy]_i_1_n_0\,
      Q => \rtx_reg[b_token][fctpiggy]__0\,
      R => '0'
    );
\rtx_reg[b_token][flag]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][flag]_i_1_n_0\,
      Q => \rtx_reg[b_token][flag_n_0_]\,
      R => '0'
    );
\rtx_reg[b_token][tick]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[b_update]__0\,
      D => \rtx[b_token][tick]_i_1_n_0\,
      Q => \rtx_reg[b_token][tick]__0\,
      R => '0'
    );
\rtx_reg[b_txflip]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtxin[b_txflip]\,
      Q => \rtx_reg[b_txflip]__0\,
      R => '0'
    );
\rtx_reg[b_update]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[b_update]_i_2_n_0\,
      Q => \rtx_reg[b_update]__0\,
      R => synctx_txen_n_4
    );
\rtx_reg[b_valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_sysflip1_n_2,
      Q => \rtx_reg[b_valid]__0\,
      R => synctx_txen_n_4
    );
\rtx_reg[c_bits][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[c_bits][0]_i_1_n_0\,
      Q => \rtx_reg[c_bits_n_0_][0]\,
      R => '0'
    );
\rtx_reg[c_bits][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[c_bits][1]_i_1_n_0\,
      Q => \rtx_reg[c_bits_n_0_][1]\,
      R => '0'
    );
\rtx_reg[c_bits][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[c_bits][2]_i_1_n_0\,
      Q => \rtx_reg[c_bits_n_0_][2]\,
      R => '0'
    );
\rtx_reg[c_bits][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[c_update_n_0_]\,
      D => \vtx[c_bits]_rep__4_n_0\,
      Q => \rtx_reg[c_bits_n_0_][3]\,
      R => '0'
    );
\rtx_reg[c_bits][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[c_update_n_0_]\,
      D => \vtx[c_bits]_rep__3_n_0\,
      Q => \rtx_reg[c_bits_n_0_][4]\,
      R => '0'
    );
\rtx_reg[c_bits][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[c_update_n_0_]\,
      D => \vtx[c_bits]_rep__2_n_0\,
      Q => \rtx_reg[c_bits_n_0_][5]\,
      R => '0'
    );
\rtx_reg[c_bits][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[c_update_n_0_]\,
      D => \vtx[c_bits]_rep__1_n_0\,
      Q => \rtx_reg[c_bits_n_0_][6]\,
      R => '0'
    );
\rtx_reg[c_bits][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[c_update_n_0_]\,
      D => \vtx[c_bits]_rep__0_n_0\,
      Q => \rtx_reg[c_bits_n_0_][7]\,
      R => '0'
    );
\rtx_reg[c_bits][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[c_update_n_0_]\,
      D => \vtx[c_bits]_rep_n_0\,
      Q => \rtx_reg[c_bits_n_0_][8]\,
      R => '0'
    );
\rtx_reg[c_busy]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[c_busy]_i_1_n_0\,
      Q => \rtx_reg[c_busy]__0\,
      S => synctx_txen_n_4
    );
\rtx_reg[c_esc]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[c_esc]_i_1_n_0\,
      Q => \rtx_reg[c_esc_n_0_]\,
      S => synctx_txen_n_4
    );
\rtx_reg[c_fct]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[c_fct]_i_1_n_0\,
      Q => \rtx_reg[c_fct_n_0_]\,
      S => synctx_txen_n_4
    );
\rtx_reg[c_update]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_update]0\,
      Q => \rtx_reg[c_update_n_0_]\,
      R => synctx_txen_n_4
    );
\rtx_reg[d_bits][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][0]\,
      Q => \rtx_reg[d_bits_n_0_][0]\,
      S => \vtx[d_bits]\(0)
    );
\rtx_reg[d_bits][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[d_bits][1]_i_1_n_0\,
      Q => \rtx_reg[d_bits_n_0_][1]\,
      R => '0'
    );
\rtx_reg[d_bits][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[d_bits][2]_i_1_n_0\,
      Q => \rtx_reg[d_bits_n_0_][2]\,
      R => '0'
    );
\rtx_reg[d_bits][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][3]\,
      Q => \rtx_reg[d_bits_n_0_][3]\,
      R => \vtx[d_bits]\(0)
    );
\rtx_reg[d_bits][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][4]\,
      Q => \rtx_reg[d_bits_n_0_][4]\,
      R => \vtx[d_bits]\(0)
    );
\rtx_reg[d_bits][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][5]\,
      Q => \rtx_reg[d_bits_n_0_][5]\,
      R => \vtx[d_bits]\(0)
    );
\rtx_reg[d_bits][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][6]\,
      Q => \rtx_reg[d_bits_n_0_][6]\,
      R => \vtx[d_bits]\(0)
    );
\rtx_reg[d_bits][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][7]\,
      Q => \rtx_reg[d_bits_n_0_][7]\,
      R => \vtx[d_bits]\(0)
    );
\rtx_reg[d_bits][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[c_bits_n_0_][8]\,
      Q => \rtx_reg[d_bits_n_0_][8]\,
      R => \vtx[d_bits]\(0)
    );
\rtx_reg[d_cnt10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_txen_n_1,
      Q => \rtx_reg[d_cnt10]__0\,
      R => '0'
    );
\rtx_reg[d_cnt4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_txen_n_2,
      Q => \rtx_reg[d_cnt4]__0\,
      R => '0'
    );
\rtx_reg[e_count][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][0]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][0]\,
      S => synctx_txen_n_4
    );
\rtx_reg[e_count][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][1]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][1]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][2]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][2]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][3]_i_1_n_0\,
      Q => p_0_in29_in,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][4]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][4]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][5]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][5]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][6]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][6]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][7]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][7]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][8]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][8]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_count][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_count][9]_i_1_n_0\,
      Q => \rtx_reg[e_count_n_0_][9]\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_parity]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_parity]_i_1_n_0\,
      Q => \rtx_reg[e_parity]__0\,
      R => synctx_txen_n_4
    );
\rtx_reg[e_shift][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][0]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][0]\,
      R => '0'
    );
\rtx_reg[e_shift][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][1]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][1]\,
      R => '0'
    );
\rtx_reg[e_shift][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][2]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][2]\,
      R => '0'
    );
\rtx_reg[e_shift][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][3]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][3]\,
      R => '0'
    );
\rtx_reg[e_shift][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][4]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][4]\,
      R => '0'
    );
\rtx_reg[e_shift][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][5]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][5]\,
      R => '0'
    );
\rtx_reg[e_shift][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][6]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][6]\,
      R => '0'
    );
\rtx_reg[e_shift][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][7]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][7]\,
      R => '0'
    );
\rtx_reg[e_shift][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][8]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][8]\,
      R => '0'
    );
\rtx_reg[e_shift][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \rtx_reg[txclken]__0\,
      D => \rtx[e_shift][9]_i_1_n_0\,
      Q => \rtx_reg[e_shift_n_0_][9]\,
      R => '0'
    );
\rtx_reg[e_valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[e_valid]_i_1_n_0\,
      Q => \rtx_reg[e_valid_n_0_]\,
      R => synctx_txen_n_4
    );
\rtx_reg[f_spwdo]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[f_spwdo]_i_1_n_0\,
      Q => \rtx_reg[f_spwdo]__0\,
      R => synctx_rst_n_1
    );
\rtx_reg[f_spwso]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_rst_n_0,
      Q => \rtx_reg[f_spwso]__0\,
      R => '0'
    );
\rtx_reg[txclkcnt][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][0]_i_1_n_0\,
      Q => \rtx_reg[txclkcnt_n_0_][0]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][1]_i_1_n_0\,
      Q => \rtx_reg[txclkcnt_n_0_][1]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][2]_i_1_n_0\,
      Q => p_0_in1_in(0),
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][3]_i_1_n_0\,
      Q => p_0_in1_in(1),
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][4]_i_1_n_0\,
      Q => p_1_in(0),
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][5]_i_1_n_0\,
      Q => p_1_in(1),
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][6]_i_1_n_0\,
      Q => p_1_in4_in(0),
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcnt][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcnt][7]_i_1_n_0\,
      Q => p_1_in4_in(1),
      R => synctx_rst_n_1
    );
\rtx_reg[txclkcy][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcy][0]_i_1_n_0\,
      Q => \rtx_reg[txclkcy_n_0_][0]\,
      R => \rtx_reg[txclken]__0\
    );
\rtx_reg[txclkcy][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcy][1]_i_1_n_0\,
      Q => \rtx_reg[txclkcy_n_0_][1]\,
      R => \rtx_reg[txclken]__0\
    );
\rtx_reg[txclkcy][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkcy][2]_i_1_n_0\,
      Q => \rtx_reg[txclkcy_n_0_][2]\,
      R => \rtx_reg[txclken]__0\
    );
\rtx_reg[txclkdiv][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(0),
      Q => \rtx_reg[txclkdiv_n_0_][0]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(1),
      Q => \rtx_reg[txclkdiv_n_0_][1]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(2),
      Q => \rtx_reg[txclkdiv_n_0_][2]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(3),
      Q => \rtx_reg[txclkdiv_n_0_][3]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(4),
      Q => \rtx_reg[txclkdiv_n_0_][4]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(5),
      Q => \rtx_reg[txclkdiv_n_0_][5]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(6),
      Q => \rtx_reg[txclkdiv_n_0_][6]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdiv][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivreg]\(7),
      Q => \rtx_reg[txclkdiv_n_0_][7]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclkdone][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkdone][0]_i_1_n_0\,
      Q => \rtx_reg[txclkdone_n_0_][0]\,
      R => \rtx_reg[txclken]__0\
    );
\rtx_reg[txclkdone][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx[txclkdone][1]_i_1_n_0\,
      Q => \rtx_reg[txclkdone_n_0_][1]\,
      R => \rtx_reg[txclken]__0\
    );
\rtx_reg[txclken]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[txclken]0__0\,
      Q => \rtx_reg[txclken]__0\,
      R => synctx_rst_n_1
    );
\rtx_reg[txclken]0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \rtx_reg[txclkdone_n_0_][1]\,
      I1 => \rtx_reg[txclkdone_n_0_][0]\,
      I2 => \rtx_reg[txclkpre]__0\,
      O => \rtx_reg[txclken]0__0\
    );
\rtx_reg[txclkpre]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[txclkpre]0__0\,
      Q => \rtx_reg[txclkpre]__0\,
      S => synctx_rst_n_1
    );
\rtx_reg[txclkpre]0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \rtx_reg[txclkdiv_n_0_][0]\,
      I1 => \rtx_reg[txclkpre]__0\,
      I2 => \rtx_reg[txdivnorm_n_0_]\,
      O => \rtx_reg[txclkpre]0__0\
    );
\rtx_reg[txdivnorm]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => \synctx[txdivsafe]\,
      D => \r_reg[txdivnorm]__0\,
      Q => \rtx_reg[txdivnorm_n_0_]\,
      R => synctx_rst_n_1
    );
\rtx_reg[txflip0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_sysflip0_n_1,
      Q => \rtx_reg[txflip_n_0_0]\,
      R => synctx_txen_n_4
    );
\rtx_reg[txflip1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => synctx_sysflip1_n_0,
      Q => \rtx_reg[txflip_n_0_1]\,
      R => synctx_txen_n_4
    );
s_spwdo_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[f_spwdo]__0\,
      Q => spw_do_OBUF,
      R => '0'
    );
s_spwso_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => txclk_IBUF_BUFG,
      CE => '1',
      D => \rtx_reg[f_spwso]__0\,
      Q => spw_so_OBUF,
      R => '0'
    );
syncsys_txflip0: entity work.syncdff
     port map (
      E(0) => \v[token0][tick]\,
      \out\ => \syncsys[txflip0]\,
      \r_reg[allow_fct]\ => syncsys_txflip0_n_5,
      \r_reg[pend_char]\ => \^r_reg[allow_char]__0\,
      \r_reg[pend_char]_0\ => \r[pend_char]_i_2_n_0\,
      \r_reg[pend_char]_1\ => \^r_reg[pend_char]__0\,
      \r_reg[pend_fct]\ => syncsys_txflip0_n_4,
      \r_reg[pend_fct]_0\ => \r_reg[pend_fct]_0\,
      \r_reg[pend_tick]\ => syncsys_txflip0_n_3,
      \r_reg[pend_tick]_0\(0) => \r_reg[pend_tick]_0\(0),
      \r_reg[pend_tick]__0\ => \r_reg[pend_tick]__0\,
      \r_reg[sent_fct]\ => \syncsys[txflip1]\,
      \r_reg[sent_fct]_0\ => \^r_reg[pend_fct]__0\,
      \r_reg[sent_fct]_1\ => \^r_reg[allow_fct]__0\,
      \r_reg[sent_fct]__0\ => \^r_reg[sent_fct]__0\,
      \r_reg[sysflip0]__0\ => \r_reg[sysflip0]__0\,
      \r_reg[sysflip1]__0\ => \r_reg[sysflip1]__0\,
      \r_reg[token0][char][7]\ => \r[token1][fctpiggy]_i_4_n_0\,
      \r_reg[tokmux]\ => syncsys_txflip0_n_6,
      \r_reg[tokmux]__0\ => \r_reg[tokmux]__0\,
      \rin[sent_fct]\ => \rin[sent_fct]\,
      rst_logic_IBUF => rst_logic_IBUF,
      s_tc_in => s_tc_in,
      s_tc_in_reg => syncsys_txflip0_n_2,
      syncdff_ff1_reg_0 => \rtx_reg[txflip_n_0_0]\,
      syncdff_ff2_reg_0 => syncdff_ff2_reg,
      v_havetoken124_out => v_havetoken124_out,
      \xmiti[txen]\ => \xmiti[txen]\
    );
syncsys_txflip1: entity work.syncdff_1
     port map (
      E(0) => \v[token1][tick]\,
      \out\ => \syncsys[txflip1]\,
      \r_reg[sysflip0]__0\ => \r_reg[sysflip0]__0\,
      \r_reg[sysflip1]__0\ => \r_reg[sysflip1]__0\,
      \r_reg[tokmux]\ => syncsys_txflip1_n_2,
      \r_reg[tokmux]_0\ => syncsys_txflip1_n_3,
      \r_reg[tokmux]_1\ => \r[token1][fctpiggy]_i_4_n_0\,
      \r_reg[tokmux]_2\ => \syncsys[txflip0]\,
      \r_reg[tokmux]__0\ => \r_reg[tokmux]__0\,
      rst_logic_IBUF => rst_logic_IBUF,
      syncdff_ff1_reg_0 => \rtx_reg[txflip_n_0_1]\,
      syncdff_ff2_reg_0 => syncdff_ff2_reg,
      \xmiti[txen]\ => \xmiti[txen]\
    );
synctx_rst: entity work.syncdff_2
     port map (
      Q(0) => \rtx_reg[e_shift_n_0_][0]\,
      SR(0) => synctx_rst_n_1,
      rst_logic_IBUF => rst_logic_IBUF,
      \rtx_reg[f_spwdo]__0\ => \rtx_reg[f_spwdo]__0\,
      \rtx_reg[f_spwso]\ => synctx_rst_n_0,
      \rtx_reg[f_spwso]_0\ => \rtx_reg[e_valid_n_0_]\,
      \rtx_reg[f_spwso]__0\ => \rtx_reg[f_spwso]__0\,
      \rtx_reg[txclken]__0\ => \rtx_reg[txclken]__0\,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG
    );
synctx_sysflip0: entity work.syncdff_3
     port map (
      \out\ => \synctx[sysflip0]\,
      \r_reg[sysflip0]__0\ => \r_reg[sysflip0]__0\,
      rst_logic_IBUF => rst_logic_IBUF,
      \rtx_reg[b_mux]__0\ => \rtx_reg[b_mux]__0\,
      \rtx_reg[b_update]__0\ => \rtx_reg[b_update]__0\,
      \rtx_reg[txflip0]\ => \rtx_reg[txflip_n_0_0]\,
      syncdff_ff2_reg_0 => synctx_sysflip0_n_1,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG
    );
synctx_sysflip1: entity work.syncdff_4
     port map (
      \out\ => \synctx[sysflip0]\,
      \r_reg[sysflip1]__0\ => \r_reg[sysflip1]__0\,
      rst_logic_IBUF => rst_logic_IBUF,
      \rtx_reg[b_mux]__0\ => \rtx_reg[b_mux]__0\,
      \rtx_reg[b_txflip]__0\ => \rtx_reg[b_txflip]__0\,
      \rtx_reg[b_update]__0\ => \rtx_reg[b_update]__0\,
      \rtx_reg[b_valid]__0\ => \rtx_reg[b_valid]__0\,
      \rtx_reg[txflip1]\ => \rtx_reg[txflip_n_0_1]\,
      syncdff_ff2_reg_0 => synctx_sysflip1_n_0,
      syncdff_ff2_reg_1 => synctx_sysflip1_n_1,
      syncdff_ff2_reg_2 => synctx_sysflip1_n_2,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG
    );
synctx_txdivsafe: entity work.syncdff_5
     port map (
      E(0) => \synctx[txdivsafe]\,
      rst_logic_IBUF => rst_logic_IBUF,
      syncdff_ff1_reg_0 => \r_reg[txdivsafe_n_0_]\,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG
    );
synctx_txen: entity work.syncdff_6
     port map (
      SR(0) => \vtx[d_bits]\(0),
      \out\ => \synctx[txen]\,
      \r_reg[txenreg]\ => \^r_reg[txenreg]\,
      rst_logic_IBUF => rst_logic_IBUF,
      \rtx_reg[c_bits][0]\ => synctx_txen_n_1,
      \rtx_reg[c_bits][0]_0\ => synctx_txen_n_2,
      \rtx_reg[d_cnt10]\ => \rtx_reg[c_bits_n_0_][0]\,
      \rtx_reg[d_cnt10]_0\ => \rtx_reg[c_esc_n_0_]\,
      \rtx_reg[d_cnt10]_1\ => \rtx_reg[c_fct_n_0_]\,
      syncdff_ff2_reg_0(0) => synctx_txen_n_4,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG
    );
\vtx[c_bits]_rep\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rtx_reg[b_token][flag_n_0_]\,
      I1 => \rtx_reg[b_token][char]\(7),
      O => \vtx[c_bits]_rep_n_0\
    );
\vtx[c_bits]_rep__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rtx_reg[b_token][flag_n_0_]\,
      I1 => \rtx_reg[b_token][char]\(6),
      O => \vtx[c_bits]_rep__0_n_0\
    );
\vtx[c_bits]_rep__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rtx_reg[b_token][flag_n_0_]\,
      I1 => \rtx_reg[b_token][char]\(5),
      O => \vtx[c_bits]_rep__1_n_0\
    );
\vtx[c_bits]_rep__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rtx_reg[b_token][flag_n_0_]\,
      I1 => \rtx_reg[b_token][char]\(4),
      O => \vtx[c_bits]_rep__2_n_0\
    );
\vtx[c_bits]_rep__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rtx_reg[b_token][flag_n_0_]\,
      I1 => \rtx_reg[b_token][char]\(3),
      O => \vtx[c_bits]_rep__3_n_0\
    );
\vtx[c_bits]_rep__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \rtx_reg[b_token][flag_n_0_]\,
      I1 => \rtx_reg[b_token][char]\(2),
      O => \vtx[c_bits]_rep__4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity spwstream is
  port (
    DOBDO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOPBDOP : out STD_LOGIC_VECTOR ( 0 to 0 );
    \xmiti[fct_in]\ : out STD_LOGIC;
    spw_do_OBUF : out STD_LOGIC;
    spw_so_OBUF : out STD_LOGIC;
    \r_reg[txfull]_0\ : out STD_LOGIC;
    \r_reg[txhalff]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_rxvalid : out STD_LOGIC;
    \recvo[gotnull]\ : out STD_LOGIC;
    \FSM_onehot_r_reg[state][3]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_tc_out : out STD_LOGIC;
    \r_reg[txdivsafe]\ : out STD_LOGIC;
    \r_reg[timereg][7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    syncdff_ff2_reg : in STD_LOGIC;
    s_mem_reg : in STD_LOGIC;
    WEA : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DIPADIP : in STD_LOGIC_VECTOR ( 0 to 0 );
    rst_logic_IBUF : in STD_LOGIC;
    txclk_IBUF_BUFG : in STD_LOGIC;
    rxclk_IBUF_BUFG : in STD_LOGIC;
    spw_di_IBUF : in STD_LOGIC;
    spw_si_IBUF : in STD_LOGIC;
    \r_reg[timercnt][0]\ : in STD_LOGIC;
    linkdis : in STD_LOGIC;
    s_tc_in : in STD_LOGIC;
    \r_reg[txdivnorm]\ : in STD_LOGIC;
    \r_reg[txdivreg][7]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_txwrite : in STD_LOGIC;
    s_rxread : in STD_LOGIC;
    \r_reg[pend_time][7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end spwstream;

architecture STRUCTURE of spwstream is
  signal \^fsm_onehot_r_reg[state][3]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal L0_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal L2_out : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal divcnt : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal link_inst_n_10 : STD_LOGIC;
  signal link_inst_n_14 : STD_LOGIC;
  signal link_inst_n_17 : STD_LOGIC;
  signal link_inst_n_2 : STD_LOGIC;
  signal link_inst_n_22 : STD_LOGIC;
  signal link_inst_n_24 : STD_LOGIC;
  signal link_inst_n_4 : STD_LOGIC;
  signal link_inst_n_42 : STD_LOGIC;
  signal link_inst_n_43 : STD_LOGIC;
  signal link_inst_n_44 : STD_LOGIC;
  signal link_inst_n_45 : STD_LOGIC;
  signal link_inst_n_46 : STD_LOGIC;
  signal link_inst_n_47 : STD_LOGIC;
  signal link_inst_n_48 : STD_LOGIC;
  signal link_inst_n_49 : STD_LOGIC;
  signal link_inst_n_5 : STD_LOGIC;
  signal \linko[started]1\ : STD_LOGIC;
  signal \plusOp__20_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__20_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__20_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__20_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__20_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__20_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__20_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__20_carry_n_0\ : STD_LOGIC;
  signal \plusOp__20_carry_n_1\ : STD_LOGIC;
  signal \plusOp__20_carry_n_2\ : STD_LOGIC;
  signal \plusOp__20_carry_n_3\ : STD_LOGIC;
  signal \plusOp__41_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__41_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__41_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__41_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__41_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__41_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \plusOp__41_carry_n_0\ : STD_LOGIC;
  signal \plusOp__41_carry_n_1\ : STD_LOGIC;
  signal \plusOp__41_carry_n_2\ : STD_LOGIC;
  signal \plusOp__41_carry_n_3\ : STD_LOGIC;
  signal \plusOp__62_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__62_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__62_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__62_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__62_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__62_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__62_carry_n_0\ : STD_LOGIC;
  signal \plusOp__62_carry_n_1\ : STD_LOGIC;
  signal \plusOp__62_carry_n_2\ : STD_LOGIC;
  signal \plusOp__62_carry_n_3\ : STD_LOGIC;
  signal \plusOp__63_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp__63_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp__63_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp__63_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp__63_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp__63_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp__63_carry_n_0\ : STD_LOGIC;
  signal \plusOp__63_carry_n_1\ : STD_LOGIC;
  signal \plusOp__63_carry_n_2\ : STD_LOGIC;
  signal \plusOp__63_carry_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \r[rxfifo_raddr][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_10_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_11_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_12_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_13_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_15_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_16_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_17_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_4_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_5_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_6_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_7_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_8_n_0\ : STD_LOGIC;
  signal \r[rxfull]_i_9_n_0\ : STD_LOGIC;
  signal \r[rxroom][3]_i_2_n_0\ : STD_LOGIC;
  signal \r[rxroom][3]_i_3_n_0\ : STD_LOGIC;
  signal \r[rxroom][3]_i_4_n_0\ : STD_LOGIC;
  signal \r[rxroom][3]_i_5_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_10_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_1_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_4_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_5_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_6_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_7_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_8_n_0\ : STD_LOGIC;
  signal \r[rxroom][5]_i_9_n_0\ : STD_LOGIC;
  signal \r[txfifo_waddr][0]_i_1_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_10_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_11_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_12_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_13_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_17_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_18_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_19_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_20_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_4_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_5_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_6_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_7_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_8_n_0\ : STD_LOGIC;
  signal \r[txfull]_i_9_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_10_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_11_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_13_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_14_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_15_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_16_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_4_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_5_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_6_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_8_n_0\ : STD_LOGIC;
  signal \r[txhalff]_i_9_n_0\ : STD_LOGIC;
  signal \r_reg[allow_char]0\ : STD_LOGIC;
  signal \r_reg[allow_char]__0\ : STD_LOGIC;
  signal \r_reg[allow_fct]__0\ : STD_LOGIC;
  signal \r_reg[inact]\ : STD_LOGIC;
  signal \r_reg[pend_char]__0\ : STD_LOGIC;
  signal \r_reg[pend_fct]__0\ : STD_LOGIC;
  signal \r_reg[rx_credit]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r_reg[rxeep]__0\ : STD_LOGIC;
  signal \r_reg[rxfifo_raddr]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \r_reg[rxfifo_rvalid]2\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_i_4_n_0\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_n_1\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_n_2\ : STD_LOGIC;
  signal \r_reg[rxfifo_rvalid]2_carry_n_3\ : STD_LOGIC;
  signal \r_reg[rxfifo_waddr]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \r_reg[rxfull]__0\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_14_n_2\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_14_n_3\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_2_n_1\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_3_n_1\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_3_n_2\ : STD_LOGIC;
  signal \r_reg[rxfull]_i_3_n_3\ : STD_LOGIC;
  signal \r_reg[rxpacket_n_0_]\ : STD_LOGIC;
  signal \r_reg[rxroom]\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \r_reg[rxroom][3]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg[rxroom][3]_i_1_n_7\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_1\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_4\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_5\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_6\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_2_n_7\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_3_n_2\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_3_n_3\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_3_n_5\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_3_n_6\ : STD_LOGIC;
  signal \r_reg[rxroom][5]_i_3_n_7\ : STD_LOGIC;
  signal \r_reg[sent_fct]__0\ : STD_LOGIC;
  signal \r_reg[timerdone]__0\ : STD_LOGIC;
  signal \r_reg[txdiscard]__0\ : STD_LOGIC;
  signal \r_reg[txenreg]\ : STD_LOGIC;
  signal \r_reg[txfifo_raddr]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \r_reg[txfifo_rvalid]2\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]2_carry_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]2_carry_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]2_carry_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]2_carry_n_1\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]2_carry_n_2\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]2_carry_n_3\ : STD_LOGIC;
  signal \r_reg[txfifo_rvalid]__0\ : STD_LOGIC;
  signal \r_reg[txfifo_waddr]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^r_reg[txfull]_0\ : STD_LOGIC;
  signal \r_reg[txfull]_i_14_n_2\ : STD_LOGIC;
  signal \r_reg[txfull]_i_14_n_3\ : STD_LOGIC;
  signal \r_reg[txfull]_i_15_n_0\ : STD_LOGIC;
  signal \r_reg[txfull]_i_15_n_1\ : STD_LOGIC;
  signal \r_reg[txfull]_i_15_n_2\ : STD_LOGIC;
  signal \r_reg[txfull]_i_15_n_3\ : STD_LOGIC;
  signal \r_reg[txfull]_i_16_n_0\ : STD_LOGIC;
  signal \r_reg[txfull]_i_16_n_1\ : STD_LOGIC;
  signal \r_reg[txfull]_i_16_n_2\ : STD_LOGIC;
  signal \r_reg[txfull]_i_16_n_3\ : STD_LOGIC;
  signal \r_reg[txfull]_i_2_n_0\ : STD_LOGIC;
  signal \r_reg[txfull]_i_2_n_1\ : STD_LOGIC;
  signal \r_reg[txfull]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[txfull]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[txfull]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[txfull]_i_3_n_1\ : STD_LOGIC;
  signal \r_reg[txfull]_i_3_n_2\ : STD_LOGIC;
  signal \r_reg[txfull]_i_3_n_3\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_12_n_2\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_12_n_3\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_2_n_5\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_3_n_0\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_3_n_1\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_3_n_2\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_3_n_3\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_7_n_0\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_7_n_1\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_7_n_2\ : STD_LOGIC;
  signal \r_reg[txhalff]_i_7_n_3\ : STD_LOGIC;
  signal \r_reg[txpacket]__0\ : STD_LOGIC;
  signal recv_inbits : STD_LOGIC;
  signal recv_inbvalid : STD_LOGIC;
  signal recv_inst_n_10 : STD_LOGIC;
  signal recv_inst_n_11 : STD_LOGIC;
  signal recv_inst_n_12 : STD_LOGIC;
  signal recv_inst_n_13 : STD_LOGIC;
  signal recv_inst_n_14 : STD_LOGIC;
  signal recv_inst_n_16 : STD_LOGIC;
  signal recv_inst_n_19 : STD_LOGIC;
  signal recv_inst_n_29 : STD_LOGIC;
  signal recv_inst_n_4 : STD_LOGIC;
  signal recv_inst_n_7 : STD_LOGIC;
  signal recv_inst_n_8 : STD_LOGIC;
  signal recv_inst_n_9 : STD_LOGIC;
  signal \recvfront_sel1.recvfront_fast_inst_n_4\ : STD_LOGIC;
  signal \recvfront_sel1.recvfront_fast_inst_n_5\ : STD_LOGIC;
  signal \recvfront_sel1.recvfront_fast_inst_n_6\ : STD_LOGIC;
  signal \recvo[erresc]\ : STD_LOGIC;
  signal \recvo[errpar]\ : STD_LOGIC;
  signal \recvo[gotfct]\ : STD_LOGIC;
  signal \^recvo[gotnull]\ : STD_LOGIC;
  signal \recvo[rxchar]\ : STD_LOGIC;
  signal \recvo[tick_out]\ : STD_LOGIC;
  signal \rin[rxfull]\ : STD_LOGIC;
  signal \rin[rxhalff]\ : STD_LOGIC;
  signal \rin[sent_fct]\ : STD_LOGIC;
  signal \rin[txfull]\ : STD_LOGIC;
  signal \rin[txhalff]\ : STD_LOGIC;
  signal \^s_rxvalid\ : STD_LOGIC;
  signal s_txfifo_rdata : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \v[errcred]\ : STD_LOGIC;
  signal \v[escaped]\ : STD_LOGIC;
  signal \v[parity]14_out\ : STD_LOGIC;
  signal \v[pend_data]\ : STD_LOGIC;
  signal \v[pend_time]\ : STD_LOGIC;
  signal \v[rxeep]3_out\ : STD_LOGIC;
  signal \v[rxfifo_raddr]\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \v[rxfifo_raddr]_1\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \v[rxfifo_waddr]\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \v[rxfifo_waddr]_0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \v[txdivnorm]\ : STD_LOGIC;
  signal \v[txfifo_raddr]\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \v[txfifo_raddr]_3\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \v[txfifo_waddr]\ : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal \v[txfifo_waddr]_2\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal wdata : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wen : STD_LOGIC;
  signal \^xmiti[fct_in]\ : STD_LOGIC;
  signal \xmiti[txen]\ : STD_LOGIC;
  signal \NLW_plusOp__20_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp__20_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp__41_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp__41_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp__62_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp__62_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp__63_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_plusOp__63_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp__63_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[rxfifo_rvalid]2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[rxfull]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_reg[rxfull]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[rxroom][5]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_reg[rxroom][5]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[txfifo_rvalid]2_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[txfull]_i_14_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_reg[txfull]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[txfull]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_r_reg[txhalff]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_reg[txhalff]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[txhalff]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_reg[txhalff]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[txhalff]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[txhalff]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \plusOp__20_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__20_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__20_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__41_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__41_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__41_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__62_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__62_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__62_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__63_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__63_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp__63_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxfull]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxfull]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxfull]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxroom][3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxroom][5]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[rxroom][5]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txfull]_i_14\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txfull]_i_15\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txfull]_i_16\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txfull]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txfull]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txhalff]_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txhalff]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txhalff]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \r_reg[txhalff]_i_7\ : label is 35;
begin
  \FSM_onehot_r_reg[state][3]\(2 downto 0) <= \^fsm_onehot_r_reg[state][3]\(2 downto 0);
  \r_reg[txfull]_0\ <= \^r_reg[txfull]_0\;
  \recvo[gotnull]\ <= \^recvo[gotnull]\;
  s_rxvalid <= \^s_rxvalid\;
  \xmiti[fct_in]\ <= \^xmiti[fct_in]\;
link_inst: entity work.spwlink
     port map (
      ADDRBWRADDR(0) => \v[txfifo_raddr]_3\(0),
      D(0) => s_txfifo_rdata(8),
      E(0) => \v[pend_time]\,
      \FSM_onehot_r_reg[state][0]_0\(0) => link_inst_n_24,
      \FSM_onehot_r_reg[state][0]_1\ => link_inst_n_48,
      \FSM_onehot_r_reg[state][0]_2\ => link_inst_n_49,
      \FSM_onehot_r_reg[state][0]_3\ => recv_inst_n_12,
      \FSM_onehot_r_reg[state][0]_4\ => recv_inst_n_7,
      \FSM_onehot_r_reg[state][1]_0\(5 downto 2) => divcnt(7 downto 4),
      \FSM_onehot_r_reg[state][1]_0\(1 downto 0) => divcnt(2 downto 1),
      \FSM_onehot_r_reg[state][1]_1\ => link_inst_n_47,
      \FSM_onehot_r_reg[state][1]_2\ => recv_inst_n_8,
      \FSM_onehot_r_reg[state][4]_0\(2) => recv_inst_n_9,
      \FSM_onehot_r_reg[state][4]_0\(1) => recv_inst_n_10,
      \FSM_onehot_r_reg[state][4]_0\(0) => recv_inst_n_11,
      \FSM_onehot_r_reg[state][5]_0\(5) => link_inst_n_4,
      \FSM_onehot_r_reg[state][5]_0\(4) => link_inst_n_5,
      \FSM_onehot_r_reg[state][5]_0\(3 downto 1) => \^fsm_onehot_r_reg[state][3]\(2 downto 0),
      \FSM_onehot_r_reg[state][5]_0\(0) => \v[errcred]\,
      O(1 downto 0) => \v[txfifo_raddr]_3\(2 downto 1),
      Q(2 downto 0) => \r_reg[txfifo_waddr]\(2 downto 0),
      S(0) => link_inst_n_2,
      SR(0) => link_inst_n_22,
      linkdis => linkdis,
      linkdis_reg => link_inst_n_14,
      \linko[started]1\ => \linko[started]1\,
      \r[rxfull]_i_17\(10 downto 0) => \r_reg[rxfifo_waddr]\(10 downto 0),
      \r_reg[allow_char]0\ => \r_reg[allow_char]0\,
      \r_reg[allow_char]__0\ => \r_reg[allow_char]__0\,
      \r_reg[allow_fct]__0\ => \r_reg[allow_fct]__0\,
      \r_reg[errcred]_0\(2 downto 0) => \r_reg[txhalff]_0\(3 downto 1),
      \r_reg[inact]\ => \r_reg[inact]\,
      \r_reg[inact]__0\ => \recvfront_sel1.recvfront_fast_inst_n_4\,
      \r_reg[inbvalid]\ => \recvfront_sel1.recvfront_fast_inst_n_5\,
      \r_reg[pend_char]__0\ => \r_reg[pend_char]__0\,
      \r_reg[pend_fct]__0\ => \r_reg[pend_fct]__0\,
      \r_reg[rx_credit][0]_0\(0) => \r_reg[rx_credit]\(0),
      \r_reg[rx_credit][0]_1\(0) => recv_inst_n_19,
      \r_reg[rxeep]\ => \r_reg[rxpacket_n_0_]\,
      \r_reg[rxeep]__0\ => \r_reg[rxeep]__0\,
      \r_reg[rxfifo_waddr][0]\(0) => link_inst_n_42,
      \r_reg[rxfifo_waddr][0]_0\(0) => link_inst_n_43,
      \r_reg[rxfull]__0\ => \r_reg[rxfull]__0\,
      \r_reg[sent_fct]__0\ => \r_reg[sent_fct]__0\,
      \r_reg[timercnt][0]_0\ => \r_reg[timercnt][0]\,
      \r_reg[timercnt][0]_1\ => recv_inst_n_13,
      \r_reg[timercnt][0]_2\ => \^recvo[gotnull]\,
      \r_reg[timercnt][9]_0\ => link_inst_n_10,
      \r_reg[timerdone]__0\ => \r_reg[timerdone]__0\,
      \r_reg[tx_credit][3]_0\ => link_inst_n_17,
      \r_reg[tx_credit][5]_0\ => syncdff_ff2_reg,
      \r_reg[txdiscard]__0\ => \r_reg[txdiscard]__0\,
      \r_reg[txdivreg][7]\(5 downto 0) => \r_reg[txdivreg][7]\(5 downto 0),
      \r_reg[txenreg]\ => \r_reg[txenreg]\,
      \r_reg[txenreg]__0\(0) => \v[txdivnorm]\,
      \r_reg[txfifo_raddr][0]\(0) => link_inst_n_44,
      \r_reg[txfifo_raddr][0]_0\(0) => link_inst_n_45,
      \r_reg[txfifo_rvalid]__0\ => \r_reg[txfifo_rvalid]__0\,
      \r_reg[txpacket]\ => link_inst_n_46,
      \r_reg[txpacket]__0\ => \r_reg[txpacket]__0\,
      \r_reg[xmit_fct_in]_0\ => \^xmiti[fct_in]\,
      \r_reg[xmit_fct_in]_1\(5 downto 0) => \r_reg[rxroom]\(5 downto 0),
      \recvo[erresc]\ => \recvo[erresc]\,
      \recvo[errpar]\ => \recvo[errpar]\,
      \recvo[gotfct]\ => \recvo[gotfct]\,
      \recvo[rxchar]\ => \recvo[rxchar]\,
      \recvo[tick_out]\ => \recvo[tick_out]\,
      \rin[sent_fct]\ => \rin[sent_fct]\,
      rst_logic_IBUF => rst_logic_IBUF,
      s_mem_reg(0) => \r_reg[txfifo_raddr]\(0),
      s_tc_in => s_tc_in,
      \v[parity]14_out\ => \v[parity]14_out\,
      \v[pend_data]\ => \v[pend_data]\,
      \v[rxeep]3_out\ => \v[rxeep]3_out\,
      \v[rxfifo_waddr]_0\(9 downto 0) => \v[rxfifo_waddr]_0\(10 downto 1),
      \xmiti[txen]\ => \xmiti[txen]\
    );
\plusOp__20_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp__20_carry_n_0\,
      CO(2) => \plusOp__20_carry_n_1\,
      CO(1) => \plusOp__20_carry_n_2\,
      CO(0) => \plusOp__20_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_reg[rxfifo_raddr]\(0),
      O(3 downto 1) => \v[rxfifo_raddr]\(3 downto 1),
      O(0) => \v[rxfifo_raddr]_1\(0),
      S(3 downto 1) => \r_reg[rxfifo_raddr]\(3 downto 1),
      S(0) => \plusOp__20_carry_i_1_n_0\
    );
\plusOp__20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__20_carry_n_0\,
      CO(3) => \plusOp__20_carry__0_n_0\,
      CO(2) => \plusOp__20_carry__0_n_1\,
      CO(1) => \plusOp__20_carry__0_n_2\,
      CO(0) => \plusOp__20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[rxfifo_raddr]\(7 downto 4),
      S(3 downto 0) => \r_reg[rxfifo_raddr]\(7 downto 4)
    );
\plusOp__20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__20_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp__20_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp__20_carry__1_n_2\,
      CO(0) => \plusOp__20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp__20_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[rxfifo_raddr]\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \r_reg[rxfifo_raddr]\(10 downto 8)
    );
\plusOp__20_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(0),
      I1 => \^s_rxvalid\,
      I2 => s_rxread,
      O => \plusOp__20_carry_i_1_n_0\
    );
\plusOp__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp__41_carry_n_0\,
      CO(2) => \plusOp__41_carry_n_1\,
      CO(1) => \plusOp__41_carry_n_2\,
      CO(0) => \plusOp__41_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_reg[txfifo_waddr]\(0),
      O(3 downto 1) => \v[txfifo_waddr]\(3 downto 1),
      O(0) => \v[txfifo_waddr]_2\(0),
      S(3 downto 1) => \r_reg[txfifo_waddr]\(3 downto 1),
      S(0) => \plusOp__41_carry_i_1_n_0\
    );
\plusOp__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__41_carry_n_0\,
      CO(3) => \plusOp__41_carry__0_n_0\,
      CO(2) => \plusOp__41_carry__0_n_1\,
      CO(1) => \plusOp__41_carry__0_n_2\,
      CO(0) => \plusOp__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[txfifo_waddr]\(7 downto 4),
      S(3 downto 0) => \r_reg[txfifo_waddr]\(7 downto 4)
    );
\plusOp__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__41_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp__41_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp__41_carry__1_n_2\,
      CO(0) => \plusOp__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp__41_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[txfifo_waddr]\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \r_reg[txfifo_waddr]\(10 downto 8)
    );
\plusOp__41_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \r_reg[txfifo_waddr]\(0),
      I1 => \^r_reg[txfull]_0\,
      I2 => s_txwrite,
      O => \plusOp__41_carry_i_1_n_0\
    );
\plusOp__62_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp__62_carry_n_0\,
      CO(2) => \plusOp__62_carry_n_1\,
      CO(1) => \plusOp__62_carry_n_2\,
      CO(0) => \plusOp__62_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_reg[txfifo_raddr]\(0),
      O(3 downto 0) => \v[txfifo_raddr]\(3 downto 0),
      S(3 downto 1) => \r_reg[txfifo_raddr]\(3 downto 1),
      S(0) => link_inst_n_44
    );
\plusOp__62_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__62_carry_n_0\,
      CO(3) => \plusOp__62_carry__0_n_0\,
      CO(2) => \plusOp__62_carry__0_n_1\,
      CO(1) => \plusOp__62_carry__0_n_2\,
      CO(0) => \plusOp__62_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[txfifo_raddr]\(7 downto 4),
      S(3 downto 0) => \r_reg[txfifo_raddr]\(7 downto 4)
    );
\plusOp__62_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__62_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp__62_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp__62_carry__1_n_2\,
      CO(0) => \plusOp__62_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp__62_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[txfifo_raddr]\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \r_reg[txfifo_raddr]\(10 downto 8)
    );
\plusOp__63_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \plusOp__63_carry_n_0\,
      CO(2) => \plusOp__63_carry_n_1\,
      CO(1) => \plusOp__63_carry_n_2\,
      CO(0) => \plusOp__63_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_reg[txfifo_raddr]\(0),
      O(3 downto 1) => \v[txfifo_raddr]_3\(3 downto 1),
      O(0) => \NLW_plusOp__63_carry_O_UNCONNECTED\(0),
      S(3 downto 1) => \r_reg[txfifo_raddr]\(3 downto 1),
      S(0) => link_inst_n_45
    );
\plusOp__63_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__63_carry_n_0\,
      CO(3) => \plusOp__63_carry__0_n_0\,
      CO(2) => \plusOp__63_carry__0_n_1\,
      CO(1) => \plusOp__63_carry__0_n_2\,
      CO(0) => \plusOp__63_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[txfifo_raddr]_3\(7 downto 4),
      S(3 downto 0) => \r_reg[txfifo_raddr]\(7 downto 4)
    );
\plusOp__63_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp__63_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp__63_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp__63_carry__1_n_2\,
      CO(0) => \plusOp__63_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp__63_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[txfifo_raddr]_3\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \r_reg[txfifo_raddr]\(10 downto 8)
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_reg[rxfifo_waddr]\(0),
      O(3 downto 1) => \v[rxfifo_waddr]\(3 downto 1),
      O(0) => \v[rxfifo_waddr]_0\(0),
      S(3 downto 1) => \r_reg[rxfifo_waddr]\(3 downto 1),
      S(0) => link_inst_n_43
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[rxfifo_waddr]\(7 downto 4),
      S(3 downto 0) => \r_reg[rxfifo_waddr]\(7 downto 4)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[rxfifo_waddr]\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \r_reg[rxfifo_waddr]\(10 downto 8)
    );
\r[rxfifo_raddr][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(0),
      I1 => \^s_rxvalid\,
      I2 => s_rxread,
      O => \r[rxfifo_raddr][0]_i_1_n_0\
    );
\r[rxfull]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => L2_out(4),
      I1 => L2_out(1),
      I2 => L2_out(6),
      I3 => \r[rxfull]_i_4_n_0\,
      I4 => \r[rxfull]_i_5_n_0\,
      O => \rin[rxfull]\
    );
\r[rxfull]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(3),
      I1 => \v[rxfifo_waddr]_0\(3),
      O => \r[rxfull]_i_10_n_0\
    );
\r[rxfull]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(2),
      I1 => \v[rxfifo_waddr]_0\(2),
      O => \r[rxfull]_i_11_n_0\
    );
\r[rxfull]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(1),
      I1 => \v[rxfifo_waddr]_0\(1),
      O => \r[rxfull]_i_12_n_0\
    );
\r[rxfull]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(0),
      I1 => \v[rxfifo_waddr]_0\(0),
      O => \r[rxfull]_i_13_n_0\
    );
\r[rxfull]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(10),
      I1 => \v[rxfifo_waddr]_0\(10),
      O => \r[rxfull]_i_15_n_0\
    );
\r[rxfull]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(9),
      I1 => \v[rxfifo_waddr]_0\(9),
      O => \r[rxfull]_i_16_n_0\
    );
\r[rxfull]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(8),
      I1 => \v[rxfifo_waddr]_0\(8),
      O => \r[rxfull]_i_17_n_0\
    );
\r[rxfull]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => L2_out(8),
      I1 => L2_out(2),
      I2 => L2_out(7),
      I3 => L2_out(5),
      O => \r[rxfull]_i_4_n_0\
    );
\r[rxfull]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => L2_out(9),
      I1 => L2_out(10),
      I2 => L2_out(0),
      I3 => L2_out(3),
      O => \r[rxfull]_i_5_n_0\
    );
\r[rxfull]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(7),
      I1 => \v[rxfifo_waddr]_0\(7),
      O => \r[rxfull]_i_6_n_0\
    );
\r[rxfull]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(6),
      I1 => \v[rxfifo_waddr]_0\(6),
      O => \r[rxfull]_i_7_n_0\
    );
\r[rxfull]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(5),
      I1 => \v[rxfifo_waddr]_0\(5),
      O => \r[rxfull]_i_8_n_0\
    );
\r[rxfull]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(4),
      I1 => \v[rxfifo_waddr]_0\(4),
      O => \r[rxfull]_i_9_n_0\
    );
\r[rxhalff]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_reg[rxroom][5]_i_3_n_5\,
      O => \rin[rxhalff]\
    );
\r[rxroom][3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(3),
      I1 => \v[rxfifo_waddr]_0\(3),
      O => \r[rxroom][3]_i_2_n_0\
    );
\r[rxroom][3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(2),
      I1 => \v[rxfifo_waddr]_0\(2),
      O => \r[rxroom][3]_i_3_n_0\
    );
\r[rxroom][3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(1),
      I1 => \v[rxfifo_waddr]_0\(1),
      O => \r[rxroom][3]_i_4_n_0\
    );
\r[rxroom][3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(0),
      I1 => \v[rxfifo_waddr]_0\(0),
      O => \r[rxroom][3]_i_5_n_0\
    );
\r[rxroom][5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \r_reg[rxroom][5]_i_3_n_6\,
      I1 => \r_reg[rxroom][5]_i_3_n_5\,
      I2 => \r_reg[rxroom][5]_i_2_n_4\,
      I3 => \r_reg[rxroom][5]_i_2_n_5\,
      I4 => \r_reg[rxroom][5]_i_3_n_7\,
      O => \r[rxroom][5]_i_1_n_0\
    );
\r[rxroom][5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(8),
      I1 => \v[rxfifo_waddr]_0\(8),
      O => \r[rxroom][5]_i_10_n_0\
    );
\r[rxroom][5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(7),
      I1 => \v[rxfifo_waddr]_0\(7),
      O => \r[rxroom][5]_i_4_n_0\
    );
\r[rxroom][5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(6),
      I1 => \v[rxfifo_waddr]_0\(6),
      O => \r[rxroom][5]_i_5_n_0\
    );
\r[rxroom][5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(5),
      I1 => \v[rxfifo_waddr]_0\(5),
      O => \r[rxroom][5]_i_6_n_0\
    );
\r[rxroom][5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(4),
      I1 => \v[rxfifo_waddr]_0\(4),
      O => \r[rxroom][5]_i_7_n_0\
    );
\r[rxroom][5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(10),
      I1 => \v[rxfifo_waddr]_0\(10),
      O => \r[rxroom][5]_i_8_n_0\
    );
\r[rxroom][5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[rxfifo_raddr]\(9),
      I1 => \v[rxfifo_waddr]_0\(9),
      O => \r[rxroom][5]_i_9_n_0\
    );
\r[txfifo_waddr][0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \r_reg[txfifo_waddr]\(0),
      I1 => \^r_reg[txfull]_0\,
      I2 => s_txwrite,
      O => \r[txfifo_waddr][0]_i_1_n_0\
    );
\r[txfull]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => L0_out(4),
      I1 => L0_out(1),
      I2 => L0_out(6),
      I3 => \r[txfull]_i_4_n_0\,
      I4 => \r[txfull]_i_5_n_0\,
      O => \rin[txfull]\
    );
\r[txfull]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(3),
      I1 => \v[txfifo_waddr]_2\(3),
      O => \r[txfull]_i_10_n_0\
    );
\r[txfull]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(2),
      I1 => \v[txfifo_waddr]_2\(2),
      O => \r[txfull]_i_11_n_0\
    );
\r[txfull]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(1),
      I1 => \v[txfifo_waddr]_2\(1),
      O => \r[txfull]_i_12_n_0\
    );
\r[txfull]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(0),
      I1 => \v[txfifo_waddr]_2\(0),
      O => \r[txfull]_i_13_n_0\
    );
\r[txfull]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(10),
      I1 => \v[txfifo_waddr]_2\(10),
      O => \r[txfull]_i_17_n_0\
    );
\r[txfull]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(9),
      I1 => \v[txfifo_waddr]_2\(9),
      O => \r[txfull]_i_18_n_0\
    );
\r[txfull]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(8),
      I1 => \v[txfifo_waddr]_2\(8),
      O => \r[txfull]_i_19_n_0\
    );
\r[txfull]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \r_reg[txfifo_waddr]\(0),
      I1 => \^r_reg[txfull]_0\,
      I2 => s_txwrite,
      O => \r[txfull]_i_20_n_0\
    );
\r[txfull]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => L0_out(8),
      I1 => L0_out(2),
      I2 => L0_out(7),
      I3 => L0_out(5),
      O => \r[txfull]_i_4_n_0\
    );
\r[txfull]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => L0_out(9),
      I1 => L0_out(10),
      I2 => L0_out(0),
      I3 => L0_out(3),
      O => \r[txfull]_i_5_n_0\
    );
\r[txfull]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(7),
      I1 => \v[txfifo_waddr]_2\(7),
      O => \r[txfull]_i_6_n_0\
    );
\r[txfull]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(6),
      I1 => \v[txfifo_waddr]_2\(6),
      O => \r[txfull]_i_7_n_0\
    );
\r[txfull]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(5),
      I1 => \v[txfifo_waddr]_2\(5),
      O => \r[txfull]_i_8_n_0\
    );
\r[txfull]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(4),
      I1 => \v[txfifo_waddr]_2\(4),
      O => \r[txfull]_i_9_n_0\
    );
\r[txhalff]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_reg[txhalff]_i_2_n_5\,
      O => \rin[txhalff]\
    );
\r[txhalff]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(5),
      I1 => \v[txfifo_waddr]_2\(5),
      O => \r[txhalff]_i_10_n_0\
    );
\r[txhalff]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(4),
      I1 => \v[txfifo_waddr]_2\(4),
      O => \r[txhalff]_i_11_n_0\
    );
\r[txhalff]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(3),
      I1 => \v[txfifo_waddr]_2\(3),
      O => \r[txhalff]_i_13_n_0\
    );
\r[txhalff]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(2),
      I1 => \v[txfifo_waddr]_2\(2),
      O => \r[txhalff]_i_14_n_0\
    );
\r[txhalff]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(1),
      I1 => \v[txfifo_waddr]_2\(1),
      O => \r[txhalff]_i_15_n_0\
    );
\r[txhalff]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(0),
      I1 => \v[txfifo_waddr]_2\(0),
      O => \r[txhalff]_i_16_n_0\
    );
\r[txhalff]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(10),
      I1 => \v[txfifo_waddr]_2\(10),
      O => \r[txhalff]_i_4_n_0\
    );
\r[txhalff]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(9),
      I1 => \v[txfifo_waddr]_2\(9),
      O => \r[txhalff]_i_5_n_0\
    );
\r[txhalff]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(8),
      I1 => \v[txfifo_waddr]_2\(8),
      O => \r[txhalff]_i_6_n_0\
    );
\r[txhalff]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(7),
      I1 => \v[txfifo_waddr]_2\(7),
      O => \r[txhalff]_i_8_n_0\
    );
\r[txhalff]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \r_reg[txfifo_raddr]\(6),
      I1 => \v[txfifo_waddr]_2\(6),
      O => \r[txhalff]_i_9_n_0\
    );
\r_reg[rxeep]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxeep]3_out\,
      Q => \r_reg[rxeep]__0\,
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r[rxfifo_raddr][0]_i_1_n_0\,
      Q => \r_reg[rxfifo_raddr]\(0),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(10),
      Q => \r_reg[rxfifo_raddr]\(10),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(1),
      Q => \r_reg[rxfifo_raddr]\(1),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(2),
      Q => \r_reg[rxfifo_raddr]\(2),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(3),
      Q => \r_reg[rxfifo_raddr]\(3),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(4),
      Q => \r_reg[rxfifo_raddr]\(4),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(5),
      Q => \r_reg[rxfifo_raddr]\(5),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(6),
      Q => \r_reg[rxfifo_raddr]\(6),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(7),
      Q => \r_reg[rxfifo_raddr]\(7),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(8),
      Q => \r_reg[rxfifo_raddr]\(8),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_raddr][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_raddr]\(9),
      Q => \r_reg[rxfifo_raddr]\(9),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_rvalid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxfifo_rvalid]2\,
      Q => \^s_rxvalid\,
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_rvalid]2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[rxfifo_rvalid]2\,
      CO(2) => \r_reg[rxfifo_rvalid]2_carry_n_1\,
      CO(1) => \r_reg[rxfifo_rvalid]2_carry_n_2\,
      CO(0) => \r_reg[rxfifo_rvalid]2_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_r_reg[rxfifo_rvalid]2_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_reg[rxfifo_rvalid]2_carry_i_1_n_0\,
      S(2) => \r_reg[rxfifo_rvalid]2_carry_i_2_n_0\,
      S(1) => \r_reg[rxfifo_rvalid]2_carry_i_3_n_0\,
      S(0) => \r_reg[rxfifo_rvalid]2_carry_i_4_n_0\
    );
\r_reg[rxfifo_rvalid]2_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \r_reg[rxfifo_waddr]\(10),
      I1 => \v[rxfifo_raddr]_1\(10),
      I2 => \r_reg[rxfifo_waddr]\(9),
      I3 => \v[rxfifo_raddr]_1\(9),
      O => \r_reg[rxfifo_rvalid]2_carry_i_1_n_0\
    );
\r_reg[rxfifo_rvalid]2_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \v[rxfifo_raddr]_1\(6),
      I1 => \r_reg[rxfifo_waddr]\(6),
      I2 => \v[rxfifo_raddr]_1\(7),
      I3 => \r_reg[rxfifo_waddr]\(7),
      I4 => \r_reg[rxfifo_waddr]\(8),
      I5 => \v[rxfifo_raddr]_1\(8),
      O => \r_reg[rxfifo_rvalid]2_carry_i_2_n_0\
    );
\r_reg[rxfifo_rvalid]2_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \v[rxfifo_raddr]_1\(5),
      I1 => \r_reg[rxfifo_waddr]\(5),
      I2 => \v[rxfifo_raddr]_1\(3),
      I3 => \r_reg[rxfifo_waddr]\(3),
      I4 => \r_reg[rxfifo_waddr]\(4),
      I5 => \v[rxfifo_raddr]_1\(4),
      O => \r_reg[rxfifo_rvalid]2_carry_i_3_n_0\
    );
\r_reg[rxfifo_rvalid]2_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \v[rxfifo_raddr]_1\(2),
      I1 => \r_reg[rxfifo_waddr]\(2),
      I2 => \v[rxfifo_raddr]_1\(0),
      I3 => \r_reg[rxfifo_waddr]\(0),
      I4 => \r_reg[rxfifo_waddr]\(1),
      I5 => \v[rxfifo_raddr]_1\(1),
      O => \r_reg[rxfifo_rvalid]2_carry_i_4_n_0\
    );
\r_reg[rxfifo_waddr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => link_inst_n_42,
      Q => \r_reg[rxfifo_waddr]\(0),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(10),
      Q => \r_reg[rxfifo_waddr]\(10),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(1),
      Q => \r_reg[rxfifo_waddr]\(1),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(2),
      Q => \r_reg[rxfifo_waddr]\(2),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(3),
      Q => \r_reg[rxfifo_waddr]\(3),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(4),
      Q => \r_reg[rxfifo_waddr]\(4),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(5),
      Q => \r_reg[rxfifo_waddr]\(5),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(6),
      Q => \r_reg[rxfifo_waddr]\(6),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(7),
      Q => \r_reg[rxfifo_waddr]\(7),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(8),
      Q => \r_reg[rxfifo_waddr]\(8),
      R => rst_logic_IBUF
    );
\r_reg[rxfifo_waddr][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[rxfifo_waddr]\(9),
      Q => \r_reg[rxfifo_waddr]\(9),
      R => rst_logic_IBUF
    );
\r_reg[rxfull]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \rin[rxfull]\,
      Q => \r_reg[rxfull]__0\,
      R => '0'
    );
\r_reg[rxfull]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[rxfull]_i_2_n_0\,
      CO(3 downto 2) => \NLW_r_reg[rxfull]_i_14_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_reg[rxfull]_i_14_n_2\,
      CO(0) => \r_reg[rxfull]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \r_reg[rxfifo_raddr]\(9 downto 8),
      O(3) => \NLW_r_reg[rxfull]_i_14_O_UNCONNECTED\(3),
      O(2 downto 0) => L2_out(10 downto 8),
      S(3) => '0',
      S(2) => \r[rxfull]_i_15_n_0\,
      S(1) => \r[rxfull]_i_16_n_0\,
      S(0) => \r[rxfull]_i_17_n_0\
    );
\r_reg[rxfull]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[rxfull]_i_3_n_0\,
      CO(3) => \r_reg[rxfull]_i_2_n_0\,
      CO(2) => \r_reg[rxfull]_i_2_n_1\,
      CO(1) => \r_reg[rxfull]_i_2_n_2\,
      CO(0) => \r_reg[rxfull]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_reg[rxfifo_raddr]\(7 downto 4),
      O(3 downto 0) => L2_out(7 downto 4),
      S(3) => \r[rxfull]_i_6_n_0\,
      S(2) => \r[rxfull]_i_7_n_0\,
      S(1) => \r[rxfull]_i_8_n_0\,
      S(0) => \r[rxfull]_i_9_n_0\
    );
\r_reg[rxfull]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[rxfull]_i_3_n_0\,
      CO(2) => \r_reg[rxfull]_i_3_n_1\,
      CO(1) => \r_reg[rxfull]_i_3_n_2\,
      CO(0) => \r_reg[rxfull]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \r_reg[rxfifo_raddr]\(3 downto 0),
      O(3 downto 0) => L2_out(3 downto 0),
      S(3) => \r[rxfull]_i_10_n_0\,
      S(2) => \r[rxfull]_i_11_n_0\,
      S(1) => \r[rxfull]_i_12_n_0\,
      S(0) => \r[rxfull]_i_13_n_0\
    );
\r_reg[rxhalff]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \rin[rxhalff]\,
      Q => \r_reg[txhalff]_0\(4),
      R => '0'
    );
\r_reg[rxpacket]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => recv_inst_n_29,
      Q => \r_reg[rxpacket_n_0_]\,
      R => '0'
    );
\r_reg[rxroom][0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxroom][3]_i_1_n_7\,
      Q => \r_reg[rxroom]\(0),
      S => \r[rxroom][5]_i_1_n_0\
    );
\r_reg[rxroom][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxroom][3]_i_1_n_6\,
      Q => \r_reg[rxroom]\(1),
      S => \r[rxroom][5]_i_1_n_0\
    );
\r_reg[rxroom][2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxroom][3]_i_1_n_5\,
      Q => \r_reg[rxroom]\(2),
      S => \r[rxroom][5]_i_1_n_0\
    );
\r_reg[rxroom][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxroom][3]_i_1_n_4\,
      Q => \r_reg[rxroom]\(3),
      S => \r[rxroom][5]_i_1_n_0\
    );
\r_reg[rxroom][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[rxroom][3]_i_1_n_0\,
      CO(2) => \r_reg[rxroom][3]_i_1_n_1\,
      CO(1) => \r_reg[rxroom][3]_i_1_n_2\,
      CO(0) => \r_reg[rxroom][3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_reg[rxfifo_raddr]\(3 downto 0),
      O(3) => \r_reg[rxroom][3]_i_1_n_4\,
      O(2) => \r_reg[rxroom][3]_i_1_n_5\,
      O(1) => \r_reg[rxroom][3]_i_1_n_6\,
      O(0) => \r_reg[rxroom][3]_i_1_n_7\,
      S(3) => \r[rxroom][3]_i_2_n_0\,
      S(2) => \r[rxroom][3]_i_3_n_0\,
      S(1) => \r[rxroom][3]_i_4_n_0\,
      S(0) => \r[rxroom][3]_i_5_n_0\
    );
\r_reg[rxroom][4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxroom][5]_i_2_n_7\,
      Q => \r_reg[rxroom]\(4),
      S => \r[rxroom][5]_i_1_n_0\
    );
\r_reg[rxroom][5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[rxroom][5]_i_2_n_6\,
      Q => \r_reg[rxroom]\(5),
      S => \r[rxroom][5]_i_1_n_0\
    );
\r_reg[rxroom][5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[rxroom][3]_i_1_n_0\,
      CO(3) => \r_reg[rxroom][5]_i_2_n_0\,
      CO(2) => \r_reg[rxroom][5]_i_2_n_1\,
      CO(1) => \r_reg[rxroom][5]_i_2_n_2\,
      CO(0) => \r_reg[rxroom][5]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_reg[rxfifo_raddr]\(7 downto 4),
      O(3) => \r_reg[rxroom][5]_i_2_n_4\,
      O(2) => \r_reg[rxroom][5]_i_2_n_5\,
      O(1) => \r_reg[rxroom][5]_i_2_n_6\,
      O(0) => \r_reg[rxroom][5]_i_2_n_7\,
      S(3) => \r[rxroom][5]_i_4_n_0\,
      S(2) => \r[rxroom][5]_i_5_n_0\,
      S(1) => \r[rxroom][5]_i_6_n_0\,
      S(0) => \r[rxroom][5]_i_7_n_0\
    );
\r_reg[rxroom][5]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[rxroom][5]_i_2_n_0\,
      CO(3 downto 2) => \NLW_r_reg[rxroom][5]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_reg[rxroom][5]_i_3_n_2\,
      CO(0) => \r_reg[rxroom][5]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \r_reg[rxfifo_raddr]\(9 downto 8),
      O(3) => \NLW_r_reg[rxroom][5]_i_3_O_UNCONNECTED\(3),
      O(2) => \r_reg[rxroom][5]_i_3_n_5\,
      O(1) => \r_reg[rxroom][5]_i_3_n_6\,
      O(0) => \r_reg[rxroom][5]_i_3_n_7\,
      S(3) => '0',
      S(2) => \r[rxroom][5]_i_8_n_0\,
      S(1) => \r[rxroom][5]_i_9_n_0\,
      S(0) => \r[rxroom][5]_i_10_n_0\
    );
\r_reg[txdiscard]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => link_inst_n_14,
      Q => \r_reg[txdiscard]__0\,
      R => '0'
    );
\r_reg[txfifo_raddr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(0),
      Q => \r_reg[txfifo_raddr]\(0),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(10),
      Q => \r_reg[txfifo_raddr]\(10),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(1),
      Q => \r_reg[txfifo_raddr]\(1),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(2),
      Q => \r_reg[txfifo_raddr]\(2),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(3),
      Q => \r_reg[txfifo_raddr]\(3),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(4),
      Q => \r_reg[txfifo_raddr]\(4),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(5),
      Q => \r_reg[txfifo_raddr]\(5),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(6),
      Q => \r_reg[txfifo_raddr]\(6),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(7),
      Q => \r_reg[txfifo_raddr]\(7),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(8),
      Q => \r_reg[txfifo_raddr]\(8),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_raddr][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_raddr]\(9),
      Q => \r_reg[txfifo_raddr]\(9),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_rvalid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r_reg[txfifo_rvalid]2\,
      Q => \r_reg[txfifo_rvalid]__0\,
      R => rst_logic_IBUF
    );
\r_reg[txfifo_rvalid]2_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[txfifo_rvalid]2\,
      CO(2) => \r_reg[txfifo_rvalid]2_carry_n_1\,
      CO(1) => \r_reg[txfifo_rvalid]2_carry_n_2\,
      CO(0) => \r_reg[txfifo_rvalid]2_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_r_reg[txfifo_rvalid]2_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \r_reg[txfifo_rvalid]2_carry_i_1_n_0\,
      S(2) => \r_reg[txfifo_rvalid]2_carry_i_2_n_0\,
      S(1) => \r_reg[txfifo_rvalid]2_carry_i_3_n_0\,
      S(0) => link_inst_n_2
    );
\r_reg[txfifo_rvalid]2_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \r_reg[txfifo_waddr]\(10),
      I1 => \v[txfifo_raddr]_3\(10),
      I2 => \r_reg[txfifo_waddr]\(9),
      I3 => \v[txfifo_raddr]_3\(9),
      O => \r_reg[txfifo_rvalid]2_carry_i_1_n_0\
    );
\r_reg[txfifo_rvalid]2_carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \v[txfifo_raddr]_3\(6),
      I1 => \r_reg[txfifo_waddr]\(6),
      I2 => \v[txfifo_raddr]_3\(7),
      I3 => \r_reg[txfifo_waddr]\(7),
      I4 => \r_reg[txfifo_waddr]\(8),
      I5 => \v[txfifo_raddr]_3\(8),
      O => \r_reg[txfifo_rvalid]2_carry_i_2_n_0\
    );
\r_reg[txfifo_rvalid]2_carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \v[txfifo_raddr]_3\(3),
      I1 => \r_reg[txfifo_waddr]\(3),
      I2 => \v[txfifo_raddr]_3\(4),
      I3 => \r_reg[txfifo_waddr]\(4),
      I4 => \r_reg[txfifo_waddr]\(5),
      I5 => \v[txfifo_raddr]_3\(5),
      O => \r_reg[txfifo_rvalid]2_carry_i_3_n_0\
    );
\r_reg[txfifo_waddr][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \r[txfifo_waddr][0]_i_1_n_0\,
      Q => \r_reg[txfifo_waddr]\(0),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(10),
      Q => \r_reg[txfifo_waddr]\(10),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(1),
      Q => \r_reg[txfifo_waddr]\(1),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(2),
      Q => \r_reg[txfifo_waddr]\(2),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(3),
      Q => \r_reg[txfifo_waddr]\(3),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(4),
      Q => \r_reg[txfifo_waddr]\(4),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(5),
      Q => \r_reg[txfifo_waddr]\(5),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(6),
      Q => \r_reg[txfifo_waddr]\(6),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(7),
      Q => \r_reg[txfifo_waddr]\(7),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(8),
      Q => \r_reg[txfifo_waddr]\(8),
      R => rst_logic_IBUF
    );
\r_reg[txfifo_waddr][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \v[txfifo_waddr]\(9),
      Q => \r_reg[txfifo_waddr]\(9),
      R => rst_logic_IBUF
    );
\r_reg[txfull]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \rin[txfull]\,
      Q => \^r_reg[txfull]_0\,
      R => '0'
    );
\r_reg[txfull]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[txfull]_i_2_n_0\,
      CO(3 downto 2) => \NLW_r_reg[txfull]_i_14_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_reg[txfull]_i_14_n_2\,
      CO(0) => \r_reg[txfull]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \r_reg[txfifo_raddr]\(9 downto 8),
      O(3) => \NLW_r_reg[txfull]_i_14_O_UNCONNECTED\(3),
      O(2 downto 0) => L0_out(10 downto 8),
      S(3) => '0',
      S(2) => \r[txfull]_i_17_n_0\,
      S(1) => \r[txfull]_i_18_n_0\,
      S(0) => \r[txfull]_i_19_n_0\
    );
\r_reg[txfull]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[txfull]_i_16_n_0\,
      CO(3) => \r_reg[txfull]_i_15_n_0\,
      CO(2) => \r_reg[txfull]_i_15_n_1\,
      CO(1) => \r_reg[txfull]_i_15_n_2\,
      CO(0) => \r_reg[txfull]_i_15_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \v[txfifo_waddr]_2\(7 downto 4),
      S(3 downto 0) => \r_reg[txfifo_waddr]\(7 downto 4)
    );
\r_reg[txfull]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[txfull]_i_16_n_0\,
      CO(2) => \r_reg[txfull]_i_16_n_1\,
      CO(1) => \r_reg[txfull]_i_16_n_2\,
      CO(0) => \r_reg[txfull]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \r_reg[txfifo_waddr]\(0),
      O(3 downto 1) => \v[txfifo_waddr]_2\(3 downto 1),
      O(0) => \NLW_r_reg[txfull]_i_16_O_UNCONNECTED\(0),
      S(3 downto 1) => \r_reg[txfifo_waddr]\(3 downto 1),
      S(0) => \r[txfull]_i_20_n_0\
    );
\r_reg[txfull]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[txfull]_i_3_n_0\,
      CO(3) => \r_reg[txfull]_i_2_n_0\,
      CO(2) => \r_reg[txfull]_i_2_n_1\,
      CO(1) => \r_reg[txfull]_i_2_n_2\,
      CO(0) => \r_reg[txfull]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_reg[txfifo_raddr]\(7 downto 4),
      O(3 downto 0) => L0_out(7 downto 4),
      S(3) => \r[txfull]_i_6_n_0\,
      S(2) => \r[txfull]_i_7_n_0\,
      S(1) => \r[txfull]_i_8_n_0\,
      S(0) => \r[txfull]_i_9_n_0\
    );
\r_reg[txfull]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[txfull]_i_3_n_0\,
      CO(2) => \r_reg[txfull]_i_3_n_1\,
      CO(1) => \r_reg[txfull]_i_3_n_2\,
      CO(0) => \r_reg[txfull]_i_3_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \r_reg[txfifo_raddr]\(3 downto 0),
      O(3 downto 0) => L0_out(3 downto 0),
      S(3) => \r[txfull]_i_10_n_0\,
      S(2) => \r[txfull]_i_11_n_0\,
      S(1) => \r[txfull]_i_12_n_0\,
      S(0) => \r[txfull]_i_13_n_0\
    );
\r_reg[txhalff]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => \rin[txhalff]\,
      Q => \r_reg[txhalff]_0\(5),
      R => '0'
    );
\r_reg[txhalff]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[txfull]_i_15_n_0\,
      CO(3 downto 2) => \NLW_r_reg[txhalff]_i_12_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_reg[txhalff]_i_12_n_2\,
      CO(0) => \r_reg[txhalff]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_reg[txhalff]_i_12_O_UNCONNECTED\(3),
      O(2 downto 0) => \v[txfifo_waddr]_2\(10 downto 8),
      S(3) => '0',
      S(2 downto 0) => \r_reg[txfifo_waddr]\(10 downto 8)
    );
\r_reg[txhalff]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[txhalff]_i_3_n_0\,
      CO(3 downto 2) => \NLW_r_reg[txhalff]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_reg[txhalff]_i_2_n_2\,
      CO(0) => \r_reg[txhalff]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => \r_reg[txfifo_raddr]\(9 downto 8),
      O(3) => \NLW_r_reg[txhalff]_i_2_O_UNCONNECTED\(3),
      O(2) => \r_reg[txhalff]_i_2_n_5\,
      O(1 downto 0) => \NLW_r_reg[txhalff]_i_2_O_UNCONNECTED\(1 downto 0),
      S(3) => '0',
      S(2) => \r[txhalff]_i_4_n_0\,
      S(1) => \r[txhalff]_i_5_n_0\,
      S(0) => \r[txhalff]_i_6_n_0\
    );
\r_reg[txhalff]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[txhalff]_i_7_n_0\,
      CO(3) => \r_reg[txhalff]_i_3_n_0\,
      CO(2) => \r_reg[txhalff]_i_3_n_1\,
      CO(1) => \r_reg[txhalff]_i_3_n_2\,
      CO(0) => \r_reg[txhalff]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_reg[txfifo_raddr]\(7 downto 4),
      O(3 downto 0) => \NLW_r_reg[txhalff]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \r[txhalff]_i_8_n_0\,
      S(2) => \r[txhalff]_i_9_n_0\,
      S(1) => \r[txhalff]_i_10_n_0\,
      S(0) => \r[txhalff]_i_11_n_0\
    );
\r_reg[txhalff]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[txhalff]_i_7_n_0\,
      CO(2) => \r_reg[txhalff]_i_7_n_1\,
      CO(1) => \r_reg[txhalff]_i_7_n_2\,
      CO(0) => \r_reg[txhalff]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \r_reg[txfifo_raddr]\(3 downto 0),
      O(3 downto 0) => \NLW_r_reg[txhalff]_i_7_O_UNCONNECTED\(3 downto 0),
      S(3) => \r[txhalff]_i_13_n_0\,
      S(2) => \r[txhalff]_i_14_n_0\,
      S(1) => \r[txhalff]_i_15_n_0\,
      S(0) => \r[txhalff]_i_16_n_0\
    );
\r_reg[txpacket]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => syncdff_ff2_reg,
      CE => '1',
      D => link_inst_n_46,
      Q => \r_reg[txpacket]__0\,
      R => '0'
    );
recv_inst: entity work.spwrecv
     port map (
      \FSM_onehot_r_reg[state][2]\ => link_inst_n_10,
      \FSM_onehot_r_reg[state][4]\(4) => link_inst_n_4,
      \FSM_onehot_r_reg[state][4]\(3) => link_inst_n_5,
      \FSM_onehot_r_reg[state][4]\(2) => \^fsm_onehot_r_reg[state][3]\(2),
      \FSM_onehot_r_reg[state][4]\(1) => \^fsm_onehot_r_reg[state][3]\(0),
      \FSM_onehot_r_reg[state][4]\(0) => \v[errcred]\,
      \FSM_onehot_r_reg[state][5]\(2) => recv_inst_n_9,
      \FSM_onehot_r_reg[state][5]\(1) => recv_inst_n_10,
      \FSM_onehot_r_reg[state][5]\(0) => recv_inst_n_11,
      Q(0) => recv_inst_n_14,
      SR(0) => link_inst_n_22,
      WEA(0) => wen,
      \r_reg[bit_seen]_0\ => recv_inst_n_13,
      \r_reg[bitcnt][0]_0\(0) => recv_inst_n_16,
      \r_reg[disccnt][0]_0\ => \recvfront_sel1.recvfront_fast_inst_n_6\,
      \r_reg[disccnt][6]_0\(0) => \r_reg[txhalff]_0\(0),
      \r_reg[disccnt][7]_0\(0) => link_inst_n_24,
      \r_reg[erresc]_0\ => recv_inst_n_8,
      \r_reg[gotfct]_0\ => recv_inst_n_7,
      \r_reg[inact]\ => \r_reg[inact]\,
      \r_reg[null_seen]_0\ => \^recvo[gotnull]\,
      \r_reg[parity]_0\ => recv_inst_n_4,
      \r_reg[rx_credit][0]\(0) => \r_reg[rx_credit]\(0),
      \r_reg[rxchar]_0\(0) => recv_inst_n_19,
      \r_reg[rxchar]_1\ => recv_inst_n_29,
      \r_reg[rxeep]__0\ => \r_reg[rxeep]__0\,
      \r_reg[rxfull]__0\ => \r_reg[rxfull]__0\,
      \r_reg[rxpacket]\ => \r_reg[rxpacket_n_0_]\,
      \r_reg[tick_out]_0\ => syncdff_ff2_reg,
      \r_reg[timerdone]\ => recv_inst_n_12,
      \r_reg[timerdone]__0\ => \r_reg[timerdone]__0\,
      \r_reg[timereg][7]_0\(7 downto 0) => \r_reg[timereg][7]\(7 downto 0),
      recv_inbits => recv_inbits,
      recv_inbvalid => recv_inbvalid,
      \recvo[erresc]\ => \recvo[erresc]\,
      \recvo[errpar]\ => \recvo[errpar]\,
      \recvo[gotfct]\ => \recvo[gotfct]\,
      \recvo[rxchar]\ => \recvo[rxchar]\,
      \recvo[tick_out]\ => \recvo[tick_out]\,
      rst_logic_IBUF => rst_logic_IBUF,
      s_tc_out => s_tc_out,
      \v[escaped]\ => \v[escaped]\,
      \v[parity]14_out\ => \v[parity]14_out\,
      wdata(8 downto 0) => wdata(8 downto 0)
    );
\recvfront_sel1.recvfront_fast_inst\: entity work.spwrecvfront_fast
     port map (
      Q(0) => recv_inst_n_14,
      \r_reg[bitcntp][2]_0\ => \recvfront_sel1.recvfront_fast_inst_n_4\,
      \r_reg[escaped]\ => recv_inst_n_4,
      \r_reg[escaped]_0\(0) => recv_inst_n_16,
      \r_reg[inact]\ => \r_reg[inact]\,
      \r_reg[inact]__0_0\ => \recvfront_sel1.recvfront_fast_inst_n_6\,
      \r_reg[inact]__0_1\ => link_inst_n_48,
      \r_reg[inbvalid]_0\ => link_inst_n_49,
      \r_reg[splitinx]_0\(0) => \v[errcred]\,
      recv_inbits => recv_inbits,
      recv_inbvalid => recv_inbvalid,
      rxclk_IBUF_BUFG => rxclk_IBUF_BUFG,
      spw_di_IBUF => spw_di_IBUF,
      spw_si_IBUF => spw_si_IBUF,
      syncdff_ff1_reg => syncdff_ff2_reg,
      syncdff_ff2_reg => \recvfront_sel1.recvfront_fast_inst_n_5\,
      \v[escaped]\ => \v[escaped]\
    );
rxmem: entity work.\spwram__parameterized1\
     port map (
      ADDRBWRADDR(9 downto 0) => \v[rxfifo_raddr]_1\(10 downto 1),
      DOBDO(7 downto 0) => DOBDO(7 downto 0),
      DOPBDOP(0) => DOPBDOP(0),
      O(0) => \v[rxfifo_raddr]_1\(0),
      Q(10 downto 0) => \r_reg[rxfifo_waddr]\(10 downto 0),
      WEA(0) => wen,
      s_mem_reg_0 => syncdff_ff2_reg,
      s_mem_reg_1 => s_mem_reg,
      s_mem_reg_2(10 downto 0) => \r_reg[rxfifo_raddr]\(10 downto 0),
      s_mem_reg_3 => \^s_rxvalid\,
      s_rxread => s_rxread,
      wdata(8 downto 0) => wdata(8 downto 0)
    );
txmem: entity work.\spwram__parameterized1_0\
     port map (
      ADDRBWRADDR(10 downto 0) => \v[txfifo_raddr]_3\(10 downto 0),
      D(8 downto 0) => s_txfifo_rdata(8 downto 0),
      DIPADIP(0) => DIPADIP(0),
      Q(10 downto 0) => \r_reg[txfifo_waddr]\(10 downto 0),
      WEA(0) => WEA(0),
      s_mem_reg_0 => syncdff_ff2_reg,
      s_mem_reg_1(7 downto 0) => Q(7 downto 0)
    );
\xmit_sel1.xmit_fast_inst\: entity work.spwxmit_fast
     port map (
      D(7 downto 4) => divcnt(7 downto 4),
      D(3) => D(1),
      D(2 downto 1) => divcnt(2 downto 1),
      D(0) => D(0),
      E(0) => \v[txdivnorm]\,
      \linko[started]1\ => \linko[started]1\,
      \r[txdivnorm]_i_2\(2) => \r_reg[txdivreg][7]\(3),
      \r[txdivnorm]_i_2\(1 downto 0) => \r_reg[txdivreg][7]\(1 downto 0),
      \r_reg[allow_char]0\ => \r_reg[allow_char]0\,
      \r_reg[allow_char]__0\ => \r_reg[allow_char]__0\,
      \r_reg[allow_fct]__0\ => \r_reg[allow_fct]__0\,
      \r_reg[pend_char]_0\ => link_inst_n_17,
      \r_reg[pend_char]__0\ => \r_reg[pend_char]__0\,
      \r_reg[pend_data][8]_0\(0) => \v[pend_data]\,
      \r_reg[pend_data][8]_1\(8 downto 0) => s_txfifo_rdata(8 downto 0),
      \r_reg[pend_fct]_0\ => \^xmiti[fct_in]\,
      \r_reg[pend_fct]__0\ => \r_reg[pend_fct]__0\,
      \r_reg[pend_tick]_0\(0) => \^fsm_onehot_r_reg[state][3]\(0),
      \r_reg[pend_time][7]_0\(0) => \v[pend_time]\,
      \r_reg[pend_time][7]_1\(7 downto 0) => \r_reg[pend_time][7]\(7 downto 0),
      \r_reg[sent_fct]__0\ => \r_reg[sent_fct]__0\,
      \r_reg[txdiscard]__0\ => \r_reg[txdiscard]__0\,
      \r_reg[txdivnorm]_0\ => \r_reg[txdivnorm]\,
      \r_reg[txdivsafe]_0\ => \r_reg[txdivsafe]\,
      \r_reg[txenreg]\ => \r_reg[txenreg]\,
      \r_reg[txenreg]__0_0\ => link_inst_n_47,
      \r_reg[txfifo_rvalid]__0\ => \r_reg[txfifo_rvalid]__0\,
      \rin[sent_fct]\ => \rin[sent_fct]\,
      rst_logic_IBUF => rst_logic_IBUF,
      s_tc_in => s_tc_in,
      spw_do_OBUF => spw_do_OBUF,
      spw_so_OBUF => spw_so_OBUF,
      syncdff_ff2_reg => syncdff_ff2_reg,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG,
      \xmiti[txen]\ => \xmiti[txen]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity AXI_SpaceWire_IP_v1_0 is
  port (
    clk_logic : in STD_LOGIC;
    rxclk : in STD_LOGIC;
    txclk : in STD_LOGIC;
    rst_logic : in STD_LOGIC;
    tc_in : in STD_LOGIC;
    tc_out : out STD_LOGIC;
    spw_di : in STD_LOGIC;
    spw_si : in STD_LOGIC;
    spw_do : out STD_LOGIC;
    spw_so : out STD_LOGIC;
    s00_axi_tx_aclk : in STD_LOGIC;
    s00_axi_tx_aresetn : in STD_LOGIC;
    s00_axi_tx_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_tx_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_tx_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_tx_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_tx_awlock : in STD_LOGIC;
    s00_axi_tx_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_tx_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_awvalid : in STD_LOGIC;
    s00_axi_tx_awready : out STD_LOGIC;
    s00_axi_tx_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_tx_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_wlast : in STD_LOGIC;
    s00_axi_tx_wvalid : in STD_LOGIC;
    s00_axi_tx_wready : out STD_LOGIC;
    s00_axi_tx_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_tx_bvalid : out STD_LOGIC;
    s00_axi_tx_bready : in STD_LOGIC;
    s00_axi_tx_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_tx_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_tx_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_tx_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_tx_arlock : in STD_LOGIC;
    s00_axi_tx_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_tx_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_tx_arvalid : in STD_LOGIC;
    s00_axi_tx_arready : out STD_LOGIC;
    s00_axi_tx_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_tx_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_tx_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_tx_rlast : out STD_LOGIC;
    s00_axi_tx_rvalid : out STD_LOGIC;
    s00_axi_tx_rready : in STD_LOGIC;
    s01_axi_rx_aclk : in STD_LOGIC;
    s01_axi_rx_aresetn : in STD_LOGIC;
    s01_axi_rx_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_rx_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_rx_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s01_axi_rx_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_rx_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rx_awlock : in STD_LOGIC;
    s01_axi_rx_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_rx_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_awvalid : in STD_LOGIC;
    s01_axi_rx_awready : out STD_LOGIC;
    s01_axi_rx_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rx_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_wlast : in STD_LOGIC;
    s01_axi_rx_wvalid : in STD_LOGIC;
    s01_axi_rx_wready : out STD_LOGIC;
    s01_axi_rx_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_rx_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rx_bvalid : out STD_LOGIC;
    s01_axi_rx_bready : in STD_LOGIC;
    s01_axi_rx_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_rx_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_rx_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s01_axi_rx_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_rx_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rx_arlock : in STD_LOGIC;
    s01_axi_rx_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_rx_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_rx_arvalid : in STD_LOGIC;
    s01_axi_rx_arready : out STD_LOGIC;
    s01_axi_rx_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_rx_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rx_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rx_rlast : out STD_LOGIC;
    s01_axi_rx_rvalid : out STD_LOGIC;
    s01_axi_rx_rready : in STD_LOGIC;
    s02_axi_reg_aclk : in STD_LOGIC;
    s02_axi_reg_aresetn : in STD_LOGIC;
    s02_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s02_axi_reg_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s02_axi_reg_awvalid : in STD_LOGIC;
    s02_axi_reg_awready : out STD_LOGIC;
    s02_axi_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s02_axi_reg_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s02_axi_reg_wvalid : in STD_LOGIC;
    s02_axi_reg_wready : out STD_LOGIC;
    s02_axi_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s02_axi_reg_bvalid : out STD_LOGIC;
    s02_axi_reg_bready : in STD_LOGIC;
    s02_axi_reg_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s02_axi_reg_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s02_axi_reg_arvalid : in STD_LOGIC;
    s02_axi_reg_arready : out STD_LOGIC;
    s02_axi_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s02_axi_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s02_axi_reg_rvalid : out STD_LOGIC;
    s02_axi_reg_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of AXI_SpaceWire_IP_v1_0 : entity is true;
  attribute C_S00_AXI_TX_ADDR_WIDTH : integer;
  attribute C_S00_AXI_TX_ADDR_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 3;
  attribute C_S00_AXI_TX_ARUSER_WIDTH : integer;
  attribute C_S00_AXI_TX_ARUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S00_AXI_TX_AWUSER_WIDTH : integer;
  attribute C_S00_AXI_TX_AWUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S00_AXI_TX_BUSER_WIDTH : integer;
  attribute C_S00_AXI_TX_BUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S00_AXI_TX_DATA_WIDTH : integer;
  attribute C_S00_AXI_TX_DATA_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 32;
  attribute C_S00_AXI_TX_ID_WIDTH : integer;
  attribute C_S00_AXI_TX_ID_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 1;
  attribute C_S00_AXI_TX_RUSER_WIDTH : integer;
  attribute C_S00_AXI_TX_RUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S00_AXI_TX_WUSER_WIDTH : integer;
  attribute C_S00_AXI_TX_WUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S01_AXI_RX_ADDR_WIDTH : integer;
  attribute C_S01_AXI_RX_ADDR_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 3;
  attribute C_S01_AXI_RX_ARUSER_WIDTH : integer;
  attribute C_S01_AXI_RX_ARUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S01_AXI_RX_AWUSER_WIDTH : integer;
  attribute C_S01_AXI_RX_AWUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S01_AXI_RX_BUSER_WIDTH : integer;
  attribute C_S01_AXI_RX_BUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S01_AXI_RX_DATA_WIDTH : integer;
  attribute C_S01_AXI_RX_DATA_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 32;
  attribute C_S01_AXI_RX_ID_WIDTH : integer;
  attribute C_S01_AXI_RX_ID_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 1;
  attribute C_S01_AXI_RX_RUSER_WIDTH : integer;
  attribute C_S01_AXI_RX_RUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S01_AXI_RX_WUSER_WIDTH : integer;
  attribute C_S01_AXI_RX_WUSER_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 0;
  attribute C_S02_AXI_REG_ADDR_WIDTH : integer;
  attribute C_S02_AXI_REG_ADDR_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 5;
  attribute C_S02_AXI_REG_DATA_WIDTH : integer;
  attribute C_S02_AXI_REG_DATA_WIDTH of AXI_SpaceWire_IP_v1_0 : entity is 32;
  attribute rxchunk : integer;
  attribute rxchunk of AXI_SpaceWire_IP_v1_0 : entity is 1;
  attribute rxfifosize_bits : integer;
  attribute rxfifosize_bits of AXI_SpaceWire_IP_v1_0 : entity is 11;
  attribute txfifosize_bits : integer;
  attribute txfifosize_bits of AXI_SpaceWire_IP_v1_0 : entity is 11;
end AXI_SpaceWire_IP_v1_0;

architecture STRUCTURE of AXI_SpaceWire_IP_v1_0 is
  signal AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_1 : STD_LOGIC;
  signal AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_0 : STD_LOGIC;
  signal AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_2 : STD_LOGIC;
  signal clk_logic_IBUF : STD_LOGIC;
  signal clk_logic_IBUF_BUFG : STD_LOGIC;
  signal divcnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \link_inst/p_0_in8_in\ : STD_LOGIC;
  signal \link_inst/p_0_in9_in\ : STD_LOGIC;
  signal \recvo[gotnull]\ : STD_LOGIC;
  signal rst_logic_IBUF : STD_LOGIC;
  signal rxclk_IBUF : STD_LOGIC;
  signal rxclk_IBUF_BUFG : STD_LOGIC;
  signal s00_axi_tx_aclk_IBUF : STD_LOGIC;
  signal s00_axi_tx_aclk_IBUF_BUFG : STD_LOGIC;
  signal s00_axi_tx_araddr_IBUF : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s00_axi_tx_arburst_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_axi_tx_aresetn_IBUF : STD_LOGIC;
  signal s00_axi_tx_arlen_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_axi_tx_arready_OBUF : STD_LOGIC;
  signal s00_axi_tx_arvalid_IBUF : STD_LOGIC;
  signal s00_axi_tx_awaddr_IBUF : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s00_axi_tx_awburst_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_axi_tx_awlen_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s00_axi_tx_awready_OBUF : STD_LOGIC;
  signal s00_axi_tx_awvalid_IBUF : STD_LOGIC;
  signal s00_axi_tx_bid_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_axi_tx_bready_IBUF : STD_LOGIC;
  signal s00_axi_tx_bvalid_OBUF : STD_LOGIC;
  signal s00_axi_tx_rdata_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_axi_tx_rid_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_axi_tx_rlast_OBUF : STD_LOGIC;
  signal s00_axi_tx_rready_IBUF : STD_LOGIC;
  signal s00_axi_tx_rvalid_OBUF : STD_LOGIC;
  signal s00_axi_tx_wdata_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_axi_tx_wlast_IBUF : STD_LOGIC;
  signal s00_axi_tx_wready_OBUF : STD_LOGIC;
  signal s00_axi_tx_wstrb_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_axi_tx_wvalid_IBUF : STD_LOGIC;
  signal s01_axi_rx_aclk_IBUF : STD_LOGIC;
  signal s01_axi_rx_aclk_IBUF_BUFG : STD_LOGIC;
  signal s01_axi_rx_araddr_IBUF : STD_LOGIC_VECTOR ( 2 to 2 );
  signal s01_axi_rx_arburst_IBUF : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s01_axi_rx_aresetn_IBUF : STD_LOGIC;
  signal s01_axi_rx_arlen_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s01_axi_rx_arready_OBUF : STD_LOGIC;
  signal s01_axi_rx_arvalid_IBUF : STD_LOGIC;
  signal s01_axi_rx_awready_OBUF : STD_LOGIC;
  signal s01_axi_rx_awvalid_IBUF : STD_LOGIC;
  signal s01_axi_rx_bid_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_axi_rx_bready_IBUF : STD_LOGIC;
  signal s01_axi_rx_bvalid_OBUF : STD_LOGIC;
  signal s01_axi_rx_rdata_OBUF : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal s01_axi_rx_rid_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s01_axi_rx_rlast_OBUF : STD_LOGIC;
  signal s01_axi_rx_rready_IBUF : STD_LOGIC;
  signal s01_axi_rx_rvalid_OBUF : STD_LOGIC;
  signal s01_axi_rx_wlast_IBUF : STD_LOGIC;
  signal s01_axi_rx_wready_OBUF : STD_LOGIC;
  signal s01_axi_rx_wvalid_IBUF : STD_LOGIC;
  signal s02_axi_reg_aclk_IBUF : STD_LOGIC;
  signal s02_axi_reg_aclk_IBUF_BUFG : STD_LOGIC;
  signal s02_axi_reg_araddr_IBUF : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal s02_axi_reg_aresetn_IBUF : STD_LOGIC;
  signal s02_axi_reg_arready_OBUF : STD_LOGIC;
  signal s02_axi_reg_arvalid_IBUF : STD_LOGIC;
  signal s02_axi_reg_awaddr_IBUF : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal s02_axi_reg_awready_OBUF : STD_LOGIC;
  signal s02_axi_reg_awvalid_IBUF : STD_LOGIC;
  signal s02_axi_reg_bready_IBUF : STD_LOGIC;
  signal s02_axi_reg_bvalid_OBUF : STD_LOGIC;
  signal s02_axi_reg_rdata_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_axi_reg_rready_IBUF : STD_LOGIC;
  signal s02_axi_reg_rvalid_OBUF : STD_LOGIC;
  signal s02_axi_reg_wdata_IBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s02_axi_reg_wready_OBUF : STD_LOGIC;
  signal s02_axi_reg_wstrb_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s02_axi_reg_wvalid_IBUF : STD_LOGIC;
  signal s_ctrl_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_ctrl_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_errcred : STD_LOGIC;
  signal s_errdisc : STD_LOGIC;
  signal s_erresc : STD_LOGIC;
  signal s_errpar : STD_LOGIC;
  signal s_linkdis : STD_LOGIC;
  signal \s_pulse_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_pulse_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal s_rst_pulse : STD_LOGIC;
  signal s_rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_rxflag : STD_LOGIC;
  signal s_rxhalff : STD_LOGIC;
  signal s_rxread : STD_LOGIC;
  signal s_rxvalid : STD_LOGIC;
  signal s_tc_in : STD_LOGIC;
  signal s_tc_in_i_1_n_0 : STD_LOGIC;
  signal s_tc_out : STD_LOGIC;
  signal s_time_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_time_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal s_txdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal s_txdivcnt : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal s_txflag : STD_LOGIC;
  signal s_txhalff : STD_LOGIC;
  signal s_txwrite : STD_LOGIC;
  signal spw_di_IBUF : STD_LOGIC;
  signal spw_do_OBUF : STD_LOGIC;
  signal spw_si_IBUF : STD_LOGIC;
  signal spw_so_OBUF : STD_LOGIC;
  signal spwstream_inst_n_12 : STD_LOGIC;
  signal spwstream_inst_n_21 : STD_LOGIC;
  signal spwstream_inst_n_25 : STD_LOGIC;
  signal tc_in_IBUF : STD_LOGIC;
  signal tc_out_OBUF : STD_LOGIC;
  signal txclk_IBUF : STD_LOGIC;
  signal txclk_IBUF_BUFG : STD_LOGIC;
  signal wen3_out : STD_LOGIC;
  signal \xmiti[fct_in]\ : STD_LOGIC;
begin
AXI_SpaceWire_IP_v1_0_S00_AXI_TX_inst: entity work.AXI_SpaceWire_IP_v1_0_S00_AXI_TX
     port map (
      CLK => clk_logic_IBUF_BUFG,
      D(7 downto 0) => s00_axi_tx_arlen_IBUF(7 downto 0),
      DIPADIP(0) => s_txflag,
      Q(7 downto 0) => s_txdata(7 downto 0),
      WEA(0) => wen3_out,
      \axi_arburst_reg[1]_0\(1 downto 0) => s00_axi_tx_arburst_IBUF(1 downto 0),
      \axi_awburst_reg[1]_0\(1 downto 0) => s00_axi_tx_awburst_IBUF(1 downto 0),
      \axi_awlen_reg[7]_0\(7 downto 0) => s00_axi_tx_awlen_IBUF(7 downto 0),
      s00_axi_tx_aclk_IBUF_BUFG => s00_axi_tx_aclk_IBUF_BUFG,
      s00_axi_tx_araddr_IBUF(0) => s00_axi_tx_araddr_IBUF(2),
      s00_axi_tx_aresetn_IBUF => s00_axi_tx_aresetn_IBUF,
      s00_axi_tx_arready_OBUF => s00_axi_tx_arready_OBUF,
      s00_axi_tx_arvalid_IBUF => s00_axi_tx_arvalid_IBUF,
      s00_axi_tx_awaddr_IBUF(0) => s00_axi_tx_awaddr_IBUF(2),
      s00_axi_tx_awready_OBUF => s00_axi_tx_awready_OBUF,
      s00_axi_tx_awvalid_IBUF => s00_axi_tx_awvalid_IBUF,
      s00_axi_tx_bready_IBUF => s00_axi_tx_bready_IBUF,
      s00_axi_tx_bvalid_OBUF => s00_axi_tx_bvalid_OBUF,
      s00_axi_tx_rdata_OBUF(31 downto 0) => s00_axi_tx_rdata_OBUF(31 downto 0),
      s00_axi_tx_rlast_OBUF => s00_axi_tx_rlast_OBUF,
      s00_axi_tx_rready_IBUF => s00_axi_tx_rready_IBUF,
      s00_axi_tx_rvalid_OBUF => s00_axi_tx_rvalid_OBUF,
      s00_axi_tx_wdata_IBUF(31 downto 0) => s00_axi_tx_wdata_IBUF(31 downto 0),
      s00_axi_tx_wlast_IBUF => s00_axi_tx_wlast_IBUF,
      s00_axi_tx_wready_OBUF => s00_axi_tx_wready_OBUF,
      s00_axi_tx_wstrb_IBUF(3 downto 0) => s00_axi_tx_wstrb_IBUF(3 downto 0),
      s00_axi_tx_wvalid_IBUF => s00_axi_tx_wvalid_IBUF,
      s_txwrite => s_txwrite,
      txflag_reg_0 => spwstream_inst_n_12
    );
AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst: entity work.AXI_SpaceWire_IP_v1_0_S01_AXI_RX
     port map (
      CLK => s01_axi_rx_aclk_IBUF_BUFG,
      D(7 downto 0) => s01_axi_rx_arlen_IBUF(7 downto 0),
      DOBDO(7 downto 0) => s_rxdata(7 downto 0),
      DOPBDOP(0) => s_rxflag,
      \axi_arburst_reg[1]_0\(1 downto 0) => s01_axi_rx_arburst_IBUF(1 downto 0),
      \bl.fifo_18_inst_bl.fifo_18_bl\ => AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_1,
      \bl.fifo_18_inst_bl.fifo_18_bl_0\ => clk_logic_IBUF_BUFG,
      rst_logic_IBUF => rst_logic_IBUF,
      s01_axi_rx_araddr_IBUF(0) => s01_axi_rx_araddr_IBUF(2),
      s01_axi_rx_aresetn_IBUF => s01_axi_rx_aresetn_IBUF,
      s01_axi_rx_arready_OBUF => s01_axi_rx_arready_OBUF,
      s01_axi_rx_arvalid_IBUF => s01_axi_rx_arvalid_IBUF,
      s01_axi_rx_awready_OBUF => s01_axi_rx_awready_OBUF,
      s01_axi_rx_awvalid_IBUF => s01_axi_rx_awvalid_IBUF,
      s01_axi_rx_bready_IBUF => s01_axi_rx_bready_IBUF,
      s01_axi_rx_bvalid_OBUF => s01_axi_rx_bvalid_OBUF,
      s01_axi_rx_rdata_OBUF(10 downto 0) => s01_axi_rx_rdata_OBUF(10 downto 0),
      s01_axi_rx_rlast_OBUF => s01_axi_rx_rlast_OBUF,
      s01_axi_rx_rready_IBUF => s01_axi_rx_rready_IBUF,
      s01_axi_rx_rvalid_OBUF => s01_axi_rx_rvalid_OBUF,
      s01_axi_rx_wlast_IBUF => s01_axi_rx_wlast_IBUF,
      s01_axi_rx_wready_OBUF => s01_axi_rx_wready_OBUF,
      s01_axi_rx_wvalid_IBUF => s01_axi_rx_wvalid_IBUF,
      s_rxread => s_rxread,
      s_rxvalid => s_rxvalid
    );
AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst: entity work.AXI_SpaceWire_IP_v1_0_S02_AXI_REG
     port map (
      CLK => s02_axi_reg_aclk_IBUF_BUFG,
      D(1) => divcnt(3),
      D(0) => divcnt(0),
      Q(5 downto 2) => s_txdivcnt(7 downto 4),
      Q(1 downto 0) => s_txdivcnt(2 downto 1),
      S_AXI_ARREADY => s02_axi_reg_arready_OBUF,
      S_AXI_AWREADY => s02_axi_reg_awready_OBUF,
      S_AXI_WREADY => s02_axi_reg_wready_OBUF,
      \axi_araddr_reg[4]_0\(2 downto 0) => s02_axi_reg_araddr_IBUF(4 downto 2),
      \axi_awaddr_reg[4]_0\(2 downto 0) => s02_axi_reg_awaddr_IBUF(4 downto 2),
      \axi_rdata_reg[31]_0\(31 downto 0) => s02_axi_reg_rdata_OBUF(31 downto 0),
      \ctrl_in_reg[1]_0\(7 downto 6) => s_ctrl_in(1 downto 0),
      \ctrl_in_reg[1]_0\(5 downto 0) => s_time_in(5 downto 0),
      \line3_reg[9]_0\(7 downto 6) => s_ctrl_out(1 downto 0),
      \line3_reg[9]_0\(5 downto 0) => s_time_out(5 downto 0),
      \line4_reg[0]_0\(2) => spwstream_inst_n_21,
      \line4_reg[0]_0\(1) => \link_inst/p_0_in8_in\,
      \line4_reg[0]_0\(0) => \link_inst/p_0_in9_in\,
      \line4_reg[17]_0\ => clk_logic_IBUF_BUFG,
      \line4_reg[17]_1\(5) => s_txhalff,
      \line4_reg[17]_1\(4) => s_rxhalff,
      \line4_reg[17]_1\(3) => s_errcred,
      \line4_reg[17]_1\(2) => s_erresc,
      \line4_reg[17]_1\(1) => s_errpar,
      \line4_reg[17]_1\(0) => s_errdisc,
      linkdis => s_linkdis,
      \r_reg[txdivnorm]\ => spwstream_inst_n_25,
      \r_reg[xmit_fct_in]\ => AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_0,
      \recvo[gotnull]\ => \recvo[gotnull]\,
      s02_axi_reg_aresetn_IBUF => s02_axi_reg_aresetn_IBUF,
      s02_axi_reg_arvalid_IBUF => s02_axi_reg_arvalid_IBUF,
      s02_axi_reg_awvalid_IBUF => s02_axi_reg_awvalid_IBUF,
      s02_axi_reg_bready_IBUF => s02_axi_reg_bready_IBUF,
      s02_axi_reg_bvalid_OBUF => s02_axi_reg_bvalid_OBUF,
      s02_axi_reg_rready_IBUF => s02_axi_reg_rready_IBUF,
      s02_axi_reg_rvalid_OBUF => s02_axi_reg_rvalid_OBUF,
      s02_axi_reg_wstrb_IBUF(3 downto 0) => s02_axi_reg_wstrb_IBUF(3 downto 0),
      s02_axi_reg_wvalid_IBUF => s02_axi_reg_wvalid_IBUF,
      \slv_reg2_reg[31]_0\(31 downto 0) => s02_axi_reg_wdata_IBUF(31 downto 0),
      \txdivcnt_reg[6]_0\ => AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_2,
      \xmiti[fct_in]\ => \xmiti[fct_in]\
    );
clk_logic_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_logic_IBUF,
      O => clk_logic_IBUF_BUFG
    );
clk_logic_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_logic,
      O => clk_logic_IBUF
    );
rst_logic_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_logic,
      O => rst_logic_IBUF
    );
rxclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => rxclk_IBUF,
      O => rxclk_IBUF_BUFG
    );
rxclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rxclk,
      O => rxclk_IBUF
    );
s00_axi_tx_aclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => s00_axi_tx_aclk_IBUF,
      O => s00_axi_tx_aclk_IBUF_BUFG
    );
s00_axi_tx_aclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_aclk,
      O => s00_axi_tx_aclk_IBUF
    );
\s00_axi_tx_araddr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_araddr(2),
      O => s00_axi_tx_araddr_IBUF(2)
    );
\s00_axi_tx_arburst_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arburst(0),
      O => s00_axi_tx_arburst_IBUF(0)
    );
\s00_axi_tx_arburst_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arburst(1),
      O => s00_axi_tx_arburst_IBUF(1)
    );
s00_axi_tx_aresetn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_aresetn,
      O => s00_axi_tx_aresetn_IBUF
    );
\s00_axi_tx_arid_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arid(0),
      O => s00_axi_tx_rid_OBUF(0)
    );
\s00_axi_tx_arlen_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(0),
      O => s00_axi_tx_arlen_IBUF(0)
    );
\s00_axi_tx_arlen_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(1),
      O => s00_axi_tx_arlen_IBUF(1)
    );
\s00_axi_tx_arlen_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(2),
      O => s00_axi_tx_arlen_IBUF(2)
    );
\s00_axi_tx_arlen_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(3),
      O => s00_axi_tx_arlen_IBUF(3)
    );
\s00_axi_tx_arlen_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(4),
      O => s00_axi_tx_arlen_IBUF(4)
    );
\s00_axi_tx_arlen_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(5),
      O => s00_axi_tx_arlen_IBUF(5)
    );
\s00_axi_tx_arlen_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(6),
      O => s00_axi_tx_arlen_IBUF(6)
    );
\s00_axi_tx_arlen_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arlen(7),
      O => s00_axi_tx_arlen_IBUF(7)
    );
s00_axi_tx_arready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_arready_OBUF,
      O => s00_axi_tx_arready
    );
s00_axi_tx_arvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_arvalid,
      O => s00_axi_tx_arvalid_IBUF
    );
\s00_axi_tx_awaddr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awaddr(2),
      O => s00_axi_tx_awaddr_IBUF(2)
    );
\s00_axi_tx_awburst_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awburst(0),
      O => s00_axi_tx_awburst_IBUF(0)
    );
\s00_axi_tx_awburst_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awburst(1),
      O => s00_axi_tx_awburst_IBUF(1)
    );
\s00_axi_tx_awid_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awid(0),
      O => s00_axi_tx_bid_OBUF(0)
    );
\s00_axi_tx_awlen_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(0),
      O => s00_axi_tx_awlen_IBUF(0)
    );
\s00_axi_tx_awlen_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(1),
      O => s00_axi_tx_awlen_IBUF(1)
    );
\s00_axi_tx_awlen_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(2),
      O => s00_axi_tx_awlen_IBUF(2)
    );
\s00_axi_tx_awlen_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(3),
      O => s00_axi_tx_awlen_IBUF(3)
    );
\s00_axi_tx_awlen_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(4),
      O => s00_axi_tx_awlen_IBUF(4)
    );
\s00_axi_tx_awlen_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(5),
      O => s00_axi_tx_awlen_IBUF(5)
    );
\s00_axi_tx_awlen_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(6),
      O => s00_axi_tx_awlen_IBUF(6)
    );
\s00_axi_tx_awlen_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awlen(7),
      O => s00_axi_tx_awlen_IBUF(7)
    );
s00_axi_tx_awready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_awready_OBUF,
      O => s00_axi_tx_awready
    );
s00_axi_tx_awvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_awvalid,
      O => s00_axi_tx_awvalid_IBUF
    );
\s00_axi_tx_bid_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_bid_OBUF(0),
      O => s00_axi_tx_bid(0)
    );
s00_axi_tx_bready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_bready,
      O => s00_axi_tx_bready_IBUF
    );
\s00_axi_tx_bresp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s00_axi_tx_bresp(0)
    );
\s00_axi_tx_bresp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s00_axi_tx_bresp(1)
    );
s00_axi_tx_bvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_bvalid_OBUF,
      O => s00_axi_tx_bvalid
    );
\s00_axi_tx_rdata_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(0),
      O => s00_axi_tx_rdata(0)
    );
\s00_axi_tx_rdata_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(10),
      O => s00_axi_tx_rdata(10)
    );
\s00_axi_tx_rdata_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(11),
      O => s00_axi_tx_rdata(11)
    );
\s00_axi_tx_rdata_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(12),
      O => s00_axi_tx_rdata(12)
    );
\s00_axi_tx_rdata_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(13),
      O => s00_axi_tx_rdata(13)
    );
\s00_axi_tx_rdata_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(14),
      O => s00_axi_tx_rdata(14)
    );
\s00_axi_tx_rdata_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(15),
      O => s00_axi_tx_rdata(15)
    );
\s00_axi_tx_rdata_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(16),
      O => s00_axi_tx_rdata(16)
    );
\s00_axi_tx_rdata_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(17),
      O => s00_axi_tx_rdata(17)
    );
\s00_axi_tx_rdata_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(18),
      O => s00_axi_tx_rdata(18)
    );
\s00_axi_tx_rdata_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(19),
      O => s00_axi_tx_rdata(19)
    );
\s00_axi_tx_rdata_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(1),
      O => s00_axi_tx_rdata(1)
    );
\s00_axi_tx_rdata_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(20),
      O => s00_axi_tx_rdata(20)
    );
\s00_axi_tx_rdata_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(21),
      O => s00_axi_tx_rdata(21)
    );
\s00_axi_tx_rdata_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(22),
      O => s00_axi_tx_rdata(22)
    );
\s00_axi_tx_rdata_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(23),
      O => s00_axi_tx_rdata(23)
    );
\s00_axi_tx_rdata_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(24),
      O => s00_axi_tx_rdata(24)
    );
\s00_axi_tx_rdata_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(25),
      O => s00_axi_tx_rdata(25)
    );
\s00_axi_tx_rdata_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(26),
      O => s00_axi_tx_rdata(26)
    );
\s00_axi_tx_rdata_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(27),
      O => s00_axi_tx_rdata(27)
    );
\s00_axi_tx_rdata_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(28),
      O => s00_axi_tx_rdata(28)
    );
\s00_axi_tx_rdata_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(29),
      O => s00_axi_tx_rdata(29)
    );
\s00_axi_tx_rdata_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(2),
      O => s00_axi_tx_rdata(2)
    );
\s00_axi_tx_rdata_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(30),
      O => s00_axi_tx_rdata(30)
    );
\s00_axi_tx_rdata_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(31),
      O => s00_axi_tx_rdata(31)
    );
\s00_axi_tx_rdata_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(3),
      O => s00_axi_tx_rdata(3)
    );
\s00_axi_tx_rdata_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(4),
      O => s00_axi_tx_rdata(4)
    );
\s00_axi_tx_rdata_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(5),
      O => s00_axi_tx_rdata(5)
    );
\s00_axi_tx_rdata_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(6),
      O => s00_axi_tx_rdata(6)
    );
\s00_axi_tx_rdata_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(7),
      O => s00_axi_tx_rdata(7)
    );
\s00_axi_tx_rdata_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(8),
      O => s00_axi_tx_rdata(8)
    );
\s00_axi_tx_rdata_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rdata_OBUF(9),
      O => s00_axi_tx_rdata(9)
    );
\s00_axi_tx_rid_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rid_OBUF(0),
      O => s00_axi_tx_rid(0)
    );
s00_axi_tx_rlast_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rlast_OBUF,
      O => s00_axi_tx_rlast
    );
s00_axi_tx_rready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_rready,
      O => s00_axi_tx_rready_IBUF
    );
\s00_axi_tx_rresp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s00_axi_tx_rresp(0)
    );
\s00_axi_tx_rresp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s00_axi_tx_rresp(1)
    );
s00_axi_tx_rvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_rvalid_OBUF,
      O => s00_axi_tx_rvalid
    );
\s00_axi_tx_wdata_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(0),
      O => s00_axi_tx_wdata_IBUF(0)
    );
\s00_axi_tx_wdata_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(10),
      O => s00_axi_tx_wdata_IBUF(10)
    );
\s00_axi_tx_wdata_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(11),
      O => s00_axi_tx_wdata_IBUF(11)
    );
\s00_axi_tx_wdata_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(12),
      O => s00_axi_tx_wdata_IBUF(12)
    );
\s00_axi_tx_wdata_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(13),
      O => s00_axi_tx_wdata_IBUF(13)
    );
\s00_axi_tx_wdata_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(14),
      O => s00_axi_tx_wdata_IBUF(14)
    );
\s00_axi_tx_wdata_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(15),
      O => s00_axi_tx_wdata_IBUF(15)
    );
\s00_axi_tx_wdata_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(16),
      O => s00_axi_tx_wdata_IBUF(16)
    );
\s00_axi_tx_wdata_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(17),
      O => s00_axi_tx_wdata_IBUF(17)
    );
\s00_axi_tx_wdata_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(18),
      O => s00_axi_tx_wdata_IBUF(18)
    );
\s00_axi_tx_wdata_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(19),
      O => s00_axi_tx_wdata_IBUF(19)
    );
\s00_axi_tx_wdata_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(1),
      O => s00_axi_tx_wdata_IBUF(1)
    );
\s00_axi_tx_wdata_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(20),
      O => s00_axi_tx_wdata_IBUF(20)
    );
\s00_axi_tx_wdata_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(21),
      O => s00_axi_tx_wdata_IBUF(21)
    );
\s00_axi_tx_wdata_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(22),
      O => s00_axi_tx_wdata_IBUF(22)
    );
\s00_axi_tx_wdata_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(23),
      O => s00_axi_tx_wdata_IBUF(23)
    );
\s00_axi_tx_wdata_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(24),
      O => s00_axi_tx_wdata_IBUF(24)
    );
\s00_axi_tx_wdata_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(25),
      O => s00_axi_tx_wdata_IBUF(25)
    );
\s00_axi_tx_wdata_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(26),
      O => s00_axi_tx_wdata_IBUF(26)
    );
\s00_axi_tx_wdata_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(27),
      O => s00_axi_tx_wdata_IBUF(27)
    );
\s00_axi_tx_wdata_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(28),
      O => s00_axi_tx_wdata_IBUF(28)
    );
\s00_axi_tx_wdata_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(29),
      O => s00_axi_tx_wdata_IBUF(29)
    );
\s00_axi_tx_wdata_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(2),
      O => s00_axi_tx_wdata_IBUF(2)
    );
\s00_axi_tx_wdata_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(30),
      O => s00_axi_tx_wdata_IBUF(30)
    );
\s00_axi_tx_wdata_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(31),
      O => s00_axi_tx_wdata_IBUF(31)
    );
\s00_axi_tx_wdata_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(3),
      O => s00_axi_tx_wdata_IBUF(3)
    );
\s00_axi_tx_wdata_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(4),
      O => s00_axi_tx_wdata_IBUF(4)
    );
\s00_axi_tx_wdata_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(5),
      O => s00_axi_tx_wdata_IBUF(5)
    );
\s00_axi_tx_wdata_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(6),
      O => s00_axi_tx_wdata_IBUF(6)
    );
\s00_axi_tx_wdata_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(7),
      O => s00_axi_tx_wdata_IBUF(7)
    );
\s00_axi_tx_wdata_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(8),
      O => s00_axi_tx_wdata_IBUF(8)
    );
\s00_axi_tx_wdata_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wdata(9),
      O => s00_axi_tx_wdata_IBUF(9)
    );
s00_axi_tx_wlast_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wlast,
      O => s00_axi_tx_wlast_IBUF
    );
s00_axi_tx_wready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s00_axi_tx_wready_OBUF,
      O => s00_axi_tx_wready
    );
\s00_axi_tx_wstrb_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wstrb(0),
      O => s00_axi_tx_wstrb_IBUF(0)
    );
\s00_axi_tx_wstrb_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wstrb(1),
      O => s00_axi_tx_wstrb_IBUF(1)
    );
\s00_axi_tx_wstrb_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wstrb(2),
      O => s00_axi_tx_wstrb_IBUF(2)
    );
\s00_axi_tx_wstrb_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wstrb(3),
      O => s00_axi_tx_wstrb_IBUF(3)
    );
s00_axi_tx_wvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s00_axi_tx_wvalid,
      O => s00_axi_tx_wvalid_IBUF
    );
s01_axi_rx_aclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => s01_axi_rx_aclk_IBUF,
      O => s01_axi_rx_aclk_IBUF_BUFG
    );
s01_axi_rx_aclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_aclk,
      O => s01_axi_rx_aclk_IBUF
    );
\s01_axi_rx_araddr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_araddr(2),
      O => s01_axi_rx_araddr_IBUF(2)
    );
\s01_axi_rx_arburst_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arburst(0),
      O => s01_axi_rx_arburst_IBUF(0)
    );
\s01_axi_rx_arburst_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arburst(1),
      O => s01_axi_rx_arburst_IBUF(1)
    );
s01_axi_rx_aresetn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_aresetn,
      O => s01_axi_rx_aresetn_IBUF
    );
\s01_axi_rx_arid_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arid(0),
      O => s01_axi_rx_rid_OBUF(0)
    );
\s01_axi_rx_arlen_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(0),
      O => s01_axi_rx_arlen_IBUF(0)
    );
\s01_axi_rx_arlen_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(1),
      O => s01_axi_rx_arlen_IBUF(1)
    );
\s01_axi_rx_arlen_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(2),
      O => s01_axi_rx_arlen_IBUF(2)
    );
\s01_axi_rx_arlen_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(3),
      O => s01_axi_rx_arlen_IBUF(3)
    );
\s01_axi_rx_arlen_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(4),
      O => s01_axi_rx_arlen_IBUF(4)
    );
\s01_axi_rx_arlen_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(5),
      O => s01_axi_rx_arlen_IBUF(5)
    );
\s01_axi_rx_arlen_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(6),
      O => s01_axi_rx_arlen_IBUF(6)
    );
\s01_axi_rx_arlen_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arlen(7),
      O => s01_axi_rx_arlen_IBUF(7)
    );
s01_axi_rx_arready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_arready_OBUF,
      O => s01_axi_rx_arready
    );
s01_axi_rx_arvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_arvalid,
      O => s01_axi_rx_arvalid_IBUF
    );
\s01_axi_rx_awid_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_awid(0),
      O => s01_axi_rx_bid_OBUF(0)
    );
s01_axi_rx_awready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_awready_OBUF,
      O => s01_axi_rx_awready
    );
s01_axi_rx_awvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_awvalid,
      O => s01_axi_rx_awvalid_IBUF
    );
\s01_axi_rx_bid_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_bid_OBUF(0),
      O => s01_axi_rx_bid(0)
    );
s01_axi_rx_bready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_bready,
      O => s01_axi_rx_bready_IBUF
    );
\s01_axi_rx_bresp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_bresp(0)
    );
\s01_axi_rx_bresp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_bresp(1)
    );
s01_axi_rx_bvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_bvalid_OBUF,
      O => s01_axi_rx_bvalid
    );
\s01_axi_rx_rdata_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(0),
      O => s01_axi_rx_rdata(0)
    );
\s01_axi_rx_rdata_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(10),
      O => s01_axi_rx_rdata(10)
    );
\s01_axi_rx_rdata_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(11)
    );
\s01_axi_rx_rdata_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(12)
    );
\s01_axi_rx_rdata_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(13)
    );
\s01_axi_rx_rdata_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(14)
    );
\s01_axi_rx_rdata_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(15)
    );
\s01_axi_rx_rdata_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(16)
    );
\s01_axi_rx_rdata_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(17)
    );
\s01_axi_rx_rdata_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(18)
    );
\s01_axi_rx_rdata_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(19)
    );
\s01_axi_rx_rdata_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(1),
      O => s01_axi_rx_rdata(1)
    );
\s01_axi_rx_rdata_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(20)
    );
\s01_axi_rx_rdata_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(21)
    );
\s01_axi_rx_rdata_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(22)
    );
\s01_axi_rx_rdata_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(23)
    );
\s01_axi_rx_rdata_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(24)
    );
\s01_axi_rx_rdata_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(25)
    );
\s01_axi_rx_rdata_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(26)
    );
\s01_axi_rx_rdata_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(27)
    );
\s01_axi_rx_rdata_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(28)
    );
\s01_axi_rx_rdata_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(29)
    );
\s01_axi_rx_rdata_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(2),
      O => s01_axi_rx_rdata(2)
    );
\s01_axi_rx_rdata_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(30)
    );
\s01_axi_rx_rdata_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rdata(31)
    );
\s01_axi_rx_rdata_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(3),
      O => s01_axi_rx_rdata(3)
    );
\s01_axi_rx_rdata_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(4),
      O => s01_axi_rx_rdata(4)
    );
\s01_axi_rx_rdata_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(5),
      O => s01_axi_rx_rdata(5)
    );
\s01_axi_rx_rdata_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(6),
      O => s01_axi_rx_rdata(6)
    );
\s01_axi_rx_rdata_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(7),
      O => s01_axi_rx_rdata(7)
    );
\s01_axi_rx_rdata_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(8),
      O => s01_axi_rx_rdata(8)
    );
\s01_axi_rx_rdata_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rdata_OBUF(9),
      O => s01_axi_rx_rdata(9)
    );
\s01_axi_rx_rid_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rid_OBUF(0),
      O => s01_axi_rx_rid(0)
    );
s01_axi_rx_rlast_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rlast_OBUF,
      O => s01_axi_rx_rlast
    );
s01_axi_rx_rready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_rready,
      O => s01_axi_rx_rready_IBUF
    );
\s01_axi_rx_rresp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rresp(0)
    );
\s01_axi_rx_rresp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s01_axi_rx_rresp(1)
    );
s01_axi_rx_rvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_rvalid_OBUF,
      O => s01_axi_rx_rvalid
    );
s01_axi_rx_wlast_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_wlast,
      O => s01_axi_rx_wlast_IBUF
    );
s01_axi_rx_wready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s01_axi_rx_wready_OBUF,
      O => s01_axi_rx_wready
    );
s01_axi_rx_wvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s01_axi_rx_wvalid,
      O => s01_axi_rx_wvalid_IBUF
    );
s02_axi_reg_aclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => s02_axi_reg_aclk_IBUF,
      O => s02_axi_reg_aclk_IBUF_BUFG
    );
s02_axi_reg_aclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_aclk,
      O => s02_axi_reg_aclk_IBUF
    );
\s02_axi_reg_araddr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_araddr(2),
      O => s02_axi_reg_araddr_IBUF(2)
    );
\s02_axi_reg_araddr_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_araddr(3),
      O => s02_axi_reg_araddr_IBUF(3)
    );
\s02_axi_reg_araddr_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_araddr(4),
      O => s02_axi_reg_araddr_IBUF(4)
    );
s02_axi_reg_aresetn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_aresetn,
      O => s02_axi_reg_aresetn_IBUF
    );
s02_axi_reg_arready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_arready_OBUF,
      O => s02_axi_reg_arready
    );
s02_axi_reg_arvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_arvalid,
      O => s02_axi_reg_arvalid_IBUF
    );
\s02_axi_reg_awaddr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_awaddr(2),
      O => s02_axi_reg_awaddr_IBUF(2)
    );
\s02_axi_reg_awaddr_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_awaddr(3),
      O => s02_axi_reg_awaddr_IBUF(3)
    );
\s02_axi_reg_awaddr_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_awaddr(4),
      O => s02_axi_reg_awaddr_IBUF(4)
    );
s02_axi_reg_awready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_awready_OBUF,
      O => s02_axi_reg_awready
    );
s02_axi_reg_awvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_awvalid,
      O => s02_axi_reg_awvalid_IBUF
    );
s02_axi_reg_bready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_bready,
      O => s02_axi_reg_bready_IBUF
    );
\s02_axi_reg_bresp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s02_axi_reg_bresp(0)
    );
\s02_axi_reg_bresp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s02_axi_reg_bresp(1)
    );
s02_axi_reg_bvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_bvalid_OBUF,
      O => s02_axi_reg_bvalid
    );
\s02_axi_reg_rdata_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(0),
      O => s02_axi_reg_rdata(0)
    );
\s02_axi_reg_rdata_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(10),
      O => s02_axi_reg_rdata(10)
    );
\s02_axi_reg_rdata_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(11),
      O => s02_axi_reg_rdata(11)
    );
\s02_axi_reg_rdata_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(12),
      O => s02_axi_reg_rdata(12)
    );
\s02_axi_reg_rdata_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(13),
      O => s02_axi_reg_rdata(13)
    );
\s02_axi_reg_rdata_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(14),
      O => s02_axi_reg_rdata(14)
    );
\s02_axi_reg_rdata_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(15),
      O => s02_axi_reg_rdata(15)
    );
\s02_axi_reg_rdata_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(16),
      O => s02_axi_reg_rdata(16)
    );
\s02_axi_reg_rdata_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(17),
      O => s02_axi_reg_rdata(17)
    );
\s02_axi_reg_rdata_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(18),
      O => s02_axi_reg_rdata(18)
    );
\s02_axi_reg_rdata_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(19),
      O => s02_axi_reg_rdata(19)
    );
\s02_axi_reg_rdata_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(1),
      O => s02_axi_reg_rdata(1)
    );
\s02_axi_reg_rdata_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(20),
      O => s02_axi_reg_rdata(20)
    );
\s02_axi_reg_rdata_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(21),
      O => s02_axi_reg_rdata(21)
    );
\s02_axi_reg_rdata_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(22),
      O => s02_axi_reg_rdata(22)
    );
\s02_axi_reg_rdata_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(23),
      O => s02_axi_reg_rdata(23)
    );
\s02_axi_reg_rdata_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(24),
      O => s02_axi_reg_rdata(24)
    );
\s02_axi_reg_rdata_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(25),
      O => s02_axi_reg_rdata(25)
    );
\s02_axi_reg_rdata_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(26),
      O => s02_axi_reg_rdata(26)
    );
\s02_axi_reg_rdata_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(27),
      O => s02_axi_reg_rdata(27)
    );
\s02_axi_reg_rdata_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(28),
      O => s02_axi_reg_rdata(28)
    );
\s02_axi_reg_rdata_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(29),
      O => s02_axi_reg_rdata(29)
    );
\s02_axi_reg_rdata_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(2),
      O => s02_axi_reg_rdata(2)
    );
\s02_axi_reg_rdata_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(30),
      O => s02_axi_reg_rdata(30)
    );
\s02_axi_reg_rdata_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(31),
      O => s02_axi_reg_rdata(31)
    );
\s02_axi_reg_rdata_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(3),
      O => s02_axi_reg_rdata(3)
    );
\s02_axi_reg_rdata_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(4),
      O => s02_axi_reg_rdata(4)
    );
\s02_axi_reg_rdata_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(5),
      O => s02_axi_reg_rdata(5)
    );
\s02_axi_reg_rdata_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(6),
      O => s02_axi_reg_rdata(6)
    );
\s02_axi_reg_rdata_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(7),
      O => s02_axi_reg_rdata(7)
    );
\s02_axi_reg_rdata_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(8),
      O => s02_axi_reg_rdata(8)
    );
\s02_axi_reg_rdata_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rdata_OBUF(9),
      O => s02_axi_reg_rdata(9)
    );
s02_axi_reg_rready_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_rready,
      O => s02_axi_reg_rready_IBUF
    );
\s02_axi_reg_rresp_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s02_axi_reg_rresp(0)
    );
\s02_axi_reg_rresp_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => s02_axi_reg_rresp(1)
    );
s02_axi_reg_rvalid_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_rvalid_OBUF,
      O => s02_axi_reg_rvalid
    );
\s02_axi_reg_wdata_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(0),
      O => s02_axi_reg_wdata_IBUF(0)
    );
\s02_axi_reg_wdata_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(10),
      O => s02_axi_reg_wdata_IBUF(10)
    );
\s02_axi_reg_wdata_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(11),
      O => s02_axi_reg_wdata_IBUF(11)
    );
\s02_axi_reg_wdata_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(12),
      O => s02_axi_reg_wdata_IBUF(12)
    );
\s02_axi_reg_wdata_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(13),
      O => s02_axi_reg_wdata_IBUF(13)
    );
\s02_axi_reg_wdata_IBUF[14]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(14),
      O => s02_axi_reg_wdata_IBUF(14)
    );
\s02_axi_reg_wdata_IBUF[15]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(15),
      O => s02_axi_reg_wdata_IBUF(15)
    );
\s02_axi_reg_wdata_IBUF[16]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(16),
      O => s02_axi_reg_wdata_IBUF(16)
    );
\s02_axi_reg_wdata_IBUF[17]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(17),
      O => s02_axi_reg_wdata_IBUF(17)
    );
\s02_axi_reg_wdata_IBUF[18]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(18),
      O => s02_axi_reg_wdata_IBUF(18)
    );
\s02_axi_reg_wdata_IBUF[19]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(19),
      O => s02_axi_reg_wdata_IBUF(19)
    );
\s02_axi_reg_wdata_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(1),
      O => s02_axi_reg_wdata_IBUF(1)
    );
\s02_axi_reg_wdata_IBUF[20]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(20),
      O => s02_axi_reg_wdata_IBUF(20)
    );
\s02_axi_reg_wdata_IBUF[21]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(21),
      O => s02_axi_reg_wdata_IBUF(21)
    );
\s02_axi_reg_wdata_IBUF[22]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(22),
      O => s02_axi_reg_wdata_IBUF(22)
    );
\s02_axi_reg_wdata_IBUF[23]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(23),
      O => s02_axi_reg_wdata_IBUF(23)
    );
\s02_axi_reg_wdata_IBUF[24]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(24),
      O => s02_axi_reg_wdata_IBUF(24)
    );
\s02_axi_reg_wdata_IBUF[25]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(25),
      O => s02_axi_reg_wdata_IBUF(25)
    );
\s02_axi_reg_wdata_IBUF[26]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(26),
      O => s02_axi_reg_wdata_IBUF(26)
    );
\s02_axi_reg_wdata_IBUF[27]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(27),
      O => s02_axi_reg_wdata_IBUF(27)
    );
\s02_axi_reg_wdata_IBUF[28]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(28),
      O => s02_axi_reg_wdata_IBUF(28)
    );
\s02_axi_reg_wdata_IBUF[29]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(29),
      O => s02_axi_reg_wdata_IBUF(29)
    );
\s02_axi_reg_wdata_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(2),
      O => s02_axi_reg_wdata_IBUF(2)
    );
\s02_axi_reg_wdata_IBUF[30]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(30),
      O => s02_axi_reg_wdata_IBUF(30)
    );
\s02_axi_reg_wdata_IBUF[31]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(31),
      O => s02_axi_reg_wdata_IBUF(31)
    );
\s02_axi_reg_wdata_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(3),
      O => s02_axi_reg_wdata_IBUF(3)
    );
\s02_axi_reg_wdata_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(4),
      O => s02_axi_reg_wdata_IBUF(4)
    );
\s02_axi_reg_wdata_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(5),
      O => s02_axi_reg_wdata_IBUF(5)
    );
\s02_axi_reg_wdata_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(6),
      O => s02_axi_reg_wdata_IBUF(6)
    );
\s02_axi_reg_wdata_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(7),
      O => s02_axi_reg_wdata_IBUF(7)
    );
\s02_axi_reg_wdata_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(8),
      O => s02_axi_reg_wdata_IBUF(8)
    );
\s02_axi_reg_wdata_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wdata(9),
      O => s02_axi_reg_wdata_IBUF(9)
    );
s02_axi_reg_wready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s02_axi_reg_wready_OBUF,
      O => s02_axi_reg_wready
    );
\s02_axi_reg_wstrb_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wstrb(0),
      O => s02_axi_reg_wstrb_IBUF(0)
    );
\s02_axi_reg_wstrb_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wstrb(1),
      O => s02_axi_reg_wstrb_IBUF(1)
    );
\s02_axi_reg_wstrb_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wstrb(2),
      O => s02_axi_reg_wstrb_IBUF(2)
    );
\s02_axi_reg_wstrb_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wstrb(3),
      O => s02_axi_reg_wstrb_IBUF(3)
    );
s02_axi_reg_wvalid_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => s02_axi_reg_wvalid,
      O => s02_axi_reg_wvalid_IBUF
    );
s_pulse_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_tc_out,
      CE => '1',
      CLR => s_rst_pulse,
      D => '1',
      Q => tc_out_OBUF
    );
\s_pulse_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \s_pulse_reg_reg_n_0_[0]\,
      I1 => tc_out_OBUF,
      O => \s_pulse_reg[1]_i_1_n_0\
    );
\s_pulse_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => tc_out_OBUF,
      Q => \s_pulse_reg_reg_n_0_[0]\,
      R => '0'
    );
\s_pulse_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_tx_aclk_IBUF_BUFG,
      CE => '1',
      D => \s_pulse_reg[1]_i_1_n_0\,
      Q => s_rst_pulse,
      R => '0'
    );
s_tc_in_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tc_in_IBUF,
      I1 => s_tc_in,
      O => s_tc_in_i_1_n_0
    );
s_tc_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_logic_IBUF_BUFG,
      CE => '1',
      D => s_tc_in_i_1_n_0,
      Q => s_tc_in,
      R => '0'
    );
spw_di_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => spw_di,
      O => spw_di_IBUF
    );
spw_do_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => spw_do_OBUF,
      O => spw_do
    );
spw_si_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => spw_si,
      O => spw_si_IBUF
    );
spw_so_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => spw_so_OBUF,
      O => spw_so
    );
spwstream_inst: entity work.spwstream
     port map (
      D(1) => divcnt(3),
      D(0) => divcnt(0),
      DIPADIP(0) => s_txflag,
      DOBDO(7 downto 0) => s_rxdata(7 downto 0),
      DOPBDOP(0) => s_rxflag,
      \FSM_onehot_r_reg[state][3]\(2) => spwstream_inst_n_21,
      \FSM_onehot_r_reg[state][3]\(1) => \link_inst/p_0_in8_in\,
      \FSM_onehot_r_reg[state][3]\(0) => \link_inst/p_0_in9_in\,
      Q(7 downto 0) => s_txdata(7 downto 0),
      WEA(0) => wen3_out,
      linkdis => s_linkdis,
      \r_reg[pend_time][7]\(7 downto 6) => s_ctrl_in(1 downto 0),
      \r_reg[pend_time][7]\(5 downto 0) => s_time_in(5 downto 0),
      \r_reg[timercnt][0]\ => AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_0,
      \r_reg[timereg][7]\(7 downto 6) => s_ctrl_out(1 downto 0),
      \r_reg[timereg][7]\(5 downto 0) => s_time_out(5 downto 0),
      \r_reg[txdivnorm]\ => AXI_SpaceWire_IP_v1_0_S02_AXI_REG_inst_n_2,
      \r_reg[txdivreg][7]\(5 downto 2) => s_txdivcnt(7 downto 4),
      \r_reg[txdivreg][7]\(1 downto 0) => s_txdivcnt(2 downto 1),
      \r_reg[txdivsafe]\ => spwstream_inst_n_25,
      \r_reg[txfull]_0\ => spwstream_inst_n_12,
      \r_reg[txhalff]_0\(5) => s_txhalff,
      \r_reg[txhalff]_0\(4) => s_rxhalff,
      \r_reg[txhalff]_0\(3) => s_errcred,
      \r_reg[txhalff]_0\(2) => s_erresc,
      \r_reg[txhalff]_0\(1) => s_errpar,
      \r_reg[txhalff]_0\(0) => s_errdisc,
      \recvo[gotnull]\ => \recvo[gotnull]\,
      rst_logic_IBUF => rst_logic_IBUF,
      rxclk_IBUF_BUFG => rxclk_IBUF_BUFG,
      s_mem_reg => AXI_SpaceWire_IP_v1_0_S01_AXI_RX_inst_n_1,
      s_rxread => s_rxread,
      s_rxvalid => s_rxvalid,
      s_tc_in => s_tc_in,
      s_tc_out => s_tc_out,
      s_txwrite => s_txwrite,
      spw_di_IBUF => spw_di_IBUF,
      spw_do_OBUF => spw_do_OBUF,
      spw_si_IBUF => spw_si_IBUF,
      spw_so_OBUF => spw_so_OBUF,
      syncdff_ff2_reg => clk_logic_IBUF_BUFG,
      txclk_IBUF_BUFG => txclk_IBUF_BUFG,
      \xmiti[fct_in]\ => \xmiti[fct_in]\
    );
tc_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => tc_in,
      O => tc_in_IBUF
    );
tc_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tc_out_OBUF,
      O => tc_out
    );
txclk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => txclk_IBUF,
      O => txclk_IBUF_BUFG
    );
txclk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => txclk,
      O => txclk_IBUF
    );
end STRUCTURE;
