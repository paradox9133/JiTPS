`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:54:40 05/05/2014
// Design Name:   rgb2ycbcr
// Module Name:   D:/Study/Semestr VI/FPGA/lab8/hdmi/tb_rgb2ycbcr.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rgb2ycbcr
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_rgb2ycbcr;

	// Inputs
	reg clk;
	reg [7:0] r;
	reg [7:0] g;
	reg [7:0] b;
	reg hdmi_hs_in;
	reg hdmi_vs_in;
	reg de_in;

	// Outputs
	wire [7:0] y;
	wire [7:0] cb;
	wire [7:0] cr;
	wire hdmi_hs_out;
	wire hdmi_vs_out;
	wire de_out;

	// Instantiate the Unit Under Test (UUT)
	rgb2ycbcr uut (
		.clk(clk), 
		.r(r), 
		.g(g), 
		.b(b), 
		.hdmi_hs_in(hdmi_hs_in), 
		.hdmi_vs_in(hdmi_vs_in), 
		.de_in(de_in), 
		.y(y), 
		.cb(cb), 
		.cr(cr), 
		.hdmi_hs_out(hdmi_hs_out), 
		.hdmi_vs_out(hdmi_vs_out), 
		.de_out(de_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		r = 8'd156;
		g = 8'd35;
		b = 8'd253;
		hdmi_hs_in = 1;
		hdmi_vs_in = 1;
		de_in = 1;

		while(1)
		begin
			#5 clk <= ~clk;
			#5 clk <= ~clk;
		end
	end
      
endmodule

