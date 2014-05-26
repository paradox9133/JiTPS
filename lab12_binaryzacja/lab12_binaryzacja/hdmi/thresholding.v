`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:27 05/19/2014 
// Design Name: 
// Module Name:    thresholding 
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
module thresholding(
    input clk,
    input [7:0]cb,
    input [7:0]cr,
    input de_in,
    output de_out,
    input hdmi_hs_in,
    input hdmi_vs_in,
    output hdmi_hs_out,
    output hdmi_vs_out,
    output [7:0]r_out,
    output [7:0]g_out,
    output [7:0]b_out
    );



//Ta = 90
//Tb = 200
//Tc = 90
//Td = 200
assign r_out = cr > 8'b01011010 & cr < 8'b11001000 & cb > 8'b01011010 & cb < 8'b11001000 ? 8'b11111111 : 8'b00000000;
assign g_out = cr > 8'b01011010 & cr < 8'b11001000 & cb > 8'b01011010 & cb < 8'b11001000 ? 8'b11111111 : 8'b00000000;
assign b_out = cr > 8'b01011010 & cr < 8'b11001000 & cb > 8'b01011010 & cb < 8'b11001000 ? 8'b11111111 : 8'b00000000;

assign hdmi_hs_out = hdmi_hs_in;
assign hdmi_vs_out = hdmi_vs_in; 
assign de_out = de_in;
endmodule
