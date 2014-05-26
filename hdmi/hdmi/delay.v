`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    
// Design Name: 
// Module Name:    delay 
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
module delay # (
	parameter N=8
)
(
	input clk,
	input ce,
	input [N-1:0]idata,
	output [N-1:0]odata
);

reg [N-1:0]temp = 0;

always @(posedge clk)
begin
	if(ce) temp<=idata;
	else temp<=temp;
end

assign odata=temp;

endmodule
