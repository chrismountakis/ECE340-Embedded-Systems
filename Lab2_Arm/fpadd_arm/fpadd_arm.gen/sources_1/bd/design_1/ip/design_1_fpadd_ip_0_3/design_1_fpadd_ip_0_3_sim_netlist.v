// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Apr  8 11:50:56 2025
// Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
// Command     : write_verilog -force -mode funcsim
//               fpadd_arm/fpadd_arm.gen/sources_1/bd/design_1/ip/design_1_fpadd_ip_0_3/design_1_fpadd_ip_0_3_sim_netlist.v
// Design      : design_1_fpadd_ip_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fpadd_ip_0_3,fpadd_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fpadd_ip_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_fpadd_ip_0_3
   (leds,
    an0,
    a0,
    b0,
    c0,
    d0,
    e0,
    f0,
    g0,
    an1,
    a1,
    b1,
    c1,
    d1,
    e1,
    f1,
    g1,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [7:0]leds;
  output an0;
  output a0;
  output b0;
  output c0;
  output d0;
  output e0;
  output f0;
  output g0;
  output an1;
  output a1;
  output b1;
  output c1;
  output d1;
  output e1;
  output f1;
  output g1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire a0;
  wire a1;
  wire an0;
  wire an1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_fpadd_ip_0_3_fpadd_ip_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .a0(a0),
        .a1(a1),
        .an0(an0),
        .an1(an1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "DataMemory" *) 
module design_1_fpadd_ip_0_3_DataMemory
   (reg_A,
    reg_B,
    E,
    s00_axi_aclk,
    \reg_B_reg[2]_0 );
  output [23:0]reg_A;
  output [18:0]reg_B;
  input [0:0]E;
  input s00_axi_aclk;
  input [0:0]\reg_B_reg[2]_0 ;

  wire [0:0]E;
  wire [4:0]ptr;
  wire \ptr[0]_i_1_n_0 ;
  wire \ptr[1]_i_1_n_0 ;
  wire \ptr[2]_i_1_n_0 ;
  wire \ptr[3]_i_1_n_0 ;
  wire \ptr[4]_i_1_n_0 ;
  wire [23:0]reg_A;
  wire \reg_A[0]_i_1_n_0 ;
  wire \reg_A[11]_i_1_n_0 ;
  wire \reg_A[12]_i_1_n_0 ;
  wire \reg_A[13]_i_1_n_0 ;
  wire \reg_A[14]_i_1_n_0 ;
  wire \reg_A[15]_i_1_n_0 ;
  wire \reg_A[16]_i_1_n_0 ;
  wire \reg_A[17]_i_1_n_0 ;
  wire \reg_A[18]_i_1_n_0 ;
  wire \reg_A[19]_i_1_n_0 ;
  wire \reg_A[20]_i_1_n_0 ;
  wire \reg_A[21]_i_1_n_0 ;
  wire \reg_A[22]_i_1_n_0 ;
  wire \reg_A[23]_i_1_n_0 ;
  wire \reg_A[24]_i_1_n_0 ;
  wire \reg_A[25]_i_1_n_0 ;
  wire \reg_A[26]_i_1_n_0 ;
  wire \reg_A[28]_i_1_n_0 ;
  wire \reg_A[29]_i_1_n_0 ;
  wire \reg_A[30]_i_1_n_0 ;
  wire \reg_A[31]_i_1_n_0 ;
  wire \reg_A[4]_i_1_n_0 ;
  wire \reg_A[5]_i_1_n_0 ;
  wire \reg_A[8]_i_1_n_0 ;
  wire [18:0]reg_B;
  wire \reg_B[10]_i_1_n_0 ;
  wire \reg_B[11]_i_1_n_0 ;
  wire \reg_B[12]_i_1_n_0 ;
  wire \reg_B[13]_i_1_n_0 ;
  wire \reg_B[14]_i_1_n_0 ;
  wire \reg_B[15]_i_1_n_0 ;
  wire \reg_B[16]_i_1_n_0 ;
  wire \reg_B[17]_i_1_n_0 ;
  wire \reg_B[19]_i_1_n_0 ;
  wire \reg_B[21]_i_1_n_0 ;
  wire \reg_B[22]_i_1_n_0 ;
  wire \reg_B[24]_i_1_n_0 ;
  wire \reg_B[26]_i_1_n_0 ;
  wire \reg_B[28]_i_1_n_0 ;
  wire \reg_B[29]_i_1_n_0 ;
  wire \reg_B[2]_i_1_n_0 ;
  wire \reg_B[30]_i_1_n_0 ;
  wire \reg_B[31]_i_1_n_0 ;
  wire \reg_B[4]_i_1_n_0 ;
  wire [0:0]\reg_B_reg[2]_0 ;
  wire s00_axi_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \ptr[0]_i_1 
       (.I0(ptr[0]),
        .O(\ptr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h55A855AA)) 
    \ptr[1]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[4]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .I4(ptr[3]),
        .O(\ptr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \ptr[2]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[2]),
        .I2(ptr[1]),
        .O(\ptr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h5FFDA000)) 
    \ptr[3]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[4]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .I4(ptr[3]),
        .O(\ptr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6CCCCCCC)) 
    \ptr[4]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[4]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .I4(ptr[3]),
        .O(\ptr[4]_i_1_n_0 ));
  FDPE \ptr_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\ptr[0]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(ptr[0]));
  FDCE \ptr_reg[1] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\ptr[1]_i_1_n_0 ),
        .Q(ptr[1]));
  FDCE \ptr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\ptr[2]_i_1_n_0 ),
        .Q(ptr[2]));
  FDCE \ptr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\ptr[3]_i_1_n_0 ),
        .Q(ptr[3]));
  FDCE \ptr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\ptr[4]_i_1_n_0 ),
        .Q(ptr[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0028)) 
    \reg_A[0]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hE4A0)) 
    \reg_A[11]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[1]),
        .I2(ptr[0]),
        .I3(ptr[2]),
        .O(\reg_A[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0024)) 
    \reg_A[12]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0068)) 
    \reg_A[13]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \reg_A[14]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[3]),
        .O(\reg_A[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h9D98)) 
    \reg_A[15]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .O(\reg_A[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \reg_A[16]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[3]),
        .O(\reg_A[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00C2)) 
    \reg_A[17]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h006E)) 
    \reg_A[18]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0082)) 
    \reg_A[19]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hC988)) 
    \reg_A[20]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .O(\reg_A[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \reg_A[21]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \reg_A[22]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[3]),
        .O(\reg_A[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0057)) 
    \reg_A[23]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0079)) 
    \reg_A[24]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \reg_A[25]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[3]),
        .O(\reg_A[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h00D9)) 
    \reg_A[26]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h88CD)) 
    \reg_A[28]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .O(\reg_A[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8CDD)) 
    \reg_A[29]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .O(\reg_A[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_A[30]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[3]),
        .O(\reg_A[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \reg_A[31]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[1]),
        .I2(ptr[3]),
        .O(\reg_A[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h00A4)) 
    \reg_A[4]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \reg_A[5]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_A[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_A[8]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .O(\reg_A[8]_i_1_n_0 ));
  FDCE \reg_A_reg[0] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[0]_i_1_n_0 ),
        .Q(reg_A[0]));
  FDCE \reg_A_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[11]_i_1_n_0 ),
        .Q(reg_A[4]));
  FDCE \reg_A_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[12]_i_1_n_0 ),
        .Q(reg_A[5]));
  FDCE \reg_A_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[13]_i_1_n_0 ),
        .Q(reg_A[6]));
  FDCE \reg_A_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[14]_i_1_n_0 ),
        .Q(reg_A[7]));
  FDCE \reg_A_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[15]_i_1_n_0 ),
        .Q(reg_A[8]));
  FDCE \reg_A_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[16]_i_1_n_0 ),
        .Q(reg_A[9]));
  FDCE \reg_A_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[17]_i_1_n_0 ),
        .Q(reg_A[10]));
  FDCE \reg_A_reg[18] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[18]_i_1_n_0 ),
        .Q(reg_A[11]));
  FDCE \reg_A_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[19]_i_1_n_0 ),
        .Q(reg_A[12]));
  FDCE \reg_A_reg[20] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[20]_i_1_n_0 ),
        .Q(reg_A[13]));
  FDCE \reg_A_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[21]_i_1_n_0 ),
        .Q(reg_A[14]));
  FDCE \reg_A_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[22]_i_1_n_0 ),
        .Q(reg_A[15]));
  FDPE \reg_A_reg[23] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_A[23]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_A[16]));
  FDPE \reg_A_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_A[24]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_A[17]));
  FDPE \reg_A_reg[25] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_A[25]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_A[18]));
  FDPE \reg_A_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_A[26]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_A[19]));
  FDPE \reg_A_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_A[28]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_A[20]));
  FDPE \reg_A_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_A[29]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_A[21]));
  FDCE \reg_A_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[30]_i_1_n_0 ),
        .Q(reg_A[22]));
  FDCE \reg_A_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[31]_i_1_n_0 ),
        .Q(reg_A[23]));
  FDCE \reg_A_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[4]_i_1_n_0 ),
        .Q(reg_A[1]));
  FDCE \reg_A_reg[5] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[5]_i_1_n_0 ),
        .Q(reg_A[2]));
  FDCE \reg_A_reg[8] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_A[8]_i_1_n_0 ),
        .Q(reg_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h00CA)) 
    \reg_B[10]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_B[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hD9C8)) 
    \reg_B[11]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[1]),
        .O(\reg_B[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \reg_B[12]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_B[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0060)) 
    \reg_B[13]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[0]),
        .I2(ptr[2]),
        .I3(ptr[3]),
        .O(\reg_B[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \reg_B[14]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[1]),
        .I2(ptr[3]),
        .O(\reg_B[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hBE44)) 
    \reg_B[15]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[2]),
        .I2(ptr[1]),
        .I3(ptr[0]),
        .O(\reg_B[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h004A)) 
    \reg_B[16]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_B[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \reg_B[17]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[2]),
        .I2(ptr[3]),
        .O(\reg_B[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \reg_B[19]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[1]),
        .I2(ptr[2]),
        .I3(ptr[3]),
        .O(\reg_B[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \reg_B[21]_i_1 
       (.I0(ptr[2]),
        .I1(ptr[1]),
        .I2(ptr[3]),
        .O(\reg_B[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00F8)) 
    \reg_B[22]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[1]),
        .I2(ptr[2]),
        .I3(ptr[3]),
        .O(\reg_B[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \reg_B[24]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[1]),
        .I2(ptr[0]),
        .O(\reg_B[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h00DA)) 
    \reg_B[26]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_B[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h8C)) 
    \reg_B[28]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[0]),
        .I2(ptr[1]),
        .O(\reg_B[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hB1F0)) 
    \reg_B[29]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[1]),
        .I2(ptr[0]),
        .I3(ptr[2]),
        .O(\reg_B[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h00E4)) 
    \reg_B[2]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_B[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \reg_B[30]_i_1 
       (.I0(ptr[0]),
        .I1(ptr[1]),
        .I2(ptr[3]),
        .O(\reg_B[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \reg_B[31]_i_1 
       (.I0(ptr[3]),
        .I1(ptr[2]),
        .I2(ptr[1]),
        .I3(ptr[0]),
        .O(\reg_B[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0064)) 
    \reg_B[4]_i_1 
       (.I0(ptr[1]),
        .I1(ptr[2]),
        .I2(ptr[0]),
        .I3(ptr[3]),
        .O(\reg_B[4]_i_1_n_0 ));
  FDCE \reg_B_reg[10] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[10]_i_1_n_0 ),
        .Q(reg_B[2]));
  FDCE \reg_B_reg[11] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[11]_i_1_n_0 ),
        .Q(reg_B[3]));
  FDCE \reg_B_reg[12] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[12]_i_1_n_0 ),
        .Q(reg_B[4]));
  FDCE \reg_B_reg[13] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[13]_i_1_n_0 ),
        .Q(reg_B[5]));
  FDCE \reg_B_reg[14] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[14]_i_1_n_0 ),
        .Q(reg_B[6]));
  FDCE \reg_B_reg[15] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[15]_i_1_n_0 ),
        .Q(reg_B[7]));
  FDCE \reg_B_reg[16] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[16]_i_1_n_0 ),
        .Q(reg_B[8]));
  FDCE \reg_B_reg[17] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[17]_i_1_n_0 ),
        .Q(reg_B[9]));
  FDCE \reg_B_reg[19] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[19]_i_1_n_0 ),
        .Q(reg_B[10]));
  FDCE \reg_B_reg[21] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[21]_i_1_n_0 ),
        .Q(reg_B[11]));
  FDCE \reg_B_reg[22] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[22]_i_1_n_0 ),
        .Q(reg_B[12]));
  FDCE \reg_B_reg[24] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[24]_i_1_n_0 ),
        .Q(reg_B[13]));
  FDCE \reg_B_reg[26] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[26]_i_1_n_0 ),
        .Q(reg_B[14]));
  FDCE \reg_B_reg[28] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[28]_i_1_n_0 ),
        .Q(reg_B[15]));
  FDCE \reg_B_reg[29] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[29]_i_1_n_0 ),
        .Q(reg_B[16]));
  FDCE \reg_B_reg[2] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[2]_i_1_n_0 ),
        .Q(reg_B[0]));
  FDPE \reg_B_reg[30] 
       (.C(s00_axi_aclk),
        .CE(E),
        .D(\reg_B[30]_i_1_n_0 ),
        .PRE(\reg_B_reg[2]_0 ),
        .Q(reg_B[17]));
  FDCE \reg_B_reg[31] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[31]_i_1_n_0 ),
        .Q(reg_B[18]));
  FDCE \reg_B_reg[4] 
       (.C(s00_axi_aclk),
        .CE(E),
        .CLR(\reg_B_reg[2]_0 ),
        .D(\reg_B[4]_i_1_n_0 ),
        .Q(reg_B[1]));
endmodule

(* ORIG_REF_NAME = "L2P" *) 
module design_1_fpadd_ip_0_3_L2P
   (E,
    Q,
    s00_axi_aclk,
    last_state_reg_0);
  output [0:0]E;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]last_state_reg_0;

  wire [0:0]E;
  wire [0:0]Q;
  wire last_state;
  wire [0:0]last_state_reg_0;
  wire pulse_i_1_n_0;
  wire s00_axi_aclk;

  FDCE last_state_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(last_state_reg_0),
        .D(Q),
        .Q(last_state));
  LUT2 #(
    .INIT(4'h2)) 
    pulse_i_1
       (.I0(Q),
        .I1(last_state),
        .O(pulse_i_1_n_0));
  FDCE pulse_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(last_state_reg_0),
        .D(pulse_i_1_n_0),
        .Q(E));
endmodule

(* ORIG_REF_NAME = "SevenSegDisplay" *) 
module design_1_fpadd_ip_0_3_SevenSegDisplay
   (FSM_state,
    switch,
    an0,
    s00_axi_aclk,
    FSM_state_reg_0);
  output FSM_state;
  output switch;
  output an0;
  input s00_axi_aclk;
  input [0:0]FSM_state_reg_0;

  wire FSM_state;
  wire [0:0]FSM_state_reg_0;
  wire [4:0]\SSD1/counter_reg ;
  wire an0;
  wire nxtFSM_state;
  wire [4:0]p_0_in__0;
  wire s00_axi_aclk;
  wire switch;
  wire switch_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    FSM_state_i_1
       (.I0(FSM_state),
        .I1(switch),
        .O(nxtFSM_state));
  FDCE FSM_state_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(nxtFSM_state),
        .Q(FSM_state));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    an0_INST_0
       (.I0(FSM_state),
        .O(an0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\SSD1/counter_reg [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\SSD1/counter_reg [0]),
        .I1(\SSD1/counter_reg [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(\SSD1/counter_reg [0]),
        .I1(\SSD1/counter_reg [1]),
        .I2(\SSD1/counter_reg [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(\SSD1/counter_reg [1]),
        .I1(\SSD1/counter_reg [0]),
        .I2(\SSD1/counter_reg [2]),
        .I3(\SSD1/counter_reg [3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(\SSD1/counter_reg [2]),
        .I1(\SSD1/counter_reg [0]),
        .I2(\SSD1/counter_reg [1]),
        .I3(\SSD1/counter_reg [3]),
        .I4(\SSD1/counter_reg [4]),
        .O(p_0_in__0[4]));
  FDCE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(p_0_in__0[0]),
        .Q(\SSD1/counter_reg [0]));
  FDCE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(p_0_in__0[1]),
        .Q(\SSD1/counter_reg [1]));
  FDCE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(p_0_in__0[2]),
        .Q(\SSD1/counter_reg [2]));
  FDCE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(p_0_in__0[3]),
        .Q(\SSD1/counter_reg [3]));
  FDCE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(p_0_in__0[4]),
        .Q(\SSD1/counter_reg [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    switch_i_1
       (.I0(\SSD1/counter_reg [2]),
        .I1(\SSD1/counter_reg [3]),
        .I2(\SSD1/counter_reg [4]),
        .I3(\SSD1/counter_reg [1]),
        .I4(\SSD1/counter_reg [0]),
        .O(switch_i_1_n_0));
  FDCE switch_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(switch_i_1_n_0),
        .Q(switch));
endmodule

(* ORIG_REF_NAME = "SevenSegDisplay" *) 
module design_1_fpadd_ip_0_3_SevenSegDisplay_0
   (FSM_state,
    an1,
    s00_axi_aclk,
    FSM_state_reg_0,
    switch);
  output FSM_state;
  output an1;
  input s00_axi_aclk;
  input [0:0]FSM_state_reg_0;
  input switch;

  wire FSM_state;
  wire [0:0]FSM_state_reg_0;
  wire an1;
  wire nxtFSM_state;
  wire s00_axi_aclk;
  wire switch;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    FSM_state_i_1__0
       (.I0(FSM_state),
        .I1(switch),
        .O(nxtFSM_state));
  FDCE FSM_state_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(FSM_state_reg_0),
        .D(nxtFSM_state),
        .Q(FSM_state));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    an1_INST_0
       (.I0(FSM_state),
        .O(an1));
endmodule

(* ORIG_REF_NAME = "fpadd" *) 
module design_1_fpadd_ip_0_3_fpadd
   (d0,
    d1,
    f0,
    a0,
    e0,
    c0,
    b0,
    f1,
    a1,
    e1,
    c1,
    b1,
    g0,
    g1,
    leds,
    FSM_state,
    FSM_state_0,
    reg_B,
    s00_axi_aclk,
    \out_reg[0]_0 ,
    reg_A);
  output d0;
  output d1;
  output f0;
  output a0;
  output e0;
  output c0;
  output b0;
  output f1;
  output a1;
  output e1;
  output c1;
  output b1;
  output g0;
  output g1;
  output [7:0]leds;
  input FSM_state;
  input FSM_state_0;
  input [18:0]reg_B;
  input s00_axi_aclk;
  input [0:0]\out_reg[0]_0 ;
  input [23:0]reg_A;

  wire FSM_state;
  wire FSM_state_0;
  wire [3:1]\SSD0/char__3 ;
  wire [3:1]\SSD1/char__3 ;
  wire a0;
  wire a1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire [22:2]data2;
  wire e0;
  wire e1;
  wire [7:0]exp_A;
  wire [7:1]exp_B;
  wire [7:0]exp_out_1;
  wire exp_out_11;
  wire [7:0]exp_out_2;
  wire [23:0]ext_mant_A;
  wire [7:0]ext_mant_A1;
  wire ext_mant_A3;
  wire [23:0]ext_mant_B;
  wire ext_mant_B00_carry__0_i_1_n_0;
  wire ext_mant_B00_carry__0_i_2_n_0;
  wire ext_mant_B00_carry__0_i_3_n_0;
  wire ext_mant_B00_carry__0_i_4_n_0;
  wire ext_mant_B00_carry__0_i_5_n_0;
  wire ext_mant_B00_carry__0_i_6_n_0;
  wire ext_mant_B00_carry__0_i_7_n_0;
  wire ext_mant_B00_carry__0_n_1;
  wire ext_mant_B00_carry__0_n_2;
  wire ext_mant_B00_carry__0_n_3;
  wire ext_mant_B00_carry_i_10_n_0;
  wire ext_mant_B00_carry_i_11_n_0;
  wire ext_mant_B00_carry_i_12_n_0;
  wire ext_mant_B00_carry_i_13_n_0;
  wire ext_mant_B00_carry_i_14_n_0;
  wire ext_mant_B00_carry_i_15_n_0;
  wire ext_mant_B00_carry_i_16_n_0;
  wire ext_mant_B00_carry_i_17_n_0;
  wire ext_mant_B00_carry_i_1_n_0;
  wire ext_mant_B00_carry_i_2_n_0;
  wire ext_mant_B00_carry_i_3_n_0;
  wire ext_mant_B00_carry_i_4_n_0;
  wire ext_mant_B00_carry_i_5_n_0;
  wire ext_mant_B00_carry_i_6_n_0;
  wire ext_mant_B00_carry_i_7_n_0;
  wire ext_mant_B00_carry_i_8_n_0;
  wire ext_mant_B00_carry_i_9_n_1;
  wire ext_mant_B00_carry_i_9_n_2;
  wire ext_mant_B00_carry_i_9_n_3;
  wire ext_mant_B00_carry_n_0;
  wire ext_mant_B00_carry_n_1;
  wire ext_mant_B00_carry_n_2;
  wire ext_mant_B00_carry_n_3;
  wire f0;
  wire f1;
  wire [31:16]fp_out;
  wire g0;
  wire g1;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5__0_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6__0_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7__0_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_8__0_n_0;
  wire i__carry__0_i_8_n_0;
  wire i__carry__0_i_9_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_6_n_0;
  wire i__carry__1_i_7_n_0;
  wire i__carry__1_i_8_n_0;
  wire i__carry_i_10_n_0;
  wire i__carry_i_11_n_0;
  wire i__carry_i_12_n_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_14_n_0;
  wire i__carry_i_15_n_0;
  wire i__carry_i_16_n_0;
  wire i__carry_i_17_n_0;
  wire i__carry_i_18_n_0;
  wire i__carry_i_19_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_20_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_24_n_0;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_28_n_0;
  wire i__carry_i_29_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8__0_n_0;
  wire i__carry_i_8_n_0;
  wire i__carry_i_9_n_0;
  wire [7:0]leds;
  wire \out[0]_i_1_n_0 ;
  wire \out[16]_i_10_n_0 ;
  wire \out[16]_i_11_n_0 ;
  wire \out[16]_i_1_n_0 ;
  wire \out[16]_i_2_n_0 ;
  wire \out[16]_i_3_n_0 ;
  wire \out[16]_i_4_n_0 ;
  wire \out[16]_i_5_n_0 ;
  wire \out[16]_i_6_n_0 ;
  wire \out[16]_i_7_n_0 ;
  wire \out[16]_i_8_n_0 ;
  wire \out[16]_i_9_n_0 ;
  wire \out[17]_i_10_n_0 ;
  wire \out[17]_i_11_n_0 ;
  wire \out[17]_i_1_n_0 ;
  wire \out[17]_i_2_n_0 ;
  wire \out[17]_i_3_n_0 ;
  wire \out[17]_i_4_n_0 ;
  wire \out[17]_i_5_n_0 ;
  wire \out[17]_i_6_n_0 ;
  wire \out[17]_i_7_n_0 ;
  wire \out[17]_i_8_n_0 ;
  wire \out[17]_i_9_n_0 ;
  wire \out[18]_i_10_n_0 ;
  wire \out[18]_i_11_n_0 ;
  wire \out[18]_i_1_n_0 ;
  wire \out[18]_i_2_n_0 ;
  wire \out[18]_i_3_n_0 ;
  wire \out[18]_i_4_n_0 ;
  wire \out[18]_i_5_n_0 ;
  wire \out[18]_i_6_n_0 ;
  wire \out[18]_i_7_n_0 ;
  wire \out[18]_i_8_n_0 ;
  wire \out[18]_i_9_n_0 ;
  wire \out[19]_i_10_n_0 ;
  wire \out[19]_i_11_n_0 ;
  wire \out[19]_i_12_n_0 ;
  wire \out[19]_i_13_n_0 ;
  wire \out[19]_i_1_n_0 ;
  wire \out[19]_i_2_n_0 ;
  wire \out[19]_i_3_n_0 ;
  wire \out[19]_i_4_n_0 ;
  wire \out[19]_i_5_n_0 ;
  wire \out[19]_i_6_n_0 ;
  wire \out[19]_i_7_n_0 ;
  wire \out[19]_i_8_n_0 ;
  wire \out[19]_i_9_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[20]_i_10_n_0 ;
  wire \out[20]_i_11_n_0 ;
  wire \out[20]_i_12_n_0 ;
  wire \out[20]_i_13_n_0 ;
  wire \out[20]_i_14_n_0 ;
  wire \out[20]_i_15_n_0 ;
  wire \out[20]_i_16_n_0 ;
  wire \out[20]_i_17_n_0 ;
  wire \out[20]_i_1_n_0 ;
  wire \out[20]_i_2_n_0 ;
  wire \out[20]_i_3_n_0 ;
  wire \out[20]_i_4_n_0 ;
  wire \out[20]_i_5_n_0 ;
  wire \out[20]_i_6_n_0 ;
  wire \out[20]_i_7_n_0 ;
  wire \out[20]_i_8_n_0 ;
  wire \out[20]_i_9_n_0 ;
  wire \out[21]_i_10_n_0 ;
  wire \out[21]_i_11_n_0 ;
  wire \out[21]_i_1_n_0 ;
  wire \out[21]_i_2_n_0 ;
  wire \out[21]_i_3_n_0 ;
  wire \out[21]_i_4_n_0 ;
  wire \out[21]_i_5_n_0 ;
  wire \out[21]_i_6_n_0 ;
  wire \out[21]_i_7_n_0 ;
  wire \out[21]_i_8_n_0 ;
  wire \out[21]_i_9_n_0 ;
  wire \out[22]_i_1_n_0 ;
  wire \out[22]_i_2_n_0 ;
  wire \out[22]_i_3_n_0 ;
  wire \out[22]_i_4_n_0 ;
  wire \out[22]_i_5_n_0 ;
  wire \out[22]_i_6_n_0 ;
  wire \out[22]_i_7_n_0 ;
  wire \out[22]_i_8_n_0 ;
  wire \out[26]_i_2_n_0 ;
  wire \out[27]_i_2_n_0 ;
  wire \out[28]_i_2_n_0 ;
  wire \out[29]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[30]_i_2_n_0 ;
  wire \out[31]_i_2_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[3]_i_3_n_0 ;
  wire \out[4]_i_1_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[4]_i_3_n_0 ;
  wire \out[5]_i_1_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[5]_i_3_n_0 ;
  wire \out[6]_i_10_n_0 ;
  wire \out[6]_i_11_n_0 ;
  wire \out[6]_i_12_n_0 ;
  wire \out[6]_i_13_n_0 ;
  wire \out[6]_i_14_n_0 ;
  wire \out[6]_i_15_n_0 ;
  wire \out[6]_i_1_n_0 ;
  wire \out[6]_i_20_n_0 ;
  wire \out[6]_i_21_n_0 ;
  wire \out[6]_i_22_n_0 ;
  wire \out[6]_i_23_n_0 ;
  wire \out[6]_i_3_n_0 ;
  wire \out[6]_i_4_n_0 ;
  wire \out[7]_i_12_n_0 ;
  wire \out[7]_i_13_n_0 ;
  wire \out[7]_i_14_n_0 ;
  wire \out[7]_i_15_n_0 ;
  wire \out[7]_i_16_n_0 ;
  wire \out[7]_i_17_n_0 ;
  wire \out[7]_i_18_n_0 ;
  wire \out[7]_i_19_n_0 ;
  wire \out[7]_i_1_n_0 ;
  wire \out[7]_i_25_n_0 ;
  wire \out[7]_i_26_n_0 ;
  wire \out[7]_i_27_n_0 ;
  wire \out[7]_i_28_n_0 ;
  wire \out[7]_i_29_n_0 ;
  wire \out[7]_i_34_n_0 ;
  wire \out[7]_i_35_n_0 ;
  wire \out[7]_i_36_n_0 ;
  wire \out[7]_i_37_n_0 ;
  wire \out[7]_i_38_n_0 ;
  wire \out[7]_i_43_n_0 ;
  wire \out[7]_i_44_n_0 ;
  wire \out[7]_i_45_n_0 ;
  wire \out[7]_i_46_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire [0:0]\out_reg[0]_0 ;
  wire \out_reg[6]_i_2_n_0 ;
  wire \out_reg[6]_i_2_n_1 ;
  wire \out_reg[6]_i_2_n_2 ;
  wire \out_reg[6]_i_2_n_3 ;
  wire \out_reg[6]_i_5_n_0 ;
  wire \out_reg[6]_i_5_n_1 ;
  wire \out_reg[6]_i_5_n_2 ;
  wire \out_reg[6]_i_5_n_3 ;
  wire \out_reg[6]_i_5_n_4 ;
  wire \out_reg[6]_i_5_n_5 ;
  wire \out_reg[6]_i_5_n_6 ;
  wire \out_reg[7]_i_20_n_0 ;
  wire \out_reg[7]_i_20_n_1 ;
  wire \out_reg[7]_i_20_n_2 ;
  wire \out_reg[7]_i_20_n_3 ;
  wire \out_reg[7]_i_2_n_0 ;
  wire \out_reg[7]_i_2_n_1 ;
  wire \out_reg[7]_i_2_n_2 ;
  wire \out_reg[7]_i_2_n_3 ;
  wire \out_reg[7]_i_3_n_7 ;
  wire \out_reg[7]_i_6_n_0 ;
  wire \out_reg[7]_i_6_n_1 ;
  wire \out_reg[7]_i_6_n_2 ;
  wire \out_reg[7]_i_6_n_3 ;
  wire \out_reg[7]_i_7_n_0 ;
  wire \out_reg[7]_i_7_n_1 ;
  wire \out_reg[7]_i_7_n_2 ;
  wire \out_reg[7]_i_7_n_3 ;
  wire [22:0]p_0_in1_in;
  wire [6:6]p_0_out;
  wire [22:2]p_1_in;
  wire \p_1_out_inferred__1/i__carry__0_n_1 ;
  wire \p_1_out_inferred__1/i__carry__0_n_2 ;
  wire \p_1_out_inferred__1/i__carry__0_n_3 ;
  wire \p_1_out_inferred__1/i__carry__0_n_4 ;
  wire \p_1_out_inferred__1/i__carry__0_n_5 ;
  wire \p_1_out_inferred__1/i__carry__0_n_6 ;
  wire \p_1_out_inferred__1/i__carry__0_n_7 ;
  wire \p_1_out_inferred__1/i__carry_n_0 ;
  wire \p_1_out_inferred__1/i__carry_n_1 ;
  wire \p_1_out_inferred__1/i__carry_n_2 ;
  wire \p_1_out_inferred__1/i__carry_n_3 ;
  wire \p_1_out_inferred__1/i__carry_n_4 ;
  wire \p_1_out_inferred__1/i__carry_n_5 ;
  wire \p_1_out_inferred__1/i__carry_n_6 ;
  wire \p_1_out_inferred__1/i__carry_n_7 ;
  wire [23:0]p_2_in;
  wire [23:0]reg_A;
  wire [18:0]reg_B;
  wire [7:0]reg_exp_out;
  wire [23:0]reg_ext_mant_A;
  wire \reg_ext_mant_A[0]_i_2_n_0 ;
  wire \reg_ext_mant_A[0]_i_3_n_0 ;
  wire \reg_ext_mant_A[0]_i_4_n_0 ;
  wire \reg_ext_mant_A[10]_i_2_n_0 ;
  wire \reg_ext_mant_A[10]_i_3_n_0 ;
  wire \reg_ext_mant_A[11]_i_2_n_0 ;
  wire \reg_ext_mant_A[11]_i_3_n_0 ;
  wire \reg_ext_mant_A[12]_i_2_n_0 ;
  wire \reg_ext_mant_A[12]_i_3_n_0 ;
  wire \reg_ext_mant_A[13]_i_2_n_0 ;
  wire \reg_ext_mant_A[13]_i_3_n_0 ;
  wire \reg_ext_mant_A[14]_i_2_n_0 ;
  wire \reg_ext_mant_A[14]_i_3_n_0 ;
  wire \reg_ext_mant_A[15]_i_2_n_0 ;
  wire \reg_ext_mant_A[15]_i_3_n_0 ;
  wire \reg_ext_mant_A[16]_i_2_n_0 ;
  wire \reg_ext_mant_A[16]_i_3_n_0 ;
  wire \reg_ext_mant_A[17]_i_2_n_0 ;
  wire \reg_ext_mant_A[17]_i_3_n_0 ;
  wire \reg_ext_mant_A[18]_i_2_n_0 ;
  wire \reg_ext_mant_A[18]_i_3_n_0 ;
  wire \reg_ext_mant_A[19]_i_2_n_0 ;
  wire \reg_ext_mant_A[1]_i_2_n_0 ;
  wire \reg_ext_mant_A[1]_i_3_n_0 ;
  wire \reg_ext_mant_A[1]_i_4_n_0 ;
  wire \reg_ext_mant_A[20]_i_2_n_0 ;
  wire \reg_ext_mant_A[21]_i_2_n_0 ;
  wire \reg_ext_mant_A[22]_i_2_n_0 ;
  wire \reg_ext_mant_A[2]_i_2_n_0 ;
  wire \reg_ext_mant_A[2]_i_3_n_0 ;
  wire \reg_ext_mant_A[2]_i_4_n_0 ;
  wire \reg_ext_mant_A[3]_i_2_n_0 ;
  wire \reg_ext_mant_A[3]_i_3_n_0 ;
  wire \reg_ext_mant_A[3]_i_4_n_0 ;
  wire \reg_ext_mant_A[4]_i_2_n_0 ;
  wire \reg_ext_mant_A[4]_i_3_n_0 ;
  wire \reg_ext_mant_A[5]_i_2_n_0 ;
  wire \reg_ext_mant_A[5]_i_3_n_0 ;
  wire \reg_ext_mant_A[6]_i_2_n_0 ;
  wire \reg_ext_mant_A[6]_i_3_n_0 ;
  wire \reg_ext_mant_A[7]_i_2_n_0 ;
  wire \reg_ext_mant_A[7]_i_3_n_0 ;
  wire \reg_ext_mant_A[7]_i_4_n_0 ;
  wire \reg_ext_mant_A[8]_i_2_n_0 ;
  wire \reg_ext_mant_A[8]_i_3_n_0 ;
  wire \reg_ext_mant_A[8]_i_4_n_0 ;
  wire \reg_ext_mant_A[9]_i_2_n_0 ;
  wire \reg_ext_mant_A[9]_i_3_n_0 ;
  wire \reg_ext_mant_A[9]_i_4_n_0 ;
  wire [23:0]reg_ext_mant_B;
  wire \reg_ext_mant_B[0]_i_2_n_0 ;
  wire \reg_ext_mant_B[0]_i_3_n_0 ;
  wire \reg_ext_mant_B[0]_i_4_n_0 ;
  wire \reg_ext_mant_B[10]_i_2_n_0 ;
  wire \reg_ext_mant_B[10]_i_3_n_0 ;
  wire \reg_ext_mant_B[10]_i_4_n_0 ;
  wire \reg_ext_mant_B[11]_i_2_n_0 ;
  wire \reg_ext_mant_B[11]_i_3_n_0 ;
  wire \reg_ext_mant_B[12]_i_2_n_0 ;
  wire \reg_ext_mant_B[12]_i_3_n_0 ;
  wire \reg_ext_mant_B[13]_i_2_n_0 ;
  wire \reg_ext_mant_B[13]_i_3_n_0 ;
  wire \reg_ext_mant_B[14]_i_2_n_0 ;
  wire \reg_ext_mant_B[14]_i_3_n_0 ;
  wire \reg_ext_mant_B[15]_i_2_n_0 ;
  wire \reg_ext_mant_B[15]_i_3_n_0 ;
  wire \reg_ext_mant_B[16]_i_2_n_0 ;
  wire \reg_ext_mant_B[16]_i_3_n_0 ;
  wire \reg_ext_mant_B[16]_i_4_n_0 ;
  wire \reg_ext_mant_B[16]_i_5_n_0 ;
  wire \reg_ext_mant_B[17]_i_2_n_0 ;
  wire \reg_ext_mant_B[17]_i_3_n_0 ;
  wire \reg_ext_mant_B[18]_i_2_n_0 ;
  wire \reg_ext_mant_B[18]_i_3_n_0 ;
  wire \reg_ext_mant_B[19]_i_2_n_0 ;
  wire \reg_ext_mant_B[1]_i_2_n_0 ;
  wire \reg_ext_mant_B[1]_i_3_n_0 ;
  wire \reg_ext_mant_B[1]_i_4_n_0 ;
  wire \reg_ext_mant_B[20]_i_2_n_0 ;
  wire \reg_ext_mant_B[21]_i_2_n_0 ;
  wire \reg_ext_mant_B[22]_i_2_n_0 ;
  wire \reg_ext_mant_B[22]_i_3_n_0 ;
  wire \reg_ext_mant_B[23]_i_10_n_0 ;
  wire \reg_ext_mant_B[23]_i_11_n_0 ;
  wire \reg_ext_mant_B[23]_i_2_n_0 ;
  wire \reg_ext_mant_B[23]_i_4_n_0 ;
  wire \reg_ext_mant_B[23]_i_5_n_0 ;
  wire \reg_ext_mant_B[23]_i_6_n_0 ;
  wire \reg_ext_mant_B[23]_i_7_n_0 ;
  wire \reg_ext_mant_B[23]_i_8_n_0 ;
  wire \reg_ext_mant_B[23]_i_9_n_0 ;
  wire \reg_ext_mant_B[2]_i_2_n_0 ;
  wire \reg_ext_mant_B[2]_i_3_n_0 ;
  wire \reg_ext_mant_B[2]_i_4_n_0 ;
  wire \reg_ext_mant_B[3]_i_2_n_0 ;
  wire \reg_ext_mant_B[3]_i_3_n_0 ;
  wire \reg_ext_mant_B[3]_i_4_n_0 ;
  wire \reg_ext_mant_B[4]_i_2_n_0 ;
  wire \reg_ext_mant_B[4]_i_3_n_0 ;
  wire \reg_ext_mant_B[5]_i_1_n_0 ;
  wire \reg_ext_mant_B[5]_i_2_n_0 ;
  wire \reg_ext_mant_B[5]_i_3_n_0 ;
  wire \reg_ext_mant_B[6]_i_2_n_0 ;
  wire \reg_ext_mant_B[6]_i_3_n_0 ;
  wire \reg_ext_mant_B[7]_i_2_n_0 ;
  wire \reg_ext_mant_B[7]_i_3_n_0 ;
  wire \reg_ext_mant_B[7]_i_4_n_0 ;
  wire \reg_ext_mant_B[8]_i_2_n_0 ;
  wire \reg_ext_mant_B[8]_i_3_n_0 ;
  wire \reg_ext_mant_B[8]_i_4_n_0 ;
  wire \reg_ext_mant_B[9]_i_2_n_0 ;
  wire \reg_ext_mant_B[9]_i_3_n_0 ;
  wire \reg_ext_mant_B[9]_i_4_n_0 ;
  wire \reg_ext_mant_B_reg[23]_i_3_n_1 ;
  wire \reg_ext_mant_B_reg[23]_i_3_n_2 ;
  wire \reg_ext_mant_B_reg[23]_i_3_n_3 ;
  wire reg_sign_A;
  wire reg_sign_B;
  wire s00_axi_aclk;
  wire sign_A;
  wire sign_B;
  wire sign_out;
  wire sum_mant1;
  wire \sum_mant1_inferred__0/i__carry__0_n_0 ;
  wire \sum_mant1_inferred__0/i__carry__0_n_1 ;
  wire \sum_mant1_inferred__0/i__carry__0_n_2 ;
  wire \sum_mant1_inferred__0/i__carry__0_n_3 ;
  wire \sum_mant1_inferred__0/i__carry__1_n_1 ;
  wire \sum_mant1_inferred__0/i__carry__1_n_2 ;
  wire \sum_mant1_inferred__0/i__carry__1_n_3 ;
  wire \sum_mant1_inferred__0/i__carry_n_0 ;
  wire \sum_mant1_inferred__0/i__carry_n_1 ;
  wire \sum_mant1_inferred__0/i__carry_n_2 ;
  wire \sum_mant1_inferred__0/i__carry_n_3 ;
  wire [3:3]NLW_ext_mant_B00_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ext_mant_B00_carry_i_9_O_UNCONNECTED;
  wire [3:0]\NLW_out_reg[7]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_out_reg[7]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_p_1_out_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_reg_ext_mant_B_reg[23]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_mant1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_mant1_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_sum_mant1_inferred__0/i__carry__1_O_UNCONNECTED ;

  FDCE \A_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[0]),
        .Q(p_0_in1_in[0]));
  FDCE \A_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[4]),
        .Q(p_0_in1_in[11]));
  FDCE \A_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[5]),
        .Q(p_0_in1_in[12]));
  FDCE \A_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[6]),
        .Q(p_0_in1_in[13]));
  FDCE \A_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[7]),
        .Q(p_0_in1_in[14]));
  FDCE \A_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[8]),
        .Q(p_0_in1_in[15]));
  FDCE \A_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[9]),
        .Q(p_0_in1_in[16]));
  FDCE \A_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[10]),
        .Q(p_0_in1_in[17]));
  FDCE \A_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[11]),
        .Q(p_0_in1_in[18]));
  FDCE \A_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[12]),
        .Q(p_0_in1_in[19]));
  FDCE \A_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[13]),
        .Q(p_0_in1_in[20]));
  FDCE \A_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[14]),
        .Q(p_0_in1_in[21]));
  FDCE \A_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[15]),
        .Q(p_0_in1_in[22]));
  FDCE \A_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[16]),
        .Q(exp_A[0]));
  FDCE \A_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[17]),
        .Q(exp_A[1]));
  FDCE \A_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[18]),
        .Q(exp_A[2]));
  FDCE \A_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[19]),
        .Q(exp_A[3]));
  FDCE \A_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[20]),
        .Q(exp_A[5]));
  FDCE \A_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[21]),
        .Q(exp_A[6]));
  FDCE \A_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[22]),
        .Q(exp_A[7]));
  FDCE \A_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[23]),
        .Q(sign_A));
  FDCE \A_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[1]),
        .Q(p_0_in1_in[4]));
  FDCE \A_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[2]),
        .Q(p_0_in1_in[5]));
  FDCE \A_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_A[3]),
        .Q(p_0_in1_in[8]));
  FDCE \B_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[2]),
        .Q(p_1_in[10]));
  FDCE \B_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[3]),
        .Q(p_1_in[11]));
  FDCE \B_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[4]),
        .Q(p_1_in[12]));
  FDCE \B_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[5]),
        .Q(p_1_in[13]));
  FDCE \B_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[6]),
        .Q(p_1_in[14]));
  FDCE \B_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[7]),
        .Q(p_1_in[15]));
  FDCE \B_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[8]),
        .Q(p_1_in[16]));
  FDCE \B_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[9]),
        .Q(p_1_in[17]));
  FDCE \B_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[10]),
        .Q(p_1_in[19]));
  FDCE \B_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[11]),
        .Q(p_1_in[21]));
  FDCE \B_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[12]),
        .Q(p_1_in[22]));
  FDCE \B_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[13]),
        .Q(exp_B[1]));
  FDCE \B_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[14]),
        .Q(exp_B[3]));
  FDCE \B_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[15]),
        .Q(exp_B[5]));
  FDCE \B_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[16]),
        .Q(exp_B[6]));
  FDCE \B_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[0]),
        .Q(p_1_in[2]));
  FDCE \B_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[17]),
        .Q(exp_B[7]));
  FDCE \B_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[18]),
        .Q(sign_B));
  FDCE \B_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(reg_B[1]),
        .Q(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFF757F4540BABF)) 
    a0_INST_0
       (.I0(\SSD0/char__3 [3]),
        .I1(fp_out[24]),
        .I2(FSM_state),
        .I3(fp_out[28]),
        .I4(\SSD0/char__3 [2]),
        .I5(\SSD0/char__3 [1]),
        .O(a0));
  LUT3 #(
    .INIT(8'hB8)) 
    a0_INST_0_i_1
       (.I0(fp_out[27]),
        .I1(FSM_state),
        .I2(fp_out[31]),
        .O(\SSD0/char__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a0_INST_0_i_2
       (.I0(fp_out[26]),
        .I1(FSM_state),
        .I2(fp_out[30]),
        .O(\SSD0/char__3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a0_INST_0_i_3
       (.I0(fp_out[25]),
        .I1(FSM_state),
        .I2(fp_out[29]),
        .O(\SSD0/char__3 [1]));
  LUT6 #(
    .INIT(64'hFFFF757F4540BABF)) 
    a1_INST_0
       (.I0(\SSD1/char__3 [3]),
        .I1(fp_out[16]),
        .I2(FSM_state_0),
        .I3(fp_out[20]),
        .I4(\SSD1/char__3 [2]),
        .I5(\SSD1/char__3 [1]),
        .O(a1));
  LUT3 #(
    .INIT(8'hB8)) 
    a1_INST_0_i_1
       (.I0(fp_out[19]),
        .I1(FSM_state_0),
        .I2(fp_out[23]),
        .O(\SSD1/char__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a1_INST_0_i_2
       (.I0(fp_out[18]),
        .I1(FSM_state_0),
        .I2(fp_out[22]),
        .O(\SSD1/char__3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a1_INST_0_i_3
       (.I0(fp_out[17]),
        .I1(FSM_state_0),
        .I2(fp_out[21]),
        .O(\SSD1/char__3 [1]));
  LUT6 #(
    .INIT(64'h6767671F1F1F671F)) 
    b0_INST_0
       (.I0(\SSD0/char__3 [1]),
        .I1(\SSD0/char__3 [3]),
        .I2(\SSD0/char__3 [2]),
        .I3(fp_out[28]),
        .I4(FSM_state),
        .I5(fp_out[24]),
        .O(b0));
  LUT6 #(
    .INIT(64'h6767671F1F1F671F)) 
    b1_INST_0
       (.I0(\SSD1/char__3 [1]),
        .I1(\SSD1/char__3 [3]),
        .I2(\SSD1/char__3 [2]),
        .I3(fp_out[20]),
        .I4(FSM_state_0),
        .I5(fp_out[16]),
        .O(b1));
  LUT6 #(
    .INIT(64'h7F3D7F7F7F3D3D3D)) 
    c0_INST_0
       (.I0(\SSD0/char__3 [1]),
        .I1(\SSD0/char__3 [3]),
        .I2(\SSD0/char__3 [2]),
        .I3(fp_out[24]),
        .I4(FSM_state),
        .I5(fp_out[28]),
        .O(c0));
  LUT6 #(
    .INIT(64'h7F3D7F7F7F3D3D3D)) 
    c1_INST_0
       (.I0(\SSD1/char__3 [1]),
        .I1(\SSD1/char__3 [3]),
        .I2(\SSD1/char__3 [2]),
        .I3(fp_out[16]),
        .I4(FSM_state_0),
        .I5(fp_out[20]),
        .O(c1));
  LUT6 #(
    .INIT(64'h3EE73E3E3EE7E7E7)) 
    d0_INST_0
       (.I0(\SSD0/char__3 [3]),
        .I1(\SSD0/char__3 [1]),
        .I2(\SSD0/char__3 [2]),
        .I3(fp_out[24]),
        .I4(FSM_state),
        .I5(fp_out[28]),
        .O(d0));
  LUT6 #(
    .INIT(64'h3EE73E3E3EE7E7E7)) 
    d1_INST_0
       (.I0(\SSD1/char__3 [3]),
        .I1(\SSD1/char__3 [1]),
        .I2(\SSD1/char__3 [2]),
        .I3(fp_out[16]),
        .I4(FSM_state_0),
        .I5(fp_out[20]),
        .O(d1));
  LUT6 #(
    .INIT(64'hFFFFFF4747004747)) 
    e0_INST_0
       (.I0(fp_out[24]),
        .I1(FSM_state),
        .I2(fp_out[28]),
        .I3(\SSD0/char__3 [1]),
        .I4(\SSD0/char__3 [2]),
        .I5(\SSD0/char__3 [3]),
        .O(e0));
  LUT6 #(
    .INIT(64'hFFFFFF4747004747)) 
    e1_INST_0
       (.I0(fp_out[16]),
        .I1(FSM_state_0),
        .I2(fp_out[20]),
        .I3(\SSD1/char__3 [1]),
        .I4(\SSD1/char__3 [2]),
        .I5(\SSD1/char__3 [3]),
        .O(e1));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ext_mant_B00_carry
       (.CI(1'b0),
        .CO({ext_mant_B00_carry_n_0,ext_mant_B00_carry_n_1,ext_mant_B00_carry_n_2,ext_mant_B00_carry_n_3}),
        .CYINIT(1'b1),
        .DI({ext_mant_B00_carry_i_1_n_0,ext_mant_B00_carry_i_2_n_0,ext_mant_B00_carry_i_3_n_0,ext_mant_B00_carry_i_4_n_0}),
        .O(ext_mant_A1[3:0]),
        .S({ext_mant_B00_carry_i_5_n_0,ext_mant_B00_carry_i_6_n_0,ext_mant_B00_carry_i_7_n_0,ext_mant_B00_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 ext_mant_B00_carry__0
       (.CI(ext_mant_B00_carry_n_0),
        .CO({NLW_ext_mant_B00_carry__0_CO_UNCONNECTED[3],ext_mant_B00_carry__0_n_1,ext_mant_B00_carry__0_n_2,ext_mant_B00_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,ext_mant_B00_carry__0_i_1_n_0,ext_mant_B00_carry__0_i_2_n_0,ext_mant_B00_carry__0_i_3_n_0}),
        .O(ext_mant_A1[7:4]),
        .S({ext_mant_B00_carry__0_i_4_n_0,ext_mant_B00_carry__0_i_5_n_0,ext_mant_B00_carry__0_i_6_n_0,ext_mant_B00_carry__0_i_7_n_0}));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry__0_i_1
       (.I0(exp_B[6]),
        .I1(exp_A[6]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry__0_i_2
       (.I0(exp_B[5]),
        .I1(exp_A[5]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry__0_i_3
       (.I0(exp_B[6]),
        .I1(exp_A[6]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry__0_i_4
       (.I0(exp_B[7]),
        .I1(exp_A[7]),
        .O(ext_mant_B00_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry__0_i_5
       (.I0(exp_B[6]),
        .I1(exp_A[6]),
        .O(ext_mant_B00_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry__0_i_6
       (.I0(exp_B[5]),
        .I1(exp_A[5]),
        .O(ext_mant_B00_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry__0_i_7
       (.I0(exp_B[6]),
        .I1(exp_A[6]),
        .O(ext_mant_B00_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry_i_1
       (.I0(exp_B[3]),
        .I1(exp_A[3]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ext_mant_B00_carry_i_10
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_B[7]),
        .I3(exp_A[7]),
        .O(ext_mant_B00_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ext_mant_B00_carry_i_11
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_B[5]),
        .I3(exp_A[5]),
        .O(ext_mant_B00_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ext_mant_B00_carry_i_12
       (.I0(exp_A[2]),
        .I1(exp_B[6]),
        .I2(exp_B[3]),
        .I3(exp_A[3]),
        .O(ext_mant_B00_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    ext_mant_B00_carry_i_13
       (.I0(exp_A[0]),
        .I1(exp_B[6]),
        .I2(exp_B[1]),
        .I3(exp_A[1]),
        .O(ext_mant_B00_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ext_mant_B00_carry_i_14
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_A[7]),
        .I3(exp_B[7]),
        .O(ext_mant_B00_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ext_mant_B00_carry_i_15
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_A[5]),
        .I3(exp_B[5]),
        .O(ext_mant_B00_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ext_mant_B00_carry_i_16
       (.I0(exp_A[2]),
        .I1(exp_B[6]),
        .I2(exp_A[3]),
        .I3(exp_B[3]),
        .O(ext_mant_B00_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ext_mant_B00_carry_i_17
       (.I0(exp_A[0]),
        .I1(exp_B[6]),
        .I2(exp_A[1]),
        .I3(exp_B[1]),
        .O(ext_mant_B00_carry_i_17_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry_i_2
       (.I0(exp_B[6]),
        .I1(exp_A[2]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry_i_3
       (.I0(exp_B[1]),
        .I1(exp_A[1]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h53)) 
    ext_mant_B00_carry_i_4
       (.I0(exp_B[6]),
        .I1(exp_A[0]),
        .I2(ext_mant_A3),
        .O(ext_mant_B00_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry_i_5
       (.I0(exp_B[3]),
        .I1(exp_A[3]),
        .O(ext_mant_B00_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry_i_6
       (.I0(exp_B[6]),
        .I1(exp_A[2]),
        .O(ext_mant_B00_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry_i_7
       (.I0(exp_B[1]),
        .I1(exp_A[1]),
        .O(ext_mant_B00_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    ext_mant_B00_carry_i_8
       (.I0(exp_B[6]),
        .I1(exp_A[0]),
        .O(ext_mant_B00_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ext_mant_B00_carry_i_9
       (.CI(1'b0),
        .CO({ext_mant_A3,ext_mant_B00_carry_i_9_n_1,ext_mant_B00_carry_i_9_n_2,ext_mant_B00_carry_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({ext_mant_B00_carry_i_10_n_0,ext_mant_B00_carry_i_11_n_0,ext_mant_B00_carry_i_12_n_0,ext_mant_B00_carry_i_13_n_0}),
        .O(NLW_ext_mant_B00_carry_i_9_O_UNCONNECTED[3:0]),
        .S({ext_mant_B00_carry_i_14_n_0,ext_mant_B00_carry_i_15_n_0,ext_mant_B00_carry_i_16_n_0,ext_mant_B00_carry_i_17_n_0}));
  LUT6 #(
    .INIT(64'hB4B4B4BDBDBDB4BD)) 
    f0_INST_0
       (.I0(\SSD0/char__3 [1]),
        .I1(\SSD0/char__3 [2]),
        .I2(\SSD0/char__3 [3]),
        .I3(fp_out[28]),
        .I4(FSM_state),
        .I5(fp_out[24]),
        .O(f0));
  LUT6 #(
    .INIT(64'hB4B4B4BDBDBDB4BD)) 
    f1_INST_0
       (.I0(\SSD1/char__3 [1]),
        .I1(\SSD1/char__3 [2]),
        .I2(\SSD1/char__3 [3]),
        .I3(fp_out[20]),
        .I4(FSM_state_0),
        .I5(fp_out[16]),
        .O(f1));
  LUT6 #(
    .INIT(64'hBEBEBEFEFEFEBEFE)) 
    g0_INST_0
       (.I0(\SSD0/char__3 [3]),
        .I1(\SSD0/char__3 [1]),
        .I2(\SSD0/char__3 [2]),
        .I3(fp_out[28]),
        .I4(FSM_state),
        .I5(fp_out[24]),
        .O(g0));
  LUT6 #(
    .INIT(64'hBEBEBEFEFEFEBEFE)) 
    g1_INST_0
       (.I0(\SSD1/char__3 [3]),
        .I1(\SSD1/char__3 [1]),
        .I2(\SSD1/char__3 [2]),
        .I3(fp_out[20]),
        .I4(FSM_state_0),
        .I5(fp_out[16]),
        .O(g1));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_1
       (.I0(reg_ext_mant_A[15]),
        .I1(reg_ext_mant_B[15]),
        .I2(reg_ext_mant_A[14]),
        .I3(reg_ext_mant_B[14]),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h00FB)) 
    i__carry__0_i_1__0
       (.I0(i__carry__0_i_6__0_n_0),
        .I1(i__carry__0_i_7__0_n_0),
        .I2(i__carry__0_i_8__0_n_0),
        .I3(\out_reg[6]_i_5_n_4 ),
        .O(p_0_out));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_2
       (.I0(reg_ext_mant_A[13]),
        .I1(reg_ext_mant_B[13]),
        .I2(reg_ext_mant_A[12]),
        .I3(reg_ext_mant_B[12]),
        .O(i__carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFF0400FB)) 
    i__carry__0_i_2__0
       (.I0(i__carry__0_i_6__0_n_0),
        .I1(i__carry__0_i_7__0_n_0),
        .I2(i__carry__0_i_8__0_n_0),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(reg_exp_out[7]),
        .O(i__carry__0_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_3
       (.I0(reg_ext_mant_A[11]),
        .I1(reg_ext_mant_B[11]),
        .I2(reg_ext_mant_A[10]),
        .I3(reg_ext_mant_B[10]),
        .O(i__carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFF0400FB)) 
    i__carry__0_i_3__0
       (.I0(i__carry__0_i_6__0_n_0),
        .I1(i__carry__0_i_7__0_n_0),
        .I2(i__carry__0_i_8__0_n_0),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(reg_exp_out[6]),
        .O(i__carry__0_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__0_i_4
       (.I0(reg_ext_mant_A[9]),
        .I1(reg_ext_mant_B[9]),
        .I2(reg_ext_mant_A[8]),
        .I3(reg_ext_mant_B[8]),
        .O(i__carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFF0400FB)) 
    i__carry__0_i_4__0
       (.I0(i__carry__0_i_6__0_n_0),
        .I1(i__carry__0_i_7__0_n_0),
        .I2(i__carry__0_i_8__0_n_0),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(reg_exp_out[5]),
        .O(i__carry__0_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_5
       (.I0(reg_ext_mant_B[15]),
        .I1(reg_ext_mant_A[15]),
        .I2(reg_ext_mant_B[14]),
        .I3(reg_ext_mant_A[14]),
        .O(i__carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'hF20D)) 
    i__carry__0_i_5__0
       (.I0(i__carry_i_5__0_n_0),
        .I1(i__carry_i_6__0_n_0),
        .I2(\out_reg[6]_i_5_n_4 ),
        .I3(reg_exp_out[6]),
        .O(i__carry__0_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_6
       (.I0(reg_ext_mant_B[13]),
        .I1(reg_ext_mant_A[13]),
        .I2(reg_ext_mant_B[12]),
        .I3(reg_ext_mant_A[12]),
        .O(i__carry__0_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry__0_i_6__0
       (.I0(data2[9]),
        .I1(data2[4]),
        .I2(data2[2]),
        .I3(data2[3]),
        .I4(i__carry__0_i_9_n_0),
        .O(i__carry__0_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_7
       (.I0(reg_ext_mant_B[11]),
        .I1(reg_ext_mant_A[11]),
        .I2(reg_ext_mant_B[10]),
        .I3(reg_ext_mant_A[10]),
        .O(i__carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i__carry__0_i_7__0
       (.I0(data2[19]),
        .I1(data2[20]),
        .I2(data2[21]),
        .I3(\out_reg[6]_i_5_n_6 ),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[22]),
        .O(i__carry__0_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__0_i_8
       (.I0(reg_ext_mant_B[9]),
        .I1(reg_ext_mant_A[9]),
        .I2(reg_ext_mant_B[8]),
        .I3(reg_ext_mant_A[8]),
        .O(i__carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    i__carry__0_i_8__0
       (.I0(i__carry_i_18_n_0),
        .I1(data2[15]),
        .I2(data2[13]),
        .I3(data2[14]),
        .I4(data2[16]),
        .I5(\out[20]_i_6_n_0 ),
        .O(i__carry__0_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__0_i_9
       (.I0(data2[7]),
        .I1(data2[8]),
        .I2(data2[5]),
        .I3(data2[6]),
        .O(i__carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_1
       (.I0(reg_ext_mant_A[23]),
        .I1(reg_ext_mant_B[23]),
        .I2(reg_ext_mant_A[22]),
        .I3(reg_ext_mant_B[22]),
        .O(i__carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_2
       (.I0(reg_ext_mant_A[21]),
        .I1(reg_ext_mant_B[21]),
        .I2(reg_ext_mant_A[20]),
        .I3(reg_ext_mant_B[20]),
        .O(i__carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_3
       (.I0(reg_ext_mant_A[19]),
        .I1(reg_ext_mant_B[19]),
        .I2(reg_ext_mant_A[18]),
        .I3(reg_ext_mant_B[18]),
        .O(i__carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry__1_i_4
       (.I0(reg_ext_mant_A[17]),
        .I1(reg_ext_mant_B[17]),
        .I2(reg_ext_mant_A[16]),
        .I3(reg_ext_mant_B[16]),
        .O(i__carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_5
       (.I0(reg_ext_mant_B[23]),
        .I1(reg_ext_mant_A[23]),
        .I2(reg_ext_mant_B[22]),
        .I3(reg_ext_mant_A[22]),
        .O(i__carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_6
       (.I0(reg_ext_mant_B[21]),
        .I1(reg_ext_mant_A[21]),
        .I2(reg_ext_mant_B[20]),
        .I3(reg_ext_mant_A[20]),
        .O(i__carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_7
       (.I0(reg_ext_mant_B[19]),
        .I1(reg_ext_mant_A[19]),
        .I2(reg_ext_mant_B[18]),
        .I3(reg_ext_mant_A[18]),
        .O(i__carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry__1_i_8
       (.I0(reg_ext_mant_B[17]),
        .I1(reg_ext_mant_A[17]),
        .I2(reg_ext_mant_B[16]),
        .I3(reg_ext_mant_A[16]),
        .O(i__carry__1_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(reg_ext_mant_A[7]),
        .I1(reg_ext_mant_B[7]),
        .I2(reg_ext_mant_A[6]),
        .I3(reg_ext_mant_B[6]),
        .O(i__carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    i__carry_i_10
       (.I0(data2[6]),
        .I1(data2[5]),
        .I2(data2[8]),
        .I3(data2[7]),
        .I4(i__carry_i_18_n_0),
        .I5(data2[9]),
        .O(i__carry_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_11
       (.I0(data2[17]),
        .I1(data2[18]),
        .I2(data2[19]),
        .I3(data2[20]),
        .O(i__carry_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_12
       (.I0(\out_reg[6]_i_5_n_5 ),
        .I1(\out_reg[6]_i_5_n_6 ),
        .O(i__carry_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFEEFFE0FFEEFFEE)) 
    i__carry_i_13
       (.I0(i__carry_i_20_n_0),
        .I1(i__carry_i_21_n_0),
        .I2(data2[3]),
        .I3(data2[19]),
        .I4(data2[20]),
        .I5(i__carry_i_22_n_0),
        .O(i__carry_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFEEFE)) 
    i__carry_i_14
       (.I0(\out_reg[6]_i_5_n_6 ),
        .I1(data2[21]),
        .I2(data2[17]),
        .I3(data2[18]),
        .I4(data2[19]),
        .O(i__carry_i_14_n_0));
  LUT6 #(
    .INIT(64'hBABBBABBBABBBABA)) 
    i__carry_i_15
       (.I0(data2[15]),
        .I1(data2[14]),
        .I2(data2[13]),
        .I3(data2[12]),
        .I4(i__carry_i_23_n_0),
        .I5(data2[11]),
        .O(i__carry_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_16
       (.I0(data2[18]),
        .I1(data2[16]),
        .O(i__carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFF55FF04)) 
    i__carry_i_17
       (.I0(\out_reg[6]_i_5_n_6 ),
        .I1(data2[20]),
        .I2(data2[21]),
        .I3(\out_reg[6]_i_5_n_5 ),
        .I4(data2[22]),
        .O(i__carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    i__carry_i_18
       (.I0(data2[11]),
        .I1(data2[12]),
        .I2(data2[10]),
        .O(i__carry_i_18_n_0));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_19
       (.I0(data2[6]),
        .I1(data2[5]),
        .O(i__carry_i_19_n_0));
  LUT5 #(
    .INIT(32'hFF8A0075)) 
    i__carry_i_1__0
       (.I0(i__carry_i_5__0_n_0),
        .I1(i__carry_i_6__0_n_0),
        .I2(i__carry_i_7__0_n_0),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(reg_exp_out[3]),
        .O(i__carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(reg_ext_mant_A[5]),
        .I1(reg_ext_mant_B[5]),
        .I2(reg_ext_mant_A[4]),
        .I3(reg_ext_mant_B[4]),
        .O(i__carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF1110FFFF)) 
    i__carry_i_20
       (.I0(data2[17]),
        .I1(data2[18]),
        .I2(data2[15]),
        .I3(data2[16]),
        .I4(i__carry_i_12_n_0),
        .I5(data2[20]),
        .O(i__carry_i_20_n_0));
  LUT6 #(
    .INIT(64'h4040000040400040)) 
    i__carry_i_21
       (.I0(i__carry_i_24_n_0),
        .I1(\out[20]_i_6_n_0 ),
        .I2(i__carry_i_25_n_0),
        .I3(data2[9]),
        .I4(i__carry_i_26_n_0),
        .I5(data2[10]),
        .O(i__carry_i_21_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    i__carry_i_22
       (.I0(i__carry_i_27_n_0),
        .I1(i__carry_i_12_n_0),
        .I2(data2[4]),
        .I3(data2[16]),
        .I4(data2[15]),
        .I5(i__carry_i_26_n_0),
        .O(i__carry_i_22_n_0));
  LUT6 #(
    .INIT(64'h5511551055115511)) 
    i__carry_i_23
       (.I0(data2[10]),
        .I1(data2[8]),
        .I2(data2[7]),
        .I3(data2[9]),
        .I4(i__carry_i_28_n_0),
        .I5(i__carry_i_29_n_0),
        .O(i__carry_i_23_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_24
       (.I0(data2[14]),
        .I1(data2[13]),
        .O(i__carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEEF)) 
    i__carry_i_25
       (.I0(data2[12]),
        .I1(data2[11]),
        .I2(data2[5]),
        .I3(data2[6]),
        .I4(data2[8]),
        .I5(data2[7]),
        .O(i__carry_i_25_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_26
       (.I0(data2[11]),
        .I1(data2[12]),
        .O(i__carry_i_26_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_27
       (.I0(data2[8]),
        .I1(data2[7]),
        .O(i__carry_i_27_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_28
       (.I0(data2[5]),
        .I1(data2[6]),
        .O(i__carry_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFF4)) 
    i__carry_i_29
       (.I0(data2[3]),
        .I1(data2[2]),
        .I2(data2[4]),
        .I3(data2[6]),
        .O(i__carry_i_29_n_0));
  LUT6 #(
    .INIT(64'hFFFF55010000AAFE)) 
    i__carry_i_2__0
       (.I0(i__carry_i_8__0_n_0),
        .I1(i__carry_i_9_n_0),
        .I2(i__carry_i_10_n_0),
        .I3(i__carry_i_11_n_0),
        .I4(\out_reg[6]_i_5_n_4 ),
        .I5(reg_exp_out[2]),
        .O(i__carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(reg_ext_mant_A[3]),
        .I1(reg_ext_mant_B[3]),
        .I2(reg_ext_mant_A[2]),
        .I3(reg_ext_mant_B[2]),
        .O(i__carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hFAEAFFFF05150000)) 
    i__carry_i_3__0
       (.I0(\out_reg[6]_i_5_n_4 ),
        .I1(data2[22]),
        .I2(i__carry_i_12_n_0),
        .I3(data2[21]),
        .I4(i__carry_i_13_n_0),
        .I5(reg_exp_out[1]),
        .O(i__carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_4
       (.I0(reg_ext_mant_A[1]),
        .I1(reg_ext_mant_B[1]),
        .I2(reg_ext_mant_A[0]),
        .I3(reg_ext_mant_B[0]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF00AE0000FF51)) 
    i__carry_i_4__0
       (.I0(i__carry_i_14_n_0),
        .I1(i__carry_i_15_n_0),
        .I2(i__carry_i_16_n_0),
        .I3(i__carry_i_17_n_0),
        .I4(\out_reg[6]_i_5_n_4 ),
        .I5(reg_exp_out[0]),
        .O(i__carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(reg_ext_mant_B[7]),
        .I1(reg_ext_mant_A[7]),
        .I2(reg_ext_mant_B[6]),
        .I3(reg_ext_mant_A[6]),
        .O(i__carry_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    i__carry_i_5__0
       (.I0(i__carry_i_8__0_n_0),
        .I1(data2[20]),
        .I2(data2[19]),
        .I3(data2[18]),
        .I4(data2[17]),
        .O(i__carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(reg_ext_mant_B[5]),
        .I1(reg_ext_mant_A[5]),
        .I2(reg_ext_mant_B[4]),
        .I3(reg_ext_mant_A[4]),
        .O(i__carry_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_6__0
       (.I0(i__carry_i_18_n_0),
        .I1(data2[9]),
        .I2(data2[16]),
        .I3(data2[15]),
        .I4(data2[14]),
        .I5(data2[13]),
        .O(i__carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(reg_ext_mant_B[3]),
        .I1(reg_ext_mant_A[3]),
        .I2(reg_ext_mant_B[2]),
        .I3(reg_ext_mant_A[2]),
        .O(i__carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_7__0
       (.I0(i__carry_i_19_n_0),
        .I1(data2[8]),
        .I2(data2[7]),
        .I3(data2[3]),
        .I4(data2[2]),
        .I5(data2[4]),
        .O(i__carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_8
       (.I0(reg_ext_mant_B[1]),
        .I1(reg_ext_mant_A[1]),
        .I2(reg_ext_mant_B[0]),
        .I3(reg_ext_mant_A[0]),
        .O(i__carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_8__0
       (.I0(data2[22]),
        .I1(\out_reg[6]_i_5_n_5 ),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[21]),
        .O(i__carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_9
       (.I0(data2[13]),
        .I1(data2[14]),
        .I2(data2[15]),
        .I3(data2[16]),
        .O(i__carry_i_9_n_0));
  LUT4 #(
    .INIT(16'hB888)) 
    \out[0]_i_1 
       (.I0(data2[3]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out_reg[6]_i_5_n_4 ),
        .I3(data2[2]),
        .O(\out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBB8B8B8)) 
    \out[16]_i_1 
       (.I0(data2[19]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[16]_i_2_n_0 ),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(data2[18]),
        .I5(\out[16]_i_3_n_0 ),
        .O(\out[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \out[16]_i_10 
       (.I0(data2[12]),
        .I1(data2[4]),
        .O(\out[16]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \out[16]_i_11 
       (.I0(data2[17]),
        .I1(data2[18]),
        .I2(data2[16]),
        .O(\out[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0202020202000000)) 
    \out[16]_i_2 
       (.I0(\out[16]_i_4_n_0 ),
        .I1(\out[7]_i_5_n_0 ),
        .I2(\out[16]_i_5_n_0 ),
        .I3(data2[2]),
        .I4(data2[9]),
        .I5(i__carry__0_i_8__0_n_0),
        .O(\out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A222AAAA)) 
    \out[16]_i_3 
       (.I0(\out[16]_i_6_n_0 ),
        .I1(\out[16]_i_7_n_0 ),
        .I2(data2[21]),
        .I3(data2[14]),
        .I4(\out[3]_i_2_n_0 ),
        .I5(\out[6]_i_4_n_0 ),
        .O(\out[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h55554454FFFFFFFF)) 
    \out[16]_i_4 
       (.I0(\out[16]_i_8_n_0 ),
        .I1(\out[16]_i_9_n_0 ),
        .I2(data2[11]),
        .I3(\out[16]_i_10_n_0 ),
        .I4(\out[19]_i_7_n_0 ),
        .I5(\out[16]_i_11_n_0 ),
        .O(\out[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[16]_i_5 
       (.I0(data2[9]),
        .I1(data2[16]),
        .I2(data2[17]),
        .I3(data2[10]),
        .I4(data2[18]),
        .I5(data2[11]),
        .O(\out[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD0D0000FD0D)) 
    \out[16]_i_6 
       (.I0(data2[22]),
        .I1(data2[15]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[16]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[17]),
        .O(\out[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hCCDFFFDF)) 
    \out[16]_i_7 
       (.I0(data2[19]),
        .I1(data2[21]),
        .I2(data2[12]),
        .I3(data2[20]),
        .I4(data2[13]),
        .O(\out[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h30353F3530303F30)) 
    \out[16]_i_8 
       (.I0(data2[6]),
        .I1(data2[8]),
        .I2(data2[15]),
        .I3(data2[14]),
        .I4(data2[7]),
        .I5(data2[13]),
        .O(\out[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    \out[16]_i_9 
       (.I0(data2[5]),
        .I1(data2[12]),
        .I2(data2[3]),
        .I3(data2[11]),
        .I4(data2[10]),
        .O(\out[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \out[17]_i_1 
       (.I0(data2[20]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[17]_i_2_n_0 ),
        .I3(\out[17]_i_3_n_0 ),
        .I4(\out[17]_i_4_n_0 ),
        .O(\out[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFD0D0000FD0D)) 
    \out[17]_i_10 
       (.I0(data2[22]),
        .I1(data2[16]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[17]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[18]),
        .O(\out[17]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \out[17]_i_11 
       (.I0(data2[22]),
        .I1(\out_reg[6]_i_5_n_5 ),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[15]),
        .I4(data2[21]),
        .O(\out[17]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1011)) 
    \out[17]_i_2 
       (.I0(i__carry__0_i_8__0_n_0),
        .I1(\out[17]_i_5_n_0 ),
        .I2(i__carry__0_i_6__0_n_0),
        .I3(data2[19]),
        .I4(\out[17]_i_6_n_0 ),
        .I5(\out[7]_i_5_n_0 ),
        .O(\out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
    \out[17]_i_3 
       (.I0(\out[17]_i_7_n_0 ),
        .I1(\out[19]_i_7_n_0 ),
        .I2(\out[17]_i_8_n_0 ),
        .I3(data2[16]),
        .I4(data2[18]),
        .I5(data2[17]),
        .O(\out[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \out[17]_i_4 
       (.I0(\out[6]_i_4_n_0 ),
        .I1(\out[17]_i_9_n_0 ),
        .I2(\out[17]_i_10_n_0 ),
        .I3(data2[19]),
        .I4(\out_reg[6]_i_5_n_4 ),
        .O(\out[17]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \out[17]_i_5 
       (.I0(data2[3]),
        .I1(data2[9]),
        .I2(data2[2]),
        .I3(data2[8]),
        .O(\out[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04070404F4F7F4F4)) 
    \out[17]_i_6 
       (.I0(data2[11]),
        .I1(data2[17]),
        .I2(data2[18]),
        .I3(data2[10]),
        .I4(data2[16]),
        .I5(data2[12]),
        .O(\out[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000007F7FFFF07F7)) 
    \out[17]_i_7 
       (.I0(data2[4]),
        .I1(data2[10]),
        .I2(data2[11]),
        .I3(data2[5]),
        .I4(data2[12]),
        .I5(data2[6]),
        .O(\out[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCFCAC0CACFCFC0CF)) 
    \out[17]_i_8 
       (.I0(data2[7]),
        .I1(data2[9]),
        .I2(data2[15]),
        .I3(data2[14]),
        .I4(data2[8]),
        .I5(data2[13]),
        .O(\out[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF47FF77)) 
    \out[17]_i_9 
       (.I0(data2[14]),
        .I1(data2[20]),
        .I2(data2[13]),
        .I3(data2[21]),
        .I4(data2[19]),
        .I5(\out[17]_i_11_n_0 ),
        .O(\out[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB8B88)) 
    \out[18]_i_1 
       (.I0(data2[21]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[18]_i_2_n_0 ),
        .I3(\out[18]_i_3_n_0 ),
        .I4(\out[18]_i_4_n_0 ),
        .O(\out[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \out[18]_i_10 
       (.I0(data2[14]),
        .I1(data2[20]),
        .I2(data2[19]),
        .I3(data2[21]),
        .O(\out[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBBBBBBBFBBB)) 
    \out[18]_i_11 
       (.I0(data2[22]),
        .I1(i__carry_i_12_n_0),
        .I2(data2[20]),
        .I3(data2[15]),
        .I4(data2[21]),
        .I5(data2[16]),
        .O(\out[18]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1011)) 
    \out[18]_i_2 
       (.I0(i__carry__0_i_8__0_n_0),
        .I1(\out[18]_i_5_n_0 ),
        .I2(i__carry__0_i_6__0_n_0),
        .I3(data2[20]),
        .I4(\out[18]_i_6_n_0 ),
        .I5(\out[7]_i_5_n_0 ),
        .O(\out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF54)) 
    \out[18]_i_3 
       (.I0(\out[18]_i_7_n_0 ),
        .I1(\out[19]_i_7_n_0 ),
        .I2(\out[18]_i_8_n_0 ),
        .I3(data2[16]),
        .I4(data2[18]),
        .I5(data2[17]),
        .O(\out[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h888F888F888F8888)) 
    \out[18]_i_4 
       (.I0(data2[20]),
        .I1(\out_reg[6]_i_5_n_4 ),
        .I2(\out[6]_i_4_n_0 ),
        .I3(\out[18]_i_9_n_0 ),
        .I4(\out[18]_i_10_n_0 ),
        .I5(\out[18]_i_11_n_0 ),
        .O(\out[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFACACACA3A0A0A0)) 
    \out[18]_i_5 
       (.I0(data2[4]),
        .I1(data2[8]),
        .I2(data2[9]),
        .I3(data2[7]),
        .I4(data2[2]),
        .I5(data2[3]),
        .O(\out[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04070404F4F7F4F4)) 
    \out[18]_i_6 
       (.I0(data2[12]),
        .I1(data2[17]),
        .I2(data2[18]),
        .I3(data2[11]),
        .I4(data2[16]),
        .I5(data2[13]),
        .O(\out[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h303F3535303F3030)) 
    \out[18]_i_7 
       (.I0(data2[8]),
        .I1(data2[10]),
        .I2(data2[15]),
        .I3(data2[9]),
        .I4(data2[14]),
        .I5(data2[13]),
        .O(\out[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCACFCAC0CAC0CAC0)) 
    \out[18]_i_8 
       (.I0(data2[6]),
        .I1(data2[7]),
        .I2(data2[12]),
        .I3(data2[11]),
        .I4(data2[10]),
        .I5(data2[5]),
        .O(\out[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[18]_i_9 
       (.I0(data2[17]),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[18]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[19]),
        .O(\out[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAE00AE)) 
    \out[19]_i_1 
       (.I0(\out[19]_i_2_n_0 ),
        .I1(\out[19]_i_3_n_0 ),
        .I2(\out[19]_i_4_n_0 ),
        .I3(\out_reg[7]_i_3_n_7 ),
        .I4(data2[22]),
        .I5(\out[31]_i_2_n_0 ),
        .O(\out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010101)) 
    \out[19]_i_10 
       (.I0(data2[9]),
        .I1(data2[7]),
        .I2(data2[8]),
        .I3(data2[6]),
        .I4(data2[2]),
        .I5(\out[19]_i_13_n_0 ),
        .O(\out[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h04070404F4F7F4F4)) 
    \out[19]_i_11 
       (.I0(data2[13]),
        .I1(data2[17]),
        .I2(data2[18]),
        .I3(data2[12]),
        .I4(data2[16]),
        .I5(data2[14]),
        .O(\out[19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \out[19]_i_12 
       (.I0(data2[17]),
        .I1(data2[21]),
        .I2(data2[16]),
        .I3(data2[20]),
        .O(\out[19]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555000C5555FF0C)) 
    \out[19]_i_13 
       (.I0(data2[5]),
        .I1(data2[7]),
        .I2(data2[3]),
        .I3(data2[8]),
        .I4(data2[9]),
        .I5(data2[4]),
        .O(\out[19]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF101010)) 
    \out[19]_i_2 
       (.I0(\out[6]_i_4_n_0 ),
        .I1(\out[19]_i_5_n_0 ),
        .I2(\out[19]_i_6_n_0 ),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(data2[21]),
        .I5(\out_reg[7]_i_3_n_7 ),
        .O(\out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    \out[19]_i_3 
       (.I0(\out[19]_i_7_n_0 ),
        .I1(\out[19]_i_8_n_0 ),
        .I2(\out[19]_i_9_n_0 ),
        .I3(data2[16]),
        .I4(data2[18]),
        .I5(data2[17]),
        .O(\out[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4500)) 
    \out[19]_i_4 
       (.I0(i__carry__0_i_8__0_n_0),
        .I1(i__carry__0_i_6__0_n_0),
        .I2(data2[21]),
        .I3(\out[19]_i_10_n_0 ),
        .I4(\out[19]_i_11_n_0 ),
        .I5(\out[7]_i_5_n_0 ),
        .O(\out[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[19]_i_5 
       (.I0(data2[18]),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[19]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[20]),
        .O(\out[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400FFFF)) 
    \out[19]_i_6 
       (.I0(data2[21]),
        .I1(data2[19]),
        .I2(data2[20]),
        .I3(data2[15]),
        .I4(\out[3]_i_2_n_0 ),
        .I5(\out[19]_i_12_n_0 ),
        .O(\out[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFEFEFEFF)) 
    \out[19]_i_7 
       (.I0(data2[14]),
        .I1(data2[13]),
        .I2(data2[15]),
        .I3(data2[11]),
        .I4(data2[12]),
        .I5(data2[10]),
        .O(\out[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFB8880000B888)) 
    \out[19]_i_8 
       (.I0(data2[7]),
        .I1(data2[11]),
        .I2(data2[10]),
        .I3(data2[6]),
        .I4(data2[12]),
        .I5(data2[8]),
        .O(\out[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCFCAC0CACFCFC0CF)) 
    \out[19]_i_9 
       (.I0(data2[9]),
        .I1(data2[11]),
        .I2(data2[15]),
        .I3(data2[14]),
        .I4(data2[10]),
        .I5(data2[13]),
        .O(\out[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \out[1]_i_1 
       (.I0(data2[4]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(data2[3]),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[2]),
        .O(\out[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000EE0E)) 
    \out[20]_i_1 
       (.I0(\out[20]_i_2_n_0 ),
        .I1(\out[20]_i_3_n_0 ),
        .I2(\out_reg[7]_i_3_n_7 ),
        .I3(\out_reg[6]_i_5_n_6 ),
        .I4(\out[31]_i_2_n_0 ),
        .O(\out[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hB888)) 
    \out[20]_i_10 
       (.I0(data2[18]),
        .I1(data2[21]),
        .I2(data2[20]),
        .I3(data2[17]),
        .O(\out[20]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h88B88888)) 
    \out[20]_i_11 
       (.I0(data2[9]),
        .I1(data2[12]),
        .I2(data2[7]),
        .I3(data2[11]),
        .I4(data2[10]),
        .O(\out[20]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h30353F3530303F30)) 
    \out[20]_i_12 
       (.I0(data2[10]),
        .I1(data2[12]),
        .I2(data2[15]),
        .I3(data2[14]),
        .I4(data2[11]),
        .I5(data2[13]),
        .O(\out[20]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \out[20]_i_13 
       (.I0(data2[9]),
        .I1(data2[7]),
        .I2(data2[8]),
        .O(\out[20]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0101010001010101)) 
    \out[20]_i_14 
       (.I0(data2[6]),
        .I1(data2[5]),
        .I2(data2[4]),
        .I3(data2[3]),
        .I4(data2[2]),
        .I5(data2[22]),
        .O(\out[20]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h1D1D3F0C)) 
    \out[20]_i_15 
       (.I0(data2[2]),
        .I1(data2[6]),
        .I2(data2[3]),
        .I3(data2[4]),
        .I4(data2[5]),
        .O(\out[20]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAACFAAC0AAC0AAC0)) 
    \out[20]_i_16 
       (.I0(data2[6]),
        .I1(data2[5]),
        .I2(data2[8]),
        .I3(data2[9]),
        .I4(data2[4]),
        .I5(data2[7]),
        .O(\out[20]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out[20]_i_17 
       (.I0(data2[14]),
        .I1(data2[13]),
        .I2(data2[15]),
        .I3(data2[10]),
        .I4(data2[12]),
        .I5(data2[11]),
        .O(\out[20]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF10FFFF1010)) 
    \out[20]_i_2 
       (.I0(\out[6]_i_4_n_0 ),
        .I1(\out[20]_i_4_n_0 ),
        .I2(\out[20]_i_5_n_0 ),
        .I3(data2[22]),
        .I4(\out_reg[7]_i_3_n_7 ),
        .I5(\out_reg[6]_i_5_n_4 ),
        .O(\out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000DDFD)) 
    \out[20]_i_3 
       (.I0(\out[20]_i_6_n_0 ),
        .I1(data2[16]),
        .I2(\out[20]_i_7_n_0 ),
        .I3(\out[20]_i_8_n_0 ),
        .I4(\out[20]_i_9_n_0 ),
        .I5(\out[7]_i_5_n_0 ),
        .O(\out[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[20]_i_4 
       (.I0(data2[19]),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[20]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[21]),
        .O(\out[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400FFFF)) 
    \out[20]_i_5 
       (.I0(data2[21]),
        .I1(data2[19]),
        .I2(data2[20]),
        .I3(data2[16]),
        .I4(\out[3]_i_2_n_0 ),
        .I5(\out[20]_i_10_n_0 ),
        .O(\out[20]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[20]_i_6 
       (.I0(data2[18]),
        .I1(data2[17]),
        .O(\out[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFBAAA)) 
    \out[20]_i_7 
       (.I0(\out[19]_i_7_n_0 ),
        .I1(data2[12]),
        .I2(data2[11]),
        .I3(data2[8]),
        .I4(\out[20]_i_11_n_0 ),
        .I5(\out[20]_i_12_n_0 ),
        .O(\out[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000000FE)) 
    \out[20]_i_8 
       (.I0(\out[20]_i_13_n_0 ),
        .I1(\out[20]_i_14_n_0 ),
        .I2(\out[20]_i_15_n_0 ),
        .I3(\out[20]_i_16_n_0 ),
        .I4(\out[20]_i_17_n_0 ),
        .O(\out[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h04070404F4F7F4F4)) 
    \out[20]_i_9 
       (.I0(data2[14]),
        .I1(data2[17]),
        .I2(data2[18]),
        .I3(data2[13]),
        .I4(data2[16]),
        .I5(data2[15]),
        .O(\out[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB888B8888)) 
    \out[21]_i_1 
       (.I0(\out_reg[6]_i_5_n_5 ),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[21]_i_2_n_0 ),
        .I3(\out[21]_i_3_n_0 ),
        .I4(\out[21]_i_4_n_0 ),
        .I5(\out[21]_i_5_n_0 ),
        .O(\out[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFCEC0CECFC2C0C2)) 
    \out[21]_i_10 
       (.I0(\out[21]_i_11_n_0 ),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_5 ),
        .I3(\out_reg[6]_i_5_n_6 ),
        .I4(data2[21]),
        .I5(data2[20]),
        .O(\out[21]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hFB08F808)) 
    \out[21]_i_11 
       (.I0(data2[18]),
        .I1(data2[20]),
        .I2(data2[21]),
        .I3(data2[19]),
        .I4(data2[17]),
        .O(\out[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0033303200333332)) 
    \out[21]_i_2 
       (.I0(\out[21]_i_6_n_0 ),
        .I1(\out[21]_i_7_n_0 ),
        .I2(data2[14]),
        .I3(data2[13]),
        .I4(data2[15]),
        .I5(data2[11]),
        .O(\out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAFAAEFEABFAAFFE)) 
    \out[21]_i_3 
       (.I0(\out[7]_i_5_n_0 ),
        .I1(data2[17]),
        .I2(data2[18]),
        .I3(data2[16]),
        .I4(data2[15]),
        .I5(data2[14]),
        .O(\out[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    \out[21]_i_4 
       (.I0(data2[9]),
        .I1(data2[7]),
        .I2(data2[8]),
        .I3(\out[21]_i_8_n_0 ),
        .I4(\out[21]_i_9_n_0 ),
        .I5(i__carry__0_i_8__0_n_0),
        .O(\out[21]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \out[21]_i_5 
       (.I0(\out_reg[6]_i_5_n_6 ),
        .I1(\out_reg[6]_i_5_n_4 ),
        .I2(\out[6]_i_4_n_0 ),
        .I3(\out[21]_i_10_n_0 ),
        .O(\out[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h001DFF0C)) 
    \out[21]_i_6 
       (.I0(data2[8]),
        .I1(data2[11]),
        .I2(data2[9]),
        .I3(data2[12]),
        .I4(data2[10]),
        .O(\out[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFFFEFEFEFEFE)) 
    \out[21]_i_7 
       (.I0(data2[16]),
        .I1(data2[18]),
        .I2(data2[17]),
        .I3(data2[14]),
        .I4(data2[15]),
        .I5(data2[12]),
        .O(\out[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFFCF00C000C02)) 
    \out[21]_i_8 
       (.I0(\out_reg[6]_i_5_n_6 ),
        .I1(data2[3]),
        .I2(data2[6]),
        .I3(data2[5]),
        .I4(data2[2]),
        .I5(data2[4]),
        .O(\out[21]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hCCAACCC0)) 
    \out[21]_i_9 
       (.I0(data2[6]),
        .I1(data2[7]),
        .I2(data2[5]),
        .I3(data2[9]),
        .I4(data2[8]),
        .O(\out[21]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBB888B8888)) 
    \out[22]_i_1 
       (.I0(\out_reg[6]_i_5_n_4 ),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[7]_i_5_n_0 ),
        .I3(\out[22]_i_2_n_0 ),
        .I4(\out[22]_i_3_n_0 ),
        .I5(\out[22]_i_4_n_0 ),
        .O(\out[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F320F3E)) 
    \out[22]_i_2 
       (.I0(\out[22]_i_5_n_0 ),
        .I1(data2[7]),
        .I2(data2[8]),
        .I3(data2[9]),
        .I4(data2[6]),
        .I5(i__carry__0_i_8__0_n_0),
        .O(\out[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCFC11FFFFFFFF)) 
    \out[22]_i_3 
       (.I0(\out[22]_i_6_n_0 ),
        .I1(data2[17]),
        .I2(data2[15]),
        .I3(data2[16]),
        .I4(data2[18]),
        .I5(i__carry__0_i_8__0_n_0),
        .O(\out[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00F0FAF003)) 
    \out[22]_i_4 
       (.I0(data2[21]),
        .I1(\out[22]_i_7_n_0 ),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(\out_reg[6]_i_5_n_5 ),
        .I4(data2[22]),
        .I5(\out_reg[6]_i_5_n_4 ),
        .O(\out[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00FF5567)) 
    \out[22]_i_5 
       (.I0(data2[3]),
        .I1(data2[2]),
        .I2(\out_reg[6]_i_5_n_5 ),
        .I3(data2[4]),
        .I4(data2[5]),
        .I5(data2[6]),
        .O(\out[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h0F0F05FC)) 
    \out[22]_i_6 
       (.I0(data2[12]),
        .I1(\out[22]_i_8_n_0 ),
        .I2(data2[14]),
        .I3(data2[13]),
        .I4(data2[15]),
        .O(\out[22]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h05F7)) 
    \out[22]_i_7 
       (.I0(data2[19]),
        .I1(data2[18]),
        .I2(data2[21]),
        .I3(data2[20]),
        .O(\out[22]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h515F)) 
    \out[22]_i_8 
       (.I0(data2[11]),
        .I1(data2[9]),
        .I2(data2[12]),
        .I3(data2[10]),
        .O(\out[22]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h004E)) 
    \out[23]_i_1 
       (.I0(\out_reg[7]_i_3_n_7 ),
        .I1(\p_1_out_inferred__1/i__carry_n_7 ),
        .I2(reg_exp_out[0]),
        .I3(\out[31]_i_2_n_0 ),
        .O(exp_out_2[0]));
  LUT5 #(
    .INIT(32'h00002EE2)) 
    \out[24]_i_1 
       (.I0(\p_1_out_inferred__1/i__carry_n_6 ),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(reg_exp_out[1]),
        .I3(reg_exp_out[0]),
        .I4(\out[31]_i_2_n_0 ),
        .O(exp_out_2[1]));
  LUT6 #(
    .INIT(64'h000000004EEEE444)) 
    \out[25]_i_1 
       (.I0(\out_reg[7]_i_3_n_7 ),
        .I1(\p_1_out_inferred__1/i__carry_n_5 ),
        .I2(reg_exp_out[0]),
        .I3(reg_exp_out[1]),
        .I4(reg_exp_out[2]),
        .I5(\out[31]_i_2_n_0 ),
        .O(exp_out_2[2]));
  LUT5 #(
    .INIT(32'h0000E44E)) 
    \out[26]_i_1 
       (.I0(\out_reg[7]_i_3_n_7 ),
        .I1(\p_1_out_inferred__1/i__carry_n_4 ),
        .I2(\out[26]_i_2_n_0 ),
        .I3(reg_exp_out[3]),
        .I4(\out[31]_i_2_n_0 ),
        .O(exp_out_2[3]));
  LUT3 #(
    .INIT(8'h7F)) 
    \out[26]_i_2 
       (.I0(reg_exp_out[1]),
        .I1(reg_exp_out[0]),
        .I2(reg_exp_out[2]),
        .O(\out[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0000E44E)) 
    \out[27]_i_1 
       (.I0(\out_reg[7]_i_3_n_7 ),
        .I1(\p_1_out_inferred__1/i__carry__0_n_7 ),
        .I2(\out[27]_i_2_n_0 ),
        .I3(reg_exp_out[6]),
        .I4(\out[31]_i_2_n_0 ),
        .O(exp_out_2[4]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \out[27]_i_2 
       (.I0(reg_exp_out[2]),
        .I1(reg_exp_out[0]),
        .I2(reg_exp_out[1]),
        .I3(reg_exp_out[3]),
        .O(\out[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00004EE4)) 
    \out[28]_i_1 
       (.I0(\out_reg[7]_i_3_n_7 ),
        .I1(\p_1_out_inferred__1/i__carry__0_n_6 ),
        .I2(\out[28]_i_2_n_0 ),
        .I3(reg_exp_out[5]),
        .I4(\out[31]_i_2_n_0 ),
        .O(exp_out_2[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \out[28]_i_2 
       (.I0(reg_exp_out[6]),
        .I1(reg_exp_out[3]),
        .I2(reg_exp_out[1]),
        .I3(reg_exp_out[0]),
        .I4(reg_exp_out[2]),
        .O(\out[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h10105410)) 
    \out[29]_i_1 
       (.I0(\out[31]_i_2_n_0 ),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\p_1_out_inferred__1/i__carry__0_n_5 ),
        .I3(reg_exp_out[6]),
        .I4(\out[30]_i_2_n_0 ),
        .O(\out[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \out[2]_i_1 
       (.I0(data2[5]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[2]_i_2_n_0 ),
        .O(\out[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBB88BB88B8B88888)) 
    \out[2]_i_2 
       (.I0(data2[4]),
        .I1(\out_reg[6]_i_5_n_4 ),
        .I2(data2[2]),
        .I3(data2[3]),
        .I4(\out_reg[6]_i_5_n_6 ),
        .I5(\out_reg[6]_i_5_n_5 ),
        .O(\out[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002EE2)) 
    \out[30]_i_1 
       (.I0(\p_1_out_inferred__1/i__carry__0_n_4 ),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[30]_i_2_n_0 ),
        .I3(reg_exp_out[7]),
        .I4(\out[31]_i_2_n_0 ),
        .O(exp_out_2[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \out[30]_i_2 
       (.I0(reg_exp_out[2]),
        .I1(reg_exp_out[0]),
        .I2(reg_exp_out[1]),
        .I3(reg_exp_out[3]),
        .I4(reg_exp_out[6]),
        .I5(reg_exp_out[5]),
        .O(\out[30]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \out[31]_i_1 
       (.I0(reg_sign_B),
        .I1(sum_mant1),
        .I2(reg_sign_A),
        .I3(\out[31]_i_2_n_0 ),
        .O(sign_out));
  LUT4 #(
    .INIT(16'h0010)) 
    \out[31]_i_2 
       (.I0(\out_reg[6]_i_5_n_4 ),
        .I1(i__carry__0_i_6__0_n_0),
        .I2(i__carry__0_i_7__0_n_0),
        .I3(i__carry__0_i_8__0_n_0),
        .O(\out[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB88888B888B88)) 
    \out[3]_i_1 
       (.I0(data2[6]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[3]_i_2_n_0 ),
        .I3(\out[3]_i_3_n_0 ),
        .I4(data2[5]),
        .I5(\out_reg[6]_i_5_n_4 ),
        .O(\out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \out[3]_i_2 
       (.I0(\out_reg[6]_i_5_n_6 ),
        .I1(\out_reg[6]_i_5_n_5 ),
        .I2(data2[22]),
        .O(\out[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hFBF80B08)) 
    \out[3]_i_3 
       (.I0(data2[3]),
        .I1(\out_reg[6]_i_5_n_6 ),
        .I2(\out_reg[6]_i_5_n_5 ),
        .I3(data2[2]),
        .I4(data2[4]),
        .O(\out[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE0EE0000E0EE)) 
    \out[4]_i_1 
       (.I0(\out[4]_i_2_n_0 ),
        .I1(\out[4]_i_3_n_0 ),
        .I2(data2[6]),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(\out_reg[7]_i_3_n_7 ),
        .I5(data2[7]),
        .O(\out[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF808)) 
    \out[4]_i_2 
       (.I0(\out_reg[6]_i_5_n_6 ),
        .I1(data2[4]),
        .I2(\out_reg[6]_i_5_n_5 ),
        .I3(data2[5]),
        .I4(\out_reg[6]_i_5_n_4 ),
        .I5(\out_reg[7]_i_3_n_7 ),
        .O(\out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000F808)) 
    \out[4]_i_3 
       (.I0(data2[2]),
        .I1(data2[21]),
        .I2(data2[22]),
        .I3(data2[3]),
        .I4(\out_reg[6]_i_5_n_6 ),
        .I5(\out_reg[6]_i_5_n_5 ),
        .O(\out[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0440000F044)) 
    \out[5]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out[5]_i_3_n_0 ),
        .I2(data2[7]),
        .I3(\out_reg[6]_i_5_n_4 ),
        .I4(\out_reg[7]_i_3_n_7 ),
        .I5(data2[8]),
        .O(\out[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[5]_i_2 
       (.I0(data2[4]),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[5]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[6]),
        .O(\out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF808FFFFFFFF)) 
    \out[5]_i_3 
       (.I0(data2[20]),
        .I1(data2[2]),
        .I2(data2[21]),
        .I3(data2[3]),
        .I4(data2[22]),
        .I5(i__carry_i_12_n_0),
        .O(\out[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBBBB888B888B888B)) 
    \out[6]_i_1 
       (.I0(data2[9]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[6]_i_3_n_0 ),
        .I3(\out[6]_i_4_n_0 ),
        .I4(data2[8]),
        .I5(\out_reg[6]_i_5_n_4 ),
        .O(\out[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_10 
       (.I0(reg_ext_mant_B[7]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[7]),
        .O(\out[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_11 
       (.I0(reg_ext_mant_B[6]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[6]),
        .O(\out[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_12 
       (.I0(reg_ext_mant_B[5]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[5]),
        .O(\out[6]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_13 
       (.I0(reg_ext_mant_B[4]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[4]),
        .O(\out[6]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hCCDFFFDF)) 
    \out[6]_i_14 
       (.I0(data2[19]),
        .I1(data2[21]),
        .I2(data2[2]),
        .I3(data2[20]),
        .I4(data2[3]),
        .O(\out[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[6]_i_15 
       (.I0(data2[5]),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[6]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[7]),
        .O(\out[6]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_16 
       (.I0(reg_ext_mant_A[23]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[23]),
        .O(p_2_in[23]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_17 
       (.I0(reg_ext_mant_A[22]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[22]),
        .O(p_2_in[22]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_18 
       (.I0(reg_ext_mant_A[21]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[21]),
        .O(p_2_in[21]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_19 
       (.I0(reg_ext_mant_A[20]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[20]),
        .O(p_2_in[20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_20 
       (.I0(reg_ext_mant_B[23]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[23]),
        .O(\out[6]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_21 
       (.I0(reg_ext_mant_B[22]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[22]),
        .O(\out[6]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_22 
       (.I0(reg_ext_mant_B[21]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[21]),
        .O(\out[6]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_23 
       (.I0(reg_ext_mant_B[20]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[20]),
        .O(\out[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04440000)) 
    \out[6]_i_3 
       (.I0(data2[22]),
        .I1(i__carry_i_12_n_0),
        .I2(data2[4]),
        .I3(data2[21]),
        .I4(\out[6]_i_14_n_0 ),
        .I5(\out[6]_i_15_n_0 ),
        .O(\out[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \out[6]_i_4 
       (.I0(\out_reg[6]_i_5_n_4 ),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_5 ),
        .I3(\out_reg[6]_i_5_n_6 ),
        .I4(data2[21]),
        .I5(\out[7]_i_19_n_0 ),
        .O(\out[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_6 
       (.I0(reg_ext_mant_A[7]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[7]),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_7 
       (.I0(reg_ext_mant_A[6]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_8 
       (.I0(reg_ext_mant_A[5]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[5]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_9 
       (.I0(reg_ext_mant_A[4]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hB8BBB8B8B8B8B8B8)) 
    \out[7]_i_1 
       (.I0(data2[10]),
        .I1(\out_reg[7]_i_3_n_7 ),
        .I2(\out[7]_i_4_n_0 ),
        .I3(\out[7]_i_5_n_0 ),
        .I4(data2[18]),
        .I5(data2[2]),
        .O(\out[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_10 
       (.I0(reg_ext_mant_A[9]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[9]),
        .O(p_2_in[9]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_11 
       (.I0(reg_ext_mant_A[8]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[8]),
        .O(p_2_in[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_12 
       (.I0(reg_ext_mant_B[11]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[11]),
        .O(\out[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_13 
       (.I0(reg_ext_mant_B[10]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[10]),
        .O(\out[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_14 
       (.I0(reg_ext_mant_B[9]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[9]),
        .O(\out[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_15 
       (.I0(reg_ext_mant_B[8]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[8]),
        .O(\out[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_16 
       (.I0(reg_sign_A),
        .I1(reg_sign_B),
        .O(\out[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h000004F4FFFF04F4)) 
    \out[7]_i_17 
       (.I0(data2[6]),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[7]),
        .I4(\out_reg[6]_i_5_n_5 ),
        .I5(data2[8]),
        .O(\out[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B80088)) 
    \out[7]_i_18 
       (.I0(data2[4]),
        .I1(data2[20]),
        .I2(data2[3]),
        .I3(data2[21]),
        .I4(data2[19]),
        .I5(\out[7]_i_38_n_0 ),
        .O(\out[7]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \out[7]_i_19 
       (.I0(data2[20]),
        .I1(data2[19]),
        .O(\out[7]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_21 
       (.I0(reg_ext_mant_A[19]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[19]),
        .O(p_2_in[19]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_22 
       (.I0(reg_ext_mant_A[18]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[18]),
        .O(p_2_in[18]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_23 
       (.I0(reg_ext_mant_A[17]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[17]),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_24 
       (.I0(reg_ext_mant_A[16]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[16]),
        .O(p_2_in[16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_25 
       (.I0(reg_ext_mant_B[19]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[19]),
        .O(\out[7]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_26 
       (.I0(reg_ext_mant_B[18]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[18]),
        .O(\out[7]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_27 
       (.I0(reg_ext_mant_B[17]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[17]),
        .O(\out[7]_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_28 
       (.I0(reg_ext_mant_B[16]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[16]),
        .O(\out[7]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[7]_i_29 
       (.I0(reg_sign_A),
        .I1(reg_sign_B),
        .O(\out[7]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_30 
       (.I0(reg_ext_mant_A[3]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_31 
       (.I0(reg_ext_mant_A[2]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_32 
       (.I0(reg_ext_mant_A[1]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_33 
       (.I0(reg_ext_mant_A[0]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[0]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_34 
       (.I0(reg_ext_mant_B[3]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[3]),
        .O(\out[7]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_35 
       (.I0(reg_ext_mant_B[2]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[2]),
        .O(\out[7]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_36 
       (.I0(reg_ext_mant_B[1]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[1]),
        .O(\out[7]_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_37 
       (.I0(reg_ext_mant_B[0]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[0]),
        .O(\out[7]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hFFFEFEFE)) 
    \out[7]_i_38 
       (.I0(data2[22]),
        .I1(\out_reg[6]_i_5_n_5 ),
        .I2(\out_reg[6]_i_5_n_6 ),
        .I3(data2[5]),
        .I4(data2[21]),
        .O(\out[7]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_39 
       (.I0(reg_ext_mant_A[15]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[15]),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hFF101010)) 
    \out[7]_i_4 
       (.I0(\out[6]_i_4_n_0 ),
        .I1(\out[7]_i_17_n_0 ),
        .I2(\out[7]_i_18_n_0 ),
        .I3(data2[9]),
        .I4(\out_reg[6]_i_5_n_4 ),
        .O(\out[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_40 
       (.I0(reg_ext_mant_A[14]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[14]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_41 
       (.I0(reg_ext_mant_A[13]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[13]),
        .O(p_2_in[13]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_42 
       (.I0(reg_ext_mant_A[12]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[12]),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_43 
       (.I0(reg_ext_mant_B[15]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[15]),
        .O(\out[7]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_44 
       (.I0(reg_ext_mant_B[14]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[14]),
        .O(\out[7]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_45 
       (.I0(reg_ext_mant_B[13]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[13]),
        .O(\out[7]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_46 
       (.I0(reg_ext_mant_B[12]),
        .I1(reg_sign_B),
        .I2(reg_sign_A),
        .I3(reg_ext_mant_A[12]),
        .O(\out[7]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \out[7]_i_5 
       (.I0(\out_reg[6]_i_5_n_4 ),
        .I1(data2[22]),
        .I2(\out_reg[6]_i_5_n_5 ),
        .I3(\out_reg[6]_i_5_n_6 ),
        .I4(data2[21]),
        .I5(\out[7]_i_19_n_0 ),
        .O(\out[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_8 
       (.I0(reg_ext_mant_A[11]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[11]),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_9 
       (.I0(reg_ext_mant_A[10]),
        .I1(sum_mant1),
        .I2(reg_sign_B),
        .I3(reg_sign_A),
        .I4(reg_ext_mant_B[10]),
        .O(p_2_in[10]));
  FDCE \out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[0]_i_1_n_0 ),
        .Q(leds[0]));
  FDCE \out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[16]_i_1_n_0 ),
        .Q(fp_out[16]));
  FDCE \out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[17]_i_1_n_0 ),
        .Q(fp_out[17]));
  FDCE \out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[18]_i_1_n_0 ),
        .Q(fp_out[18]));
  FDCE \out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[19]_i_1_n_0 ),
        .Q(fp_out[19]));
  FDCE \out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[1]_i_1_n_0 ),
        .Q(leds[1]));
  FDCE \out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[20]_i_1_n_0 ),
        .Q(fp_out[20]));
  FDCE \out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[21]_i_1_n_0 ),
        .Q(fp_out[21]));
  FDCE \out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[22]_i_1_n_0 ),
        .Q(fp_out[22]));
  FDCE \out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[0]),
        .Q(fp_out[23]));
  FDCE \out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[1]),
        .Q(fp_out[24]));
  FDCE \out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[2]),
        .Q(fp_out[25]));
  FDCE \out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[3]),
        .Q(fp_out[26]));
  FDCE \out_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[4]),
        .Q(fp_out[27]));
  FDCE \out_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[5]),
        .Q(fp_out[28]));
  FDCE \out_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[29]_i_1_n_0 ),
        .Q(fp_out[29]));
  FDCE \out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[2]_i_1_n_0 ),
        .Q(leds[2]));
  FDCE \out_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_2[7]),
        .Q(fp_out[30]));
  FDCE \out_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(sign_out),
        .Q(fp_out[31]));
  FDCE \out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[3]_i_1_n_0 ),
        .Q(leds[3]));
  FDCE \out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[4]_i_1_n_0 ),
        .Q(leds[4]));
  FDCE \out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[5]_i_1_n_0 ),
        .Q(leds[5]));
  FDCE \out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[6]_i_1_n_0 ),
        .Q(leds[6]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[6]_i_2 
       (.CI(\out_reg[7]_i_7_n_0 ),
        .CO({\out_reg[6]_i_2_n_0 ,\out_reg[6]_i_2_n_1 ,\out_reg[6]_i_2_n_2 ,\out_reg[6]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[7:4]),
        .O(data2[9:6]),
        .S({\out[6]_i_10_n_0 ,\out[6]_i_11_n_0 ,\out[6]_i_12_n_0 ,\out[6]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[6]_i_5 
       (.CI(\out_reg[7]_i_6_n_0 ),
        .CO({\out_reg[6]_i_5_n_0 ,\out_reg[6]_i_5_n_1 ,\out_reg[6]_i_5_n_2 ,\out_reg[6]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[23:20]),
        .O({\out_reg[6]_i_5_n_4 ,\out_reg[6]_i_5_n_5 ,\out_reg[6]_i_5_n_6 ,data2[22]}),
        .S({\out[6]_i_20_n_0 ,\out[6]_i_21_n_0 ,\out[6]_i_22_n_0 ,\out[6]_i_23_n_0 }));
  FDCE \out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\out[7]_i_1_n_0 ),
        .Q(leds[7]));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_2 
       (.CI(\out_reg[6]_i_2_n_0 ),
        .CO({\out_reg[7]_i_2_n_0 ,\out_reg[7]_i_2_n_1 ,\out_reg[7]_i_2_n_2 ,\out_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[11:8]),
        .O(data2[13:10]),
        .S({\out[7]_i_12_n_0 ,\out[7]_i_13_n_0 ,\out[7]_i_14_n_0 ,\out[7]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_20 
       (.CI(\out_reg[7]_i_2_n_0 ),
        .CO({\out_reg[7]_i_20_n_0 ,\out_reg[7]_i_20_n_1 ,\out_reg[7]_i_20_n_2 ,\out_reg[7]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[15:12]),
        .O(data2[17:14]),
        .S({\out[7]_i_43_n_0 ,\out[7]_i_44_n_0 ,\out[7]_i_45_n_0 ,\out[7]_i_46_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_3 
       (.CI(\out_reg[6]_i_5_n_0 ),
        .CO(\NLW_out_reg[7]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_reg[7]_i_3_O_UNCONNECTED [3:1],\out_reg[7]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,\out[7]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_6 
       (.CI(\out_reg[7]_i_20_n_0 ),
        .CO({\out_reg[7]_i_6_n_0 ,\out_reg[7]_i_6_n_1 ,\out_reg[7]_i_6_n_2 ,\out_reg[7]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[19:16]),
        .O(data2[21:18]),
        .S({\out[7]_i_25_n_0 ,\out[7]_i_26_n_0 ,\out[7]_i_27_n_0 ,\out[7]_i_28_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_7 
       (.CI(1'b0),
        .CO({\out_reg[7]_i_7_n_0 ,\out_reg[7]_i_7_n_1 ,\out_reg[7]_i_7_n_2 ,\out_reg[7]_i_7_n_3 }),
        .CYINIT(\out[7]_i_29_n_0 ),
        .DI(p_2_in[3:0]),
        .O(data2[5:2]),
        .S({\out[7]_i_34_n_0 ,\out[7]_i_35_n_0 ,\out[7]_i_36_n_0 ,\out[7]_i_37_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \p_1_out_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\p_1_out_inferred__1/i__carry_n_0 ,\p_1_out_inferred__1/i__carry_n_1 ,\p_1_out_inferred__1/i__carry_n_2 ,\p_1_out_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI(reg_exp_out[3:0]),
        .O({\p_1_out_inferred__1/i__carry_n_4 ,\p_1_out_inferred__1/i__carry_n_5 ,\p_1_out_inferred__1/i__carry_n_6 ,\p_1_out_inferred__1/i__carry_n_7 }),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \p_1_out_inferred__1/i__carry__0 
       (.CI(\p_1_out_inferred__1/i__carry_n_0 ),
        .CO({\NLW_p_1_out_inferred__1/i__carry__0_CO_UNCONNECTED [3],\p_1_out_inferred__1/i__carry__0_n_1 ,\p_1_out_inferred__1/i__carry__0_n_2 ,\p_1_out_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,p_0_out,p_0_out,reg_exp_out[6]}),
        .O({\p_1_out_inferred__1/i__carry__0_n_4 ,\p_1_out_inferred__1/i__carry__0_n_5 ,\p_1_out_inferred__1/i__carry__0_n_6 ,\p_1_out_inferred__1/i__carry__0_n_7 }),
        .S({i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0,i__carry__0_i_5__0_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[0]_i_1 
       (.I0(exp_A[0]),
        .I1(exp_B[6]),
        .I2(exp_out_11),
        .O(exp_out_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[1]_i_1 
       (.I0(exp_A[1]),
        .I1(exp_B[1]),
        .I2(exp_out_11),
        .O(exp_out_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[2]_i_1 
       (.I0(exp_A[2]),
        .I1(exp_B[6]),
        .I2(exp_out_11),
        .O(exp_out_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[3]_i_1 
       (.I0(exp_A[3]),
        .I1(exp_B[3]),
        .I2(exp_out_11),
        .O(exp_out_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[5]_i_1 
       (.I0(exp_A[5]),
        .I1(exp_B[5]),
        .I2(exp_out_11),
        .O(exp_out_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[6]_i_1 
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_out_11),
        .O(exp_out_1[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_exp_out[7]_i_1 
       (.I0(exp_A[7]),
        .I1(exp_B[7]),
        .I2(exp_out_11),
        .O(exp_out_1[7]));
  FDCE \reg_exp_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[0]),
        .Q(reg_exp_out[0]));
  FDCE \reg_exp_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[1]),
        .Q(reg_exp_out[1]));
  FDCE \reg_exp_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[2]),
        .Q(reg_exp_out[2]));
  FDCE \reg_exp_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[3]),
        .Q(reg_exp_out[3]));
  FDCE \reg_exp_out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[5]),
        .Q(reg_exp_out[5]));
  FDCE \reg_exp_out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[6]),
        .Q(reg_exp_out[6]));
  FDCE \reg_exp_out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(exp_out_1[7]),
        .Q(reg_exp_out[7]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[0]_i_1 
       (.I0(p_0_in1_in[0]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[0]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[1]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[0]));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \reg_ext_mant_A[0]_i_2 
       (.I0(\reg_ext_mant_A[2]_i_3_n_0 ),
        .I1(ext_mant_A1[2]),
        .I2(\reg_ext_mant_A[2]_i_4_n_0 ),
        .I3(ext_mant_A1[1]),
        .I4(\reg_ext_mant_A[0]_i_3_n_0 ),
        .I5(\reg_ext_mant_A[0]_i_4_n_0 ),
        .O(\reg_ext_mant_A[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[0]_i_3 
       (.I0(p_0_in1_in[12]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[20]),
        .I3(ext_mant_A1[4]),
        .I4(p_0_in1_in[4]),
        .O(\reg_ext_mant_A[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[0]_i_4 
       (.I0(p_0_in1_in[8]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[16]),
        .I3(ext_mant_A1[4]),
        .I4(p_0_in1_in[0]),
        .O(\reg_ext_mant_A[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[10]_i_1 
       (.I0(p_0_in1_in[14]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[10]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[11]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[10]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[10]_i_2 
       (.I0(\reg_ext_mant_A[12]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[10]_i_3_n_0 ),
        .O(\reg_ext_mant_A[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \reg_ext_mant_A[10]_i_3 
       (.I0(p_0_in1_in[22]),
        .I1(ext_mant_A1[2]),
        .I2(p_0_in1_in[18]),
        .I3(ext_mant_A1[3]),
        .I4(p_0_in1_in[14]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[11]_i_1 
       (.I0(p_0_in1_in[11]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[11]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[12]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[11]_i_2 
       (.I0(\reg_ext_mant_A[13]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[11]_i_3_n_0 ),
        .O(\reg_ext_mant_A[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCBBFC88)) 
    \reg_ext_mant_A[11]_i_3 
       (.I0(p_0_in1_in[15]),
        .I1(ext_mant_A1[2]),
        .I2(p_0_in1_in[19]),
        .I3(ext_mant_A1[3]),
        .I4(p_0_in1_in[11]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[12]_i_1 
       (.I0(p_0_in1_in[12]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[12]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[13]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[12]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[12]_i_2 
       (.I0(\reg_ext_mant_A[14]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[12]_i_3_n_0 ),
        .O(\reg_ext_mant_A[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \reg_ext_mant_A[12]_i_3 
       (.I0(p_0_in1_in[16]),
        .I1(ext_mant_A1[2]),
        .I2(p_0_in1_in[20]),
        .I3(ext_mant_A1[3]),
        .I4(p_0_in1_in[12]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[13]_i_1 
       (.I0(p_0_in1_in[13]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[13]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[14]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[13]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[13]_i_2 
       (.I0(\reg_ext_mant_A[15]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[13]_i_3_n_0 ),
        .O(\reg_ext_mant_A[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \reg_ext_mant_A[13]_i_3 
       (.I0(p_0_in1_in[17]),
        .I1(ext_mant_A1[2]),
        .I2(p_0_in1_in[21]),
        .I3(ext_mant_A1[3]),
        .I4(p_0_in1_in[13]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[14]_i_1 
       (.I0(p_0_in1_in[14]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[14]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[15]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[14]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[14]_i_2 
       (.I0(\reg_ext_mant_A[16]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[14]_i_3_n_0 ),
        .O(\reg_ext_mant_A[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \reg_ext_mant_A[14]_i_3 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[2]),
        .I2(p_0_in1_in[22]),
        .I3(ext_mant_A1[3]),
        .I4(p_0_in1_in[14]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[15]_i_1 
       (.I0(p_0_in1_in[15]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[15]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[16]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[15]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[15]_i_2 
       (.I0(\reg_ext_mant_A[17]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[15]_i_3_n_0 ),
        .O(\reg_ext_mant_A[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00003B38)) 
    \reg_ext_mant_A[15]_i_3 
       (.I0(p_0_in1_in[19]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[3]),
        .I3(p_0_in1_in[15]),
        .I4(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[16]_i_1 
       (.I0(p_0_in1_in[16]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[16]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[17]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[16]_i_2 
       (.I0(\reg_ext_mant_A[18]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[16]_i_3_n_0 ),
        .O(\reg_ext_mant_A[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \reg_ext_mant_A[16]_i_3 
       (.I0(p_0_in1_in[20]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[4]),
        .I3(p_0_in1_in[16]),
        .I4(ext_mant_A1[3]),
        .O(\reg_ext_mant_A[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[17]_i_1 
       (.I0(p_0_in1_in[17]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[17]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[18]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[17]));
  LUT6 #(
    .INIT(64'h0032FFFF00320000)) 
    \reg_ext_mant_A[17]_i_2 
       (.I0(ext_mant_A1[2]),
        .I1(ext_mant_A1[4]),
        .I2(p_0_in1_in[19]),
        .I3(ext_mant_A1[3]),
        .I4(ext_mant_A1[1]),
        .I5(\reg_ext_mant_A[17]_i_3_n_0 ),
        .O(\reg_ext_mant_A[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \reg_ext_mant_A[17]_i_3 
       (.I0(p_0_in1_in[21]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[4]),
        .I3(p_0_in1_in[17]),
        .I4(ext_mant_A1[3]),
        .O(\reg_ext_mant_A[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[18]_i_1 
       (.I0(p_0_in1_in[18]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[18]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[19]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[18]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \reg_ext_mant_A[18]_i_2 
       (.I0(ext_mant_A1[3]),
        .I1(p_0_in1_in[20]),
        .I2(ext_mant_A1[4]),
        .I3(ext_mant_A1[2]),
        .I4(ext_mant_A1[1]),
        .I5(\reg_ext_mant_A[18]_i_3_n_0 ),
        .O(\reg_ext_mant_A[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \reg_ext_mant_A[18]_i_3 
       (.I0(p_0_in1_in[22]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[4]),
        .I3(p_0_in1_in[18]),
        .I4(ext_mant_A1[3]),
        .O(\reg_ext_mant_A[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[19]_i_1 
       (.I0(p_0_in1_in[19]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[19]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[20]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[19]));
  LUT6 #(
    .INIT(64'h00000000003B0038)) 
    \reg_ext_mant_A[19]_i_2 
       (.I0(p_0_in1_in[21]),
        .I1(ext_mant_A1[1]),
        .I2(ext_mant_A1[2]),
        .I3(ext_mant_A1[4]),
        .I4(p_0_in1_in[19]),
        .I5(ext_mant_A1[3]),
        .O(\reg_ext_mant_A[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[1]_i_1 
       (.I0(p_0_in1_in[14]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[1]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[2]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_ext_mant_A[1]_i_2 
       (.I0(\reg_ext_mant_A[3]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[1]_i_3_n_0 ),
        .I3(ext_mant_A1[2]),
        .I4(\reg_ext_mant_A[1]_i_4_n_0 ),
        .O(\reg_ext_mant_A[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[1]_i_3 
       (.I0(p_0_in1_in[13]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[21]),
        .I3(ext_mant_A1[4]),
        .I4(p_0_in1_in[5]),
        .O(\reg_ext_mant_A[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[1]_i_4 
       (.I0(p_1_in[22]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[17]),
        .I3(ext_mant_A1[4]),
        .I4(p_0_in1_in[14]),
        .O(\reg_ext_mant_A[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[20]_i_1 
       (.I0(p_0_in1_in[20]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[20]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[21]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[20]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \reg_ext_mant_A[20]_i_2 
       (.I0(p_0_in1_in[22]),
        .I1(ext_mant_A1[1]),
        .I2(ext_mant_A1[3]),
        .I3(p_0_in1_in[20]),
        .I4(ext_mant_A1[4]),
        .I5(ext_mant_A1[2]),
        .O(\reg_ext_mant_A[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[21]_i_1 
       (.I0(p_0_in1_in[21]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[21]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[22]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[21]));
  LUT5 #(
    .INIT(32'h00000032)) 
    \reg_ext_mant_A[21]_i_2 
       (.I0(ext_mant_A1[1]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[21]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .O(\reg_ext_mant_A[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[22]_i_1 
       (.I0(p_0_in1_in[22]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[22]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_B[23]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[22]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \reg_ext_mant_A[22]_i_2 
       (.I0(ext_mant_A1[2]),
        .I1(ext_mant_A1[4]),
        .I2(p_0_in1_in[22]),
        .I3(ext_mant_A1[3]),
        .I4(ext_mant_A1[1]),
        .O(\reg_ext_mant_A[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    \reg_ext_mant_A[23]_i_1 
       (.I0(\reg_ext_mant_B[23]_i_2_n_0 ),
        .I1(ext_mant_A1[0]),
        .I2(ext_mant_A1[7]),
        .I3(ext_mant_A1[5]),
        .I4(ext_mant_A1[6]),
        .I5(exp_out_11),
        .O(ext_mant_A[23]));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[2]_i_1 
       (.I0(p_1_in[4]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[2]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[3]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \reg_ext_mant_A[2]_i_2 
       (.I0(\reg_ext_mant_A[2]_i_3_n_0 ),
        .I1(ext_mant_A1[2]),
        .I2(\reg_ext_mant_A[2]_i_4_n_0 ),
        .I3(\reg_ext_mant_A[4]_i_3_n_0 ),
        .I4(ext_mant_A1[1]),
        .O(\reg_ext_mant_A[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[2]_i_3 
       (.I0(p_0_in1_in[14]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[22]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[17]),
        .O(\reg_ext_mant_A[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[2]_i_4 
       (.I0(p_0_in1_in[14]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[18]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[4]),
        .O(\reg_ext_mant_A[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[3]_i_1 
       (.I0(p_1_in[21]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[3]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[4]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[3]_i_2 
       (.I0(\reg_ext_mant_A[5]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[3]_i_3_n_0 ),
        .O(\reg_ext_mant_A[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33B8FFFF33B80000)) 
    \reg_ext_mant_A[3]_i_3 
       (.I0(p_0_in1_in[15]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[21]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[3]_i_4_n_0 ),
        .O(\reg_ext_mant_A[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_A[3]_i_4 
       (.I0(p_0_in1_in[11]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[19]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[21]),
        .O(\reg_ext_mant_A[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[4]_i_1 
       (.I0(p_0_in1_in[4]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[4]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[5]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[4]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[4]_i_2 
       (.I0(\reg_ext_mant_A[6]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[4]_i_3_n_0 ),
        .O(\reg_ext_mant_A[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_A[4]_i_3 
       (.I0(p_0_in1_in[16]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[8]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[0]_i_3_n_0 ),
        .O(\reg_ext_mant_A[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[5]_i_1 
       (.I0(p_0_in1_in[5]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[5]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[6]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[5]_i_2 
       (.I0(\reg_ext_mant_A[7]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[5]_i_3_n_0 ),
        .O(\reg_ext_mant_A[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_A[5]_i_3 
       (.I0(p_0_in1_in[17]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[22]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[1]_i_3_n_0 ),
        .O(\reg_ext_mant_A[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[6]_i_1 
       (.I0(p_1_in[17]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[6]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[7]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[6]_i_2 
       (.I0(\reg_ext_mant_A[8]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[6]_i_3_n_0 ),
        .O(\reg_ext_mant_A[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_A[6]_i_3 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[14]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[2]_i_3_n_0 ),
        .O(\reg_ext_mant_A[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[7]_i_1 
       (.I0(p_1_in[21]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[7]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[8]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[7]_i_2 
       (.I0(\reg_ext_mant_A[9]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[7]_i_3_n_0 ),
        .O(\reg_ext_mant_A[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_A[7]_i_3 
       (.I0(p_0_in1_in[19]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[11]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[7]_i_4_n_0 ),
        .O(\reg_ext_mant_A[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h33B8)) 
    \reg_ext_mant_A[7]_i_4 
       (.I0(p_0_in1_in[15]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[21]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[8]_i_1 
       (.I0(p_0_in1_in[8]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[8]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[9]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[8]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[8]_i_2 
       (.I0(\reg_ext_mant_A[10]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[8]_i_3_n_0 ),
        .O(\reg_ext_mant_A[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_A[8]_i_3 
       (.I0(p_0_in1_in[20]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[12]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[8]_i_4_n_0 ),
        .O(\reg_ext_mant_A[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \reg_ext_mant_A[8]_i_4 
       (.I0(p_0_in1_in[16]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[8]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCC000C0)) 
    \reg_ext_mant_A[9]_i_1 
       (.I0(p_1_in[22]),
        .I1(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I2(\reg_ext_mant_A[9]_i_2_n_0 ),
        .I3(ext_mant_A1[0]),
        .I4(\reg_ext_mant_A[10]_i_2_n_0 ),
        .I5(exp_out_11),
        .O(ext_mant_A[9]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_A[9]_i_2 
       (.I0(\reg_ext_mant_A[11]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_A[9]_i_3_n_0 ),
        .O(\reg_ext_mant_A[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_A[9]_i_3 
       (.I0(p_0_in1_in[21]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[13]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_A[9]_i_4_n_0 ),
        .O(\reg_ext_mant_A[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \reg_ext_mant_A[9]_i_4 
       (.I0(p_0_in1_in[17]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[22]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_A[9]_i_4_n_0 ));
  FDCE \reg_ext_mant_A_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[0]),
        .Q(reg_ext_mant_A[0]));
  FDCE \reg_ext_mant_A_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[10]),
        .Q(reg_ext_mant_A[10]));
  FDCE \reg_ext_mant_A_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[11]),
        .Q(reg_ext_mant_A[11]));
  FDCE \reg_ext_mant_A_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[12]),
        .Q(reg_ext_mant_A[12]));
  FDCE \reg_ext_mant_A_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[13]),
        .Q(reg_ext_mant_A[13]));
  FDCE \reg_ext_mant_A_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[14]),
        .Q(reg_ext_mant_A[14]));
  FDCE \reg_ext_mant_A_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[15]),
        .Q(reg_ext_mant_A[15]));
  FDCE \reg_ext_mant_A_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[16]),
        .Q(reg_ext_mant_A[16]));
  FDCE \reg_ext_mant_A_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[17]),
        .Q(reg_ext_mant_A[17]));
  FDCE \reg_ext_mant_A_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[18]),
        .Q(reg_ext_mant_A[18]));
  FDCE \reg_ext_mant_A_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[19]),
        .Q(reg_ext_mant_A[19]));
  FDCE \reg_ext_mant_A_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[1]),
        .Q(reg_ext_mant_A[1]));
  FDCE \reg_ext_mant_A_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[20]),
        .Q(reg_ext_mant_A[20]));
  FDCE \reg_ext_mant_A_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[21]),
        .Q(reg_ext_mant_A[21]));
  FDCE \reg_ext_mant_A_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[22]),
        .Q(reg_ext_mant_A[22]));
  FDCE \reg_ext_mant_A_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[23]),
        .Q(reg_ext_mant_A[23]));
  FDCE \reg_ext_mant_A_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[2]),
        .Q(reg_ext_mant_A[2]));
  FDCE \reg_ext_mant_A_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[3]),
        .Q(reg_ext_mant_A[3]));
  FDCE \reg_ext_mant_A_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[4]),
        .Q(reg_ext_mant_A[4]));
  FDCE \reg_ext_mant_A_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[5]),
        .Q(reg_ext_mant_A[5]));
  FDCE \reg_ext_mant_A_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[6]),
        .Q(reg_ext_mant_A[6]));
  FDCE \reg_ext_mant_A_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[7]),
        .Q(reg_ext_mant_A[7]));
  FDCE \reg_ext_mant_A_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[8]),
        .Q(reg_ext_mant_A[8]));
  FDCE \reg_ext_mant_A_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_A[9]),
        .Q(reg_ext_mant_A[9]));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[0]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[0]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[1]_i_2_n_0 ),
        .I4(p_1_in[19]),
        .I5(exp_out_11),
        .O(ext_mant_B[0]));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \reg_ext_mant_B[0]_i_2 
       (.I0(\reg_ext_mant_B[2]_i_3_n_0 ),
        .I1(ext_mant_A1[2]),
        .I2(\reg_ext_mant_B[2]_i_4_n_0 ),
        .I3(ext_mant_A1[1]),
        .I4(\reg_ext_mant_B[0]_i_3_n_0 ),
        .I5(\reg_ext_mant_B[0]_i_4_n_0 ),
        .O(\reg_ext_mant_B[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_B[0]_i_3 
       (.I0(p_1_in[12]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[20]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[4]),
        .O(\reg_ext_mant_B[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_B[0]_i_4 
       (.I0(p_0_in1_in[8]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[16]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[19]),
        .O(\reg_ext_mant_B[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[10]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[10]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[11]_i_2_n_0 ),
        .I4(p_1_in[10]),
        .I5(exp_out_11),
        .O(ext_mant_B[10]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[10]_i_2 
       (.I0(\reg_ext_mant_B[12]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[10]_i_3_n_0 ),
        .O(\reg_ext_mant_B[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[10]_i_3 
       (.I0(p_1_in[22]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[14]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[10]_i_4_n_0 ),
        .O(\reg_ext_mant_B[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \reg_ext_mant_B[10]_i_4 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[10]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[11]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[11]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[12]_i_2_n_0 ),
        .I4(p_1_in[11]),
        .I5(exp_out_11),
        .O(ext_mant_B[11]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[11]_i_2 
       (.I0(\reg_ext_mant_B[13]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[11]_i_3_n_0 ),
        .O(\reg_ext_mant_B[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCBBFC88)) 
    \reg_ext_mant_B[11]_i_3 
       (.I0(p_1_in[15]),
        .I1(ext_mant_A1[2]),
        .I2(p_1_in[19]),
        .I3(ext_mant_A1[3]),
        .I4(p_1_in[11]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[12]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[12]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[13]_i_2_n_0 ),
        .I4(p_1_in[12]),
        .I5(exp_out_11),
        .O(ext_mant_B[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[12]_i_2 
       (.I0(\reg_ext_mant_B[14]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[12]_i_3_n_0 ),
        .O(\reg_ext_mant_B[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \reg_ext_mant_B[12]_i_3 
       (.I0(p_1_in[16]),
        .I1(ext_mant_A1[2]),
        .I2(p_0_in1_in[20]),
        .I3(ext_mant_A1[3]),
        .I4(p_1_in[12]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[13]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[13]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[14]_i_2_n_0 ),
        .I4(p_1_in[13]),
        .I5(exp_out_11),
        .O(ext_mant_B[13]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[13]_i_2 
       (.I0(\reg_ext_mant_B[15]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[13]_i_3_n_0 ),
        .O(\reg_ext_mant_B[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \reg_ext_mant_B[13]_i_3 
       (.I0(p_1_in[17]),
        .I1(ext_mant_A1[2]),
        .I2(p_1_in[21]),
        .I3(ext_mant_A1[3]),
        .I4(p_1_in[13]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[14]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[14]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[15]_i_2_n_0 ),
        .I4(p_1_in[14]),
        .I5(exp_out_11),
        .O(ext_mant_B[14]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[14]_i_2 
       (.I0(\reg_ext_mant_B[16]_i_5_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[14]_i_3_n_0 ),
        .O(\reg_ext_mant_B[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \reg_ext_mant_B[14]_i_3 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[2]),
        .I2(p_1_in[22]),
        .I3(ext_mant_A1[3]),
        .I4(p_1_in[14]),
        .I5(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[15]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[15]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[16]_i_2_n_0 ),
        .I4(p_1_in[15]),
        .I5(exp_out_11),
        .O(ext_mant_B[15]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[15]_i_2 
       (.I0(\reg_ext_mant_B[17]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[15]_i_3_n_0 ),
        .O(\reg_ext_mant_B[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00003B38)) 
    \reg_ext_mant_B[15]_i_3 
       (.I0(p_1_in[19]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[3]),
        .I3(p_1_in[15]),
        .I4(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[16]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[16]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[17]_i_2_n_0 ),
        .I4(p_1_in[16]),
        .I5(exp_out_11),
        .O(ext_mant_B[16]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[16]_i_2 
       (.I0(\reg_ext_mant_B[16]_i_3_n_0 ),
        .I1(ext_mant_A1[2]),
        .I2(\reg_ext_mant_B[16]_i_4_n_0 ),
        .I3(ext_mant_A1[3]),
        .I4(ext_mant_A1[1]),
        .I5(\reg_ext_mant_B[16]_i_5_n_0 ),
        .O(\reg_ext_mant_B[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_ext_mant_B[16]_i_3 
       (.I0(p_1_in[22]),
        .I1(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \reg_ext_mant_B[16]_i_4 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \reg_ext_mant_B[16]_i_5 
       (.I0(p_0_in1_in[20]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[4]),
        .I3(p_1_in[16]),
        .I4(ext_mant_A1[3]),
        .O(\reg_ext_mant_B[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[17]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[17]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[18]_i_2_n_0 ),
        .I4(p_1_in[17]),
        .I5(exp_out_11),
        .O(ext_mant_B[17]));
  LUT6 #(
    .INIT(64'h0032FFFF00320000)) 
    \reg_ext_mant_B[17]_i_2 
       (.I0(ext_mant_A1[2]),
        .I1(ext_mant_A1[4]),
        .I2(p_1_in[19]),
        .I3(ext_mant_A1[3]),
        .I4(ext_mant_A1[1]),
        .I5(\reg_ext_mant_B[17]_i_3_n_0 ),
        .O(\reg_ext_mant_B[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \reg_ext_mant_B[17]_i_3 
       (.I0(p_1_in[21]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[4]),
        .I3(p_1_in[17]),
        .I4(ext_mant_A1[3]),
        .O(\reg_ext_mant_B[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[18]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[18]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[19]_i_2_n_0 ),
        .I4(p_0_in1_in[18]),
        .I5(exp_out_11),
        .O(ext_mant_B[18]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \reg_ext_mant_B[18]_i_2 
       (.I0(ext_mant_A1[3]),
        .I1(p_0_in1_in[20]),
        .I2(ext_mant_A1[4]),
        .I3(ext_mant_A1[2]),
        .I4(ext_mant_A1[1]),
        .I5(\reg_ext_mant_B[18]_i_3_n_0 ),
        .O(\reg_ext_mant_B[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \reg_ext_mant_B[18]_i_3 
       (.I0(p_1_in[22]),
        .I1(ext_mant_A1[2]),
        .I2(ext_mant_A1[4]),
        .I3(p_0_in1_in[18]),
        .I4(ext_mant_A1[3]),
        .O(\reg_ext_mant_B[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[19]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[19]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[20]_i_2_n_0 ),
        .I4(p_1_in[19]),
        .I5(exp_out_11),
        .O(ext_mant_B[19]));
  LUT6 #(
    .INIT(64'h00000000003B0038)) 
    \reg_ext_mant_B[19]_i_2 
       (.I0(p_1_in[21]),
        .I1(ext_mant_A1[1]),
        .I2(ext_mant_A1[2]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[19]),
        .I5(ext_mant_A1[3]),
        .O(\reg_ext_mant_B[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[1]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[1]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[2]_i_2_n_0 ),
        .I4(p_0_in1_in[16]),
        .I5(exp_out_11),
        .O(ext_mant_B[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \reg_ext_mant_B[1]_i_2 
       (.I0(\reg_ext_mant_B[3]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[1]_i_3_n_0 ),
        .I3(ext_mant_A1[2]),
        .I4(\reg_ext_mant_B[1]_i_4_n_0 ),
        .O(\reg_ext_mant_B[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3808)) 
    \reg_ext_mant_B[1]_i_3 
       (.I0(p_1_in[13]),
        .I1(ext_mant_A1[3]),
        .I2(ext_mant_A1[4]),
        .I3(p_1_in[21]),
        .O(\reg_ext_mant_B[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_B[1]_i_4 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[17]),
        .I3(ext_mant_A1[4]),
        .I4(p_0_in1_in[16]),
        .O(\reg_ext_mant_B[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[20]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[20]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[21]_i_2_n_0 ),
        .I4(p_0_in1_in[20]),
        .I5(exp_out_11),
        .O(ext_mant_B[20]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \reg_ext_mant_B[20]_i_2 
       (.I0(p_1_in[22]),
        .I1(ext_mant_A1[1]),
        .I2(ext_mant_A1[3]),
        .I3(p_0_in1_in[20]),
        .I4(ext_mant_A1[4]),
        .I5(ext_mant_A1[2]),
        .O(\reg_ext_mant_B[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[21]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[21]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[22]_i_3_n_0 ),
        .I4(p_1_in[21]),
        .I5(exp_out_11),
        .O(ext_mant_B[21]));
  LUT5 #(
    .INIT(32'h00000032)) 
    \reg_ext_mant_B[21]_i_2 
       (.I0(ext_mant_A1[1]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[21]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .O(\reg_ext_mant_B[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[22]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[22]_i_3_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[23]_i_2_n_0 ),
        .I4(p_1_in[22]),
        .I5(exp_out_11),
        .O(ext_mant_B[22]));
  LUT3 #(
    .INIT(8'h01)) 
    \reg_ext_mant_B[22]_i_2 
       (.I0(ext_mant_A1[7]),
        .I1(ext_mant_A1[5]),
        .I2(ext_mant_A1[6]),
        .O(\reg_ext_mant_B[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \reg_ext_mant_B[22]_i_3 
       (.I0(ext_mant_A1[2]),
        .I1(ext_mant_A1[4]),
        .I2(p_1_in[22]),
        .I3(ext_mant_A1[3]),
        .I4(ext_mant_A1[1]),
        .O(\reg_ext_mant_B[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \reg_ext_mant_B[23]_i_1 
       (.I0(\reg_ext_mant_B[23]_i_2_n_0 ),
        .I1(ext_mant_A1[0]),
        .I2(ext_mant_A1[7]),
        .I3(ext_mant_A1[5]),
        .I4(ext_mant_A1[6]),
        .I5(exp_out_11),
        .O(ext_mant_B[23]));
  LUT4 #(
    .INIT(16'h9009)) 
    \reg_ext_mant_B[23]_i_10 
       (.I0(exp_A[2]),
        .I1(exp_B[6]),
        .I2(exp_A[3]),
        .I3(exp_B[3]),
        .O(\reg_ext_mant_B[23]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \reg_ext_mant_B[23]_i_11 
       (.I0(exp_A[0]),
        .I1(exp_B[6]),
        .I2(exp_A[1]),
        .I3(exp_B[1]),
        .O(\reg_ext_mant_B[23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \reg_ext_mant_B[23]_i_2 
       (.I0(ext_mant_A1[2]),
        .I1(ext_mant_A1[4]),
        .I2(ext_mant_A1[3]),
        .I3(ext_mant_A1[1]),
        .O(\reg_ext_mant_B[23]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \reg_ext_mant_B[23]_i_4 
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_B[7]),
        .I3(exp_A[7]),
        .O(\reg_ext_mant_B[23]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \reg_ext_mant_B[23]_i_5 
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_B[5]),
        .I3(exp_A[5]),
        .O(\reg_ext_mant_B[23]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \reg_ext_mant_B[23]_i_6 
       (.I0(exp_A[2]),
        .I1(exp_B[6]),
        .I2(exp_B[3]),
        .I3(exp_A[3]),
        .O(\reg_ext_mant_B[23]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \reg_ext_mant_B[23]_i_7 
       (.I0(exp_A[0]),
        .I1(exp_B[6]),
        .I2(exp_B[1]),
        .I3(exp_A[1]),
        .O(\reg_ext_mant_B[23]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \reg_ext_mant_B[23]_i_8 
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_A[7]),
        .I3(exp_B[7]),
        .O(\reg_ext_mant_B[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \reg_ext_mant_B[23]_i_9 
       (.I0(exp_A[6]),
        .I1(exp_B[6]),
        .I2(exp_A[5]),
        .I3(exp_B[5]),
        .O(\reg_ext_mant_B[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[2]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[2]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[3]_i_2_n_0 ),
        .I4(p_1_in[2]),
        .I5(exp_out_11),
        .O(ext_mant_B[2]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \reg_ext_mant_B[2]_i_2 
       (.I0(\reg_ext_mant_B[2]_i_3_n_0 ),
        .I1(ext_mant_A1[2]),
        .I2(\reg_ext_mant_B[2]_i_4_n_0 ),
        .I3(\reg_ext_mant_B[4]_i_3_n_0 ),
        .I4(ext_mant_A1[1]),
        .O(\reg_ext_mant_B[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_B[2]_i_3 
       (.I0(p_1_in[14]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[22]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[19]),
        .O(\reg_ext_mant_B[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_B[2]_i_4 
       (.I0(p_1_in[10]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[18]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[2]),
        .O(\reg_ext_mant_B[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[3]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[3]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[4]_i_2_n_0 ),
        .I4(p_1_in[21]),
        .I5(exp_out_11),
        .O(ext_mant_B[3]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[3]_i_2 
       (.I0(\reg_ext_mant_B[5]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[3]_i_3_n_0 ),
        .O(\reg_ext_mant_B[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33B8FFFF33B80000)) 
    \reg_ext_mant_B[3]_i_3 
       (.I0(p_1_in[15]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[21]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[3]_i_4_n_0 ),
        .O(\reg_ext_mant_B[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \reg_ext_mant_B[3]_i_4 
       (.I0(p_1_in[11]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[19]),
        .I3(ext_mant_A1[4]),
        .I4(p_1_in[21]),
        .O(\reg_ext_mant_B[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[4]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[4]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[5]_i_2_n_0 ),
        .I4(p_1_in[4]),
        .I5(exp_out_11),
        .O(ext_mant_B[4]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[4]_i_2 
       (.I0(\reg_ext_mant_B[6]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[4]_i_3_n_0 ),
        .O(\reg_ext_mant_B[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[4]_i_3 
       (.I0(p_1_in[16]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[8]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[0]_i_3_n_0 ),
        .O(\reg_ext_mant_B[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8000000)) 
    \reg_ext_mant_B[5]_i_1 
       (.I0(\reg_ext_mant_B[6]_i_2_n_0 ),
        .I1(ext_mant_A1[0]),
        .I2(\reg_ext_mant_B[5]_i_2_n_0 ),
        .I3(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I4(exp_out_11),
        .O(\reg_ext_mant_B[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[5]_i_2 
       (.I0(\reg_ext_mant_B[7]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[5]_i_3_n_0 ),
        .O(\reg_ext_mant_B[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[5]_i_3 
       (.I0(p_1_in[17]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[18]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[1]_i_3_n_0 ),
        .O(\reg_ext_mant_B[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[6]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[6]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[7]_i_2_n_0 ),
        .I4(p_1_in[19]),
        .I5(exp_out_11),
        .O(ext_mant_B[6]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[6]_i_2 
       (.I0(\reg_ext_mant_B[8]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[6]_i_3_n_0 ),
        .O(\reg_ext_mant_B[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[6]_i_3 
       (.I0(p_0_in1_in[18]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[10]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[2]_i_3_n_0 ),
        .O(\reg_ext_mant_B[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[7]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[7]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[8]_i_2_n_0 ),
        .I4(p_1_in[21]),
        .I5(exp_out_11),
        .O(ext_mant_B[7]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[7]_i_2 
       (.I0(\reg_ext_mant_B[9]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[7]_i_3_n_0 ),
        .O(\reg_ext_mant_B[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[7]_i_3 
       (.I0(p_1_in[19]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[11]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[7]_i_4_n_0 ),
        .O(\reg_ext_mant_B[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h33B8)) 
    \reg_ext_mant_B[7]_i_4 
       (.I0(p_1_in[15]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[21]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[8]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[8]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[9]_i_2_n_0 ),
        .I4(p_0_in1_in[8]),
        .I5(exp_out_11),
        .O(ext_mant_B[8]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[8]_i_2 
       (.I0(\reg_ext_mant_B[10]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[8]_i_3_n_0 ),
        .O(\reg_ext_mant_B[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[8]_i_3 
       (.I0(p_0_in1_in[20]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[12]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[8]_i_4_n_0 ),
        .O(\reg_ext_mant_B[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \reg_ext_mant_B[8]_i_4 
       (.I0(p_1_in[16]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[8]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA808A808FFFF0000)) 
    \reg_ext_mant_B[9]_i_1 
       (.I0(\reg_ext_mant_B[22]_i_2_n_0 ),
        .I1(\reg_ext_mant_B[9]_i_2_n_0 ),
        .I2(ext_mant_A1[0]),
        .I3(\reg_ext_mant_B[10]_i_2_n_0 ),
        .I4(p_0_in1_in[18]),
        .I5(exp_out_11),
        .O(ext_mant_B[9]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \reg_ext_mant_B[9]_i_2 
       (.I0(\reg_ext_mant_B[11]_i_3_n_0 ),
        .I1(ext_mant_A1[1]),
        .I2(\reg_ext_mant_B[9]_i_3_n_0 ),
        .O(\reg_ext_mant_B[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \reg_ext_mant_B[9]_i_3 
       (.I0(p_1_in[21]),
        .I1(ext_mant_A1[3]),
        .I2(p_1_in[13]),
        .I3(ext_mant_A1[4]),
        .I4(ext_mant_A1[2]),
        .I5(\reg_ext_mant_B[9]_i_4_n_0 ),
        .O(\reg_ext_mant_B[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \reg_ext_mant_B[9]_i_4 
       (.I0(p_1_in[17]),
        .I1(ext_mant_A1[3]),
        .I2(p_0_in1_in[18]),
        .I3(ext_mant_A1[4]),
        .O(\reg_ext_mant_B[9]_i_4_n_0 ));
  FDCE \reg_ext_mant_B_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[0]),
        .Q(reg_ext_mant_B[0]));
  FDCE \reg_ext_mant_B_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[10]),
        .Q(reg_ext_mant_B[10]));
  FDCE \reg_ext_mant_B_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[11]),
        .Q(reg_ext_mant_B[11]));
  FDCE \reg_ext_mant_B_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[12]),
        .Q(reg_ext_mant_B[12]));
  FDCE \reg_ext_mant_B_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[13]),
        .Q(reg_ext_mant_B[13]));
  FDCE \reg_ext_mant_B_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[14]),
        .Q(reg_ext_mant_B[14]));
  FDCE \reg_ext_mant_B_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[15]),
        .Q(reg_ext_mant_B[15]));
  FDCE \reg_ext_mant_B_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[16]),
        .Q(reg_ext_mant_B[16]));
  FDCE \reg_ext_mant_B_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[17]),
        .Q(reg_ext_mant_B[17]));
  FDCE \reg_ext_mant_B_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[18]),
        .Q(reg_ext_mant_B[18]));
  FDCE \reg_ext_mant_B_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[19]),
        .Q(reg_ext_mant_B[19]));
  FDCE \reg_ext_mant_B_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[1]),
        .Q(reg_ext_mant_B[1]));
  FDCE \reg_ext_mant_B_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[20]),
        .Q(reg_ext_mant_B[20]));
  FDCE \reg_ext_mant_B_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[21]),
        .Q(reg_ext_mant_B[21]));
  FDCE \reg_ext_mant_B_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[22]),
        .Q(reg_ext_mant_B[22]));
  FDCE \reg_ext_mant_B_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[23]),
        .Q(reg_ext_mant_B[23]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \reg_ext_mant_B_reg[23]_i_3 
       (.CI(1'b0),
        .CO({exp_out_11,\reg_ext_mant_B_reg[23]_i_3_n_1 ,\reg_ext_mant_B_reg[23]_i_3_n_2 ,\reg_ext_mant_B_reg[23]_i_3_n_3 }),
        .CYINIT(1'b1),
        .DI({\reg_ext_mant_B[23]_i_4_n_0 ,\reg_ext_mant_B[23]_i_5_n_0 ,\reg_ext_mant_B[23]_i_6_n_0 ,\reg_ext_mant_B[23]_i_7_n_0 }),
        .O(\NLW_reg_ext_mant_B_reg[23]_i_3_O_UNCONNECTED [3:0]),
        .S({\reg_ext_mant_B[23]_i_8_n_0 ,\reg_ext_mant_B[23]_i_9_n_0 ,\reg_ext_mant_B[23]_i_10_n_0 ,\reg_ext_mant_B[23]_i_11_n_0 }));
  FDCE \reg_ext_mant_B_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[2]),
        .Q(reg_ext_mant_B[2]));
  FDCE \reg_ext_mant_B_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[3]),
        .Q(reg_ext_mant_B[3]));
  FDCE \reg_ext_mant_B_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[4]),
        .Q(reg_ext_mant_B[4]));
  FDCE \reg_ext_mant_B_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(\reg_ext_mant_B[5]_i_1_n_0 ),
        .Q(reg_ext_mant_B[5]));
  FDCE \reg_ext_mant_B_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[6]),
        .Q(reg_ext_mant_B[6]));
  FDCE \reg_ext_mant_B_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[7]),
        .Q(reg_ext_mant_B[7]));
  FDCE \reg_ext_mant_B_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[8]),
        .Q(reg_ext_mant_B[8]));
  FDCE \reg_ext_mant_B_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(ext_mant_B[9]),
        .Q(reg_ext_mant_B[9]));
  FDCE reg_sign_A_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(sign_A),
        .Q(reg_sign_A));
  FDCE reg_sign_B_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(\out_reg[0]_0 ),
        .D(sign_B),
        .Q(reg_sign_B));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sum_mant1_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\sum_mant1_inferred__0/i__carry_n_0 ,\sum_mant1_inferred__0/i__carry_n_1 ,\sum_mant1_inferred__0/i__carry_n_2 ,\sum_mant1_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}),
        .O(\NLW_sum_mant1_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sum_mant1_inferred__0/i__carry__0 
       (.CI(\sum_mant1_inferred__0/i__carry_n_0 ),
        .CO({\sum_mant1_inferred__0/i__carry__0_n_0 ,\sum_mant1_inferred__0/i__carry__0_n_1 ,\sum_mant1_inferred__0/i__carry__0_n_2 ,\sum_mant1_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}),
        .O(\NLW_sum_mant1_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0,i__carry__0_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \sum_mant1_inferred__0/i__carry__1 
       (.CI(\sum_mant1_inferred__0/i__carry__0_n_0 ),
        .CO({sum_mant1,\sum_mant1_inferred__0/i__carry__1_n_1 ,\sum_mant1_inferred__0/i__carry__1_n_2 ,\sum_mant1_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}),
        .O(\NLW_sum_mant1_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({i__carry__1_i_5_n_0,i__carry__1_i_6_n_0,i__carry__1_i_7_n_0,i__carry__1_i_8_n_0}));
endmodule

(* ORIG_REF_NAME = "fpadd_ip_v1_0" *) 
module design_1_fpadd_ip_0_3_fpadd_ip_v1_0
   (d0,
    d1,
    leds,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    an0,
    an1,
    f0,
    a0,
    e0,
    c0,
    b0,
    f1,
    a1,
    e1,
    c1,
    b1,
    g0,
    g1,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output d0;
  output d1;
  output [7:0]leds;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output an0;
  output an1;
  output f0;
  output a0;
  output e0;
  output c0;
  output b0;
  output f1;
  output a1;
  output e1;
  output c1;
  output b1;
  output g0;
  output g1;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire a0;
  wire a1;
  wire an0;
  wire an1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI fpadd_ip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .a0(a0),
        .a1(a1),
        .an0(an0),
        .an1(an1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "fpadd_ip_v1_0_S00_AXI" *) 
module design_1_fpadd_ip_0_3_fpadd_ip_v1_0_S00_AXI
   (d0,
    d1,
    leds,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    an0,
    an1,
    f0,
    a0,
    e0,
    c0,
    b0,
    f1,
    a1,
    e1,
    c1,
    b1,
    g0,
    g1,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output d0;
  output d1;
  output [7:0]leds;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output an0;
  output an1;
  output f0;
  output a0;
  output e0;
  output c0;
  output b0;
  output f1;
  output a1;
  output e1;
  output c1;
  output b1;
  output g0;
  output g1;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire a0;
  wire a1;
  wire an0;
  wire an1;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:1]slv_reg0;
  wire \slv_reg0_reg_n_0_[0] ;
  wire [31:1]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire \slv_reg1_reg_n_0_[0] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(\slv_reg1_reg_n_0_[0] ),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg0[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg0[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg0[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg0[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg0[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg0[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg0[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg0[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg0[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg0[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg0[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg0[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg0[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg0[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg0[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg0[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg0[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg0[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg0[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg0[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg0[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg0[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg0[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg0[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg0[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg0[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg0[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg0[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg0[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg0[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg0[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  design_1_fpadd_ip_0_3_fpadd_system fpadd_system_inst
       (.Q(\slv_reg0_reg_n_0_[0] ),
        .a0(a0),
        .a1(a1),
        .an0(an0),
        .an1(an1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .\out_reg[0] (\slv_reg1_reg_n_0_[0] ),
        .s00_axi_aclk(s00_axi_aclk));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg0[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg0[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg0[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg0[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg0[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg0[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg0[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg0[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg0[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg0[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg0[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg0[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg0[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg0[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "fpadd_system" *) 
module design_1_fpadd_ip_0_3_fpadd_system
   (d0,
    d1,
    an0,
    an1,
    f0,
    a0,
    e0,
    c0,
    b0,
    f1,
    a1,
    e1,
    c1,
    b1,
    g0,
    g1,
    leds,
    Q,
    s00_axi_aclk,
    \out_reg[0] );
  output d0;
  output d1;
  output an0;
  output an1;
  output f0;
  output a0;
  output e0;
  output c0;
  output b0;
  output f1;
  output a1;
  output e1;
  output c1;
  output b1;
  output g0;
  output g1;
  output [7:0]leds;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]\out_reg[0] ;

  wire FSM_state;
  wire FSM_state_0;
  wire [0:0]Q;
  wire a0;
  wire a1;
  wire an0;
  wire an1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire [0:0]\out_reg[0] ;
  wire pulse;
  wire [31:0]reg_A;
  wire [31:2]reg_B;
  wire s00_axi_aclk;
  wire switch;

  design_1_fpadd_ip_0_3_L2P L2P_inst
       (.E(pulse),
        .Q(Q),
        .last_state_reg_0(\out_reg[0] ),
        .s00_axi_aclk(s00_axi_aclk));
  design_1_fpadd_ip_0_3_SevenSegDisplay SSD0
       (.FSM_state(FSM_state),
        .FSM_state_reg_0(\out_reg[0] ),
        .an0(an0),
        .s00_axi_aclk(s00_axi_aclk),
        .switch(switch));
  design_1_fpadd_ip_0_3_SevenSegDisplay_0 SSD1
       (.FSM_state(FSM_state_0),
        .FSM_state_reg_0(\out_reg[0] ),
        .an1(an1),
        .s00_axi_aclk(s00_axi_aclk),
        .switch(switch));
  design_1_fpadd_ip_0_3_DataMemory data_mem_inst
       (.E(pulse),
        .reg_A({reg_A[31:28],reg_A[26:11],reg_A[8],reg_A[5:4],reg_A[0]}),
        .reg_B({reg_B[31:28],reg_B[26],reg_B[24],reg_B[22:21],reg_B[19],reg_B[17:10],reg_B[4],reg_B[2]}),
        .\reg_B_reg[2]_0 (\out_reg[0] ),
        .s00_axi_aclk(s00_axi_aclk));
  design_1_fpadd_ip_0_3_fpadd fpadd_inst
       (.FSM_state(FSM_state),
        .FSM_state_0(FSM_state_0),
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .\out_reg[0]_0 (\out_reg[0] ),
        .reg_A({reg_A[31:28],reg_A[26:11],reg_A[8],reg_A[5:4],reg_A[0]}),
        .reg_B({reg_B[31:28],reg_B[26],reg_B[24],reg_B[22:21],reg_B[19],reg_B[17:10],reg_B[4],reg_B[2]}),
        .s00_axi_aclk(s00_axi_aclk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
