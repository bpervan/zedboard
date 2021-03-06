// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module zbroji_top (
aclk,
aresetn,
s_axi_HLS_ZBROJI_PERIPH_BUS_AWADDR,
s_axi_HLS_ZBROJI_PERIPH_BUS_AWVALID,
s_axi_HLS_ZBROJI_PERIPH_BUS_AWREADY,
s_axi_HLS_ZBROJI_PERIPH_BUS_WDATA,
s_axi_HLS_ZBROJI_PERIPH_BUS_WSTRB,
s_axi_HLS_ZBROJI_PERIPH_BUS_WVALID,
s_axi_HLS_ZBROJI_PERIPH_BUS_WREADY,
s_axi_HLS_ZBROJI_PERIPH_BUS_BRESP,
s_axi_HLS_ZBROJI_PERIPH_BUS_BVALID,
s_axi_HLS_ZBROJI_PERIPH_BUS_BREADY,
s_axi_HLS_ZBROJI_PERIPH_BUS_ARADDR,
s_axi_HLS_ZBROJI_PERIPH_BUS_ARVALID,
s_axi_HLS_ZBROJI_PERIPH_BUS_ARREADY,
s_axi_HLS_ZBROJI_PERIPH_BUS_RDATA,
s_axi_HLS_ZBROJI_PERIPH_BUS_RRESP,
s_axi_HLS_ZBROJI_PERIPH_BUS_RVALID,
s_axi_HLS_ZBROJI_PERIPH_BUS_RREADY,
interrupt
);

parameter C_S_AXI_HLS_ZBROJI_PERIPH_BUS_ADDR_WIDTH = 6;
parameter C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH = 32;
input aclk ;
input aresetn ;

input [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_ADDR_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_AWADDR ;
input s_axi_HLS_ZBROJI_PERIPH_BUS_AWVALID ;
output s_axi_HLS_ZBROJI_PERIPH_BUS_AWREADY ;
input [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_WDATA ;
input [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH/8 - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_WSTRB ;
input s_axi_HLS_ZBROJI_PERIPH_BUS_WVALID ;
output s_axi_HLS_ZBROJI_PERIPH_BUS_WREADY ;
output [2 - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_BRESP ;
output s_axi_HLS_ZBROJI_PERIPH_BUS_BVALID ;
input s_axi_HLS_ZBROJI_PERIPH_BUS_BREADY ;
input [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_ADDR_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_ARADDR ;
input s_axi_HLS_ZBROJI_PERIPH_BUS_ARVALID ;
output s_axi_HLS_ZBROJI_PERIPH_BUS_ARREADY ;
output [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_RDATA ;
output [2 - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_RRESP ;
output s_axi_HLS_ZBROJI_PERIPH_BUS_RVALID ;
input s_axi_HLS_ZBROJI_PERIPH_BUS_RREADY ;
output interrupt ;

wire aclk;
wire aresetn;

wire [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_ADDR_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_AWADDR;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_AWVALID;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_AWREADY;
wire [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_WDATA;
wire [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH/8 - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_WSTRB;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_WVALID;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_WREADY;
wire [2 - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_BRESP;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_BVALID;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_BREADY;
wire [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_ADDR_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_ARADDR;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_ARVALID;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_ARREADY;
wire [C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_RDATA;
wire [2 - 1:0] s_axi_HLS_ZBROJI_PERIPH_BUS_RRESP;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_RVALID;
wire s_axi_HLS_ZBROJI_PERIPH_BUS_RREADY;
wire interrupt;


wire [32 - 1:0] sig_zbroji_a;
wire [32 - 1:0] sig_zbroji_b;
wire sig_zbroji_ap_start;
wire sig_zbroji_ap_ready;
wire sig_zbroji_ap_done;
wire sig_zbroji_ap_idle;
wire [32 - 1:0] sig_zbroji_ap_return;



zbroji zbroji_U(
    .a(sig_zbroji_a),
    .b(sig_zbroji_b),
    .ap_start(sig_zbroji_ap_start),
    .ap_ready(sig_zbroji_ap_ready),
    .ap_done(sig_zbroji_ap_done),
    .ap_idle(sig_zbroji_ap_idle),
    .ap_return(sig_zbroji_ap_return)
);

zbroji_HLS_ZBROJI_PERIPH_BUS_if #(
    .C_ADDR_WIDTH(C_S_AXI_HLS_ZBROJI_PERIPH_BUS_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_HLS_ZBROJI_PERIPH_BUS_DATA_WIDTH))
zbroji_HLS_ZBROJI_PERIPH_BUS_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_a(sig_zbroji_a),
    .I_b(sig_zbroji_b),
    .I_ap_start(sig_zbroji_ap_start),
    .O_ap_ready(sig_zbroji_ap_ready),
    .O_ap_done(sig_zbroji_ap_done),
    .O_ap_idle(sig_zbroji_ap_idle),
    .O_ap_return(sig_zbroji_ap_return),
    .AWADDR(s_axi_HLS_ZBROJI_PERIPH_BUS_AWADDR),
    .AWVALID(s_axi_HLS_ZBROJI_PERIPH_BUS_AWVALID),
    .AWREADY(s_axi_HLS_ZBROJI_PERIPH_BUS_AWREADY),
    .WDATA(s_axi_HLS_ZBROJI_PERIPH_BUS_WDATA),
    .WSTRB(s_axi_HLS_ZBROJI_PERIPH_BUS_WSTRB),
    .WVALID(s_axi_HLS_ZBROJI_PERIPH_BUS_WVALID),
    .WREADY(s_axi_HLS_ZBROJI_PERIPH_BUS_WREADY),
    .BRESP(s_axi_HLS_ZBROJI_PERIPH_BUS_BRESP),
    .BVALID(s_axi_HLS_ZBROJI_PERIPH_BUS_BVALID),
    .BREADY(s_axi_HLS_ZBROJI_PERIPH_BUS_BREADY),
    .ARADDR(s_axi_HLS_ZBROJI_PERIPH_BUS_ARADDR),
    .ARVALID(s_axi_HLS_ZBROJI_PERIPH_BUS_ARVALID),
    .ARREADY(s_axi_HLS_ZBROJI_PERIPH_BUS_ARREADY),
    .RDATA(s_axi_HLS_ZBROJI_PERIPH_BUS_RDATA),
    .RRESP(s_axi_HLS_ZBROJI_PERIPH_BUS_RRESP),
    .RVALID(s_axi_HLS_ZBROJI_PERIPH_BUS_RVALID),
    .RREADY(s_axi_HLS_ZBROJI_PERIPH_BUS_RREADY),
    .interrupt(interrupt));

endmodule
