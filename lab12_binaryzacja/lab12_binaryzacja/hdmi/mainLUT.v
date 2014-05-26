`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:53 04/14/2014 
// Design Name: 
// Module Name:    mainLUT 
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
module mainLUT(
    
	input [7:0] a,
	input clk,
	output [7:0] qspo
    );


lut myLut (
  .a(a), // input [7 : 0] a
  .clk(clk), // input clk
  .qspo(qspo) // output [7 : 0] qspo
);


endmodule
