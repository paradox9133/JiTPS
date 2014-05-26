`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:18 05/05/2014
// Design Name:   hdmi_main
// Module Name:   D:/Study/Semestr VI/FPGA/lab8/hdmi/tb_hdmi_ycbcr.v
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

module tb_hdmi_ycbcr;

	// Inputs
	reg rstbtn_n;
	reg clk100;
	reg [3:0] RX1_TMDS;
	reg [3:0] RX1_TMDSB;

	// Outputs
	wire [3:0] TX0_TMDS;
	wire [3:0] TX0_TMDSB;
	wire [7:0] LED;

	// Instantiate the Unit Under Test (UUT)
	hdmi_main uut (
		.rstbtn_n(rstbtn_n), 
		.clk100(clk100), 
		.RX1_TMDS(RX1_TMDS), 
		.RX1_TMDSB(RX1_TMDSB), 
		.TX0_TMDS(TX0_TMDS), 
		.TX0_TMDSB(TX0_TMDSB), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		rstbtn_n = 0;
		clk100 = 0;
		RX1_TMDS = 0;
		RX1_TMDSB = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

