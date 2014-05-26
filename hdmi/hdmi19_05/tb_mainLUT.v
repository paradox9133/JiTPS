`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:50:19 04/14/2014
// Design Name:   mainLUT
// Module Name:   D:/JiTPS/KoreckiTomasz/lab6/hdmi/tb_mainLUT.v
// Project Name:  hdmi
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mainLUT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mainLUT;

	// Inputs
	reg [7:0] a;
	reg clk;

	// Outputs
	wire [7:0] qspo;

	// Instantiate the Unit Under Test (UUT)
	mainLUT uut (
		.a(a), 
		.clk(clk), 
		.qspp(qspo)
	);

	initial begin
		// Initialize Inputs
		a = 8'b00110011;
		clk = 0;

		#100;

	end
	
	initial begin
		while(1)
		begin
			#5 clk <= ~clk;
			#5 clk <= ~clk;
			
		end
	end
endmodule

