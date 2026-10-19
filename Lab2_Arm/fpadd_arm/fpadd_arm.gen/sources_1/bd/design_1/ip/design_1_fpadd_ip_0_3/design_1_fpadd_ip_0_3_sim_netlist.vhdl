-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Apr  8 11:50:57 2025
-- Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
-- Command     : write_vhdl -force -mode funcsim
--               fpadd_arm/fpadd_arm.gen/sources_1/bd/design_1/ip/design_1_fpadd_ip_0_3/design_1_fpadd_ip_0_3_sim_netlist.vhdl
-- Design      : design_1_fpadd_ip_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_DataMemory is
  port (
    reg_A : out STD_LOGIC_VECTOR ( 23 downto 0 );
    reg_B : out STD_LOGIC_VECTOR ( 18 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \reg_B_reg[2]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_DataMemory : entity is "DataMemory";
end design_1_fpadd_ip_0_3_DataMemory;

architecture STRUCTURE of design_1_fpadd_ip_0_3_DataMemory is
  signal ptr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \ptr[0]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[1]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[2]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[3]_i_1_n_0\ : STD_LOGIC;
  signal \ptr[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_A[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg_B[4]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ptr[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \ptr[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \ptr[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ptr[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \reg_A[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_A[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_A[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_A[13]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg_A[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_A[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_A[16]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg_A[17]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_A[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \reg_A[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_A[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_A[21]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \reg_A[22]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_A[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_A[24]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg_A[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_A[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg_A[29]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_A[30]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_A[31]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_A[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg_A[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg_A[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \reg_B[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg_B[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_B[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_B[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_B[14]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \reg_B[15]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \reg_B[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg_B[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg_B[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_B[21]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \reg_B[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \reg_B[24]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_B[26]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg_B[28]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \reg_B[29]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reg_B[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg_B[30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg_B[31]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg_B[4]_i_1\ : label is "soft_lutpair17";
begin
\ptr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ptr(0),
      O => \ptr[0]_i_1_n_0\
    );
\ptr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A855AA"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(4),
      I2 => ptr(2),
      I3 => ptr(1),
      I4 => ptr(3),
      O => \ptr[1]_i_1_n_0\
    );
\ptr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(2),
      I2 => ptr(1),
      O => \ptr[2]_i_1_n_0\
    );
\ptr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFDA000"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(4),
      I2 => ptr(2),
      I3 => ptr(1),
      I4 => ptr(3),
      O => \ptr[3]_i_1_n_0\
    );
\ptr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCCCCCC"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(4),
      I2 => ptr(2),
      I3 => ptr(1),
      I4 => ptr(3),
      O => \ptr[4]_i_1_n_0\
    );
\ptr_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \ptr[0]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => ptr(0)
    );
\ptr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \ptr[1]_i_1_n_0\,
      Q => ptr(1)
    );
\ptr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \ptr[2]_i_1_n_0\,
      Q => ptr(2)
    );
\ptr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \ptr[3]_i_1_n_0\,
      Q => ptr(3)
    );
\ptr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \ptr[4]_i_1_n_0\,
      Q => ptr(4)
    );
\reg_A[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0028"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[0]_i_1_n_0\
    );
\reg_A[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E4A0"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(1),
      I2 => ptr(0),
      I3 => ptr(2),
      O => \reg_A[11]_i_1_n_0\
    );
\reg_A[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0024"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[12]_i_1_n_0\
    );
\reg_A[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0068"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[13]_i_1_n_0\
    );
\reg_A[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(3),
      O => \reg_A[14]_i_1_n_0\
    );
\reg_A[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9D98"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(1),
      O => \reg_A[15]_i_1_n_0\
    );
\reg_A[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(3),
      O => \reg_A[16]_i_1_n_0\
    );
\reg_A[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C2"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[17]_i_1_n_0\
    );
\reg_A[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006E"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[18]_i_1_n_0\
    );
\reg_A[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[19]_i_1_n_0\
    );
\reg_A[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C988"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(1),
      O => \reg_A[20]_i_1_n_0\
    );
\reg_A[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[21]_i_1_n_0\
    );
\reg_A[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(3),
      O => \reg_A[22]_i_1_n_0\
    );
\reg_A[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0057"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[23]_i_1_n_0\
    );
\reg_A[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0079"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[24]_i_1_n_0\
    );
\reg_A[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(3),
      O => \reg_A[25]_i_1_n_0\
    );
\reg_A[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D9"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[26]_i_1_n_0\
    );
\reg_A[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88CD"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(1),
      O => \reg_A[28]_i_1_n_0\
    );
\reg_A[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8CDD"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(1),
      O => \reg_A[29]_i_1_n_0\
    );
\reg_A[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(3),
      O => \reg_A[30]_i_1_n_0\
    );
\reg_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(1),
      I2 => ptr(3),
      O => \reg_A[31]_i_1_n_0\
    );
\reg_A[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A4"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[4]_i_1_n_0\
    );
\reg_A[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_A[5]_i_1_n_0\
    );
\reg_A[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      O => \reg_A[8]_i_1_n_0\
    );
\reg_A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[0]_i_1_n_0\,
      Q => reg_A(0)
    );
\reg_A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[11]_i_1_n_0\,
      Q => reg_A(4)
    );
\reg_A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[12]_i_1_n_0\,
      Q => reg_A(5)
    );
\reg_A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[13]_i_1_n_0\,
      Q => reg_A(6)
    );
\reg_A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[14]_i_1_n_0\,
      Q => reg_A(7)
    );
\reg_A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[15]_i_1_n_0\,
      Q => reg_A(8)
    );
\reg_A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[16]_i_1_n_0\,
      Q => reg_A(9)
    );
\reg_A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[17]_i_1_n_0\,
      Q => reg_A(10)
    );
\reg_A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[18]_i_1_n_0\,
      Q => reg_A(11)
    );
\reg_A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[19]_i_1_n_0\,
      Q => reg_A(12)
    );
\reg_A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[20]_i_1_n_0\,
      Q => reg_A(13)
    );
\reg_A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[21]_i_1_n_0\,
      Q => reg_A(14)
    );
\reg_A_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[22]_i_1_n_0\,
      Q => reg_A(15)
    );
\reg_A_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_A[23]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_A(16)
    );
\reg_A_reg[24]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_A[24]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_A(17)
    );
\reg_A_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_A[25]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_A(18)
    );
\reg_A_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_A[26]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_A(19)
    );
\reg_A_reg[28]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_A[28]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_A(20)
    );
\reg_A_reg[29]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_A[29]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_A(21)
    );
\reg_A_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[30]_i_1_n_0\,
      Q => reg_A(22)
    );
\reg_A_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[31]_i_1_n_0\,
      Q => reg_A(23)
    );
\reg_A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[4]_i_1_n_0\,
      Q => reg_A(1)
    );
\reg_A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[5]_i_1_n_0\,
      Q => reg_A(2)
    );
\reg_A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_A[8]_i_1_n_0\,
      Q => reg_A(3)
    );
\reg_B[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00CA"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_B[10]_i_1_n_0\
    );
\reg_B[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D9C8"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(1),
      O => \reg_B[11]_i_1_n_0\
    );
\reg_B[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A6"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_B[12]_i_1_n_0\
    );
\reg_B[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(0),
      I2 => ptr(2),
      I3 => ptr(3),
      O => \reg_B[13]_i_1_n_0\
    );
\reg_B[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(1),
      I2 => ptr(3),
      O => \reg_B[14]_i_1_n_0\
    );
\reg_B[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BE44"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(2),
      I2 => ptr(1),
      I3 => ptr(0),
      O => \reg_B[15]_i_1_n_0\
    );
\reg_B[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004A"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_B[16]_i_1_n_0\
    );
\reg_B[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(2),
      I2 => ptr(3),
      O => \reg_B[17]_i_1_n_0\
    );
\reg_B[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(1),
      I2 => ptr(2),
      I3 => ptr(3),
      O => \reg_B[19]_i_1_n_0\
    );
\reg_B[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ptr(2),
      I1 => ptr(1),
      I2 => ptr(3),
      O => \reg_B[21]_i_1_n_0\
    );
\reg_B[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F8"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(1),
      I2 => ptr(2),
      I3 => ptr(3),
      O => \reg_B[22]_i_1_n_0\
    );
\reg_B[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(1),
      I2 => ptr(0),
      O => \reg_B[24]_i_1_n_0\
    );
\reg_B[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DA"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_B[26]_i_1_n_0\
    );
\reg_B[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8C"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(0),
      I2 => ptr(1),
      O => \reg_B[28]_i_1_n_0\
    );
\reg_B[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B1F0"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(1),
      I2 => ptr(0),
      I3 => ptr(2),
      O => \reg_B[29]_i_1_n_0\
    );
\reg_B[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E4"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_B[2]_i_1_n_0\
    );
\reg_B[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => ptr(0),
      I1 => ptr(1),
      I2 => ptr(3),
      O => \reg_B[30]_i_1_n_0\
    );
\reg_B[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => ptr(3),
      I1 => ptr(2),
      I2 => ptr(1),
      I3 => ptr(0),
      O => \reg_B[31]_i_1_n_0\
    );
\reg_B[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0064"
    )
        port map (
      I0 => ptr(1),
      I1 => ptr(2),
      I2 => ptr(0),
      I3 => ptr(3),
      O => \reg_B[4]_i_1_n_0\
    );
\reg_B_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[10]_i_1_n_0\,
      Q => reg_B(2)
    );
\reg_B_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[11]_i_1_n_0\,
      Q => reg_B(3)
    );
\reg_B_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[12]_i_1_n_0\,
      Q => reg_B(4)
    );
\reg_B_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[13]_i_1_n_0\,
      Q => reg_B(5)
    );
\reg_B_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[14]_i_1_n_0\,
      Q => reg_B(6)
    );
\reg_B_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[15]_i_1_n_0\,
      Q => reg_B(7)
    );
\reg_B_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[16]_i_1_n_0\,
      Q => reg_B(8)
    );
\reg_B_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[17]_i_1_n_0\,
      Q => reg_B(9)
    );
\reg_B_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[19]_i_1_n_0\,
      Q => reg_B(10)
    );
\reg_B_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[21]_i_1_n_0\,
      Q => reg_B(11)
    );
\reg_B_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[22]_i_1_n_0\,
      Q => reg_B(12)
    );
\reg_B_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[24]_i_1_n_0\,
      Q => reg_B(13)
    );
\reg_B_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[26]_i_1_n_0\,
      Q => reg_B(14)
    );
\reg_B_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[28]_i_1_n_0\,
      Q => reg_B(15)
    );
\reg_B_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[29]_i_1_n_0\,
      Q => reg_B(16)
    );
\reg_B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[2]_i_1_n_0\,
      Q => reg_B(0)
    );
\reg_B_reg[30]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      D => \reg_B[30]_i_1_n_0\,
      PRE => \reg_B_reg[2]_0\(0),
      Q => reg_B(17)
    );
\reg_B_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[31]_i_1_n_0\,
      Q => reg_B(18)
    );
\reg_B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \reg_B_reg[2]_0\(0),
      D => \reg_B[4]_i_1_n_0\,
      Q => reg_B(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_L2P is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    last_state_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_L2P : entity is "L2P";
end design_1_fpadd_ip_0_3_L2P;

architecture STRUCTURE of design_1_fpadd_ip_0_3_L2P is
  signal last_state : STD_LOGIC;
  signal pulse_i_1_n_0 : STD_LOGIC;
begin
last_state_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => last_state_reg_0(0),
      D => Q(0),
      Q => last_state
    );
pulse_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => last_state,
      O => pulse_i_1_n_0
    );
pulse_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => last_state_reg_0(0),
      D => pulse_i_1_n_0,
      Q => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_SevenSegDisplay is
  port (
    FSM_state : out STD_LOGIC;
    switch : out STD_LOGIC;
    an0 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    FSM_state_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_SevenSegDisplay : entity is "SevenSegDisplay";
end design_1_fpadd_ip_0_3_SevenSegDisplay;

architecture STRUCTURE of design_1_fpadd_ip_0_3_SevenSegDisplay is
  signal \^fsm_state\ : STD_LOGIC;
  signal \SSD1/counter_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal nxtFSM_state : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^switch\ : STD_LOGIC;
  signal switch_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FSM_state_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of an0_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of switch_i_1 : label is "soft_lutpair0";
begin
  FSM_state <= \^fsm_state\;
  switch <= \^switch\;
FSM_state_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fsm_state\,
      I1 => \^switch\,
      O => nxtFSM_state
    );
FSM_state_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => nxtFSM_state,
      Q => \^fsm_state\
    );
an0_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_state\,
      O => an0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \SSD1/counter_reg\(0),
      O => \p_0_in__0\(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \SSD1/counter_reg\(0),
      I1 => \SSD1/counter_reg\(1),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \SSD1/counter_reg\(0),
      I1 => \SSD1/counter_reg\(1),
      I2 => \SSD1/counter_reg\(2),
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \SSD1/counter_reg\(1),
      I1 => \SSD1/counter_reg\(0),
      I2 => \SSD1/counter_reg\(2),
      I3 => \SSD1/counter_reg\(3),
      O => \p_0_in__0\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \SSD1/counter_reg\(2),
      I1 => \SSD1/counter_reg\(0),
      I2 => \SSD1/counter_reg\(1),
      I3 => \SSD1/counter_reg\(3),
      I4 => \SSD1/counter_reg\(4),
      O => \p_0_in__0\(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => \p_0_in__0\(0),
      Q => \SSD1/counter_reg\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => \p_0_in__0\(1),
      Q => \SSD1/counter_reg\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => \p_0_in__0\(2),
      Q => \SSD1/counter_reg\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => \p_0_in__0\(3),
      Q => \SSD1/counter_reg\(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => \p_0_in__0\(4),
      Q => \SSD1/counter_reg\(4)
    );
switch_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \SSD1/counter_reg\(2),
      I1 => \SSD1/counter_reg\(3),
      I2 => \SSD1/counter_reg\(4),
      I3 => \SSD1/counter_reg\(1),
      I4 => \SSD1/counter_reg\(0),
      O => switch_i_1_n_0
    );
switch_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => switch_i_1_n_0,
      Q => \^switch\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_SevenSegDisplay_0 is
  port (
    FSM_state : out STD_LOGIC;
    an1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    FSM_state_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    switch : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_SevenSegDisplay_0 : entity is "SevenSegDisplay";
end design_1_fpadd_ip_0_3_SevenSegDisplay_0;

architecture STRUCTURE of design_1_fpadd_ip_0_3_SevenSegDisplay_0 is
  signal \^fsm_state\ : STD_LOGIC;
  signal nxtFSM_state : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_state_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of an1_INST_0 : label is "soft_lutpair4";
begin
  FSM_state <= \^fsm_state\;
\FSM_state_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^fsm_state\,
      I1 => switch,
      O => nxtFSM_state
    );
FSM_state_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => FSM_state_reg_0(0),
      D => nxtFSM_state,
      Q => \^fsm_state\
    );
an1_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^fsm_state\,
      O => an1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_fpadd is
  port (
    d0 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FSM_state : in STD_LOGIC;
    FSM_state_0 : in STD_LOGIC;
    reg_B : in STD_LOGIC_VECTOR ( 18 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \out_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    reg_A : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_fpadd : entity is "fpadd";
end design_1_fpadd_ip_0_3_fpadd;

architecture STRUCTURE of design_1_fpadd_ip_0_3_fpadd is
  signal \SSD0/char__3\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \SSD1/char__3\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal data2 : STD_LOGIC_VECTOR ( 22 downto 2 );
  signal exp_A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal exp_B : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal exp_out_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal exp_out_11 : STD_LOGIC;
  signal exp_out_2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ext_mant_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ext_mant_A1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ext_mant_A3 : STD_LOGIC;
  signal ext_mant_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \ext_mant_B00_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_n_1\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_n_2\ : STD_LOGIC;
  signal \ext_mant_B00_carry__0_n_3\ : STD_LOGIC;
  signal ext_mant_B00_carry_i_10_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_11_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_12_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_13_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_14_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_15_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_16_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_17_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_1_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_2_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_3_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_4_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_5_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_6_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_7_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_8_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_i_9_n_1 : STD_LOGIC;
  signal ext_mant_B00_carry_i_9_n_2 : STD_LOGIC;
  signal ext_mant_B00_carry_i_9_n_3 : STD_LOGIC;
  signal ext_mant_B00_carry_n_0 : STD_LOGIC;
  signal ext_mant_B00_carry_n_1 : STD_LOGIC;
  signal ext_mant_B00_carry_n_2 : STD_LOGIC;
  signal ext_mant_B00_carry_n_3 : STD_LOGIC;
  signal fp_out : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_19_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_20_n_0\ : STD_LOGIC;
  signal \i__carry_i_21_n_0\ : STD_LOGIC;
  signal \i__carry_i_22_n_0\ : STD_LOGIC;
  signal \i__carry_i_23_n_0\ : STD_LOGIC;
  signal \i__carry_i_24_n_0\ : STD_LOGIC;
  signal \i__carry_i_25_n_0\ : STD_LOGIC;
  signal \i__carry_i_26_n_0\ : STD_LOGIC;
  signal \i__carry_i_27_n_0\ : STD_LOGIC;
  signal \i__carry_i_28_n_0\ : STD_LOGIC;
  signal \i__carry_i_29_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \out[0]_i_1_n_0\ : STD_LOGIC;
  signal \out[16]_i_10_n_0\ : STD_LOGIC;
  signal \out[16]_i_11_n_0\ : STD_LOGIC;
  signal \out[16]_i_1_n_0\ : STD_LOGIC;
  signal \out[16]_i_2_n_0\ : STD_LOGIC;
  signal \out[16]_i_3_n_0\ : STD_LOGIC;
  signal \out[16]_i_4_n_0\ : STD_LOGIC;
  signal \out[16]_i_5_n_0\ : STD_LOGIC;
  signal \out[16]_i_6_n_0\ : STD_LOGIC;
  signal \out[16]_i_7_n_0\ : STD_LOGIC;
  signal \out[16]_i_8_n_0\ : STD_LOGIC;
  signal \out[16]_i_9_n_0\ : STD_LOGIC;
  signal \out[17]_i_10_n_0\ : STD_LOGIC;
  signal \out[17]_i_11_n_0\ : STD_LOGIC;
  signal \out[17]_i_1_n_0\ : STD_LOGIC;
  signal \out[17]_i_2_n_0\ : STD_LOGIC;
  signal \out[17]_i_3_n_0\ : STD_LOGIC;
  signal \out[17]_i_4_n_0\ : STD_LOGIC;
  signal \out[17]_i_5_n_0\ : STD_LOGIC;
  signal \out[17]_i_6_n_0\ : STD_LOGIC;
  signal \out[17]_i_7_n_0\ : STD_LOGIC;
  signal \out[17]_i_8_n_0\ : STD_LOGIC;
  signal \out[17]_i_9_n_0\ : STD_LOGIC;
  signal \out[18]_i_10_n_0\ : STD_LOGIC;
  signal \out[18]_i_11_n_0\ : STD_LOGIC;
  signal \out[18]_i_1_n_0\ : STD_LOGIC;
  signal \out[18]_i_2_n_0\ : STD_LOGIC;
  signal \out[18]_i_3_n_0\ : STD_LOGIC;
  signal \out[18]_i_4_n_0\ : STD_LOGIC;
  signal \out[18]_i_5_n_0\ : STD_LOGIC;
  signal \out[18]_i_6_n_0\ : STD_LOGIC;
  signal \out[18]_i_7_n_0\ : STD_LOGIC;
  signal \out[18]_i_8_n_0\ : STD_LOGIC;
  signal \out[18]_i_9_n_0\ : STD_LOGIC;
  signal \out[19]_i_10_n_0\ : STD_LOGIC;
  signal \out[19]_i_11_n_0\ : STD_LOGIC;
  signal \out[19]_i_12_n_0\ : STD_LOGIC;
  signal \out[19]_i_13_n_0\ : STD_LOGIC;
  signal \out[19]_i_1_n_0\ : STD_LOGIC;
  signal \out[19]_i_2_n_0\ : STD_LOGIC;
  signal \out[19]_i_3_n_0\ : STD_LOGIC;
  signal \out[19]_i_4_n_0\ : STD_LOGIC;
  signal \out[19]_i_5_n_0\ : STD_LOGIC;
  signal \out[19]_i_6_n_0\ : STD_LOGIC;
  signal \out[19]_i_7_n_0\ : STD_LOGIC;
  signal \out[19]_i_8_n_0\ : STD_LOGIC;
  signal \out[19]_i_9_n_0\ : STD_LOGIC;
  signal \out[1]_i_1_n_0\ : STD_LOGIC;
  signal \out[20]_i_10_n_0\ : STD_LOGIC;
  signal \out[20]_i_11_n_0\ : STD_LOGIC;
  signal \out[20]_i_12_n_0\ : STD_LOGIC;
  signal \out[20]_i_13_n_0\ : STD_LOGIC;
  signal \out[20]_i_14_n_0\ : STD_LOGIC;
  signal \out[20]_i_15_n_0\ : STD_LOGIC;
  signal \out[20]_i_16_n_0\ : STD_LOGIC;
  signal \out[20]_i_17_n_0\ : STD_LOGIC;
  signal \out[20]_i_1_n_0\ : STD_LOGIC;
  signal \out[20]_i_2_n_0\ : STD_LOGIC;
  signal \out[20]_i_3_n_0\ : STD_LOGIC;
  signal \out[20]_i_4_n_0\ : STD_LOGIC;
  signal \out[20]_i_5_n_0\ : STD_LOGIC;
  signal \out[20]_i_6_n_0\ : STD_LOGIC;
  signal \out[20]_i_7_n_0\ : STD_LOGIC;
  signal \out[20]_i_8_n_0\ : STD_LOGIC;
  signal \out[20]_i_9_n_0\ : STD_LOGIC;
  signal \out[21]_i_10_n_0\ : STD_LOGIC;
  signal \out[21]_i_11_n_0\ : STD_LOGIC;
  signal \out[21]_i_1_n_0\ : STD_LOGIC;
  signal \out[21]_i_2_n_0\ : STD_LOGIC;
  signal \out[21]_i_3_n_0\ : STD_LOGIC;
  signal \out[21]_i_4_n_0\ : STD_LOGIC;
  signal \out[21]_i_5_n_0\ : STD_LOGIC;
  signal \out[21]_i_6_n_0\ : STD_LOGIC;
  signal \out[21]_i_7_n_0\ : STD_LOGIC;
  signal \out[21]_i_8_n_0\ : STD_LOGIC;
  signal \out[21]_i_9_n_0\ : STD_LOGIC;
  signal \out[22]_i_1_n_0\ : STD_LOGIC;
  signal \out[22]_i_2_n_0\ : STD_LOGIC;
  signal \out[22]_i_3_n_0\ : STD_LOGIC;
  signal \out[22]_i_4_n_0\ : STD_LOGIC;
  signal \out[22]_i_5_n_0\ : STD_LOGIC;
  signal \out[22]_i_6_n_0\ : STD_LOGIC;
  signal \out[22]_i_7_n_0\ : STD_LOGIC;
  signal \out[22]_i_8_n_0\ : STD_LOGIC;
  signal \out[26]_i_2_n_0\ : STD_LOGIC;
  signal \out[27]_i_2_n_0\ : STD_LOGIC;
  signal \out[28]_i_2_n_0\ : STD_LOGIC;
  signal \out[29]_i_1_n_0\ : STD_LOGIC;
  signal \out[2]_i_1_n_0\ : STD_LOGIC;
  signal \out[2]_i_2_n_0\ : STD_LOGIC;
  signal \out[30]_i_2_n_0\ : STD_LOGIC;
  signal \out[31]_i_2_n_0\ : STD_LOGIC;
  signal \out[3]_i_1_n_0\ : STD_LOGIC;
  signal \out[3]_i_2_n_0\ : STD_LOGIC;
  signal \out[3]_i_3_n_0\ : STD_LOGIC;
  signal \out[4]_i_1_n_0\ : STD_LOGIC;
  signal \out[4]_i_2_n_0\ : STD_LOGIC;
  signal \out[4]_i_3_n_0\ : STD_LOGIC;
  signal \out[5]_i_1_n_0\ : STD_LOGIC;
  signal \out[5]_i_2_n_0\ : STD_LOGIC;
  signal \out[5]_i_3_n_0\ : STD_LOGIC;
  signal \out[6]_i_10_n_0\ : STD_LOGIC;
  signal \out[6]_i_11_n_0\ : STD_LOGIC;
  signal \out[6]_i_12_n_0\ : STD_LOGIC;
  signal \out[6]_i_13_n_0\ : STD_LOGIC;
  signal \out[6]_i_14_n_0\ : STD_LOGIC;
  signal \out[6]_i_15_n_0\ : STD_LOGIC;
  signal \out[6]_i_1_n_0\ : STD_LOGIC;
  signal \out[6]_i_20_n_0\ : STD_LOGIC;
  signal \out[6]_i_21_n_0\ : STD_LOGIC;
  signal \out[6]_i_22_n_0\ : STD_LOGIC;
  signal \out[6]_i_23_n_0\ : STD_LOGIC;
  signal \out[6]_i_3_n_0\ : STD_LOGIC;
  signal \out[6]_i_4_n_0\ : STD_LOGIC;
  signal \out[7]_i_12_n_0\ : STD_LOGIC;
  signal \out[7]_i_13_n_0\ : STD_LOGIC;
  signal \out[7]_i_14_n_0\ : STD_LOGIC;
  signal \out[7]_i_15_n_0\ : STD_LOGIC;
  signal \out[7]_i_16_n_0\ : STD_LOGIC;
  signal \out[7]_i_17_n_0\ : STD_LOGIC;
  signal \out[7]_i_18_n_0\ : STD_LOGIC;
  signal \out[7]_i_19_n_0\ : STD_LOGIC;
  signal \out[7]_i_1_n_0\ : STD_LOGIC;
  signal \out[7]_i_25_n_0\ : STD_LOGIC;
  signal \out[7]_i_26_n_0\ : STD_LOGIC;
  signal \out[7]_i_27_n_0\ : STD_LOGIC;
  signal \out[7]_i_28_n_0\ : STD_LOGIC;
  signal \out[7]_i_29_n_0\ : STD_LOGIC;
  signal \out[7]_i_34_n_0\ : STD_LOGIC;
  signal \out[7]_i_35_n_0\ : STD_LOGIC;
  signal \out[7]_i_36_n_0\ : STD_LOGIC;
  signal \out[7]_i_37_n_0\ : STD_LOGIC;
  signal \out[7]_i_38_n_0\ : STD_LOGIC;
  signal \out[7]_i_43_n_0\ : STD_LOGIC;
  signal \out[7]_i_44_n_0\ : STD_LOGIC;
  signal \out[7]_i_45_n_0\ : STD_LOGIC;
  signal \out[7]_i_46_n_0\ : STD_LOGIC;
  signal \out[7]_i_4_n_0\ : STD_LOGIC;
  signal \out[7]_i_5_n_0\ : STD_LOGIC;
  signal \out_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \out_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \out_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \out_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_1\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_2\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_3\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_4\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_5\ : STD_LOGIC;
  signal \out_reg[6]_i_5_n_6\ : STD_LOGIC;
  signal \out_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \out_reg[7]_i_20_n_1\ : STD_LOGIC;
  signal \out_reg[7]_i_20_n_2\ : STD_LOGIC;
  signal \out_reg[7]_i_20_n_3\ : STD_LOGIC;
  signal \out_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \out_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \out_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \out_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \out_reg[7]_i_3_n_7\ : STD_LOGIC;
  signal \out_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \out_reg[7]_i_6_n_1\ : STD_LOGIC;
  signal \out_reg[7]_i_6_n_2\ : STD_LOGIC;
  signal \out_reg[7]_i_6_n_3\ : STD_LOGIC;
  signal \out_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \out_reg[7]_i_7_n_1\ : STD_LOGIC;
  signal \out_reg[7]_i_7_n_2\ : STD_LOGIC;
  signal \out_reg[7]_i_7_n_3\ : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_1_in : STD_LOGIC_VECTOR ( 22 downto 2 );
  signal \p_1_out_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \p_1_out_inferred__1/i__carry_n_7\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal reg_exp_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reg_ext_mant_A : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \reg_ext_mant_A[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[16]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[16]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[17]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[17]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[18]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[18]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[19]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[20]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[21]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[22]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_A[9]_i_4_n_0\ : STD_LOGIC;
  signal reg_ext_mant_B : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \reg_ext_mant_B[0]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[0]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[0]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[10]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[10]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[10]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[11]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[11]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[12]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[12]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[13]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[13]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[14]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[14]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[15]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[16]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[16]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[16]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[16]_i_5_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[17]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[17]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[18]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[18]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[19]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[1]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[1]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[1]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[20]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[21]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[22]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[22]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_10_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_11_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_5_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_6_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_7_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_8_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[23]_i_9_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[2]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[2]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[2]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[3]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[3]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[3]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[5]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[5]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[6]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[6]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[7]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[7]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[8]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[8]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[8]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[9]_i_2_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[9]_i_3_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B[9]_i_4_n_0\ : STD_LOGIC;
  signal \reg_ext_mant_B_reg[23]_i_3_n_1\ : STD_LOGIC;
  signal \reg_ext_mant_B_reg[23]_i_3_n_2\ : STD_LOGIC;
  signal \reg_ext_mant_B_reg[23]_i_3_n_3\ : STD_LOGIC;
  signal reg_sign_A : STD_LOGIC;
  signal reg_sign_B : STD_LOGIC;
  signal sign_A : STD_LOGIC;
  signal sign_B : STD_LOGIC;
  signal sign_out : STD_LOGIC;
  signal sum_mant1 : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \sum_mant1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_ext_mant_B00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_ext_mant_B00_carry_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_reg[7]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_out_reg[7]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_p_1_out_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg_ext_mant_B_reg[23]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_mant1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_mant1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sum_mant1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of a0_INST_0_i_2 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of a0_INST_0_i_3 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of a1_INST_0_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of a1_INST_0_i_3 : label is "soft_lutpair55";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of ext_mant_B00_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ext_mant_B00_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \ext_mant_B00_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \ext_mant_B00_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ext_mant_B00_carry_i_9 : label is 11;
  attribute SOFT_HLUTNM of \i__carry__0_i_9\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i__carry_i_11\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i__carry_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \i__carry_i_14\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i__carry_i_16\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i__carry_i_17\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i__carry_i_18\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \i__carry_i_19\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \i__carry_i_24\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i__carry_i_26\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \i__carry_i_29\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i__carry_i_5__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i__carry_i_8__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i__carry_i_9\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \out[16]_i_7\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \out[16]_i_9\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \out[17]_i_5\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \out[19]_i_12\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \out[20]_i_10\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \out[20]_i_11\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \out[20]_i_13\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \out[20]_i_15\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \out[20]_i_6\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \out[21]_i_11\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \out[21]_i_6\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \out[21]_i_9\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \out[22]_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \out[22]_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \out[22]_i_8\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \out[27]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \out[28]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \out[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \out[3]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \out[3]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \out[7]_i_19\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \out[7]_i_38\ : label is "soft_lutpair37";
  attribute ADDER_THRESHOLD of \out_reg[6]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[6]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[6]_i_5\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[6]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[7]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[7]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[7]_i_20\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[7]_i_20\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[7]_i_3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[7]_i_3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[7]_i_6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[7]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \out_reg[7]_i_7\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \out_reg[7]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_1_out_inferred__1/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_1_out_inferred__1/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \p_1_out_inferred__1/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \p_1_out_inferred__1/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \reg_exp_out[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg_exp_out[1]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg_exp_out[2]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg_exp_out[3]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg_exp_out[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg_exp_out[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[0]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[10]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[11]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[12]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[13]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[14]_i_2\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[15]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[1]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[3]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[4]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[5]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[6]_i_2\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[7]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[7]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[8]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[8]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[9]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \reg_ext_mant_A[9]_i_4\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[0]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[10]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[10]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[11]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[12]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[13]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[14]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[15]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[16]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[16]_i_4\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[18]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[1]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[22]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[23]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[2]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[2]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[3]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[4]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[5]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[6]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[7]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[7]_i_4\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[8]_i_2\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[8]_i_4\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[9]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \reg_ext_mant_B[9]_i_4\ : label is "soft_lutpair44";
  attribute COMPARATOR_THRESHOLD of \reg_ext_mant_B_reg[23]_i_3\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sum_mant1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sum_mant1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \sum_mant1_inferred__0/i__carry__1\ : label is 11;
begin
\A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(0),
      Q => p_0_in1_in(0)
    );
\A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(4),
      Q => p_0_in1_in(11)
    );
\A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(5),
      Q => p_0_in1_in(12)
    );
\A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(6),
      Q => p_0_in1_in(13)
    );
\A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(7),
      Q => p_0_in1_in(14)
    );
\A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(8),
      Q => p_0_in1_in(15)
    );
\A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(9),
      Q => p_0_in1_in(16)
    );
\A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(10),
      Q => p_0_in1_in(17)
    );
\A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(11),
      Q => p_0_in1_in(18)
    );
\A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(12),
      Q => p_0_in1_in(19)
    );
\A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(13),
      Q => p_0_in1_in(20)
    );
\A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(14),
      Q => p_0_in1_in(21)
    );
\A_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(15),
      Q => p_0_in1_in(22)
    );
\A_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(16),
      Q => exp_A(0)
    );
\A_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(17),
      Q => exp_A(1)
    );
\A_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(18),
      Q => exp_A(2)
    );
\A_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(19),
      Q => exp_A(3)
    );
\A_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(20),
      Q => exp_A(5)
    );
\A_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(21),
      Q => exp_A(6)
    );
\A_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(22),
      Q => exp_A(7)
    );
\A_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(23),
      Q => sign_A
    );
\A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(1),
      Q => p_0_in1_in(4)
    );
\A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(2),
      Q => p_0_in1_in(5)
    );
\A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_A(3),
      Q => p_0_in1_in(8)
    );
\B_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(2),
      Q => p_1_in(10)
    );
\B_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(3),
      Q => p_1_in(11)
    );
\B_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(4),
      Q => p_1_in(12)
    );
\B_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(5),
      Q => p_1_in(13)
    );
\B_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(6),
      Q => p_1_in(14)
    );
\B_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(7),
      Q => p_1_in(15)
    );
\B_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(8),
      Q => p_1_in(16)
    );
\B_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(9),
      Q => p_1_in(17)
    );
\B_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(10),
      Q => p_1_in(19)
    );
\B_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(11),
      Q => p_1_in(21)
    );
\B_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(12),
      Q => p_1_in(22)
    );
\B_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(13),
      Q => exp_B(1)
    );
\B_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(14),
      Q => exp_B(3)
    );
\B_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(15),
      Q => exp_B(5)
    );
\B_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(16),
      Q => exp_B(6)
    );
\B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(0),
      Q => p_1_in(2)
    );
\B_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(17),
      Q => exp_B(7)
    );
\B_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(18),
      Q => sign_B
    );
\B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => reg_B(1),
      Q => p_1_in(4)
    );
a0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF757F4540BABF"
    )
        port map (
      I0 => \SSD0/char__3\(3),
      I1 => fp_out(24),
      I2 => FSM_state,
      I3 => fp_out(28),
      I4 => \SSD0/char__3\(2),
      I5 => \SSD0/char__3\(1),
      O => a0
    );
a0_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(27),
      I1 => FSM_state,
      I2 => fp_out(31),
      O => \SSD0/char__3\(3)
    );
a0_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(26),
      I1 => FSM_state,
      I2 => fp_out(30),
      O => \SSD0/char__3\(2)
    );
a0_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(25),
      I1 => FSM_state,
      I2 => fp_out(29),
      O => \SSD0/char__3\(1)
    );
a1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF757F4540BABF"
    )
        port map (
      I0 => \SSD1/char__3\(3),
      I1 => fp_out(16),
      I2 => FSM_state_0,
      I3 => fp_out(20),
      I4 => \SSD1/char__3\(2),
      I5 => \SSD1/char__3\(1),
      O => a1
    );
a1_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(19),
      I1 => FSM_state_0,
      I2 => fp_out(23),
      O => \SSD1/char__3\(3)
    );
a1_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(18),
      I1 => FSM_state_0,
      I2 => fp_out(22),
      O => \SSD1/char__3\(2)
    );
a1_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fp_out(17),
      I1 => FSM_state_0,
      I2 => fp_out(21),
      O => \SSD1/char__3\(1)
    );
b0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6767671F1F1F671F"
    )
        port map (
      I0 => \SSD0/char__3\(1),
      I1 => \SSD0/char__3\(3),
      I2 => \SSD0/char__3\(2),
      I3 => fp_out(28),
      I4 => FSM_state,
      I5 => fp_out(24),
      O => b0
    );
b1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6767671F1F1F671F"
    )
        port map (
      I0 => \SSD1/char__3\(1),
      I1 => \SSD1/char__3\(3),
      I2 => \SSD1/char__3\(2),
      I3 => fp_out(20),
      I4 => FSM_state_0,
      I5 => fp_out(16),
      O => b1
    );
c0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F3D7F7F7F3D3D3D"
    )
        port map (
      I0 => \SSD0/char__3\(1),
      I1 => \SSD0/char__3\(3),
      I2 => \SSD0/char__3\(2),
      I3 => fp_out(24),
      I4 => FSM_state,
      I5 => fp_out(28),
      O => c0
    );
c1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F3D7F7F7F3D3D3D"
    )
        port map (
      I0 => \SSD1/char__3\(1),
      I1 => \SSD1/char__3\(3),
      I2 => \SSD1/char__3\(2),
      I3 => fp_out(16),
      I4 => FSM_state_0,
      I5 => fp_out(20),
      O => c1
    );
d0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EE73E3E3EE7E7E7"
    )
        port map (
      I0 => \SSD0/char__3\(3),
      I1 => \SSD0/char__3\(1),
      I2 => \SSD0/char__3\(2),
      I3 => fp_out(24),
      I4 => FSM_state,
      I5 => fp_out(28),
      O => d0
    );
d1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3EE73E3E3EE7E7E7"
    )
        port map (
      I0 => \SSD1/char__3\(3),
      I1 => \SSD1/char__3\(1),
      I2 => \SSD1/char__3\(2),
      I3 => fp_out(16),
      I4 => FSM_state_0,
      I5 => fp_out(20),
      O => d1
    );
e0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4747004747"
    )
        port map (
      I0 => fp_out(24),
      I1 => FSM_state,
      I2 => fp_out(28),
      I3 => \SSD0/char__3\(1),
      I4 => \SSD0/char__3\(2),
      I5 => \SSD0/char__3\(3),
      O => e0
    );
e1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF4747004747"
    )
        port map (
      I0 => fp_out(16),
      I1 => FSM_state_0,
      I2 => fp_out(20),
      I3 => \SSD1/char__3\(1),
      I4 => \SSD1/char__3\(2),
      I5 => \SSD1/char__3\(3),
      O => e1
    );
ext_mant_B00_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ext_mant_B00_carry_n_0,
      CO(2) => ext_mant_B00_carry_n_1,
      CO(1) => ext_mant_B00_carry_n_2,
      CO(0) => ext_mant_B00_carry_n_3,
      CYINIT => '1',
      DI(3) => ext_mant_B00_carry_i_1_n_0,
      DI(2) => ext_mant_B00_carry_i_2_n_0,
      DI(1) => ext_mant_B00_carry_i_3_n_0,
      DI(0) => ext_mant_B00_carry_i_4_n_0,
      O(3 downto 0) => ext_mant_A1(3 downto 0),
      S(3) => ext_mant_B00_carry_i_5_n_0,
      S(2) => ext_mant_B00_carry_i_6_n_0,
      S(1) => ext_mant_B00_carry_i_7_n_0,
      S(0) => ext_mant_B00_carry_i_8_n_0
    );
\ext_mant_B00_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ext_mant_B00_carry_n_0,
      CO(3) => \NLW_ext_mant_B00_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \ext_mant_B00_carry__0_n_1\,
      CO(1) => \ext_mant_B00_carry__0_n_2\,
      CO(0) => \ext_mant_B00_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \ext_mant_B00_carry__0_i_1_n_0\,
      DI(1) => \ext_mant_B00_carry__0_i_2_n_0\,
      DI(0) => \ext_mant_B00_carry__0_i_3_n_0\,
      O(3 downto 0) => ext_mant_A1(7 downto 4),
      S(3) => \ext_mant_B00_carry__0_i_4_n_0\,
      S(2) => \ext_mant_B00_carry__0_i_5_n_0\,
      S(1) => \ext_mant_B00_carry__0_i_6_n_0\,
      S(0) => \ext_mant_B00_carry__0_i_7_n_0\
    );
\ext_mant_B00_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(6),
      I2 => ext_mant_A3,
      O => \ext_mant_B00_carry__0_i_1_n_0\
    );
\ext_mant_B00_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(5),
      I1 => exp_A(5),
      I2 => ext_mant_A3,
      O => \ext_mant_B00_carry__0_i_2_n_0\
    );
\ext_mant_B00_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(6),
      I2 => ext_mant_A3,
      O => \ext_mant_B00_carry__0_i_3_n_0\
    );
\ext_mant_B00_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(7),
      I1 => exp_A(7),
      O => \ext_mant_B00_carry__0_i_4_n_0\
    );
\ext_mant_B00_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(6),
      O => \ext_mant_B00_carry__0_i_5_n_0\
    );
\ext_mant_B00_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(5),
      I1 => exp_A(5),
      O => \ext_mant_B00_carry__0_i_6_n_0\
    );
\ext_mant_B00_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(6),
      O => \ext_mant_B00_carry__0_i_7_n_0\
    );
ext_mant_B00_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(3),
      I1 => exp_A(3),
      I2 => ext_mant_A3,
      O => ext_mant_B00_carry_i_1_n_0
    );
ext_mant_B00_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_B(7),
      I3 => exp_A(7),
      O => ext_mant_B00_carry_i_10_n_0
    );
ext_mant_B00_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_B(5),
      I3 => exp_A(5),
      O => ext_mant_B00_carry_i_11_n_0
    );
ext_mant_B00_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(2),
      I1 => exp_B(6),
      I2 => exp_B(3),
      I3 => exp_A(3),
      O => ext_mant_B00_carry_i_12_n_0
    );
ext_mant_B00_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(0),
      I1 => exp_B(6),
      I2 => exp_B(1),
      I3 => exp_A(1),
      O => ext_mant_B00_carry_i_13_n_0
    );
ext_mant_B00_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_A(7),
      I3 => exp_B(7),
      O => ext_mant_B00_carry_i_14_n_0
    );
ext_mant_B00_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_A(5),
      I3 => exp_B(5),
      O => ext_mant_B00_carry_i_15_n_0
    );
ext_mant_B00_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(2),
      I1 => exp_B(6),
      I2 => exp_A(3),
      I3 => exp_B(3),
      O => ext_mant_B00_carry_i_16_n_0
    );
ext_mant_B00_carry_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(0),
      I1 => exp_B(6),
      I2 => exp_A(1),
      I3 => exp_B(1),
      O => ext_mant_B00_carry_i_17_n_0
    );
ext_mant_B00_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(2),
      I2 => ext_mant_A3,
      O => ext_mant_B00_carry_i_2_n_0
    );
ext_mant_B00_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(1),
      I1 => exp_A(1),
      I2 => ext_mant_A3,
      O => ext_mant_B00_carry_i_3_n_0
    );
ext_mant_B00_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"53"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(0),
      I2 => ext_mant_A3,
      O => ext_mant_B00_carry_i_4_n_0
    );
ext_mant_B00_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(3),
      I1 => exp_A(3),
      O => ext_mant_B00_carry_i_5_n_0
    );
ext_mant_B00_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(2),
      O => ext_mant_B00_carry_i_6_n_0
    );
ext_mant_B00_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(1),
      I1 => exp_A(1),
      O => ext_mant_B00_carry_i_7_n_0
    );
ext_mant_B00_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => exp_B(6),
      I1 => exp_A(0),
      O => ext_mant_B00_carry_i_8_n_0
    );
ext_mant_B00_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ext_mant_A3,
      CO(2) => ext_mant_B00_carry_i_9_n_1,
      CO(1) => ext_mant_B00_carry_i_9_n_2,
      CO(0) => ext_mant_B00_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => ext_mant_B00_carry_i_10_n_0,
      DI(2) => ext_mant_B00_carry_i_11_n_0,
      DI(1) => ext_mant_B00_carry_i_12_n_0,
      DI(0) => ext_mant_B00_carry_i_13_n_0,
      O(3 downto 0) => NLW_ext_mant_B00_carry_i_9_O_UNCONNECTED(3 downto 0),
      S(3) => ext_mant_B00_carry_i_14_n_0,
      S(2) => ext_mant_B00_carry_i_15_n_0,
      S(1) => ext_mant_B00_carry_i_16_n_0,
      S(0) => ext_mant_B00_carry_i_17_n_0
    );
f0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B4BDBDBDB4BD"
    )
        port map (
      I0 => \SSD0/char__3\(1),
      I1 => \SSD0/char__3\(2),
      I2 => \SSD0/char__3\(3),
      I3 => fp_out(28),
      I4 => FSM_state,
      I5 => fp_out(24),
      O => f0
    );
f1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B4BDBDBDB4BD"
    )
        port map (
      I0 => \SSD1/char__3\(1),
      I1 => \SSD1/char__3\(2),
      I2 => \SSD1/char__3\(3),
      I3 => fp_out(20),
      I4 => FSM_state_0,
      I5 => fp_out(16),
      O => f1
    );
g0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEBEBEFEFEFEBEFE"
    )
        port map (
      I0 => \SSD0/char__3\(3),
      I1 => \SSD0/char__3\(1),
      I2 => \SSD0/char__3\(2),
      I3 => fp_out(28),
      I4 => FSM_state,
      I5 => fp_out(24),
      O => g0
    );
g1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEBEBEFEFEFEBEFE"
    )
        port map (
      I0 => \SSD1/char__3\(3),
      I1 => \SSD1/char__3\(1),
      I2 => \SSD1/char__3\(2),
      I3 => fp_out(20),
      I4 => FSM_state_0,
      I5 => fp_out(16),
      O => g1
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(15),
      I1 => reg_ext_mant_B(15),
      I2 => reg_ext_mant_A(14),
      I3 => reg_ext_mant_B(14),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => \i__carry__0_i_6__0_n_0\,
      I1 => \i__carry__0_i_7__0_n_0\,
      I2 => \i__carry__0_i_8__0_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      O => p_0_out(6)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(13),
      I1 => reg_ext_mant_B(13),
      I2 => reg_ext_mant_A(12),
      I3 => reg_ext_mant_B(12),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0400FB"
    )
        port map (
      I0 => \i__carry__0_i_6__0_n_0\,
      I1 => \i__carry__0_i_7__0_n_0\,
      I2 => \i__carry__0_i_8__0_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => reg_exp_out(7),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(11),
      I1 => reg_ext_mant_B(11),
      I2 => reg_ext_mant_A(10),
      I3 => reg_ext_mant_B(10),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0400FB"
    )
        port map (
      I0 => \i__carry__0_i_6__0_n_0\,
      I1 => \i__carry__0_i_7__0_n_0\,
      I2 => \i__carry__0_i_8__0_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => reg_exp_out(6),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(9),
      I1 => reg_ext_mant_B(9),
      I2 => reg_ext_mant_A(8),
      I3 => reg_ext_mant_B(8),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0400FB"
    )
        port map (
      I0 => \i__carry__0_i_6__0_n_0\,
      I1 => \i__carry__0_i_7__0_n_0\,
      I2 => \i__carry__0_i_8__0_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => reg_exp_out(5),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(15),
      I1 => reg_ext_mant_A(15),
      I2 => reg_ext_mant_B(14),
      I3 => reg_ext_mant_A(14),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F20D"
    )
        port map (
      I0 => \i__carry_i_5__0_n_0\,
      I1 => \i__carry_i_6__0_n_0\,
      I2 => \out_reg[6]_i_5_n_4\,
      I3 => reg_exp_out(6),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(13),
      I1 => reg_ext_mant_A(13),
      I2 => reg_ext_mant_B(12),
      I3 => reg_ext_mant_A(12),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => data2(9),
      I1 => data2(4),
      I2 => data2(2),
      I3 => data2(3),
      I4 => \i__carry__0_i_9_n_0\,
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(11),
      I1 => reg_ext_mant_A(11),
      I2 => reg_ext_mant_B(10),
      I3 => reg_ext_mant_A(10),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data2(19),
      I1 => data2(20),
      I2 => data2(21),
      I3 => \out_reg[6]_i_5_n_6\,
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(22),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(9),
      I1 => reg_ext_mant_A(9),
      I2 => reg_ext_mant_B(8),
      I3 => reg_ext_mant_A(8),
      O => \i__carry__0_i_8_n_0\
    );
\i__carry__0_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \i__carry_i_18_n_0\,
      I1 => data2(15),
      I2 => data2(13),
      I3 => data2(14),
      I4 => data2(16),
      I5 => \out[20]_i_6_n_0\,
      O => \i__carry__0_i_8__0_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data2(7),
      I1 => data2(8),
      I2 => data2(5),
      I3 => data2(6),
      O => \i__carry__0_i_9_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(23),
      I1 => reg_ext_mant_B(23),
      I2 => reg_ext_mant_A(22),
      I3 => reg_ext_mant_B(22),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(21),
      I1 => reg_ext_mant_B(21),
      I2 => reg_ext_mant_A(20),
      I3 => reg_ext_mant_B(20),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(19),
      I1 => reg_ext_mant_B(19),
      I2 => reg_ext_mant_A(18),
      I3 => reg_ext_mant_B(18),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(17),
      I1 => reg_ext_mant_B(17),
      I2 => reg_ext_mant_A(16),
      I3 => reg_ext_mant_B(16),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(23),
      I1 => reg_ext_mant_A(23),
      I2 => reg_ext_mant_B(22),
      I3 => reg_ext_mant_A(22),
      O => \i__carry__1_i_5_n_0\
    );
\i__carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(21),
      I1 => reg_ext_mant_A(21),
      I2 => reg_ext_mant_B(20),
      I3 => reg_ext_mant_A(20),
      O => \i__carry__1_i_6_n_0\
    );
\i__carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(19),
      I1 => reg_ext_mant_A(19),
      I2 => reg_ext_mant_B(18),
      I3 => reg_ext_mant_A(18),
      O => \i__carry__1_i_7_n_0\
    );
\i__carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(17),
      I1 => reg_ext_mant_A(17),
      I2 => reg_ext_mant_B(16),
      I3 => reg_ext_mant_A(16),
      O => \i__carry__1_i_8_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(7),
      I1 => reg_ext_mant_B(7),
      I2 => reg_ext_mant_A(6),
      I3 => reg_ext_mant_B(6),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => data2(6),
      I1 => data2(5),
      I2 => data2(8),
      I3 => data2(7),
      I4 => \i__carry_i_18_n_0\,
      I5 => data2(9),
      O => \i__carry_i_10_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data2(17),
      I1 => data2(18),
      I2 => data2(19),
      I3 => data2(20),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_5\,
      I1 => \out_reg[6]_i_5_n_6\,
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFFE0FFEEFFEE"
    )
        port map (
      I0 => \i__carry_i_20_n_0\,
      I1 => \i__carry_i_21_n_0\,
      I2 => data2(3),
      I3 => data2(19),
      I4 => data2(20),
      I5 => \i__carry_i_22_n_0\,
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEEFE"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_6\,
      I1 => data2(21),
      I2 => data2(17),
      I3 => data2(18),
      I4 => data2(19),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBABBBABA"
    )
        port map (
      I0 => data2(15),
      I1 => data2(14),
      I2 => data2(13),
      I3 => data2(12),
      I4 => \i__carry_i_23_n_0\,
      I5 => data2(11),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data2(18),
      I1 => data2(16),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF55FF04"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_6\,
      I1 => data2(20),
      I2 => data2(21),
      I3 => \out_reg[6]_i_5_n_5\,
      I4 => data2(22),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data2(11),
      I1 => data2(12),
      I2 => data2(10),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data2(6),
      I1 => data2(5),
      O => \i__carry_i_19_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8A0075"
    )
        port map (
      I0 => \i__carry_i_5__0_n_0\,
      I1 => \i__carry_i_6__0_n_0\,
      I2 => \i__carry_i_7__0_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => reg_exp_out(3),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(5),
      I1 => reg_ext_mant_B(5),
      I2 => reg_ext_mant_A(4),
      I3 => reg_ext_mant_B(4),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1110FFFF"
    )
        port map (
      I0 => data2(17),
      I1 => data2(18),
      I2 => data2(15),
      I3 => data2(16),
      I4 => \i__carry_i_12_n_0\,
      I5 => data2(20),
      O => \i__carry_i_20_n_0\
    );
\i__carry_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040000040400040"
    )
        port map (
      I0 => \i__carry_i_24_n_0\,
      I1 => \out[20]_i_6_n_0\,
      I2 => \i__carry_i_25_n_0\,
      I3 => data2(9),
      I4 => \i__carry_i_26_n_0\,
      I5 => data2(10),
      O => \i__carry_i_21_n_0\
    );
\i__carry_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \i__carry_i_27_n_0\,
      I1 => \i__carry_i_12_n_0\,
      I2 => data2(4),
      I3 => data2(16),
      I4 => data2(15),
      I5 => \i__carry_i_26_n_0\,
      O => \i__carry_i_22_n_0\
    );
\i__carry_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5511551055115511"
    )
        port map (
      I0 => data2(10),
      I1 => data2(8),
      I2 => data2(7),
      I3 => data2(9),
      I4 => \i__carry_i_28_n_0\,
      I5 => \i__carry_i_29_n_0\,
      O => \i__carry_i_23_n_0\
    );
\i__carry_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data2(14),
      I1 => data2(13),
      O => \i__carry_i_24_n_0\
    );
\i__carry_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEEF"
    )
        port map (
      I0 => data2(12),
      I1 => data2(11),
      I2 => data2(5),
      I3 => data2(6),
      I4 => data2(8),
      I5 => data2(7),
      O => \i__carry_i_25_n_0\
    );
\i__carry_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data2(11),
      I1 => data2(12),
      O => \i__carry_i_26_n_0\
    );
\i__carry_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data2(8),
      I1 => data2(7),
      O => \i__carry_i_27_n_0\
    );
\i__carry_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data2(5),
      I1 => data2(6),
      O => \i__carry_i_28_n_0\
    );
\i__carry_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => data2(3),
      I1 => data2(2),
      I2 => data2(4),
      I3 => data2(6),
      O => \i__carry_i_29_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF55010000AAFE"
    )
        port map (
      I0 => \i__carry_i_8__0_n_0\,
      I1 => \i__carry_i_9_n_0\,
      I2 => \i__carry_i_10_n_0\,
      I3 => \i__carry_i_11_n_0\,
      I4 => \out_reg[6]_i_5_n_4\,
      I5 => reg_exp_out(2),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(3),
      I1 => reg_ext_mant_B(3),
      I2 => reg_ext_mant_A(2),
      I3 => reg_ext_mant_B(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAEAFFFF05150000"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_4\,
      I1 => data2(22),
      I2 => \i__carry_i_12_n_0\,
      I3 => data2(21),
      I4 => \i__carry_i_13_n_0\,
      I5 => reg_exp_out(1),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => reg_ext_mant_A(1),
      I1 => reg_ext_mant_B(1),
      I2 => reg_ext_mant_A(0),
      I3 => reg_ext_mant_B(0),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AE0000FF51"
    )
        port map (
      I0 => \i__carry_i_14_n_0\,
      I1 => \i__carry_i_15_n_0\,
      I2 => \i__carry_i_16_n_0\,
      I3 => \i__carry_i_17_n_0\,
      I4 => \out_reg[6]_i_5_n_4\,
      I5 => reg_exp_out(0),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(7),
      I1 => reg_ext_mant_A(7),
      I2 => reg_ext_mant_B(6),
      I3 => reg_ext_mant_A(6),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \i__carry_i_8__0_n_0\,
      I1 => data2(20),
      I2 => data2(19),
      I3 => data2(18),
      I4 => data2(17),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(5),
      I1 => reg_ext_mant_A(5),
      I2 => reg_ext_mant_B(4),
      I3 => reg_ext_mant_A(4),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \i__carry_i_18_n_0\,
      I1 => data2(9),
      I2 => data2(16),
      I3 => data2(15),
      I4 => data2(14),
      I5 => data2(13),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(3),
      I1 => reg_ext_mant_A(3),
      I2 => reg_ext_mant_B(2),
      I3 => reg_ext_mant_A(2),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \i__carry_i_19_n_0\,
      I1 => data2(8),
      I2 => data2(7),
      I3 => data2(3),
      I4 => data2(2),
      I5 => data2(4),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => reg_ext_mant_B(1),
      I1 => reg_ext_mant_A(1),
      I2 => reg_ext_mant_B(0),
      I3 => reg_ext_mant_A(0),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data2(22),
      I1 => \out_reg[6]_i_5_n_5\,
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(21),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data2(13),
      I1 => data2(14),
      I2 => data2(15),
      I3 => data2(16),
      O => \i__carry_i_9_n_0\
    );
\out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data2(3),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out_reg[6]_i_5_n_4\,
      I3 => data2(2),
      O => \out[0]_i_1_n_0\
    );
\out[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBB8B8B8"
    )
        port map (
      I0 => data2(19),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[16]_i_2_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => data2(18),
      I5 => \out[16]_i_3_n_0\,
      O => \out[16]_i_1_n_0\
    );
\out[16]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data2(12),
      I1 => data2(4),
      O => \out[16]_i_10_n_0\
    );
\out[16]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => data2(17),
      I1 => data2(18),
      I2 => data2(16),
      O => \out[16]_i_11_n_0\
    );
\out[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202020202000000"
    )
        port map (
      I0 => \out[16]_i_4_n_0\,
      I1 => \out[7]_i_5_n_0\,
      I2 => \out[16]_i_5_n_0\,
      I3 => data2(2),
      I4 => data2(9),
      I5 => \i__carry__0_i_8__0_n_0\,
      O => \out[16]_i_2_n_0\
    );
\out[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A222AAAA"
    )
        port map (
      I0 => \out[16]_i_6_n_0\,
      I1 => \out[16]_i_7_n_0\,
      I2 => data2(21),
      I3 => data2(14),
      I4 => \out[3]_i_2_n_0\,
      I5 => \out[6]_i_4_n_0\,
      O => \out[16]_i_3_n_0\
    );
\out[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55554454FFFFFFFF"
    )
        port map (
      I0 => \out[16]_i_8_n_0\,
      I1 => \out[16]_i_9_n_0\,
      I2 => data2(11),
      I3 => \out[16]_i_10_n_0\,
      I4 => \out[19]_i_7_n_0\,
      I5 => \out[16]_i_11_n_0\,
      O => \out[16]_i_4_n_0\
    );
\out[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(9),
      I1 => data2(16),
      I2 => data2(17),
      I3 => data2(10),
      I4 => data2(18),
      I5 => data2(11),
      O => \out[16]_i_5_n_0\
    );
\out[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD0D0000FD0D"
    )
        port map (
      I0 => data2(22),
      I1 => data2(15),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(16),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(17),
      O => \out[16]_i_6_n_0\
    );
\out[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDFFFDF"
    )
        port map (
      I0 => data2(19),
      I1 => data2(21),
      I2 => data2(12),
      I3 => data2(20),
      I4 => data2(13),
      O => \out[16]_i_7_n_0\
    );
\out[16]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30353F3530303F30"
    )
        port map (
      I0 => data2(6),
      I1 => data2(8),
      I2 => data2(15),
      I3 => data2(14),
      I4 => data2(7),
      I5 => data2(13),
      O => \out[16]_i_8_n_0\
    );
\out[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data2(5),
      I1 => data2(12),
      I2 => data2(3),
      I3 => data2(11),
      I4 => data2(10),
      O => \out[16]_i_9_n_0\
    );
\out[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => data2(20),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[17]_i_2_n_0\,
      I3 => \out[17]_i_3_n_0\,
      I4 => \out[17]_i_4_n_0\,
      O => \out[17]_i_1_n_0\
    );
\out[17]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFD0D0000FD0D"
    )
        port map (
      I0 => data2(22),
      I1 => data2(16),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(17),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(18),
      O => \out[17]_i_10_n_0\
    );
\out[17]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => data2(22),
      I1 => \out_reg[6]_i_5_n_5\,
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(15),
      I4 => data2(21),
      O => \out[17]_i_11_n_0\
    );
\out[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1011"
    )
        port map (
      I0 => \i__carry__0_i_8__0_n_0\,
      I1 => \out[17]_i_5_n_0\,
      I2 => \i__carry__0_i_6__0_n_0\,
      I3 => data2(19),
      I4 => \out[17]_i_6_n_0\,
      I5 => \out[7]_i_5_n_0\,
      O => \out[17]_i_2_n_0\
    );
\out[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFD0"
    )
        port map (
      I0 => \out[17]_i_7_n_0\,
      I1 => \out[19]_i_7_n_0\,
      I2 => \out[17]_i_8_n_0\,
      I3 => data2(16),
      I4 => data2(18),
      I5 => data2(17),
      O => \out[17]_i_3_n_0\
    );
\out[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => \out[6]_i_4_n_0\,
      I1 => \out[17]_i_9_n_0\,
      I2 => \out[17]_i_10_n_0\,
      I3 => data2(19),
      I4 => \out_reg[6]_i_5_n_4\,
      O => \out[17]_i_4_n_0\
    );
\out[17]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data2(3),
      I1 => data2(9),
      I2 => data2(2),
      I3 => data2(8),
      O => \out[17]_i_5_n_0\
    );
\out[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04070404F4F7F4F4"
    )
        port map (
      I0 => data2(11),
      I1 => data2(17),
      I2 => data2(18),
      I3 => data2(10),
      I4 => data2(16),
      I5 => data2(12),
      O => \out[17]_i_6_n_0\
    );
\out[17]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F7FFFF07F7"
    )
        port map (
      I0 => data2(4),
      I1 => data2(10),
      I2 => data2(11),
      I3 => data2(5),
      I4 => data2(12),
      I5 => data2(6),
      O => \out[17]_i_7_n_0\
    );
\out[17]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCAC0CACFCFC0CF"
    )
        port map (
      I0 => data2(7),
      I1 => data2(9),
      I2 => data2(15),
      I3 => data2(14),
      I4 => data2(8),
      I5 => data2(13),
      O => \out[17]_i_8_n_0\
    );
\out[17]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF47FF77"
    )
        port map (
      I0 => data2(14),
      I1 => data2(20),
      I2 => data2(13),
      I3 => data2(21),
      I4 => data2(19),
      I5 => \out[17]_i_11_n_0\,
      O => \out[17]_i_9_n_0\
    );
\out[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB8B88"
    )
        port map (
      I0 => data2(21),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[18]_i_2_n_0\,
      I3 => \out[18]_i_3_n_0\,
      I4 => \out[18]_i_4_n_0\,
      O => \out[18]_i_1_n_0\
    );
\out[18]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => data2(14),
      I1 => data2(20),
      I2 => data2(19),
      I3 => data2(21),
      O => \out[18]_i_10_n_0\
    );
\out[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBBBBBBBFBBB"
    )
        port map (
      I0 => data2(22),
      I1 => \i__carry_i_12_n_0\,
      I2 => data2(20),
      I3 => data2(15),
      I4 => data2(21),
      I5 => data2(16),
      O => \out[18]_i_11_n_0\
    );
\out[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF1011"
    )
        port map (
      I0 => \i__carry__0_i_8__0_n_0\,
      I1 => \out[18]_i_5_n_0\,
      I2 => \i__carry__0_i_6__0_n_0\,
      I3 => data2(20),
      I4 => \out[18]_i_6_n_0\,
      I5 => \out[7]_i_5_n_0\,
      O => \out[18]_i_2_n_0\
    );
\out[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF54"
    )
        port map (
      I0 => \out[18]_i_7_n_0\,
      I1 => \out[19]_i_7_n_0\,
      I2 => \out[18]_i_8_n_0\,
      I3 => data2(16),
      I4 => data2(18),
      I5 => data2(17),
      O => \out[18]_i_3_n_0\
    );
\out[18]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888F888F888F8888"
    )
        port map (
      I0 => data2(20),
      I1 => \out_reg[6]_i_5_n_4\,
      I2 => \out[6]_i_4_n_0\,
      I3 => \out[18]_i_9_n_0\,
      I4 => \out[18]_i_10_n_0\,
      I5 => \out[18]_i_11_n_0\,
      O => \out[18]_i_4_n_0\
    );
\out[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACACACA3A0A0A0"
    )
        port map (
      I0 => data2(4),
      I1 => data2(8),
      I2 => data2(9),
      I3 => data2(7),
      I4 => data2(2),
      I5 => data2(3),
      O => \out[18]_i_5_n_0\
    );
\out[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04070404F4F7F4F4"
    )
        port map (
      I0 => data2(12),
      I1 => data2(17),
      I2 => data2(18),
      I3 => data2(11),
      I4 => data2(16),
      I5 => data2(13),
      O => \out[18]_i_6_n_0\
    );
\out[18]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303F3535303F3030"
    )
        port map (
      I0 => data2(8),
      I1 => data2(10),
      I2 => data2(15),
      I3 => data2(9),
      I4 => data2(14),
      I5 => data2(13),
      O => \out[18]_i_7_n_0\
    );
\out[18]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACFCAC0CAC0CAC0"
    )
        port map (
      I0 => data2(6),
      I1 => data2(7),
      I2 => data2(12),
      I3 => data2(11),
      I4 => data2(10),
      I5 => data2(5),
      O => \out[18]_i_8_n_0\
    );
\out[18]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(17),
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(18),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(19),
      O => \out[18]_i_9_n_0\
    );
\out[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAE00AE"
    )
        port map (
      I0 => \out[19]_i_2_n_0\,
      I1 => \out[19]_i_3_n_0\,
      I2 => \out[19]_i_4_n_0\,
      I3 => \out_reg[7]_i_3_n_7\,
      I4 => data2(22),
      I5 => \out[31]_i_2_n_0\,
      O => \out[19]_i_1_n_0\
    );
\out[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010101"
    )
        port map (
      I0 => data2(9),
      I1 => data2(7),
      I2 => data2(8),
      I3 => data2(6),
      I4 => data2(2),
      I5 => \out[19]_i_13_n_0\,
      O => \out[19]_i_10_n_0\
    );
\out[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04070404F4F7F4F4"
    )
        port map (
      I0 => data2(13),
      I1 => data2(17),
      I2 => data2(18),
      I3 => data2(12),
      I4 => data2(16),
      I5 => data2(14),
      O => \out[19]_i_11_n_0\
    );
\out[19]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data2(17),
      I1 => data2(21),
      I2 => data2(16),
      I3 => data2(20),
      O => \out[19]_i_12_n_0\
    );
\out[19]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000C5555FF0C"
    )
        port map (
      I0 => data2(5),
      I1 => data2(7),
      I2 => data2(3),
      I3 => data2(8),
      I4 => data2(9),
      I5 => data2(4),
      O => \out[19]_i_13_n_0\
    );
\out[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF101010"
    )
        port map (
      I0 => \out[6]_i_4_n_0\,
      I1 => \out[19]_i_5_n_0\,
      I2 => \out[19]_i_6_n_0\,
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => data2(21),
      I5 => \out_reg[7]_i_3_n_7\,
      O => \out[19]_i_2_n_0\
    );
\out[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE0"
    )
        port map (
      I0 => \out[19]_i_7_n_0\,
      I1 => \out[19]_i_8_n_0\,
      I2 => \out[19]_i_9_n_0\,
      I3 => data2(16),
      I4 => data2(18),
      I5 => data2(17),
      O => \out[19]_i_3_n_0\
    );
\out[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4500"
    )
        port map (
      I0 => \i__carry__0_i_8__0_n_0\,
      I1 => \i__carry__0_i_6__0_n_0\,
      I2 => data2(21),
      I3 => \out[19]_i_10_n_0\,
      I4 => \out[19]_i_11_n_0\,
      I5 => \out[7]_i_5_n_0\,
      O => \out[19]_i_4_n_0\
    );
\out[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(18),
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(19),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(20),
      O => \out[19]_i_5_n_0\
    );
\out[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0400FFFF"
    )
        port map (
      I0 => data2(21),
      I1 => data2(19),
      I2 => data2(20),
      I3 => data2(15),
      I4 => \out[3]_i_2_n_0\,
      I5 => \out[19]_i_12_n_0\,
      O => \out[19]_i_6_n_0\
    );
\out[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFEFEFEFF"
    )
        port map (
      I0 => data2(14),
      I1 => data2(13),
      I2 => data2(15),
      I3 => data2(11),
      I4 => data2(12),
      I5 => data2(10),
      O => \out[19]_i_7_n_0\
    );
\out[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8880000B888"
    )
        port map (
      I0 => data2(7),
      I1 => data2(11),
      I2 => data2(10),
      I3 => data2(6),
      I4 => data2(12),
      I5 => data2(8),
      O => \out[19]_i_8_n_0\
    );
\out[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCAC0CACFCFC0CF"
    )
        port map (
      I0 => data2(9),
      I1 => data2(11),
      I2 => data2(15),
      I3 => data2(14),
      I4 => data2(10),
      I5 => data2(13),
      O => \out[19]_i_9_n_0\
    );
\out[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => data2(4),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => data2(3),
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(2),
      O => \out[1]_i_1_n_0\
    );
\out[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EE0E"
    )
        port map (
      I0 => \out[20]_i_2_n_0\,
      I1 => \out[20]_i_3_n_0\,
      I2 => \out_reg[7]_i_3_n_7\,
      I3 => \out_reg[6]_i_5_n_6\,
      I4 => \out[31]_i_2_n_0\,
      O => \out[20]_i_1_n_0\
    );
\out[20]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B888"
    )
        port map (
      I0 => data2(18),
      I1 => data2(21),
      I2 => data2(20),
      I3 => data2(17),
      O => \out[20]_i_10_n_0\
    );
\out[20]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88B88888"
    )
        port map (
      I0 => data2(9),
      I1 => data2(12),
      I2 => data2(7),
      I3 => data2(11),
      I4 => data2(10),
      O => \out[20]_i_11_n_0\
    );
\out[20]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30353F3530303F30"
    )
        port map (
      I0 => data2(10),
      I1 => data2(12),
      I2 => data2(15),
      I3 => data2(14),
      I4 => data2(11),
      I5 => data2(13),
      O => \out[20]_i_12_n_0\
    );
\out[20]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data2(9),
      I1 => data2(7),
      I2 => data2(8),
      O => \out[20]_i_13_n_0\
    );
\out[20]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001010101"
    )
        port map (
      I0 => data2(6),
      I1 => data2(5),
      I2 => data2(4),
      I3 => data2(3),
      I4 => data2(2),
      I5 => data2(22),
      O => \out[20]_i_14_n_0\
    );
\out[20]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1D1D3F0C"
    )
        port map (
      I0 => data2(2),
      I1 => data2(6),
      I2 => data2(3),
      I3 => data2(4),
      I4 => data2(5),
      O => \out[20]_i_15_n_0\
    );
\out[20]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AACFAAC0AAC0AAC0"
    )
        port map (
      I0 => data2(6),
      I1 => data2(5),
      I2 => data2(8),
      I3 => data2(9),
      I4 => data2(4),
      I5 => data2(7),
      O => \out[20]_i_16_n_0\
    );
\out[20]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data2(14),
      I1 => data2(13),
      I2 => data2(15),
      I3 => data2(10),
      I4 => data2(12),
      I5 => data2(11),
      O => \out[20]_i_17_n_0\
    );
\out[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF10FFFF1010"
    )
        port map (
      I0 => \out[6]_i_4_n_0\,
      I1 => \out[20]_i_4_n_0\,
      I2 => \out[20]_i_5_n_0\,
      I3 => data2(22),
      I4 => \out_reg[7]_i_3_n_7\,
      I5 => \out_reg[6]_i_5_n_4\,
      O => \out[20]_i_2_n_0\
    );
\out[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000DDFD"
    )
        port map (
      I0 => \out[20]_i_6_n_0\,
      I1 => data2(16),
      I2 => \out[20]_i_7_n_0\,
      I3 => \out[20]_i_8_n_0\,
      I4 => \out[20]_i_9_n_0\,
      I5 => \out[7]_i_5_n_0\,
      O => \out[20]_i_3_n_0\
    );
\out[20]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(19),
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(20),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(21),
      O => \out[20]_i_4_n_0\
    );
\out[20]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0400FFFF"
    )
        port map (
      I0 => data2(21),
      I1 => data2(19),
      I2 => data2(20),
      I3 => data2(16),
      I4 => \out[3]_i_2_n_0\,
      I5 => \out[20]_i_10_n_0\,
      O => \out[20]_i_5_n_0\
    );
\out[20]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data2(18),
      I1 => data2(17),
      O => \out[20]_i_6_n_0\
    );
\out[20]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFBAAA"
    )
        port map (
      I0 => \out[19]_i_7_n_0\,
      I1 => data2(12),
      I2 => data2(11),
      I3 => data2(8),
      I4 => \out[20]_i_11_n_0\,
      I5 => \out[20]_i_12_n_0\,
      O => \out[20]_i_7_n_0\
    );
\out[20]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \out[20]_i_13_n_0\,
      I1 => \out[20]_i_14_n_0\,
      I2 => \out[20]_i_15_n_0\,
      I3 => \out[20]_i_16_n_0\,
      I4 => \out[20]_i_17_n_0\,
      O => \out[20]_i_8_n_0\
    );
\out[20]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04070404F4F7F4F4"
    )
        port map (
      I0 => data2(14),
      I1 => data2(17),
      I2 => data2(18),
      I3 => data2(13),
      I4 => data2(16),
      I5 => data2(15),
      O => \out[20]_i_9_n_0\
    );
\out[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB888B8888"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_5\,
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[21]_i_2_n_0\,
      I3 => \out[21]_i_3_n_0\,
      I4 => \out[21]_i_4_n_0\,
      I5 => \out[21]_i_5_n_0\,
      O => \out[21]_i_1_n_0\
    );
\out[21]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFCEC0CECFC2C0C2"
    )
        port map (
      I0 => \out[21]_i_11_n_0\,
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_5\,
      I3 => \out_reg[6]_i_5_n_6\,
      I4 => data2(21),
      I5 => data2(20),
      O => \out[21]_i_10_n_0\
    );
\out[21]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB08F808"
    )
        port map (
      I0 => data2(18),
      I1 => data2(20),
      I2 => data2(21),
      I3 => data2(19),
      I4 => data2(17),
      O => \out[21]_i_11_n_0\
    );
\out[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0033303200333332"
    )
        port map (
      I0 => \out[21]_i_6_n_0\,
      I1 => \out[21]_i_7_n_0\,
      I2 => data2(14),
      I3 => data2(13),
      I4 => data2(15),
      I5 => data2(11),
      O => \out[21]_i_2_n_0\
    );
\out[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFAAEFEABFAAFFE"
    )
        port map (
      I0 => \out[7]_i_5_n_0\,
      I1 => data2(17),
      I2 => data2(18),
      I3 => data2(16),
      I4 => data2(15),
      I5 => data2(14),
      O => \out[21]_i_3_n_0\
    );
\out[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => data2(9),
      I1 => data2(7),
      I2 => data2(8),
      I3 => \out[21]_i_8_n_0\,
      I4 => \out[21]_i_9_n_0\,
      I5 => \i__carry__0_i_8__0_n_0\,
      O => \out[21]_i_4_n_0\
    );
\out[21]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_6\,
      I1 => \out_reg[6]_i_5_n_4\,
      I2 => \out[6]_i_4_n_0\,
      I3 => \out[21]_i_10_n_0\,
      O => \out[21]_i_5_n_0\
    );
\out[21]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001DFF0C"
    )
        port map (
      I0 => data2(8),
      I1 => data2(11),
      I2 => data2(9),
      I3 => data2(12),
      I4 => data2(10),
      O => \out[21]_i_6_n_0\
    );
\out[21]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFFFEFEFEFEFE"
    )
        port map (
      I0 => data2(16),
      I1 => data2(18),
      I2 => data2(17),
      I3 => data2(14),
      I4 => data2(15),
      I5 => data2(12),
      O => \out[21]_i_7_n_0\
    );
\out[21]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCF00C000C02"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_6\,
      I1 => data2(3),
      I2 => data2(6),
      I3 => data2(5),
      I4 => data2(2),
      I5 => data2(4),
      O => \out[21]_i_8_n_0\
    );
\out[21]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAACCC0"
    )
        port map (
      I0 => data2(6),
      I1 => data2(7),
      I2 => data2(5),
      I3 => data2(9),
      I4 => data2(8),
      O => \out[21]_i_9_n_0\
    );
\out[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBB888B8888"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_4\,
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[7]_i_5_n_0\,
      I3 => \out[22]_i_2_n_0\,
      I4 => \out[22]_i_3_n_0\,
      I5 => \out[22]_i_4_n_0\,
      O => \out[22]_i_1_n_0\
    );
\out[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F320F3E"
    )
        port map (
      I0 => \out[22]_i_5_n_0\,
      I1 => data2(7),
      I2 => data2(8),
      I3 => data2(9),
      I4 => data2(6),
      I5 => \i__carry__0_i_8__0_n_0\,
      O => \out[22]_i_2_n_0\
    );
\out[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFC11FFFFFFFF"
    )
        port map (
      I0 => \out[22]_i_6_n_0\,
      I1 => data2(17),
      I2 => data2(15),
      I3 => data2(16),
      I4 => data2(18),
      I5 => \i__carry__0_i_8__0_n_0\,
      O => \out[22]_i_3_n_0\
    );
\out[22]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00F0FAF003"
    )
        port map (
      I0 => data2(21),
      I1 => \out[22]_i_7_n_0\,
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => \out_reg[6]_i_5_n_5\,
      I4 => data2(22),
      I5 => \out_reg[6]_i_5_n_4\,
      O => \out[22]_i_4_n_0\
    );
\out[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00FF5567"
    )
        port map (
      I0 => data2(3),
      I1 => data2(2),
      I2 => \out_reg[6]_i_5_n_5\,
      I3 => data2(4),
      I4 => data2(5),
      I5 => data2(6),
      O => \out[22]_i_5_n_0\
    );
\out[22]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F0F05FC"
    )
        port map (
      I0 => data2(12),
      I1 => \out[22]_i_8_n_0\,
      I2 => data2(14),
      I3 => data2(13),
      I4 => data2(15),
      O => \out[22]_i_6_n_0\
    );
\out[22]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05F7"
    )
        port map (
      I0 => data2(19),
      I1 => data2(18),
      I2 => data2(21),
      I3 => data2(20),
      O => \out[22]_i_7_n_0\
    );
\out[22]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"515F"
    )
        port map (
      I0 => data2(11),
      I1 => data2(9),
      I2 => data2(12),
      I3 => data2(10),
      O => \out[22]_i_8_n_0\
    );
\out[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004E"
    )
        port map (
      I0 => \out_reg[7]_i_3_n_7\,
      I1 => \p_1_out_inferred__1/i__carry_n_7\,
      I2 => reg_exp_out(0),
      I3 => \out[31]_i_2_n_0\,
      O => exp_out_2(0)
    );
\out[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002EE2"
    )
        port map (
      I0 => \p_1_out_inferred__1/i__carry_n_6\,
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => reg_exp_out(1),
      I3 => reg_exp_out(0),
      I4 => \out[31]_i_2_n_0\,
      O => exp_out_2(1)
    );
\out[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004EEEE444"
    )
        port map (
      I0 => \out_reg[7]_i_3_n_7\,
      I1 => \p_1_out_inferred__1/i__carry_n_5\,
      I2 => reg_exp_out(0),
      I3 => reg_exp_out(1),
      I4 => reg_exp_out(2),
      I5 => \out[31]_i_2_n_0\,
      O => exp_out_2(2)
    );
\out[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E44E"
    )
        port map (
      I0 => \out_reg[7]_i_3_n_7\,
      I1 => \p_1_out_inferred__1/i__carry_n_4\,
      I2 => \out[26]_i_2_n_0\,
      I3 => reg_exp_out(3),
      I4 => \out[31]_i_2_n_0\,
      O => exp_out_2(3)
    );
\out[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => reg_exp_out(1),
      I1 => reg_exp_out(0),
      I2 => reg_exp_out(2),
      O => \out[26]_i_2_n_0\
    );
\out[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E44E"
    )
        port map (
      I0 => \out_reg[7]_i_3_n_7\,
      I1 => \p_1_out_inferred__1/i__carry__0_n_7\,
      I2 => \out[27]_i_2_n_0\,
      I3 => reg_exp_out(6),
      I4 => \out[31]_i_2_n_0\,
      O => exp_out_2(4)
    );
\out[27]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => reg_exp_out(2),
      I1 => reg_exp_out(0),
      I2 => reg_exp_out(1),
      I3 => reg_exp_out(3),
      O => \out[27]_i_2_n_0\
    );
\out[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004EE4"
    )
        port map (
      I0 => \out_reg[7]_i_3_n_7\,
      I1 => \p_1_out_inferred__1/i__carry__0_n_6\,
      I2 => \out[28]_i_2_n_0\,
      I3 => reg_exp_out(5),
      I4 => \out[31]_i_2_n_0\,
      O => exp_out_2(5)
    );
\out[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => reg_exp_out(6),
      I1 => reg_exp_out(3),
      I2 => reg_exp_out(1),
      I3 => reg_exp_out(0),
      I4 => reg_exp_out(2),
      O => \out[28]_i_2_n_0\
    );
\out[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10105410"
    )
        port map (
      I0 => \out[31]_i_2_n_0\,
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \p_1_out_inferred__1/i__carry__0_n_5\,
      I3 => reg_exp_out(6),
      I4 => \out[30]_i_2_n_0\,
      O => \out[29]_i_1_n_0\
    );
\out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data2(5),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[2]_i_2_n_0\,
      O => \out[2]_i_1_n_0\
    );
\out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB88BB88B8B88888"
    )
        port map (
      I0 => data2(4),
      I1 => \out_reg[6]_i_5_n_4\,
      I2 => data2(2),
      I3 => data2(3),
      I4 => \out_reg[6]_i_5_n_6\,
      I5 => \out_reg[6]_i_5_n_5\,
      O => \out[2]_i_2_n_0\
    );
\out[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002EE2"
    )
        port map (
      I0 => \p_1_out_inferred__1/i__carry__0_n_4\,
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[30]_i_2_n_0\,
      I3 => reg_exp_out(7),
      I4 => \out[31]_i_2_n_0\,
      O => exp_out_2(7)
    );
\out[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => reg_exp_out(2),
      I1 => reg_exp_out(0),
      I2 => reg_exp_out(1),
      I3 => reg_exp_out(3),
      I4 => reg_exp_out(6),
      I5 => reg_exp_out(5),
      O => \out[30]_i_2_n_0\
    );
\out[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => reg_sign_B,
      I1 => sum_mant1,
      I2 => reg_sign_A,
      I3 => \out[31]_i_2_n_0\,
      O => sign_out
    );
\out[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_4\,
      I1 => \i__carry__0_i_6__0_n_0\,
      I2 => \i__carry__0_i_7__0_n_0\,
      I3 => \i__carry__0_i_8__0_n_0\,
      O => \out[31]_i_2_n_0\
    );
\out[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB88888B888B88"
    )
        port map (
      I0 => data2(6),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[3]_i_2_n_0\,
      I3 => \out[3]_i_3_n_0\,
      I4 => data2(5),
      I5 => \out_reg[6]_i_5_n_4\,
      O => \out[3]_i_1_n_0\
    );
\out[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_6\,
      I1 => \out_reg[6]_i_5_n_5\,
      I2 => data2(22),
      O => \out[3]_i_2_n_0\
    );
\out[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBF80B08"
    )
        port map (
      I0 => data2(3),
      I1 => \out_reg[6]_i_5_n_6\,
      I2 => \out_reg[6]_i_5_n_5\,
      I3 => data2(2),
      I4 => data2(4),
      O => \out[3]_i_3_n_0\
    );
\out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE0EE0000E0EE"
    )
        port map (
      I0 => \out[4]_i_2_n_0\,
      I1 => \out[4]_i_3_n_0\,
      I2 => data2(6),
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => \out_reg[7]_i_3_n_7\,
      I5 => data2(7),
      O => \out[4]_i_1_n_0\
    );
\out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF808"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_6\,
      I1 => data2(4),
      I2 => \out_reg[6]_i_5_n_5\,
      I3 => data2(5),
      I4 => \out_reg[6]_i_5_n_4\,
      I5 => \out_reg[7]_i_3_n_7\,
      O => \out[4]_i_2_n_0\
    );
\out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F808"
    )
        port map (
      I0 => data2(2),
      I1 => data2(21),
      I2 => data2(22),
      I3 => data2(3),
      I4 => \out_reg[6]_i_5_n_6\,
      I5 => \out_reg[6]_i_5_n_5\,
      O => \out[4]_i_3_n_0\
    );
\out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0440000F044"
    )
        port map (
      I0 => \out[5]_i_2_n_0\,
      I1 => \out[5]_i_3_n_0\,
      I2 => data2(7),
      I3 => \out_reg[6]_i_5_n_4\,
      I4 => \out_reg[7]_i_3_n_7\,
      I5 => data2(8),
      O => \out[5]_i_1_n_0\
    );
\out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(4),
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(5),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(6),
      O => \out[5]_i_2_n_0\
    );
\out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF808FFFFFFFF"
    )
        port map (
      I0 => data2(20),
      I1 => data2(2),
      I2 => data2(21),
      I3 => data2(3),
      I4 => data2(22),
      I5 => \i__carry_i_12_n_0\,
      O => \out[5]_i_3_n_0\
    );
\out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBB888B888B888B"
    )
        port map (
      I0 => data2(9),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[6]_i_3_n_0\,
      I3 => \out[6]_i_4_n_0\,
      I4 => data2(8),
      I5 => \out_reg[6]_i_5_n_4\,
      O => \out[6]_i_1_n_0\
    );
\out[6]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(7),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(7),
      O => \out[6]_i_10_n_0\
    );
\out[6]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(6),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(6),
      O => \out[6]_i_11_n_0\
    );
\out[6]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(5),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(5),
      O => \out[6]_i_12_n_0\
    );
\out[6]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(4),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(4),
      O => \out[6]_i_13_n_0\
    );
\out[6]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCDFFFDF"
    )
        port map (
      I0 => data2(19),
      I1 => data2(21),
      I2 => data2(2),
      I3 => data2(20),
      I4 => data2(3),
      O => \out[6]_i_14_n_0\
    );
\out[6]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(5),
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(6),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(7),
      O => \out[6]_i_15_n_0\
    );
\out[6]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(23),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(23),
      O => p_2_in(23)
    );
\out[6]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(22),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(22),
      O => p_2_in(22)
    );
\out[6]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(21),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(21),
      O => p_2_in(21)
    );
\out[6]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(20),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(20),
      O => p_2_in(20)
    );
\out[6]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(23),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(23),
      O => \out[6]_i_20_n_0\
    );
\out[6]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(22),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(22),
      O => \out[6]_i_21_n_0\
    );
\out[6]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(21),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(21),
      O => \out[6]_i_22_n_0\
    );
\out[6]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(20),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(20),
      O => \out[6]_i_23_n_0\
    );
\out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF04440000"
    )
        port map (
      I0 => data2(22),
      I1 => \i__carry_i_12_n_0\,
      I2 => data2(4),
      I3 => data2(21),
      I4 => \out[6]_i_14_n_0\,
      I5 => \out[6]_i_15_n_0\,
      O => \out[6]_i_3_n_0\
    );
\out[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAAA"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_4\,
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_5\,
      I3 => \out_reg[6]_i_5_n_6\,
      I4 => data2(21),
      I5 => \out[7]_i_19_n_0\,
      O => \out[6]_i_4_n_0\
    );
\out[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(7),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(7),
      O => p_2_in(7)
    );
\out[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(6),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(6),
      O => p_2_in(6)
    );
\out[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(5),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(5),
      O => p_2_in(5)
    );
\out[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(4),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(4),
      O => p_2_in(4)
    );
\out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8B8B8B8B8B8"
    )
        port map (
      I0 => data2(10),
      I1 => \out_reg[7]_i_3_n_7\,
      I2 => \out[7]_i_4_n_0\,
      I3 => \out[7]_i_5_n_0\,
      I4 => data2(18),
      I5 => data2(2),
      O => \out[7]_i_1_n_0\
    );
\out[7]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(9),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(9),
      O => p_2_in(9)
    );
\out[7]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(8),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(8),
      O => p_2_in(8)
    );
\out[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(11),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(11),
      O => \out[7]_i_12_n_0\
    );
\out[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(10),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(10),
      O => \out[7]_i_13_n_0\
    );
\out[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(9),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(9),
      O => \out[7]_i_14_n_0\
    );
\out[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(8),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(8),
      O => \out[7]_i_15_n_0\
    );
\out[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_sign_A,
      I1 => reg_sign_B,
      O => \out[7]_i_16_n_0\
    );
\out[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F4FFFF04F4"
    )
        port map (
      I0 => data2(6),
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(7),
      I4 => \out_reg[6]_i_5_n_5\,
      I5 => data2(8),
      O => \out[7]_i_17_n_0\
    );
\out[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00B80088"
    )
        port map (
      I0 => data2(4),
      I1 => data2(20),
      I2 => data2(3),
      I3 => data2(21),
      I4 => data2(19),
      I5 => \out[7]_i_38_n_0\,
      O => \out[7]_i_18_n_0\
    );
\out[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data2(20),
      I1 => data2(19),
      O => \out[7]_i_19_n_0\
    );
\out[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(19),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(19),
      O => p_2_in(19)
    );
\out[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(18),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(18),
      O => p_2_in(18)
    );
\out[7]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(17),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(17),
      O => p_2_in(17)
    );
\out[7]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(16),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(16),
      O => p_2_in(16)
    );
\out[7]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(19),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(19),
      O => \out[7]_i_25_n_0\
    );
\out[7]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(18),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(18),
      O => \out[7]_i_26_n_0\
    );
\out[7]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(17),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(17),
      O => \out[7]_i_27_n_0\
    );
\out[7]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(16),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(16),
      O => \out[7]_i_28_n_0\
    );
\out[7]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_sign_A,
      I1 => reg_sign_B,
      O => \out[7]_i_29_n_0\
    );
\out[7]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(3),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(3),
      O => p_2_in(3)
    );
\out[7]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(2),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(2),
      O => p_2_in(2)
    );
\out[7]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(1),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(1),
      O => p_2_in(1)
    );
\out[7]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(0),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(0),
      O => p_2_in(0)
    );
\out[7]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(3),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(3),
      O => \out[7]_i_34_n_0\
    );
\out[7]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(2),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(2),
      O => \out[7]_i_35_n_0\
    );
\out[7]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(1),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(1),
      O => \out[7]_i_36_n_0\
    );
\out[7]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(0),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(0),
      O => \out[7]_i_37_n_0\
    );
\out[7]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => data2(22),
      I1 => \out_reg[6]_i_5_n_5\,
      I2 => \out_reg[6]_i_5_n_6\,
      I3 => data2(5),
      I4 => data2(21),
      O => \out[7]_i_38_n_0\
    );
\out[7]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(15),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(15),
      O => p_2_in(15)
    );
\out[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF101010"
    )
        port map (
      I0 => \out[6]_i_4_n_0\,
      I1 => \out[7]_i_17_n_0\,
      I2 => \out[7]_i_18_n_0\,
      I3 => data2(9),
      I4 => \out_reg[6]_i_5_n_4\,
      O => \out[7]_i_4_n_0\
    );
\out[7]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(14),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(14),
      O => p_2_in(14)
    );
\out[7]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(13),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(13),
      O => p_2_in(13)
    );
\out[7]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(12),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(12),
      O => p_2_in(12)
    );
\out[7]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(15),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(15),
      O => \out[7]_i_43_n_0\
    );
\out[7]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(14),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(14),
      O => \out[7]_i_44_n_0\
    );
\out[7]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(13),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(13),
      O => \out[7]_i_45_n_0\
    );
\out[7]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => reg_ext_mant_B(12),
      I1 => reg_sign_B,
      I2 => reg_sign_A,
      I3 => reg_ext_mant_A(12),
      O => \out[7]_i_46_n_0\
    );
\out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \out_reg[6]_i_5_n_4\,
      I1 => data2(22),
      I2 => \out_reg[6]_i_5_n_5\,
      I3 => \out_reg[6]_i_5_n_6\,
      I4 => data2(21),
      I5 => \out[7]_i_19_n_0\,
      O => \out[7]_i_5_n_0\
    );
\out[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(11),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(11),
      O => p_2_in(11)
    );
\out[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBAA88A"
    )
        port map (
      I0 => reg_ext_mant_A(10),
      I1 => sum_mant1,
      I2 => reg_sign_B,
      I3 => reg_sign_A,
      I4 => reg_ext_mant_B(10),
      O => p_2_in(10)
    );
\out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[0]_i_1_n_0\,
      Q => leds(0)
    );
\out_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[16]_i_1_n_0\,
      Q => fp_out(16)
    );
\out_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[17]_i_1_n_0\,
      Q => fp_out(17)
    );
\out_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[18]_i_1_n_0\,
      Q => fp_out(18)
    );
\out_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[19]_i_1_n_0\,
      Q => fp_out(19)
    );
\out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[1]_i_1_n_0\,
      Q => leds(1)
    );
\out_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[20]_i_1_n_0\,
      Q => fp_out(20)
    );
\out_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[21]_i_1_n_0\,
      Q => fp_out(21)
    );
\out_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[22]_i_1_n_0\,
      Q => fp_out(22)
    );
\out_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(0),
      Q => fp_out(23)
    );
\out_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(1),
      Q => fp_out(24)
    );
\out_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(2),
      Q => fp_out(25)
    );
\out_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(3),
      Q => fp_out(26)
    );
\out_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(4),
      Q => fp_out(27)
    );
\out_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(5),
      Q => fp_out(28)
    );
\out_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[29]_i_1_n_0\,
      Q => fp_out(29)
    );
\out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[2]_i_1_n_0\,
      Q => leds(2)
    );
\out_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_2(7),
      Q => fp_out(30)
    );
\out_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => sign_out,
      Q => fp_out(31)
    );
\out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[3]_i_1_n_0\,
      Q => leds(3)
    );
\out_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[4]_i_1_n_0\,
      Q => leds(4)
    );
\out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[5]_i_1_n_0\,
      Q => leds(5)
    );
\out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[6]_i_1_n_0\,
      Q => leds(6)
    );
\out_reg[6]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[7]_i_7_n_0\,
      CO(3) => \out_reg[6]_i_2_n_0\,
      CO(2) => \out_reg[6]_i_2_n_1\,
      CO(1) => \out_reg[6]_i_2_n_2\,
      CO(0) => \out_reg[6]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(7 downto 4),
      O(3 downto 0) => data2(9 downto 6),
      S(3) => \out[6]_i_10_n_0\,
      S(2) => \out[6]_i_11_n_0\,
      S(1) => \out[6]_i_12_n_0\,
      S(0) => \out[6]_i_13_n_0\
    );
\out_reg[6]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[7]_i_6_n_0\,
      CO(3) => \out_reg[6]_i_5_n_0\,
      CO(2) => \out_reg[6]_i_5_n_1\,
      CO(1) => \out_reg[6]_i_5_n_2\,
      CO(0) => \out_reg[6]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(23 downto 20),
      O(3) => \out_reg[6]_i_5_n_4\,
      O(2) => \out_reg[6]_i_5_n_5\,
      O(1) => \out_reg[6]_i_5_n_6\,
      O(0) => data2(22),
      S(3) => \out[6]_i_20_n_0\,
      S(2) => \out[6]_i_21_n_0\,
      S(1) => \out[6]_i_22_n_0\,
      S(0) => \out[6]_i_23_n_0\
    );
\out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \out[7]_i_1_n_0\,
      Q => leds(7)
    );
\out_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[6]_i_2_n_0\,
      CO(3) => \out_reg[7]_i_2_n_0\,
      CO(2) => \out_reg[7]_i_2_n_1\,
      CO(1) => \out_reg[7]_i_2_n_2\,
      CO(0) => \out_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(11 downto 8),
      O(3 downto 0) => data2(13 downto 10),
      S(3) => \out[7]_i_12_n_0\,
      S(2) => \out[7]_i_13_n_0\,
      S(1) => \out[7]_i_14_n_0\,
      S(0) => \out[7]_i_15_n_0\
    );
\out_reg[7]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[7]_i_2_n_0\,
      CO(3) => \out_reg[7]_i_20_n_0\,
      CO(2) => \out_reg[7]_i_20_n_1\,
      CO(1) => \out_reg[7]_i_20_n_2\,
      CO(0) => \out_reg[7]_i_20_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(15 downto 12),
      O(3 downto 0) => data2(17 downto 14),
      S(3) => \out[7]_i_43_n_0\,
      S(2) => \out[7]_i_44_n_0\,
      S(1) => \out[7]_i_45_n_0\,
      S(0) => \out[7]_i_46_n_0\
    );
\out_reg[7]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[6]_i_5_n_0\,
      CO(3 downto 0) => \NLW_out_reg[7]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_out_reg[7]_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \out_reg[7]_i_3_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \out[7]_i_16_n_0\
    );
\out_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_reg[7]_i_20_n_0\,
      CO(3) => \out_reg[7]_i_6_n_0\,
      CO(2) => \out_reg[7]_i_6_n_1\,
      CO(1) => \out_reg[7]_i_6_n_2\,
      CO(0) => \out_reg[7]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_2_in(19 downto 16),
      O(3 downto 0) => data2(21 downto 18),
      S(3) => \out[7]_i_25_n_0\,
      S(2) => \out[7]_i_26_n_0\,
      S(1) => \out[7]_i_27_n_0\,
      S(0) => \out[7]_i_28_n_0\
    );
\out_reg[7]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_reg[7]_i_7_n_0\,
      CO(2) => \out_reg[7]_i_7_n_1\,
      CO(1) => \out_reg[7]_i_7_n_2\,
      CO(0) => \out_reg[7]_i_7_n_3\,
      CYINIT => \out[7]_i_29_n_0\,
      DI(3 downto 0) => p_2_in(3 downto 0),
      O(3 downto 0) => data2(5 downto 2),
      S(3) => \out[7]_i_34_n_0\,
      S(2) => \out[7]_i_35_n_0\,
      S(1) => \out[7]_i_36_n_0\,
      S(0) => \out[7]_i_37_n_0\
    );
\p_1_out_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \p_1_out_inferred__1/i__carry_n_0\,
      CO(2) => \p_1_out_inferred__1/i__carry_n_1\,
      CO(1) => \p_1_out_inferred__1/i__carry_n_2\,
      CO(0) => \p_1_out_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg_exp_out(3 downto 0),
      O(3) => \p_1_out_inferred__1/i__carry_n_4\,
      O(2) => \p_1_out_inferred__1/i__carry_n_5\,
      O(1) => \p_1_out_inferred__1/i__carry_n_6\,
      O(0) => \p_1_out_inferred__1/i__carry_n_7\,
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \i__carry_i_4__0_n_0\
    );
\p_1_out_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \p_1_out_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_p_1_out_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \p_1_out_inferred__1/i__carry__0_n_1\,
      CO(1) => \p_1_out_inferred__1/i__carry__0_n_2\,
      CO(0) => \p_1_out_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => p_0_out(6),
      DI(1) => p_0_out(6),
      DI(0) => reg_exp_out(6),
      O(3) => \p_1_out_inferred__1/i__carry__0_n_4\,
      O(2) => \p_1_out_inferred__1/i__carry__0_n_5\,
      O(1) => \p_1_out_inferred__1/i__carry__0_n_6\,
      O(0) => \p_1_out_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_2__0_n_0\,
      S(2) => \i__carry__0_i_3__0_n_0\,
      S(1) => \i__carry__0_i_4__0_n_0\,
      S(0) => \i__carry__0_i_5__0_n_0\
    );
\reg_exp_out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(0),
      I1 => exp_B(6),
      I2 => exp_out_11,
      O => exp_out_1(0)
    );
\reg_exp_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(1),
      I1 => exp_B(1),
      I2 => exp_out_11,
      O => exp_out_1(1)
    );
\reg_exp_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(2),
      I1 => exp_B(6),
      I2 => exp_out_11,
      O => exp_out_1(2)
    );
\reg_exp_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(3),
      I1 => exp_B(3),
      I2 => exp_out_11,
      O => exp_out_1(3)
    );
\reg_exp_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(5),
      I1 => exp_B(5),
      I2 => exp_out_11,
      O => exp_out_1(5)
    );
\reg_exp_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_out_11,
      O => exp_out_1(6)
    );
\reg_exp_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => exp_A(7),
      I1 => exp_B(7),
      I2 => exp_out_11,
      O => exp_out_1(7)
    );
\reg_exp_out_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(0),
      Q => reg_exp_out(0)
    );
\reg_exp_out_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(1),
      Q => reg_exp_out(1)
    );
\reg_exp_out_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(2),
      Q => reg_exp_out(2)
    );
\reg_exp_out_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(3),
      Q => reg_exp_out(3)
    );
\reg_exp_out_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(5),
      Q => reg_exp_out(5)
    );
\reg_exp_out_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(6),
      Q => reg_exp_out(6)
    );
\reg_exp_out_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => exp_out_1(7),
      Q => reg_exp_out(7)
    );
\reg_ext_mant_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(0),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[0]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[1]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(0)
    );
\reg_ext_mant_A[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \reg_ext_mant_A[2]_i_3_n_0\,
      I1 => ext_mant_A1(2),
      I2 => \reg_ext_mant_A[2]_i_4_n_0\,
      I3 => ext_mant_A1(1),
      I4 => \reg_ext_mant_A[0]_i_3_n_0\,
      I5 => \reg_ext_mant_A[0]_i_4_n_0\,
      O => \reg_ext_mant_A[0]_i_2_n_0\
    );
\reg_ext_mant_A[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(12),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(20),
      I3 => ext_mant_A1(4),
      I4 => p_0_in1_in(4),
      O => \reg_ext_mant_A[0]_i_3_n_0\
    );
\reg_ext_mant_A[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(8),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(16),
      I3 => ext_mant_A1(4),
      I4 => p_0_in1_in(0),
      O => \reg_ext_mant_A[0]_i_4_n_0\
    );
\reg_ext_mant_A[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[10]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[11]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(10)
    );
\reg_ext_mant_A[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[12]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[10]_i_3_n_0\,
      O => \reg_ext_mant_A[10]_i_2_n_0\
    );
\reg_ext_mant_A[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FFB800"
    )
        port map (
      I0 => p_0_in1_in(22),
      I1 => ext_mant_A1(2),
      I2 => p_0_in1_in(18),
      I3 => ext_mant_A1(3),
      I4 => p_0_in1_in(14),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_A[10]_i_3_n_0\
    );
\reg_ext_mant_A[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(11),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[11]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[12]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(11)
    );
\reg_ext_mant_A[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[13]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[11]_i_3_n_0\,
      O => \reg_ext_mant_A[11]_i_2_n_0\
    );
\reg_ext_mant_A[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCBBFC88"
    )
        port map (
      I0 => p_0_in1_in(15),
      I1 => ext_mant_A1(2),
      I2 => p_0_in1_in(19),
      I3 => ext_mant_A1(3),
      I4 => p_0_in1_in(11),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_A[11]_i_3_n_0\
    );
\reg_ext_mant_A[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(12),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[12]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[13]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(12)
    );
\reg_ext_mant_A[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[14]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[12]_i_3_n_0\,
      O => \reg_ext_mant_A[12]_i_2_n_0\
    );
\reg_ext_mant_A[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in1_in(16),
      I1 => ext_mant_A1(2),
      I2 => p_0_in1_in(20),
      I3 => ext_mant_A1(3),
      I4 => p_0_in1_in(12),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_A[12]_i_3_n_0\
    );
\reg_ext_mant_A[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(13),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[13]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[14]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(13)
    );
\reg_ext_mant_A[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[15]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[13]_i_3_n_0\,
      O => \reg_ext_mant_A[13]_i_2_n_0\
    );
\reg_ext_mant_A[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in1_in(17),
      I1 => ext_mant_A1(2),
      I2 => p_0_in1_in(21),
      I3 => ext_mant_A1(3),
      I4 => p_0_in1_in(13),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_A[13]_i_3_n_0\
    );
\reg_ext_mant_A[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[14]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[15]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(14)
    );
\reg_ext_mant_A[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[16]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[14]_i_3_n_0\,
      O => \reg_ext_mant_A[14]_i_2_n_0\
    );
\reg_ext_mant_A[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(2),
      I2 => p_0_in1_in(22),
      I3 => ext_mant_A1(3),
      I4 => p_0_in1_in(14),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_A[14]_i_3_n_0\
    );
\reg_ext_mant_A[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(15),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[15]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[16]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(15)
    );
\reg_ext_mant_A[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[17]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[15]_i_3_n_0\,
      O => \reg_ext_mant_A[15]_i_2_n_0\
    );
\reg_ext_mant_A[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003B38"
    )
        port map (
      I0 => p_0_in1_in(19),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(3),
      I3 => p_0_in1_in(15),
      I4 => ext_mant_A1(4),
      O => \reg_ext_mant_A[15]_i_3_n_0\
    );
\reg_ext_mant_A[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(16),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[16]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[17]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(16)
    );
\reg_ext_mant_A[16]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[18]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[16]_i_3_n_0\,
      O => \reg_ext_mant_A[16]_i_2_n_0\
    );
\reg_ext_mant_A[16]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(4),
      I3 => p_0_in1_in(16),
      I4 => ext_mant_A1(3),
      O => \reg_ext_mant_A[16]_i_3_n_0\
    );
\reg_ext_mant_A[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(17),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[17]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[18]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(17)
    );
\reg_ext_mant_A[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0032FFFF00320000"
    )
        port map (
      I0 => ext_mant_A1(2),
      I1 => ext_mant_A1(4),
      I2 => p_0_in1_in(19),
      I3 => ext_mant_A1(3),
      I4 => ext_mant_A1(1),
      I5 => \reg_ext_mant_A[17]_i_3_n_0\,
      O => \reg_ext_mant_A[17]_i_2_n_0\
    );
\reg_ext_mant_A[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(4),
      I3 => p_0_in1_in(17),
      I4 => ext_mant_A1(3),
      O => \reg_ext_mant_A[17]_i_3_n_0\
    );
\reg_ext_mant_A[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[18]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[19]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(18)
    );
\reg_ext_mant_A[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => ext_mant_A1(3),
      I1 => p_0_in1_in(20),
      I2 => ext_mant_A1(4),
      I3 => ext_mant_A1(2),
      I4 => ext_mant_A1(1),
      I5 => \reg_ext_mant_A[18]_i_3_n_0\,
      O => \reg_ext_mant_A[18]_i_2_n_0\
    );
\reg_ext_mant_A[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => p_0_in1_in(22),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(4),
      I3 => p_0_in1_in(18),
      I4 => ext_mant_A1(3),
      O => \reg_ext_mant_A[18]_i_3_n_0\
    );
\reg_ext_mant_A[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(19),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[19]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[20]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(19)
    );
\reg_ext_mant_A[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000003B0038"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => ext_mant_A1(1),
      I2 => ext_mant_A1(2),
      I3 => ext_mant_A1(4),
      I4 => p_0_in1_in(19),
      I5 => ext_mant_A1(3),
      O => \reg_ext_mant_A[19]_i_2_n_0\
    );
\reg_ext_mant_A[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[1]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[2]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(1)
    );
\reg_ext_mant_A[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_ext_mant_A[3]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[1]_i_3_n_0\,
      I3 => ext_mant_A1(2),
      I4 => \reg_ext_mant_A[1]_i_4_n_0\,
      O => \reg_ext_mant_A[1]_i_2_n_0\
    );
\reg_ext_mant_A[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(13),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(21),
      I3 => ext_mant_A1(4),
      I4 => p_0_in1_in(5),
      O => \reg_ext_mant_A[1]_i_3_n_0\
    );
\reg_ext_mant_A[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in(22),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(17),
      I3 => ext_mant_A1(4),
      I4 => p_0_in1_in(14),
      O => \reg_ext_mant_A[1]_i_4_n_0\
    );
\reg_ext_mant_A[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[20]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[21]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(20)
    );
\reg_ext_mant_A[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => p_0_in1_in(22),
      I1 => ext_mant_A1(1),
      I2 => ext_mant_A1(3),
      I3 => p_0_in1_in(20),
      I4 => ext_mant_A1(4),
      I5 => ext_mant_A1(2),
      O => \reg_ext_mant_A[20]_i_2_n_0\
    );
\reg_ext_mant_A[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[21]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[22]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(21)
    );
\reg_ext_mant_A[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000032"
    )
        port map (
      I0 => ext_mant_A1(1),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(21),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      O => \reg_ext_mant_A[21]_i_2_n_0\
    );
\reg_ext_mant_A[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(22),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[22]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_B[23]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(22)
    );
\reg_ext_mant_A[22]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => ext_mant_A1(2),
      I1 => ext_mant_A1(4),
      I2 => p_0_in1_in(22),
      I3 => ext_mant_A1(3),
      I4 => ext_mant_A1(1),
      O => \reg_ext_mant_A[22]_i_2_n_0\
    );
\reg_ext_mant_A[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \reg_ext_mant_B[23]_i_2_n_0\,
      I1 => ext_mant_A1(0),
      I2 => ext_mant_A1(7),
      I3 => ext_mant_A1(5),
      I4 => ext_mant_A1(6),
      I5 => exp_out_11,
      O => ext_mant_A(23)
    );
\reg_ext_mant_A[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_1_in(4),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[2]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[3]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(2)
    );
\reg_ext_mant_A[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \reg_ext_mant_A[2]_i_3_n_0\,
      I1 => ext_mant_A1(2),
      I2 => \reg_ext_mant_A[2]_i_4_n_0\,
      I3 => \reg_ext_mant_A[4]_i_3_n_0\,
      I4 => ext_mant_A1(1),
      O => \reg_ext_mant_A[2]_i_2_n_0\
    );
\reg_ext_mant_A[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(22),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(17),
      O => \reg_ext_mant_A[2]_i_3_n_0\
    );
\reg_ext_mant_A[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(14),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(18),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(4),
      O => \reg_ext_mant_A[2]_i_4_n_0\
    );
\reg_ext_mant_A[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_1_in(21),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[3]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[4]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(3)
    );
\reg_ext_mant_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[5]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[3]_i_3_n_0\,
      O => \reg_ext_mant_A[3]_i_2_n_0\
    );
\reg_ext_mant_A[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => p_0_in1_in(15),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(21),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[3]_i_4_n_0\,
      O => \reg_ext_mant_A[3]_i_3_n_0\
    );
\reg_ext_mant_A[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(11),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(19),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(21),
      O => \reg_ext_mant_A[3]_i_4_n_0\
    );
\reg_ext_mant_A[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(4),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[4]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[5]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(4)
    );
\reg_ext_mant_A[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[6]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[4]_i_3_n_0\,
      O => \reg_ext_mant_A[4]_i_2_n_0\
    );
\reg_ext_mant_A[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(16),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(8),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[0]_i_3_n_0\,
      O => \reg_ext_mant_A[4]_i_3_n_0\
    );
\reg_ext_mant_A[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(5),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[5]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[6]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(5)
    );
\reg_ext_mant_A[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[7]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[5]_i_3_n_0\,
      O => \reg_ext_mant_A[5]_i_2_n_0\
    );
\reg_ext_mant_A[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(17),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(22),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[1]_i_3_n_0\,
      O => \reg_ext_mant_A[5]_i_3_n_0\
    );
\reg_ext_mant_A[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_1_in(17),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[6]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[7]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(6)
    );
\reg_ext_mant_A[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[8]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[6]_i_3_n_0\,
      O => \reg_ext_mant_A[6]_i_2_n_0\
    );
\reg_ext_mant_A[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(14),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[2]_i_3_n_0\,
      O => \reg_ext_mant_A[6]_i_3_n_0\
    );
\reg_ext_mant_A[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_1_in(21),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[7]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[8]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(7)
    );
\reg_ext_mant_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[9]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[7]_i_3_n_0\,
      O => \reg_ext_mant_A[7]_i_2_n_0\
    );
\reg_ext_mant_A[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(19),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(11),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[7]_i_4_n_0\,
      O => \reg_ext_mant_A[7]_i_3_n_0\
    );
\reg_ext_mant_A[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33B8"
    )
        port map (
      I0 => p_0_in1_in(15),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(21),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_A[7]_i_4_n_0\
    );
\reg_ext_mant_A[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_0_in1_in(8),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[8]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[9]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(8)
    );
\reg_ext_mant_A[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[10]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[8]_i_3_n_0\,
      O => \reg_ext_mant_A[8]_i_2_n_0\
    );
\reg_ext_mant_A[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(12),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[8]_i_4_n_0\,
      O => \reg_ext_mant_A[8]_i_3_n_0\
    );
\reg_ext_mant_A[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in1_in(16),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(8),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_A[8]_i_4_n_0\
    );
\reg_ext_mant_A[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCC000C0"
    )
        port map (
      I0 => p_1_in(22),
      I1 => \reg_ext_mant_B[22]_i_2_n_0\,
      I2 => \reg_ext_mant_A[9]_i_2_n_0\,
      I3 => ext_mant_A1(0),
      I4 => \reg_ext_mant_A[10]_i_2_n_0\,
      I5 => exp_out_11,
      O => ext_mant_A(9)
    );
\reg_ext_mant_A[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_A[11]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_A[9]_i_3_n_0\,
      O => \reg_ext_mant_A[9]_i_2_n_0\
    );
\reg_ext_mant_A[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(21),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(13),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_A[9]_i_4_n_0\,
      O => \reg_ext_mant_A[9]_i_3_n_0\
    );
\reg_ext_mant_A[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in1_in(17),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(22),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_A[9]_i_4_n_0\
    );
\reg_ext_mant_A_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(0),
      Q => reg_ext_mant_A(0)
    );
\reg_ext_mant_A_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(10),
      Q => reg_ext_mant_A(10)
    );
\reg_ext_mant_A_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(11),
      Q => reg_ext_mant_A(11)
    );
\reg_ext_mant_A_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(12),
      Q => reg_ext_mant_A(12)
    );
\reg_ext_mant_A_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(13),
      Q => reg_ext_mant_A(13)
    );
\reg_ext_mant_A_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(14),
      Q => reg_ext_mant_A(14)
    );
\reg_ext_mant_A_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(15),
      Q => reg_ext_mant_A(15)
    );
\reg_ext_mant_A_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(16),
      Q => reg_ext_mant_A(16)
    );
\reg_ext_mant_A_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(17),
      Q => reg_ext_mant_A(17)
    );
\reg_ext_mant_A_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(18),
      Q => reg_ext_mant_A(18)
    );
\reg_ext_mant_A_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(19),
      Q => reg_ext_mant_A(19)
    );
\reg_ext_mant_A_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(1),
      Q => reg_ext_mant_A(1)
    );
\reg_ext_mant_A_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(20),
      Q => reg_ext_mant_A(20)
    );
\reg_ext_mant_A_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(21),
      Q => reg_ext_mant_A(21)
    );
\reg_ext_mant_A_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(22),
      Q => reg_ext_mant_A(22)
    );
\reg_ext_mant_A_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(23),
      Q => reg_ext_mant_A(23)
    );
\reg_ext_mant_A_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(2),
      Q => reg_ext_mant_A(2)
    );
\reg_ext_mant_A_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(3),
      Q => reg_ext_mant_A(3)
    );
\reg_ext_mant_A_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(4),
      Q => reg_ext_mant_A(4)
    );
\reg_ext_mant_A_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(5),
      Q => reg_ext_mant_A(5)
    );
\reg_ext_mant_A_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(6),
      Q => reg_ext_mant_A(6)
    );
\reg_ext_mant_A_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(7),
      Q => reg_ext_mant_A(7)
    );
\reg_ext_mant_A_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(8),
      Q => reg_ext_mant_A(8)
    );
\reg_ext_mant_A_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_A(9),
      Q => reg_ext_mant_A(9)
    );
\reg_ext_mant_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[0]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[1]_i_2_n_0\,
      I4 => p_1_in(19),
      I5 => exp_out_11,
      O => ext_mant_B(0)
    );
\reg_ext_mant_B[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB833B8CCB800"
    )
        port map (
      I0 => \reg_ext_mant_B[2]_i_3_n_0\,
      I1 => ext_mant_A1(2),
      I2 => \reg_ext_mant_B[2]_i_4_n_0\,
      I3 => ext_mant_A1(1),
      I4 => \reg_ext_mant_B[0]_i_3_n_0\,
      I5 => \reg_ext_mant_B[0]_i_4_n_0\,
      O => \reg_ext_mant_B[0]_i_2_n_0\
    );
\reg_ext_mant_B[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in(12),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(20),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(4),
      O => \reg_ext_mant_B[0]_i_3_n_0\
    );
\reg_ext_mant_B[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(8),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(16),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(19),
      O => \reg_ext_mant_B[0]_i_4_n_0\
    );
\reg_ext_mant_B[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[10]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[11]_i_2_n_0\,
      I4 => p_1_in(10),
      I5 => exp_out_11,
      O => ext_mant_B(10)
    );
\reg_ext_mant_B[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[12]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[10]_i_3_n_0\,
      O => \reg_ext_mant_B[10]_i_2_n_0\
    );
\reg_ext_mant_B[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_1_in(22),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(14),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[10]_i_4_n_0\,
      O => \reg_ext_mant_B[10]_i_3_n_0\
    );
\reg_ext_mant_B[10]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(10),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_B[10]_i_4_n_0\
    );
\reg_ext_mant_B[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[11]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[12]_i_2_n_0\,
      I4 => p_1_in(11),
      I5 => exp_out_11,
      O => ext_mant_B(11)
    );
\reg_ext_mant_B[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[13]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[11]_i_3_n_0\,
      O => \reg_ext_mant_B[11]_i_2_n_0\
    );
\reg_ext_mant_B[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FCBBFC88"
    )
        port map (
      I0 => p_1_in(15),
      I1 => ext_mant_A1(2),
      I2 => p_1_in(19),
      I3 => ext_mant_A1(3),
      I4 => p_1_in(11),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_B[11]_i_3_n_0\
    );
\reg_ext_mant_B[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[12]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[13]_i_2_n_0\,
      I4 => p_1_in(12),
      I5 => exp_out_11,
      O => ext_mant_B(12)
    );
\reg_ext_mant_B[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[14]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[12]_i_3_n_0\,
      O => \reg_ext_mant_B[12]_i_2_n_0\
    );
\reg_ext_mant_B[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_1_in(16),
      I1 => ext_mant_A1(2),
      I2 => p_0_in1_in(20),
      I3 => ext_mant_A1(3),
      I4 => p_1_in(12),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_B[12]_i_3_n_0\
    );
\reg_ext_mant_B[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[13]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[14]_i_2_n_0\,
      I4 => p_1_in(13),
      I5 => exp_out_11,
      O => ext_mant_B(13)
    );
\reg_ext_mant_B[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[15]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[13]_i_3_n_0\,
      O => \reg_ext_mant_B[13]_i_2_n_0\
    );
\reg_ext_mant_B[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_1_in(17),
      I1 => ext_mant_A1(2),
      I2 => p_1_in(21),
      I3 => ext_mant_A1(3),
      I4 => p_1_in(13),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_B[13]_i_3_n_0\
    );
\reg_ext_mant_B[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[14]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[15]_i_2_n_0\,
      I4 => p_1_in(14),
      I5 => exp_out_11,
      O => ext_mant_B(14)
    );
\reg_ext_mant_B[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[16]_i_5_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[14]_i_3_n_0\,
      O => \reg_ext_mant_B[14]_i_2_n_0\
    );
\reg_ext_mant_B[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(2),
      I2 => p_1_in(22),
      I3 => ext_mant_A1(3),
      I4 => p_1_in(14),
      I5 => ext_mant_A1(4),
      O => \reg_ext_mant_B[14]_i_3_n_0\
    );
\reg_ext_mant_B[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[15]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[16]_i_2_n_0\,
      I4 => p_1_in(15),
      I5 => exp_out_11,
      O => ext_mant_B(15)
    );
\reg_ext_mant_B[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[17]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[15]_i_3_n_0\,
      O => \reg_ext_mant_B[15]_i_2_n_0\
    );
\reg_ext_mant_B[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003B38"
    )
        port map (
      I0 => p_1_in(19),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(3),
      I3 => p_1_in(15),
      I4 => ext_mant_A1(4),
      O => \reg_ext_mant_B[15]_i_3_n_0\
    );
\reg_ext_mant_B[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[16]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[17]_i_2_n_0\,
      I4 => p_1_in(16),
      I5 => exp_out_11,
      O => ext_mant_B(16)
    );
\reg_ext_mant_B[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => \reg_ext_mant_B[16]_i_3_n_0\,
      I1 => ext_mant_A1(2),
      I2 => \reg_ext_mant_B[16]_i_4_n_0\,
      I3 => ext_mant_A1(3),
      I4 => ext_mant_A1(1),
      I5 => \reg_ext_mant_B[16]_i_5_n_0\,
      O => \reg_ext_mant_B[16]_i_2_n_0\
    );
\reg_ext_mant_B[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in(22),
      I1 => ext_mant_A1(4),
      O => \reg_ext_mant_B[16]_i_3_n_0\
    );
\reg_ext_mant_B[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(4),
      O => \reg_ext_mant_B[16]_i_4_n_0\
    );
\reg_ext_mant_B[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(4),
      I3 => p_1_in(16),
      I4 => ext_mant_A1(3),
      O => \reg_ext_mant_B[16]_i_5_n_0\
    );
\reg_ext_mant_B[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[17]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[18]_i_2_n_0\,
      I4 => p_1_in(17),
      I5 => exp_out_11,
      O => ext_mant_B(17)
    );
\reg_ext_mant_B[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0032FFFF00320000"
    )
        port map (
      I0 => ext_mant_A1(2),
      I1 => ext_mant_A1(4),
      I2 => p_1_in(19),
      I3 => ext_mant_A1(3),
      I4 => ext_mant_A1(1),
      I5 => \reg_ext_mant_B[17]_i_3_n_0\,
      O => \reg_ext_mant_B[17]_i_2_n_0\
    );
\reg_ext_mant_B[17]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => p_1_in(21),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(4),
      I3 => p_1_in(17),
      I4 => ext_mant_A1(3),
      O => \reg_ext_mant_B[17]_i_3_n_0\
    );
\reg_ext_mant_B[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[18]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[19]_i_2_n_0\,
      I4 => p_0_in1_in(18),
      I5 => exp_out_11,
      O => ext_mant_B(18)
    );
\reg_ext_mant_B[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => ext_mant_A1(3),
      I1 => p_0_in1_in(20),
      I2 => ext_mant_A1(4),
      I3 => ext_mant_A1(2),
      I4 => ext_mant_A1(1),
      I5 => \reg_ext_mant_B[18]_i_3_n_0\,
      O => \reg_ext_mant_B[18]_i_2_n_0\
    );
\reg_ext_mant_B[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => p_1_in(22),
      I1 => ext_mant_A1(2),
      I2 => ext_mant_A1(4),
      I3 => p_0_in1_in(18),
      I4 => ext_mant_A1(3),
      O => \reg_ext_mant_B[18]_i_3_n_0\
    );
\reg_ext_mant_B[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[19]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[20]_i_2_n_0\,
      I4 => p_1_in(19),
      I5 => exp_out_11,
      O => ext_mant_B(19)
    );
\reg_ext_mant_B[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000003B0038"
    )
        port map (
      I0 => p_1_in(21),
      I1 => ext_mant_A1(1),
      I2 => ext_mant_A1(2),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(19),
      I5 => ext_mant_A1(3),
      O => \reg_ext_mant_B[19]_i_2_n_0\
    );
\reg_ext_mant_B[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[1]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[2]_i_2_n_0\,
      I4 => p_0_in1_in(16),
      I5 => exp_out_11,
      O => ext_mant_B(1)
    );
\reg_ext_mant_B[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \reg_ext_mant_B[3]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[1]_i_3_n_0\,
      I3 => ext_mant_A1(2),
      I4 => \reg_ext_mant_B[1]_i_4_n_0\,
      O => \reg_ext_mant_B[1]_i_2_n_0\
    );
\reg_ext_mant_B[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3808"
    )
        port map (
      I0 => p_1_in(13),
      I1 => ext_mant_A1(3),
      I2 => ext_mant_A1(4),
      I3 => p_1_in(21),
      O => \reg_ext_mant_B[1]_i_3_n_0\
    );
\reg_ext_mant_B[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(17),
      I3 => ext_mant_A1(4),
      I4 => p_0_in1_in(16),
      O => \reg_ext_mant_B[1]_i_4_n_0\
    );
\reg_ext_mant_B[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[20]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[21]_i_2_n_0\,
      I4 => p_0_in1_in(20),
      I5 => exp_out_11,
      O => ext_mant_B(20)
    );
\reg_ext_mant_B[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => p_1_in(22),
      I1 => ext_mant_A1(1),
      I2 => ext_mant_A1(3),
      I3 => p_0_in1_in(20),
      I4 => ext_mant_A1(4),
      I5 => ext_mant_A1(2),
      O => \reg_ext_mant_B[20]_i_2_n_0\
    );
\reg_ext_mant_B[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[21]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[22]_i_3_n_0\,
      I4 => p_1_in(21),
      I5 => exp_out_11,
      O => ext_mant_B(21)
    );
\reg_ext_mant_B[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000032"
    )
        port map (
      I0 => ext_mant_A1(1),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(21),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      O => \reg_ext_mant_B[21]_i_2_n_0\
    );
\reg_ext_mant_B[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[22]_i_3_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[23]_i_2_n_0\,
      I4 => p_1_in(22),
      I5 => exp_out_11,
      O => ext_mant_B(22)
    );
\reg_ext_mant_B[22]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ext_mant_A1(7),
      I1 => ext_mant_A1(5),
      I2 => ext_mant_A1(6),
      O => \reg_ext_mant_B[22]_i_2_n_0\
    );
\reg_ext_mant_B[22]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => ext_mant_A1(2),
      I1 => ext_mant_A1(4),
      I2 => p_1_in(22),
      I3 => ext_mant_A1(3),
      I4 => ext_mant_A1(1),
      O => \reg_ext_mant_B[22]_i_3_n_0\
    );
\reg_ext_mant_B[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \reg_ext_mant_B[23]_i_2_n_0\,
      I1 => ext_mant_A1(0),
      I2 => ext_mant_A1(7),
      I3 => ext_mant_A1(5),
      I4 => ext_mant_A1(6),
      I5 => exp_out_11,
      O => ext_mant_B(23)
    );
\reg_ext_mant_B[23]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(2),
      I1 => exp_B(6),
      I2 => exp_A(3),
      I3 => exp_B(3),
      O => \reg_ext_mant_B[23]_i_10_n_0\
    );
\reg_ext_mant_B[23]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(0),
      I1 => exp_B(6),
      I2 => exp_A(1),
      I3 => exp_B(1),
      O => \reg_ext_mant_B[23]_i_11_n_0\
    );
\reg_ext_mant_B[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ext_mant_A1(2),
      I1 => ext_mant_A1(4),
      I2 => ext_mant_A1(3),
      I3 => ext_mant_A1(1),
      O => \reg_ext_mant_B[23]_i_2_n_0\
    );
\reg_ext_mant_B[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_B(7),
      I3 => exp_A(7),
      O => \reg_ext_mant_B[23]_i_4_n_0\
    );
\reg_ext_mant_B[23]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_B(5),
      I3 => exp_A(5),
      O => \reg_ext_mant_B[23]_i_5_n_0\
    );
\reg_ext_mant_B[23]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(2),
      I1 => exp_B(6),
      I2 => exp_B(3),
      I3 => exp_A(3),
      O => \reg_ext_mant_B[23]_i_6_n_0\
    );
\reg_ext_mant_B[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => exp_A(0),
      I1 => exp_B(6),
      I2 => exp_B(1),
      I3 => exp_A(1),
      O => \reg_ext_mant_B[23]_i_7_n_0\
    );
\reg_ext_mant_B[23]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_A(7),
      I3 => exp_B(7),
      O => \reg_ext_mant_B[23]_i_8_n_0\
    );
\reg_ext_mant_B[23]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => exp_A(6),
      I1 => exp_B(6),
      I2 => exp_A(5),
      I3 => exp_B(5),
      O => \reg_ext_mant_B[23]_i_9_n_0\
    );
\reg_ext_mant_B[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[2]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[3]_i_2_n_0\,
      I4 => p_1_in(2),
      I5 => exp_out_11,
      O => ext_mant_B(2)
    );
\reg_ext_mant_B[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => \reg_ext_mant_B[2]_i_3_n_0\,
      I1 => ext_mant_A1(2),
      I2 => \reg_ext_mant_B[2]_i_4_n_0\,
      I3 => \reg_ext_mant_B[4]_i_3_n_0\,
      I4 => ext_mant_A1(1),
      O => \reg_ext_mant_B[2]_i_2_n_0\
    );
\reg_ext_mant_B[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in(14),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(22),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(19),
      O => \reg_ext_mant_B[2]_i_3_n_0\
    );
\reg_ext_mant_B[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in(10),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(18),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(2),
      O => \reg_ext_mant_B[2]_i_4_n_0\
    );
\reg_ext_mant_B[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[3]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[4]_i_2_n_0\,
      I4 => p_1_in(21),
      I5 => exp_out_11,
      O => ext_mant_B(3)
    );
\reg_ext_mant_B[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[5]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[3]_i_3_n_0\,
      O => \reg_ext_mant_B[3]_i_2_n_0\
    );
\reg_ext_mant_B[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33B8FFFF33B80000"
    )
        port map (
      I0 => p_1_in(15),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(21),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[3]_i_4_n_0\,
      O => \reg_ext_mant_B[3]_i_3_n_0\
    );
\reg_ext_mant_B[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => p_1_in(11),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(19),
      I3 => ext_mant_A1(4),
      I4 => p_1_in(21),
      O => \reg_ext_mant_B[3]_i_4_n_0\
    );
\reg_ext_mant_B[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[4]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[5]_i_2_n_0\,
      I4 => p_1_in(4),
      I5 => exp_out_11,
      O => ext_mant_B(4)
    );
\reg_ext_mant_B[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[6]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[4]_i_3_n_0\,
      O => \reg_ext_mant_B[4]_i_2_n_0\
    );
\reg_ext_mant_B[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_1_in(16),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(8),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[0]_i_3_n_0\,
      O => \reg_ext_mant_B[4]_i_3_n_0\
    );
\reg_ext_mant_B[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8000000"
    )
        port map (
      I0 => \reg_ext_mant_B[6]_i_2_n_0\,
      I1 => ext_mant_A1(0),
      I2 => \reg_ext_mant_B[5]_i_2_n_0\,
      I3 => \reg_ext_mant_B[22]_i_2_n_0\,
      I4 => exp_out_11,
      O => \reg_ext_mant_B[5]_i_1_n_0\
    );
\reg_ext_mant_B[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[7]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[5]_i_3_n_0\,
      O => \reg_ext_mant_B[5]_i_2_n_0\
    );
\reg_ext_mant_B[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_1_in(17),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(18),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[1]_i_3_n_0\,
      O => \reg_ext_mant_B[5]_i_3_n_0\
    );
\reg_ext_mant_B[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[6]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[7]_i_2_n_0\,
      I4 => p_1_in(19),
      I5 => exp_out_11,
      O => ext_mant_B(6)
    );
\reg_ext_mant_B[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[8]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[6]_i_3_n_0\,
      O => \reg_ext_mant_B[6]_i_2_n_0\
    );
\reg_ext_mant_B[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(18),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(10),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[2]_i_3_n_0\,
      O => \reg_ext_mant_B[6]_i_3_n_0\
    );
\reg_ext_mant_B[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[7]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[8]_i_2_n_0\,
      I4 => p_1_in(21),
      I5 => exp_out_11,
      O => ext_mant_B(7)
    );
\reg_ext_mant_B[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[9]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[7]_i_3_n_0\,
      O => \reg_ext_mant_B[7]_i_2_n_0\
    );
\reg_ext_mant_B[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_1_in(19),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(11),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[7]_i_4_n_0\,
      O => \reg_ext_mant_B[7]_i_3_n_0\
    );
\reg_ext_mant_B[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"33B8"
    )
        port map (
      I0 => p_1_in(15),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(21),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_B[7]_i_4_n_0\
    );
\reg_ext_mant_B[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[8]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[9]_i_2_n_0\,
      I4 => p_0_in1_in(8),
      I5 => exp_out_11,
      O => ext_mant_B(8)
    );
\reg_ext_mant_B[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[10]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[8]_i_3_n_0\,
      O => \reg_ext_mant_B[8]_i_2_n_0\
    );
\reg_ext_mant_B[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_0_in1_in(20),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(12),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[8]_i_4_n_0\,
      O => \reg_ext_mant_B[8]_i_3_n_0\
    );
\reg_ext_mant_B[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_1_in(16),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(8),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_B[8]_i_4_n_0\
    );
\reg_ext_mant_B[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A808A808FFFF0000"
    )
        port map (
      I0 => \reg_ext_mant_B[22]_i_2_n_0\,
      I1 => \reg_ext_mant_B[9]_i_2_n_0\,
      I2 => ext_mant_A1(0),
      I3 => \reg_ext_mant_B[10]_i_2_n_0\,
      I4 => p_0_in1_in(18),
      I5 => exp_out_11,
      O => ext_mant_B(9)
    );
\reg_ext_mant_B[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg_ext_mant_B[11]_i_3_n_0\,
      I1 => ext_mant_A1(1),
      I2 => \reg_ext_mant_B[9]_i_3_n_0\,
      O => \reg_ext_mant_B[9]_i_2_n_0\
    );
\reg_ext_mant_B[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B8FFFF00B80000"
    )
        port map (
      I0 => p_1_in(21),
      I1 => ext_mant_A1(3),
      I2 => p_1_in(13),
      I3 => ext_mant_A1(4),
      I4 => ext_mant_A1(2),
      I5 => \reg_ext_mant_B[9]_i_4_n_0\,
      O => \reg_ext_mant_B[9]_i_3_n_0\
    );
\reg_ext_mant_B[9]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => p_1_in(17),
      I1 => ext_mant_A1(3),
      I2 => p_0_in1_in(18),
      I3 => ext_mant_A1(4),
      O => \reg_ext_mant_B[9]_i_4_n_0\
    );
\reg_ext_mant_B_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(0),
      Q => reg_ext_mant_B(0)
    );
\reg_ext_mant_B_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(10),
      Q => reg_ext_mant_B(10)
    );
\reg_ext_mant_B_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(11),
      Q => reg_ext_mant_B(11)
    );
\reg_ext_mant_B_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(12),
      Q => reg_ext_mant_B(12)
    );
\reg_ext_mant_B_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(13),
      Q => reg_ext_mant_B(13)
    );
\reg_ext_mant_B_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(14),
      Q => reg_ext_mant_B(14)
    );
\reg_ext_mant_B_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(15),
      Q => reg_ext_mant_B(15)
    );
\reg_ext_mant_B_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(16),
      Q => reg_ext_mant_B(16)
    );
\reg_ext_mant_B_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(17),
      Q => reg_ext_mant_B(17)
    );
\reg_ext_mant_B_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(18),
      Q => reg_ext_mant_B(18)
    );
\reg_ext_mant_B_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(19),
      Q => reg_ext_mant_B(19)
    );
\reg_ext_mant_B_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(1),
      Q => reg_ext_mant_B(1)
    );
\reg_ext_mant_B_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(20),
      Q => reg_ext_mant_B(20)
    );
\reg_ext_mant_B_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(21),
      Q => reg_ext_mant_B(21)
    );
\reg_ext_mant_B_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(22),
      Q => reg_ext_mant_B(22)
    );
\reg_ext_mant_B_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(23),
      Q => reg_ext_mant_B(23)
    );
\reg_ext_mant_B_reg[23]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => exp_out_11,
      CO(2) => \reg_ext_mant_B_reg[23]_i_3_n_1\,
      CO(1) => \reg_ext_mant_B_reg[23]_i_3_n_2\,
      CO(0) => \reg_ext_mant_B_reg[23]_i_3_n_3\,
      CYINIT => '1',
      DI(3) => \reg_ext_mant_B[23]_i_4_n_0\,
      DI(2) => \reg_ext_mant_B[23]_i_5_n_0\,
      DI(1) => \reg_ext_mant_B[23]_i_6_n_0\,
      DI(0) => \reg_ext_mant_B[23]_i_7_n_0\,
      O(3 downto 0) => \NLW_reg_ext_mant_B_reg[23]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \reg_ext_mant_B[23]_i_8_n_0\,
      S(2) => \reg_ext_mant_B[23]_i_9_n_0\,
      S(1) => \reg_ext_mant_B[23]_i_10_n_0\,
      S(0) => \reg_ext_mant_B[23]_i_11_n_0\
    );
\reg_ext_mant_B_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(2),
      Q => reg_ext_mant_B(2)
    );
\reg_ext_mant_B_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(3),
      Q => reg_ext_mant_B(3)
    );
\reg_ext_mant_B_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(4),
      Q => reg_ext_mant_B(4)
    );
\reg_ext_mant_B_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => \reg_ext_mant_B[5]_i_1_n_0\,
      Q => reg_ext_mant_B(5)
    );
\reg_ext_mant_B_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(6),
      Q => reg_ext_mant_B(6)
    );
\reg_ext_mant_B_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(7),
      Q => reg_ext_mant_B(7)
    );
\reg_ext_mant_B_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(8),
      Q => reg_ext_mant_B(8)
    );
\reg_ext_mant_B_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => ext_mant_B(9),
      Q => reg_ext_mant_B(9)
    );
reg_sign_A_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => sign_A,
      Q => reg_sign_A
    );
reg_sign_B_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \out_reg[0]_0\(0),
      D => sign_B,
      Q => reg_sign_B
    );
\sum_mant1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_mant1_inferred__0/i__carry_n_0\,
      CO(2) => \sum_mant1_inferred__0/i__carry_n_1\,
      CO(1) => \sum_mant1_inferred__0/i__carry_n_2\,
      CO(0) => \sum_mant1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_sum_mant1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\sum_mant1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_mant1_inferred__0/i__carry_n_0\,
      CO(3) => \sum_mant1_inferred__0/i__carry__0_n_0\,
      CO(2) => \sum_mant1_inferred__0/i__carry__0_n_1\,
      CO(1) => \sum_mant1_inferred__0/i__carry__0_n_2\,
      CO(0) => \sum_mant1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__0_i_1_n_0\,
      DI(2) => \i__carry__0_i_2_n_0\,
      DI(1) => \i__carry__0_i_3_n_0\,
      DI(0) => \i__carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_sum_mant1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_5_n_0\,
      S(2) => \i__carry__0_i_6_n_0\,
      S(1) => \i__carry__0_i_7_n_0\,
      S(0) => \i__carry__0_i_8_n_0\
    );
\sum_mant1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_mant1_inferred__0/i__carry__0_n_0\,
      CO(3) => sum_mant1,
      CO(2) => \sum_mant1_inferred__0/i__carry__1_n_1\,
      CO(1) => \sum_mant1_inferred__0/i__carry__1_n_2\,
      CO(0) => \sum_mant1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry__1_i_1_n_0\,
      DI(2) => \i__carry__1_i_2_n_0\,
      DI(1) => \i__carry__1_i_3_n_0\,
      DI(0) => \i__carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_sum_mant1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_5_n_0\,
      S(2) => \i__carry__1_i_6_n_0\,
      S(1) => \i__carry__1_i_7_n_0\,
      S(0) => \i__carry__1_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_fpadd_system is
  port (
    d0 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    an0 : out STD_LOGIC;
    an1 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \out_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_fpadd_system : entity is "fpadd_system";
end design_1_fpadd_ip_0_3_fpadd_system;

architecture STRUCTURE of design_1_fpadd_ip_0_3_fpadd_system is
  signal FSM_state : STD_LOGIC;
  signal FSM_state_0 : STD_LOGIC;
  signal pulse : STD_LOGIC;
  signal reg_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal reg_B : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal switch : STD_LOGIC;
begin
L2P_inst: entity work.design_1_fpadd_ip_0_3_L2P
     port map (
      E(0) => pulse,
      Q(0) => Q(0),
      last_state_reg_0(0) => \out_reg[0]\(0),
      s00_axi_aclk => s00_axi_aclk
    );
SSD0: entity work.design_1_fpadd_ip_0_3_SevenSegDisplay
     port map (
      FSM_state => FSM_state,
      FSM_state_reg_0(0) => \out_reg[0]\(0),
      an0 => an0,
      s00_axi_aclk => s00_axi_aclk,
      switch => switch
    );
SSD1: entity work.design_1_fpadd_ip_0_3_SevenSegDisplay_0
     port map (
      FSM_state => FSM_state_0,
      FSM_state_reg_0(0) => \out_reg[0]\(0),
      an1 => an1,
      s00_axi_aclk => s00_axi_aclk,
      switch => switch
    );
data_mem_inst: entity work.design_1_fpadd_ip_0_3_DataMemory
     port map (
      E(0) => pulse,
      reg_A(23 downto 20) => reg_A(31 downto 28),
      reg_A(19 downto 4) => reg_A(26 downto 11),
      reg_A(3) => reg_A(8),
      reg_A(2 downto 1) => reg_A(5 downto 4),
      reg_A(0) => reg_A(0),
      reg_B(18 downto 15) => reg_B(31 downto 28),
      reg_B(14) => reg_B(26),
      reg_B(13) => reg_B(24),
      reg_B(12 downto 11) => reg_B(22 downto 21),
      reg_B(10) => reg_B(19),
      reg_B(9 downto 2) => reg_B(17 downto 10),
      reg_B(1) => reg_B(4),
      reg_B(0) => reg_B(2),
      \reg_B_reg[2]_0\(0) => \out_reg[0]\(0),
      s00_axi_aclk => s00_axi_aclk
    );
fpadd_inst: entity work.design_1_fpadd_ip_0_3_fpadd
     port map (
      FSM_state => FSM_state,
      FSM_state_0 => FSM_state_0,
      a0 => a0,
      a1 => a1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      \out_reg[0]_0\(0) => \out_reg[0]\(0),
      reg_A(23 downto 20) => reg_A(31 downto 28),
      reg_A(19 downto 4) => reg_A(26 downto 11),
      reg_A(3) => reg_A(8),
      reg_A(2 downto 1) => reg_A(5 downto 4),
      reg_A(0) => reg_A(0),
      reg_B(18 downto 15) => reg_B(31 downto 28),
      reg_B(14) => reg_B(26),
      reg_B(13) => reg_B(24),
      reg_B(12 downto 11) => reg_B(22 downto 21),
      reg_B(10) => reg_B(19),
      reg_B(9 downto 2) => reg_B(17 downto 10),
      reg_B(1) => reg_B(4),
      reg_B(0) => reg_B(2),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI is
  port (
    d0 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    an0 : out STD_LOGIC;
    an1 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI : entity is "fpadd_ip_v1_0_S00_AXI";
end design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI;

architecture STRUCTURE of design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \slv_reg1[31]_i_2\ : label is "soft_lutpair74";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
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
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => \slv_reg1_reg_n_0_[0]\,
      I1 => \slv_reg0_reg_n_0_[0]\,
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => slv_reg0(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => slv_reg0(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => slv_reg0(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => slv_reg0(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => slv_reg0(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => slv_reg0(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => slv_reg0(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => slv_reg0(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => slv_reg0(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => slv_reg0(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => slv_reg0(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => slv_reg0(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => slv_reg0(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => slv_reg0(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => slv_reg0(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => slv_reg0(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => slv_reg0(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => slv_reg0(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => slv_reg0(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => slv_reg0(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => slv_reg0(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => slv_reg0(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => slv_reg0(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => slv_reg0(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => slv_reg0(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => slv_reg0(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => slv_reg0(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => slv_reg0(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => slv_reg0(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => slv_reg0(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => slv_reg0(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
fpadd_system_inst: entity work.design_1_fpadd_ip_0_3_fpadd_system
     port map (
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      a0 => a0,
      a1 => a1,
      an0 => an0,
      an1 => an1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      \out_reg[0]\(0) => \slv_reg1_reg_n_0_[0]\,
      s00_axi_aclk => s00_axi_aclk
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg1_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3_fpadd_ip_v1_0 is
  port (
    d0 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    an0 : out STD_LOGIC;
    an1 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    e0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_fpadd_ip_0_3_fpadd_ip_v1_0 : entity is "fpadd_ip_v1_0";
end design_1_fpadd_ip_0_3_fpadd_ip_v1_0;

architecture STRUCTURE of design_1_fpadd_ip_0_3_fpadd_ip_v1_0 is
begin
fpadd_ip_v1_0_S00_AXI_inst: entity work.design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      a0 => a0,
      a1 => a1,
      an0 => an0,
      an1 => an1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fpadd_ip_0_3 is
  port (
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 );
    an0 : out STD_LOGIC;
    a0 : out STD_LOGIC;
    b0 : out STD_LOGIC;
    c0 : out STD_LOGIC;
    d0 : out STD_LOGIC;
    e0 : out STD_LOGIC;
    f0 : out STD_LOGIC;
    g0 : out STD_LOGIC;
    an1 : out STD_LOGIC;
    a1 : out STD_LOGIC;
    b1 : out STD_LOGIC;
    c1 : out STD_LOGIC;
    d1 : out STD_LOGIC;
    e1 : out STD_LOGIC;
    f1 : out STD_LOGIC;
    g1 : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fpadd_ip_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fpadd_ip_0_3 : entity is "design_1_fpadd_ip_0_3,fpadd_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fpadd_ip_0_3 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fpadd_ip_0_3 : entity is "fpadd_ip_v1_0,Vivado 2020.2";
end design_1_fpadd_ip_0_3;

architecture STRUCTURE of design_1_fpadd_ip_0_3 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_fpadd_ip_0_3_fpadd_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      a0 => a0,
      a1 => a1,
      an0 => an0,
      an1 => an1,
      b0 => b0,
      b1 => b1,
      c0 => c0,
      c1 => c1,
      d0 => d0,
      d1 => d1,
      e0 => e0,
      e1 => e1,
      f0 => f0,
      f1 => f1,
      g0 => g0,
      g1 => g1,
      leds(7 downto 0) => leds(7 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
