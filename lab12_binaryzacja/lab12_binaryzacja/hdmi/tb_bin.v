`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:14:23 05/22/2014
// Design Name:   hdmi_main
// Module Name:   F:/Studia/JPS/lab12_binaryzacja/hdmi/tb_bin.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: hdmi_main
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_bin;

wire clk;

wire de_in;
wire hsync_in;
wire vsync_in;

wire [7:0] r_in;
wire [7:0] g_in;
wire [7:0] b_in;

wire [7:0] y_out;
wire [7:0] cr_out;
wire [7:0] cb_out;

wire de_bin_in;
wire hsync_bin_in;
wire vsync_bin_in;


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
    .de_out(de_bin_in), 
    .hdmi_hs_out(hsync_bin_in), 
    .hdmi_vs_out(vsync_bin_in), 
    .y(y_out), 
    .cb(cb_out), 
    .cr(cr_out)
);
	 
 thresholding thresholding_converter (
    .clk(clk), 
    .cb(cb_out), 
    .cr(cr_out), 
    .de_in(de_bin_in), 
    .de_out(de_out), 
    .hdmi_hs_in(hsync_bin_in), 
    .hdmi_vs_in(vsync_bin_in), 
    .hdmi_hs_out(hsync_out), 
    .hdmi_vs_out(vsync_out), 
    .r_out(r_out), 
    .g_out(g_out), 
    .b_out(b_out)
    );
	 
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
