`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:06 02/19/2014 
// Design Name: 
// Module Name:    FSA 
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
module FSA(clk, rst, Multiplicand, Multiplier, Result);
	
	input clk, rst;
	input [11:0] Multiplicand;
	input [11:0] Multiplier;
	
	output reg [23:0] Result;
	
	wire [23:0] W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, W10, W11, W12;
	
/////////////////////////////////////////////////////////////////////////////////////

	wire [11:0] WAND0, WAND1, WAND2, WAND3, WAND4, WAND5, WAND6, WAND7, WAND8, WAND9, WAND10, WAND11;

	and(WAND0[0], Multiplicand[0], Multiplier[0]);
	and(WAND0[1], Multiplicand[1], Multiplier[0]);
	and(WAND0[2], Multiplicand[2], Multiplier[0]);
	and(WAND0[3], Multiplicand[3], Multiplier[0]);
	and(WAND0[4], Multiplicand[4], Multiplier[0]);
	and(WAND0[5], Multiplicand[5], Multiplier[0]);
	and(WAND0[6], Multiplicand[6], Multiplier[0]);
	and(WAND0[7], Multiplicand[7], Multiplier[0]);
	and(WAND0[8], Multiplicand[8], Multiplier[0]);
	and(WAND0[9], Multiplicand[9], Multiplier[0]);
	and(WAND0[10], Multiplicand[10], Multiplier[0]);
	and(WAND0[11], Multiplicand[11], ~Multiplier[0]);
	
	and(WAND1[0], Multiplicand[0], Multiplier[1]);
	and(WAND1[1], Multiplicand[1], Multiplier[1]);
	and(WAND1[2], Multiplicand[2], Multiplier[1]);
	and(WAND1[3], Multiplicand[3], Multiplier[1]);
	and(WAND1[4], Multiplicand[4], Multiplier[1]);
	and(WAND1[5], Multiplicand[5], Multiplier[1]);
	and(WAND1[6], Multiplicand[6], Multiplier[1]);
	and(WAND1[7], Multiplicand[7], Multiplier[1]);
	and(WAND1[8], Multiplicand[8], Multiplier[1]);
	and(WAND1[9], Multiplicand[9], Multiplier[1]);
	and(WAND1[10], Multiplicand[10], Multiplier[1]);
	and(WAND1[11], Multiplicand[11], ~Multiplier[1]);
	
	and(WAND2[0], Multiplicand[0], Multiplier[2]);
	and(WAND2[1], Multiplicand[1], Multiplier[2]);
	and(WAND2[2], Multiplicand[2], Multiplier[2]);
	and(WAND2[3], Multiplicand[3], Multiplier[2]);
	and(WAND2[4], Multiplicand[4], Multiplier[2]);
	and(WAND2[5], Multiplicand[5], Multiplier[2]);
	and(WAND2[6], Multiplicand[6], Multiplier[2]);
	and(WAND2[7], Multiplicand[7], Multiplier[2]);
	and(WAND2[8], Multiplicand[8], Multiplier[2]);
	and(WAND2[9], Multiplicand[9], Multiplier[2]);
	and(WAND2[10], Multiplicand[10], Multiplier[2]);
	and(WAND2[11], Multiplicand[11], ~Multiplier[2]);
	
	and(WAND3[0], Multiplicand[0], Multiplier[3]);
	and(WAND3[1], Multiplicand[1], Multiplier[3]);
	and(WAND3[2], Multiplicand[2], Multiplier[3]);
	and(WAND3[3], Multiplicand[3], Multiplier[3]);
	and(WAND3[4], Multiplicand[4], Multiplier[3]);
	and(WAND3[5], Multiplicand[5], Multiplier[3]);
	and(WAND3[6], Multiplicand[6], Multiplier[3]);
	and(WAND3[7], Multiplicand[7], Multiplier[3]);
	and(WAND3[8], Multiplicand[8], Multiplier[3]);
	and(WAND3[9], Multiplicand[9], Multiplier[3]);
	and(WAND3[10], Multiplicand[10], Multiplier[3]);
	and(WAND3[11], Multiplicand[11], ~Multiplier[3]);
	
	and(WAND4[0], Multiplicand[0], Multiplier[4]);
	and(WAND4[1], Multiplicand[1], Multiplier[4]);
	and(WAND4[2], Multiplicand[2], Multiplier[4]);
	and(WAND4[3], Multiplicand[3], Multiplier[4]);
	and(WAND4[4], Multiplicand[4], Multiplier[4]);
	and(WAND4[5], Multiplicand[5], Multiplier[4]);
	and(WAND4[6], Multiplicand[6], Multiplier[4]);
	and(WAND4[7], Multiplicand[7], Multiplier[4]);
	and(WAND4[8], Multiplicand[8], Multiplier[4]);
	and(WAND4[9], Multiplicand[9], Multiplier[4]);
	and(WAND4[10], Multiplicand[10], Multiplier[4]);
	and(WAND4[11], Multiplicand[11], ~Multiplier[4]);
	
	and(WAND5[0], Multiplicand[0], Multiplier[5]);
	and(WAND5[1], Multiplicand[1], Multiplier[5]);
	and(WAND5[2], Multiplicand[2], Multiplier[5]);
	and(WAND5[3], Multiplicand[3], Multiplier[5]);
	and(WAND5[4], Multiplicand[4], Multiplier[5]);
	and(WAND5[5], Multiplicand[5], Multiplier[5]);
	and(WAND5[6], Multiplicand[6], Multiplier[5]);
	and(WAND5[7], Multiplicand[7], Multiplier[5]);
	and(WAND5[8], Multiplicand[8], Multiplier[5]);
	and(WAND5[9], Multiplicand[9], Multiplier[5]);
	and(WAND5[10], Multiplicand[10], Multiplier[5]);
	and(WAND5[11], Multiplicand[11], ~Multiplier[5]);
	
	and(WAND6[0], Multiplicand[0], Multiplier[6]);
	and(WAND6[1], Multiplicand[1], Multiplier[6]);
	and(WAND6[2], Multiplicand[2], Multiplier[6]);
	and(WAND6[3], Multiplicand[3], Multiplier[6]);
	and(WAND6[4], Multiplicand[4], Multiplier[6]);
	and(WAND6[5], Multiplicand[5], Multiplier[6]);
	and(WAND6[6], Multiplicand[6], Multiplier[6]);
	and(WAND6[7], Multiplicand[7], Multiplier[6]);
	and(WAND6[8], Multiplicand[8], Multiplier[6]);
	and(WAND6[9], Multiplicand[9], Multiplier[6]);
	and(WAND6[10], Multiplicand[10], Multiplier[6]);
	and(WAND6[11], Multiplicand[11], ~Multiplier[6]);
	
	and(WAND7[0], Multiplicand[0], Multiplier[7]);
	and(WAND7[1], Multiplicand[1], Multiplier[7]);
	and(WAND7[2], Multiplicand[2], Multiplier[7]);
	and(WAND7[3], Multiplicand[3], Multiplier[7]);
	and(WAND7[4], Multiplicand[4], Multiplier[7]);
	and(WAND7[5], Multiplicand[5], Multiplier[7]);
	and(WAND7[6], Multiplicand[6], Multiplier[7]);
	and(WAND7[7], Multiplicand[7], Multiplier[7]);
	and(WAND7[8], Multiplicand[8], Multiplier[7]);
	and(WAND7[9], Multiplicand[9], Multiplier[7]);
	and(WAND7[10], Multiplicand[10], Multiplier[7]);
	and(WAND7[11], Multiplicand[11], ~Multiplier[7]);
	
	and(WAND8[0], Multiplicand[0], Multiplier[8]);
	and(WAND8[1], Multiplicand[1], Multiplier[8]);
	and(WAND8[2], Multiplicand[2], Multiplier[8]);
	and(WAND8[3], Multiplicand[3], Multiplier[8]);
	and(WAND8[4], Multiplicand[4], Multiplier[8]);
	and(WAND8[5], Multiplicand[5], Multiplier[8]);
	and(WAND8[6], Multiplicand[6], Multiplier[8]);
	and(WAND8[7], Multiplicand[7], Multiplier[8]);
	and(WAND8[8], Multiplicand[8], Multiplier[8]);
	and(WAND8[9], Multiplicand[9], Multiplier[8]);
	and(WAND8[10], Multiplicand[10], Multiplier[8]);
	and(WAND8[11], Multiplicand[11], ~Multiplier[8]);
	
	and(WAND9[0], Multiplicand[0], Multiplier[9]);
	and(WAND9[1], Multiplicand[1], Multiplier[9]);
	and(WAND9[2], Multiplicand[2], Multiplier[9]);
	and(WAND9[3], Multiplicand[3], Multiplier[9]);
	and(WAND9[4], Multiplicand[4], Multiplier[9]);
	and(WAND9[5], Multiplicand[5], Multiplier[9]);
	and(WAND9[6], Multiplicand[6], Multiplier[9]);
	and(WAND9[7], Multiplicand[7], Multiplier[9]);
	and(WAND9[8], Multiplicand[8], Multiplier[9]);
	and(WAND9[9], Multiplicand[9], Multiplier[9]);
	and(WAND9[10], Multiplicand[10], Multiplier[9]);
	and(WAND9[11], Multiplicand[11], ~Multiplier[9]);
	
	and(WAND10[0], Multiplicand[0], Multiplier[10]);
	and(WAND10[1], Multiplicand[1], Multiplier[10]);
	and(WAND10[2], Multiplicand[2], Multiplier[10]);
	and(WAND10[3], Multiplicand[3], Multiplier[10]);
	and(WAND10[4], Multiplicand[4], Multiplier[10]);
	and(WAND10[5], Multiplicand[5], Multiplier[10]);
	and(WAND10[6], Multiplicand[6], Multiplier[10]);
	and(WAND10[7], Multiplicand[7], Multiplier[10]);
	and(WAND10[8], Multiplicand[8], Multiplier[10]);
	and(WAND10[9], Multiplicand[9], Multiplier[10]);
	and(WAND10[10], Multiplicand[10], Multiplier[10]);
	and(WAND10[11], Multiplicand[11], ~Multiplier[10]);
	
	and(WAND11[0], ~Multiplicand[0], Multiplier[11]);
	and(WAND11[1], ~Multiplicand[1], Multiplier[11]);
	and(WAND11[2], ~Multiplicand[2], Multiplier[11]);
	and(WAND11[3], ~Multiplicand[3], Multiplier[11]);
	and(WAND11[4], ~Multiplicand[4], Multiplier[11]);
	and(WAND11[5], ~Multiplicand[5], Multiplier[11]);
	and(WAND11[6], ~Multiplicand[6], Multiplier[11]);
	and(WAND11[7], ~Multiplicand[7], Multiplier[11]);
	and(WAND11[8], ~Multiplicand[8], Multiplier[11]);
	and(WAND11[9], ~Multiplicand[9], Multiplier[11]);
	and(WAND11[10], ~Multiplicand[10], Multiplier[11]);
	and(WAND11[11], Multiplicand[11], Multiplier[11]);
	
//////////////////////////////////////////////////////////////////////////

  KSA_24bit KSA0(.Ci(1'b0), .A({12'b0, WAND0}), .B({11'b0, WAND1, 1'b0}), .S(W0), .Co());
  KSA_24bit KSA1(.Ci(1'b0), .A({10'b0, WAND2, 2'b0}), .B({9'b0, WAND3, 3'b0}), .S(W1), .Co());
  KSA_24bit KSA2(.Ci(1'b0), .A({8'b0, WAND4, 4'b0}), .B({7'b0, WAND5, 5'b0}), .S(W2), .Co());
  KSA_24bit KSA3(.Ci(1'b0), .A({6'b0, WAND6, 6'b0}), .B({5'b0, WAND7, 7'b0}), .S(W3), .Co());
  KSA_24bit KSA4(.Ci(1'b0), .A({4'b0, WAND8, 8'b0}), .B({3'b0, WAND9, 9'b0}), .S(W4), .Co());
  KSA_24bit KSA5(.Ci(1'b0), .A({2'b0, WAND10, 10'b0}), .B({1'b0, WAND11, 11'b0}), .S(W5), .Co());
  KSA_24bit KSA6(.Ci(1'b0), .A({1'b0, ~Multiplier[11], 10'b0, Multiplier[11], 11'b0}), .B({1'b1, ~Multiplicand[11], 10'b0, Multiplicand[11], 11'b0}), .S(W6), .Co());
  KSA_24bit KSA7(.Ci(1'b0), .A(W0), .B(W1), .S(W7), .Co());
  KSA_24bit KSA8(.Ci(1'b0), .A(W2), .B(W3), .S(W8), .Co());
  KSA_24bit KSA9(.Ci(1'b0), .A(W4), .B(W5), .S(W9), .Co());
  KSA_24bit KSA10(.Ci(1'b0), .A(W7), .B(W8), .S(W10), .Co());
  KSA_24bit KSA11(.Ci(1'b0), .A(W6), .B(W9), .S(W11), .Co());
  KSA_24bit KSA12(.Ci(1'b0), .A(W10), .B(W11), .S(W12), .Co());
  
//////////////////////////////////////////////////////////////////////////

	always @(posedge clk) begin
		if(rst == 1'b1) begin			
			Result[23:0] <= 1'b0;
		end else begin
			Result[23:0] <= W12[23:0];
		end
	end
	
endmodule

