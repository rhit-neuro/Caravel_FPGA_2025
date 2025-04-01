// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar 31 17:57:45 2025
// Host        : archlinux running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bram_sim_netlist.v
// Design      : bram
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bram,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "bram.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27952)
`pragma protect data_block
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
CJB1zwxUqeWWuwB/VHHJtlUCoUGQEg==
`pragma protect end_protected
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
