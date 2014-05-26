`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: AGH
// Engineer: Tomasz Kryjak
// 
// Create Date:    11:29:28 10/28/2013 
// Design Name: 
// Module Name:    tb_filter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tb_hdmi(
    );
	 

wire clk;

wire de_in;
wire hsync_in;
wire vsync_in;

wire [7:0] r_in;
wire [7:0] g_in;
wire [7:0] b_in;


wire de_out;
wire hsync_out;
wire vsync_out;

wire [7:0] r_out;
wire [7:0] g_out;
wire [7:0] b_out;



// --------------------------------------
// HDMI input
// --------------------------------------
hdmi_in file_input (
    .hdmi_clk(clk), 
    .hdmi_de(de_in), 
    .hdmi_hs(hsync_in), 
    .hdmi_vs(vsync_in), 
    .hdmi_r(r_in), 
    .hdmi_g(g_in), 
    .hdmi_b(b_in)
);
	 
rgb2ycbcr rgb2ycbcr_converter (
    .clk(clk), 
    .de_in(de_in), 
    .hdmi_hs_in(hsync_in), 
    .hdmi_vs_in(vsync_in), 
    .r(r_in), 
    .g(g_in), 
    .b(b_in), 
    .de_out(de_out), 
    .hdmi_hs_out(hsync_out), 
    .hdmi_vs_out(vsync_out), 
    .y(r_out), 
    .cb(g_out), 
    .cr(b_out)
);


/*
LUT R_LUT (
  .a(r_in), // input [7 : 0] a
  .clk(clk), // input clk
  .qspo(r_out) // output [7 : 0] qspo
);

LUT G_LUT (
  .a(g_in), // input [7 : 0] a
  .clk(clk), // input clk
  .qspo(g_out) // output [7 : 0] qspo
);

LUT B_LUT (
  .a(b_in), // input [7 : 0] a
  .clk(clk), // input clk
  .qspo(b_out) // output [7 : 0] qspo
);*/
 
	 
// --------------------------------------
// Output assigment
// --------------------------------------

//assign de_out = de_in;
//assign hsync_out = hsync_in;
//assign vsync_out = vsync_in;

//assign r_out = r_in;
//assign g_out = g_in;
//assign b_out = b_in;	 
	 

// --------------------------------------
// HDMI output
// --------------------------------------
hdmi_out file_output (
    .hdmi_clk(clk), 
    .hdmi_vs(vsync_out), 
    .hdmi_de(de_out), 
    .hdmi_data({8'b0,r_out,g_out,b_out})
    );


endmodule
