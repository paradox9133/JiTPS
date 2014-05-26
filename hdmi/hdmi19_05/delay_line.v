`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    delay_line 
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
module delay_line # (
	parameter N=4,
	parameter DELAY=1
)
(
	input clk,
	input ce,
	input [N-1:0]in,
	output [N-1:0]out
);

wire [N-1:0] tdata [DELAY:0];
assign tdata[0] = in;

genvar i;
generate
	if(DELAY==0)
	begin
		assign out = in;
	end else
	begin
		for(i=0; i < DELAY; i=i+1)
		begin
			delay # (
			.N(N) )
			delay_i
			(
				.ce(ce),
				.clk(clk),
				.idata(tdata[i]),
				.odata(tdata[i+1])
			);
		end
	end
endgenerate

assign out = tdata[DELAY];

endmodule
