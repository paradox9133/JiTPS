`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:55 04/28/2014 
// Design Name: 
// Module Name:    rgb2ycbcr 
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
module rgb2ycbcr(
	input clk,
	input[7:0] r,
	input[7:0] g,
	input[7:0] b,
	input hdmi_hs_in,
   input hdmi_vs_in,
	input de_in,
	
	
	output[7:0] y,
	output[7:0] cb,
	output[7:0] cr,
	output hdmi_hs_out,
	output hdmi_vs_out,
	output de_out
	
    );
	 
wire signed [17:0] longR;
wire signed [17:0] longG;
wire signed [17:0] longB;

wire signed [35:0] YR;
wire signed [35:0] YG;
wire signed [35:0] YB;
wire signed [8:0] YR_int;
wire signed [8:0] YG_int;
wire signed [8:0] YB_int;
wire signed [8:0] YRG_output;
wire signed [8:0] YRGB_output;
wire signed [8:0] YRGB_output_delayed;

wire signed [35:0] CbR;
wire signed [35:0] CbG;
wire signed [35:0] CbB;
wire signed [8:0] CbR_int;
wire signed [8:0] CbG_int;
wire signed [8:0] CbB_int;
wire signed [8:0] CbRG_output;
wire signed [8:0] CbRGB_output;
wire signed [8:0] CbRGB_total_output;

wire signed [35:0] CrR;
wire signed [35:0] CrG;
wire signed [35:0] CrB;
wire signed [8:0] CrR_int;
wire signed [8:0] CrG_int;
wire signed [8:0] CrB_int;
wire signed [8:0] CrRG_output;
wire signed [8:0] CrRGB_output;
wire signed [8:0] CrRGB_total_output;

wire hdmi_hs_in_delayed;         // hsync data
wire hdmi_vs_in_delayed;         // vsync data
wire de_in_delayed;             		// data enable
wire ce = 1;

//0.299
wire signed [17:0] R1 = 18'b000100110010001011;
//0.587
wire signed [17:0] G1 = 18'b001001011001000110;
//0.114
wire signed [17:0] B1 = 18'b000001110100101111;

//0.168736
wire signed [17:0] R2 = 18'b111101010011001110;
//-0.331264
wire signed [17:0] G2 = 18'b111010101100110010;
//0.5
wire signed [17:0] B2 = 18'b001000000000000000;

//0.5
wire signed [17:0] R3 = 18'b001000000000000000;
//-0.418688
wire signed [17:0] G3 = 18'b111001010011010001;
//-0.081312
wire signed [17:0] B3 = 18'b111110101100101111;

//128
wire signed [8:0] const = 9'b010000000;


//    M U L L S
//-----  Y ---------
mull mull_YR (
  .clk(clk), // input clk
  .a(longR), // input [17 : 0] a
  .b(R1), // input [17 : 0] b
  .p(YR) // output [35 : 0] p
);

mull mull_YG (
  .clk(clk), // input clk
  .a(longG), // input [17 : 0] a
  .b(G1), // input [17 : 0] b
  .p(YG) // output [35 : 0] p
);

mull mull_YB (
  .clk(clk), // input clk
  .a(longB), // input [17 : 0] a
  .b(B1), // input [17 : 0] b
  .p(YB) // output [35 : 0] p
);
//-----  Y ---------


//-----  Cb ---------
mull mull_CbR (
  .clk(clk), // input clk
  .a(longR), // input [17 : 0] a
  .b(R2), // input [17 : 0] b
  .p(CbR) // output [35 : 0] p
);

mull mull_CbG (
  .clk(clk), // input clk
  .a(longG), // input [17 : 0] a
  .b(G2), // input [17 : 0] b
  .p(CbG) // output [35 : 0] p
);

mull mull_CbB (
  .clk(clk), // input clk
  .a(longB), // input [17 : 0] a
  .b(B2), // input [17 : 0] b
  .p(CbB) // output [35 : 0] p
);
//-----  Cb ---------

//-----  Cr ---------
mull mull_CrR (
  .clk(clk), // input clk
  .a(longR), // input [17 : 0] a
  .b(R3), // input [17 : 0] b
  .p(CrR) // output [35 : 0] p
);

mull mull_CrG (
  .clk(clk), // input clk
  .a(longG), // input [17 : 0] a
  .b(G3), // input [17 : 0] b
  .p(CrG) // output [35 : 0] p
);

mull mull_CrB (
  .clk(clk), // input clk
  .a(longB), // input [17 : 0] a
  .b(B3), // input [17 : 0] b
  .p(CrB) // output [35 : 0] p
);
//-----  Cr ---------


//   S U M A T O R S
//-----  Y ---------
sum Y_RG (
  .a(YR_int), // input [8 : 0] a
  .b(YG_int), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(YRG_output) // output [8 : 0] s
);

sum Y_RGB (
  .a(YRG_output), // input [8 : 0] a
  .b(YB_int), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(YRGB_output) // output [8 : 0] s
);

delay_line # (
		.N(9),
		.DELAY(2)
	)	
	Y_delay (
		.ce(ce),
		.clk(clk),
		.in(YRGB_output), 
		.out(YRGB_output_delayed)
	);
	
//-----  Y ---------

//-----  Cb ---------
sum Cb_RG (
  .a(CbR_int), // input [8 : 0] a
  .b(CbG_int), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(CbRG_output) // output [8 : 0] s
);

sum Cb_RGB (
  .a(CbRG_output), // input [8 : 0] a
  .b(CbB_int), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(CbRGB_output) // output [8 : 0] s
);

sum Cb_RGB_total (
  .a(CbRGB_output), // input [8 : 0] a
  .b(const), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(CbRGB_total_output) // output [8 : 0] s
);
//-----  Cb ---------

//-----  Cr ---------
sum Cr_RG (
  .a(CrR_int), // input [8 : 0] a
  .b(CrG_int), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(CrRG_output) // output [8 : 0] s
);

sum Cr_RGB (
  .a(CrRG_output), // input [8 : 0] a
  .b(CrB_int), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(CrRGB_output) // output [8 : 0] s
);

sum Cr_RGB_total (
  .a(CrRGB_output), // input [8 : 0] a
  .b(const), // input [8 : 0] b
  .clk(clk), // input clk
  .ce(ce), // input ce
  .s(CrRGB_total_output) // output [8 : 0] s
);
//-----  Cr ---------

//-----  Delayers ---------
delay_line # (
		.N(1),
		.DELAY(6)
	)	
	hsync (
		.ce(ce),
		.clk(clk),
		.in(hdmi_hs_in), 
		.out(hdmi_hs_in_delayed)
	);

delay_line # (
		.N(1),
		.DELAY(6)
	)	
	vsync (
		.ce(ce),
		.clk(clk),
		.in(hdmi_vs_in), 
		.out(hdmi_vs_in_delayed)
	);
	
delay_line # (
		.N(1),
		.DELAY(6)
	)	
	de (
		.ce(ce),
		.clk(clk),
		.in(de_in), 
		.out(de_in_delayed)
	);
//-----  Delayers ---------

	

assign longR = {10'b0,r};
assign longG = {10'b0,g};
assign longB = {10'b0,b};

assign YR_int = YR[16 +: 9];
assign YG_int = YG[16 +: 9];
assign YB_int = YB[16 +: 9];

assign YR_int = YR[16 +: 9];
assign YG_int = YG[16 +: 9];
assign YB_int = YB[16 +: 9];

assign CrR_int = CrR[16 +: 9];
assign CrG_int = CrG[16 +: 9];
assign CrB_int = CrB[16 +: 9];

assign CbR_int = CbR[16 +: 9];
assign CbG_int = CbG[16 +: 9];
assign CbB_int = CbB[16 +: 9];

assign de_out = de_in_delayed;
assign hdmi_hs_out = hdmi_hs_in_delayed;
assign hdmi_vs_out = hdmi_vs_in_delayed;

assign y = YRGB_output_delayed[7:0];
assign cb = CbRGB_total_output[7:0];
assign cr = CrRGB_total_output[7:0];

endmodule
