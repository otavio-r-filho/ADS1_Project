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
module FSA_24bit_u(Multiplicand, Multiplier, Result);
	
	input wire [23:0] Multiplicand;
	input wire [23:0] Multiplier;
	
	output wire [47:0] Result;
	
	wire [47:0] W0,	 W1,  W2,  W3,  W4,  W5,  W6,  W7,  W8,  W9,  W10, W11;
	wire [47:0] W12, W13, W14, W15, W16, W17, W18, W19, W20, W21;
	
/////////////////////////////////////////////////////////////////////////////////////

	wire [23:0] WAND0,	WAND1,	WAND2,	WAND3,	WAND4,	WAND5,	WAND6,	WAND7; 
	wire [23:0] WAND8,	WAND9,	WAND10, WAND11, WAND12, WAND13, WAND14, WAND15; 
	wire [23:0] WAND16, WAND17, WAND18, WAND19, WAND20, WAND21, WAND22, WAND23;

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
	and(WAND0[11], Multiplicand[11], Multiplier[0]);
	and(WAND0[12], Multiplicand[12], Multiplier[0]);
	and(WAND0[13], Multiplicand[13], Multiplier[0]);
	and(WAND0[14], Multiplicand[14], Multiplier[0]);
	and(WAND0[15], Multiplicand[15], Multiplier[0]);
	and(WAND0[16], Multiplicand[16], Multiplier[0]);
	and(WAND0[17], Multiplicand[17], Multiplier[0]);
	and(WAND0[18], Multiplicand[18], Multiplier[0]);
	and(WAND0[19], Multiplicand[19], Multiplier[0]);
	and(WAND0[20], Multiplicand[20], Multiplier[0]);
	and(WAND0[21], Multiplicand[21], Multiplier[0]);
	and(WAND0[22], Multiplicand[22], Multiplier[0]);
	and(WAND0[23], Multiplicand[23], ~Multiplier[0]);
	
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
	and(WAND1[11], Multiplicand[11], Multiplier[1]);
	and(WAND1[12], Multiplicand[12], Multiplier[1]);
	and(WAND1[13], Multiplicand[13], Multiplier[1]);
	and(WAND1[14], Multiplicand[14], Multiplier[1]);
	and(WAND1[15], Multiplicand[15], Multiplier[1]);
	and(WAND1[16], Multiplicand[16], Multiplier[1]);
	and(WAND1[17], Multiplicand[17], Multiplier[1]);
	and(WAND1[18], Multiplicand[18], Multiplier[1]);
	and(WAND1[19], Multiplicand[19], Multiplier[1]);
	and(WAND1[20], Multiplicand[20], Multiplier[1]);
	and(WAND1[21], Multiplicand[21], Multiplier[1]);
	and(WAND1[22], Multiplicand[22], Multiplier[1]);
	and(WAND1[23], Multiplicand[23], ~Multiplier[1]);
	
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
	and(WAND2[11], Multiplicand[11], Multiplier[2]);
	and(WAND2[12], Multiplicand[12], Multiplier[2]);
	and(WAND2[13], Multiplicand[13], Multiplier[2]);
	and(WAND2[14], Multiplicand[14], Multiplier[2]);
	and(WAND2[15], Multiplicand[15], Multiplier[2]);
	and(WAND2[16], Multiplicand[16], Multiplier[2]);
	and(WAND2[17], Multiplicand[17], Multiplier[2]);
	and(WAND2[18], Multiplicand[18], Multiplier[2]);
	and(WAND2[19], Multiplicand[19], Multiplier[2]);
	and(WAND2[20], Multiplicand[20], Multiplier[2]);
	and(WAND2[21], Multiplicand[21], Multiplier[2]);
	and(WAND2[22], Multiplicand[22], Multiplier[2]);
	and(WAND2[23], Multiplicand[23], ~Multiplier[2]);
	
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
	and(WAND3[11], Multiplicand[11], Multiplier[3]);
	and(WAND3[12], Multiplicand[12], Multiplier[3]);
	and(WAND3[13], Multiplicand[13], Multiplier[3]);
	and(WAND3[14], Multiplicand[14], Multiplier[3]);
	and(WAND3[15], Multiplicand[15], Multiplier[3]);
	and(WAND3[16], Multiplicand[16], Multiplier[3]);
	and(WAND3[17], Multiplicand[17], Multiplier[3]);
	and(WAND3[18], Multiplicand[18], Multiplier[3]);
	and(WAND3[19], Multiplicand[19], Multiplier[3]);
	and(WAND3[20], Multiplicand[20], Multiplier[3]);
	and(WAND3[21], Multiplicand[21], Multiplier[3]);
	and(WAND3[22], Multiplicand[22], Multiplier[3]);
	and(WAND3[23], Multiplicand[23], ~Multiplier[3]);
	
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
	and(WAND4[11], Multiplicand[11], Multiplier[4]);
	and(WAND4[12], Multiplicand[12], Multiplier[4]);
	and(WAND4[13], Multiplicand[13], Multiplier[4]);
	and(WAND4[14], Multiplicand[14], Multiplier[4]);
	and(WAND4[15], Multiplicand[15], Multiplier[4]);
	and(WAND4[16], Multiplicand[16], Multiplier[4]);
	and(WAND4[17], Multiplicand[17], Multiplier[4]);
	and(WAND4[18], Multiplicand[18], Multiplier[4]);
	and(WAND4[19], Multiplicand[19], Multiplier[4]);
	and(WAND4[20], Multiplicand[20], Multiplier[4]);
	and(WAND4[21], Multiplicand[21], Multiplier[4]);
	and(WAND4[22], Multiplicand[22], Multiplier[4]);
	and(WAND4[23], Multiplicand[23], ~Multiplier[4]);
	
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
	and(WAND5[11], Multiplicand[11], Multiplier[5]);
	and(WAND5[12], Multiplicand[12], Multiplier[5]);
	and(WAND5[13], Multiplicand[13], Multiplier[5]);
	and(WAND5[14], Multiplicand[14], Multiplier[5]);
	and(WAND5[15], Multiplicand[15], Multiplier[5]);
	and(WAND5[16], Multiplicand[16], Multiplier[5]);
	and(WAND5[17], Multiplicand[17], Multiplier[5]);
	and(WAND5[18], Multiplicand[18], Multiplier[5]);
	and(WAND5[19], Multiplicand[19], Multiplier[5]);
	and(WAND5[20], Multiplicand[20], Multiplier[5]);
	and(WAND5[21], Multiplicand[21], Multiplier[5]);
	and(WAND5[22], Multiplicand[22], Multiplier[5]);
	and(WAND5[23], Multiplicand[23], ~Multiplier[5]);
	
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
	and(WAND6[11], Multiplicand[11], Multiplier[6]);
	and(WAND6[12], Multiplicand[12], Multiplier[6]);
	and(WAND6[13], Multiplicand[13], Multiplier[6]);
	and(WAND6[14], Multiplicand[14], Multiplier[6]);
	and(WAND6[15], Multiplicand[15], Multiplier[6]);
	and(WAND6[16], Multiplicand[16], Multiplier[6]);
	and(WAND6[17], Multiplicand[17], Multiplier[6]);
	and(WAND6[18], Multiplicand[18], Multiplier[6]);
	and(WAND6[19], Multiplicand[19], Multiplier[6]);
	and(WAND6[20], Multiplicand[20], Multiplier[6]);
	and(WAND6[21], Multiplicand[21], Multiplier[6]);
	and(WAND6[22], Multiplicand[22], Multiplier[6]);
	and(WAND6[23], Multiplicand[23], ~Multiplier[6]);
	
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
	and(WAND7[11], Multiplicand[11], Multiplier[7]);
	and(WAND7[12], Multiplicand[12], Multiplier[7]);
	and(WAND7[13], Multiplicand[13], Multiplier[7]);
	and(WAND7[14], Multiplicand[14], Multiplier[7]);
	and(WAND7[15], Multiplicand[15], Multiplier[7]);
	and(WAND7[16], Multiplicand[16], Multiplier[7]);
	and(WAND7[17], Multiplicand[17], Multiplier[7]);
	and(WAND7[18], Multiplicand[18], Multiplier[7]);
	and(WAND7[19], Multiplicand[19], Multiplier[7]);
	and(WAND7[20], Multiplicand[20], Multiplier[7]);
	and(WAND7[21], Multiplicand[21], Multiplier[7]);
	and(WAND7[22], Multiplicand[22], Multiplier[7]);
	and(WAND7[23], Multiplicand[23], ~Multiplier[7]);
	
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
	and(WAND8[11], Multiplicand[11], Multiplier[8]);
	and(WAND8[12], Multiplicand[12], Multiplier[8]);
	and(WAND8[13], Multiplicand[13], Multiplier[8]);
	and(WAND8[14], Multiplicand[14], Multiplier[8]);
	and(WAND8[15], Multiplicand[15], Multiplier[8]);
	and(WAND8[16], Multiplicand[16], Multiplier[8]);
	and(WAND8[17], Multiplicand[17], Multiplier[8]);
	and(WAND8[18], Multiplicand[18], Multiplier[8]);
	and(WAND8[19], Multiplicand[19], Multiplier[8]);
	and(WAND8[20], Multiplicand[20], Multiplier[8]);
	and(WAND8[21], Multiplicand[21], Multiplier[8]);
	and(WAND8[22], Multiplicand[22], Multiplier[8]);
	and(WAND8[23], Multiplicand[23], ~Multiplier[8]);
	
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
	and(WAND9[11], Multiplicand[11], Multiplier[9]);
	and(WAND9[12], Multiplicand[12], Multiplier[9]);
	and(WAND9[13], Multiplicand[13], Multiplier[9]);
	and(WAND9[14], Multiplicand[14], Multiplier[9]);
	and(WAND9[15], Multiplicand[15], Multiplier[9]);
	and(WAND9[16], Multiplicand[16], Multiplier[9]);
	and(WAND9[17], Multiplicand[17], Multiplier[9]);
	and(WAND9[18], Multiplicand[18], Multiplier[9]);
	and(WAND9[19], Multiplicand[19], Multiplier[9]);
	and(WAND9[20], Multiplicand[20], Multiplier[9]);
	and(WAND9[21], Multiplicand[21], Multiplier[9]);
	and(WAND9[22], Multiplicand[22], Multiplier[9]);
	and(WAND9[23], Multiplicand[23], ~Multiplier[9]);
	
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
	and(WAND10[11], Multiplicand[11], Multiplier[10]);
	and(WAND10[12], Multiplicand[12], Multiplier[10]);
	and(WAND10[13], Multiplicand[13], Multiplier[10]);
	and(WAND10[14], Multiplicand[14], Multiplier[10]);
	and(WAND10[15], Multiplicand[15], Multiplier[10]);
	and(WAND10[16], Multiplicand[16], Multiplier[10]);
	and(WAND10[17], Multiplicand[17], Multiplier[10]);
	and(WAND10[18], Multiplicand[18], Multiplier[10]);
	and(WAND10[19], Multiplicand[19], Multiplier[10]);
	and(WAND10[20], Multiplicand[20], Multiplier[10]);
	and(WAND10[21], Multiplicand[21], Multiplier[10]);
	and(WAND10[22], Multiplicand[22], Multiplier[10]);
	and(WAND10[23], Multiplicand[23], ~Multiplier[10]);
	
	and(WAND11[0], Multiplicand[0], Multiplier[11]);
	and(WAND11[1], Multiplicand[1], Multiplier[11]);
	and(WAND11[2], Multiplicand[2], Multiplier[11]);
	and(WAND11[3], Multiplicand[3], Multiplier[11]);
	and(WAND11[4], Multiplicand[4], Multiplier[11]);
	and(WAND11[5], Multiplicand[5], Multiplier[11]);
	and(WAND11[6], Multiplicand[6], Multiplier[11]);
	and(WAND11[7], Multiplicand[7], Multiplier[11]);
	and(WAND11[8], Multiplicand[8], Multiplier[11]);
	and(WAND11[9], Multiplicand[9], Multiplier[11]);
	and(WAND11[10], Multiplicand[10], Multiplier[11]);
	and(WAND11[11], Multiplicand[11], Multiplier[11]);
	and(WAND11[12], Multiplicand[12], Multiplier[11]);
	and(WAND11[13], Multiplicand[13], Multiplier[11]);
	and(WAND11[14], Multiplicand[14], Multiplier[11]);
	and(WAND11[15], Multiplicand[15], Multiplier[11]);
	and(WAND11[16], Multiplicand[16], Multiplier[11]);
	and(WAND11[17], Multiplicand[17], Multiplier[11]);
	and(WAND11[18], Multiplicand[18], Multiplier[11]);
	and(WAND11[19], Multiplicand[19], Multiplier[11]);
	and(WAND11[20], Multiplicand[20], Multiplier[11]);
	and(WAND11[21], Multiplicand[21], Multiplier[11]);
	and(WAND11[22], Multiplicand[22], Multiplier[11]);
	and(WAND11[23], Multiplicand[23], ~Multiplier[11]);
	
	and(WAND12[0], Multiplicand[0], Multiplier[12]);
	and(WAND12[1], Multiplicand[1], Multiplier[12]);
	and(WAND12[2], Multiplicand[2], Multiplier[12]);
	and(WAND12[3], Multiplicand[3], Multiplier[12]);
	and(WAND12[4], Multiplicand[4], Multiplier[12]);
	and(WAND12[5], Multiplicand[5], Multiplier[12]);
	and(WAND12[6], Multiplicand[6], Multiplier[12]);
	and(WAND12[7], Multiplicand[7], Multiplier[12]);
	and(WAND12[8], Multiplicand[8], Multiplier[12]);
	and(WAND12[9], Multiplicand[9], Multiplier[12]);
	and(WAND12[10], Multiplicand[10], Multiplier[12]);
	and(WAND12[11], Multiplicand[11], Multiplier[12]);
	and(WAND12[12], Multiplicand[12], Multiplier[12]);
	and(WAND12[13], Multiplicand[13], Multiplier[12]);
	and(WAND12[14], Multiplicand[14], Multiplier[12]);
	and(WAND12[15], Multiplicand[15], Multiplier[12]);
	and(WAND12[16], Multiplicand[16], Multiplier[12]);
	and(WAND12[17], Multiplicand[17], Multiplier[12]);
	and(WAND12[18], Multiplicand[18], Multiplier[12]);
	and(WAND12[19], Multiplicand[19], Multiplier[12]);
	and(WAND12[20], Multiplicand[20], Multiplier[12]);
	and(WAND12[21], Multiplicand[21], Multiplier[12]);
	and(WAND12[22], Multiplicand[22], Multiplier[12]);
	and(WAND12[23], Multiplicand[23], ~Multiplier[12]);
	
	and(WAND13[0], Multiplicand[0], Multiplier[13]);
	and(WAND13[1], Multiplicand[1], Multiplier[13]);
	and(WAND13[2], Multiplicand[2], Multiplier[13]);
	and(WAND13[3], Multiplicand[3], Multiplier[13]);
	and(WAND13[4], Multiplicand[4], Multiplier[13]);
	and(WAND13[5], Multiplicand[5], Multiplier[13]);
	and(WAND13[6], Multiplicand[6], Multiplier[13]);
	and(WAND13[7], Multiplicand[7], Multiplier[13]);
	and(WAND13[8], Multiplicand[8], Multiplier[13]);
	and(WAND13[9], Multiplicand[9], Multiplier[13]);
	and(WAND13[10], Multiplicand[10], Multiplier[13]);
	and(WAND13[11], Multiplicand[11], Multiplier[13]);
	and(WAND13[12], Multiplicand[12], Multiplier[13]);
	and(WAND13[13], Multiplicand[13], Multiplier[13]);
	and(WAND13[14], Multiplicand[14], Multiplier[13]);
	and(WAND13[15], Multiplicand[15], Multiplier[13]);
	and(WAND13[16], Multiplicand[16], Multiplier[13]);
	and(WAND13[17], Multiplicand[17], Multiplier[13]);
	and(WAND13[18], Multiplicand[18], Multiplier[13]);
	and(WAND13[19], Multiplicand[19], Multiplier[13]);
	and(WAND13[20], Multiplicand[20], Multiplier[13]);
	and(WAND13[21], Multiplicand[21], Multiplier[13]);
	and(WAND13[22], Multiplicand[22], Multiplier[13]);
	and(WAND13[23], Multiplicand[23], ~Multiplier[13]);
	
	and(WAND14[0], Multiplicand[0], Multiplier[14]);
	and(WAND14[1], Multiplicand[1], Multiplier[14]);
	and(WAND14[2], Multiplicand[2], Multiplier[14]);
	and(WAND14[3], Multiplicand[3], Multiplier[14]);
	and(WAND14[4], Multiplicand[4], Multiplier[14]);
	and(WAND14[5], Multiplicand[5], Multiplier[14]);
	and(WAND14[6], Multiplicand[6], Multiplier[14]);
	and(WAND14[7], Multiplicand[7], Multiplier[14]);
	and(WAND14[8], Multiplicand[8], Multiplier[14]);
	and(WAND14[9], Multiplicand[9], Multiplier[14]);
	and(WAND14[10], Multiplicand[10], Multiplier[14]);
	and(WAND14[11], Multiplicand[11], Multiplier[14]);
	and(WAND14[12], Multiplicand[12], Multiplier[14]);
	and(WAND14[13], Multiplicand[13], Multiplier[14]);
	and(WAND14[14], Multiplicand[14], Multiplier[14]);
	and(WAND14[15], Multiplicand[15], Multiplier[14]);
	and(WAND14[16], Multiplicand[16], Multiplier[14]);
	and(WAND14[17], Multiplicand[17], Multiplier[14]);
	and(WAND14[18], Multiplicand[18], Multiplier[14]);
	and(WAND14[19], Multiplicand[19], Multiplier[14]);
	and(WAND14[20], Multiplicand[20], Multiplier[14]);
	and(WAND14[21], Multiplicand[21], Multiplier[14]);
	and(WAND14[22], Multiplicand[22], Multiplier[14]);
	and(WAND14[23], Multiplicand[23], ~Multiplier[14]);
	
	and(WAND15[0], Multiplicand[0], Multiplier[15]);
	and(WAND15[1], Multiplicand[1], Multiplier[15]);
	and(WAND15[2], Multiplicand[2], Multiplier[15]);
	and(WAND15[3], Multiplicand[3], Multiplier[15]);
	and(WAND15[4], Multiplicand[4], Multiplier[15]);
	and(WAND15[5], Multiplicand[5], Multiplier[15]);
	and(WAND15[6], Multiplicand[6], Multiplier[15]);
	and(WAND15[7], Multiplicand[7], Multiplier[15]);
	and(WAND15[8], Multiplicand[8], Multiplier[15]);
	and(WAND15[9], Multiplicand[9], Multiplier[15]);
	and(WAND15[10], Multiplicand[10], Multiplier[15]);
	and(WAND15[11], Multiplicand[11], Multiplier[15]);
	and(WAND15[12], Multiplicand[12], Multiplier[15]);
	and(WAND15[13], Multiplicand[13], Multiplier[15]);
	and(WAND15[14], Multiplicand[14], Multiplier[15]);
	and(WAND15[15], Multiplicand[15], Multiplier[15]);
	and(WAND15[16], Multiplicand[16], Multiplier[15]);
	and(WAND15[17], Multiplicand[17], Multiplier[15]);
	and(WAND15[18], Multiplicand[18], Multiplier[15]);
	and(WAND15[19], Multiplicand[19], Multiplier[15]);
	and(WAND15[20], Multiplicand[20], Multiplier[15]);
	and(WAND15[21], Multiplicand[21], Multiplier[15]);
	and(WAND15[22], Multiplicand[22], Multiplier[15]);
	and(WAND15[23], Multiplicand[23], ~Multiplier[15]);
	
	and(WAND16[0], Multiplicand[0], Multiplier[16]);
	and(WAND16[1], Multiplicand[1], Multiplier[16]);
	and(WAND16[2], Multiplicand[2], Multiplier[16]);
	and(WAND16[3], Multiplicand[3], Multiplier[16]);
	and(WAND16[4], Multiplicand[4], Multiplier[16]);
	and(WAND16[5], Multiplicand[5], Multiplier[16]);
	and(WAND16[6], Multiplicand[6], Multiplier[16]);
	and(WAND16[7], Multiplicand[7], Multiplier[16]);
	and(WAND16[8], Multiplicand[8], Multiplier[16]);
	and(WAND16[9], Multiplicand[9], Multiplier[16]);
	and(WAND16[10], Multiplicand[10], Multiplier[16]);
	and(WAND16[11], Multiplicand[11], Multiplier[16]);
	and(WAND16[12], Multiplicand[12], Multiplier[16]);
	and(WAND16[13], Multiplicand[13], Multiplier[16]);
	and(WAND16[14], Multiplicand[14], Multiplier[16]);
	and(WAND16[15], Multiplicand[15], Multiplier[16]);
	and(WAND16[16], Multiplicand[16], Multiplier[16]);
	and(WAND16[17], Multiplicand[17], Multiplier[16]);
	and(WAND16[18], Multiplicand[18], Multiplier[16]);
	and(WAND16[19], Multiplicand[19], Multiplier[16]);
	and(WAND16[20], Multiplicand[20], Multiplier[16]);
	and(WAND16[21], Multiplicand[21], Multiplier[16]);
	and(WAND16[22], Multiplicand[22], Multiplier[16]);
	and(WAND16[23], Multiplicand[23], ~Multiplier[16]);
	
	and(WAND17[0], Multiplicand[0], Multiplier[17]);
	and(WAND17[1], Multiplicand[1], Multiplier[17]);
	and(WAND17[2], Multiplicand[2], Multiplier[17]);
	and(WAND17[3], Multiplicand[3], Multiplier[17]);
	and(WAND17[4], Multiplicand[4], Multiplier[17]);
	and(WAND17[5], Multiplicand[5], Multiplier[17]);
	and(WAND17[6], Multiplicand[6], Multiplier[17]);
	and(WAND17[7], Multiplicand[7], Multiplier[17]);
	and(WAND17[8], Multiplicand[8], Multiplier[17]);
	and(WAND17[9], Multiplicand[9], Multiplier[17]);
	and(WAND17[10], Multiplicand[10], Multiplier[17]);
	and(WAND17[11], Multiplicand[11], Multiplier[17]);
	and(WAND17[12], Multiplicand[12], Multiplier[17]);
	and(WAND17[13], Multiplicand[13], Multiplier[17]);
	and(WAND17[14], Multiplicand[14], Multiplier[17]);
	and(WAND17[15], Multiplicand[15], Multiplier[17]);
	and(WAND17[16], Multiplicand[16], Multiplier[17]);
	and(WAND17[17], Multiplicand[17], Multiplier[17]);
	and(WAND17[18], Multiplicand[18], Multiplier[17]);
	and(WAND17[19], Multiplicand[19], Multiplier[17]);
	and(WAND17[20], Multiplicand[20], Multiplier[17]);
	and(WAND17[21], Multiplicand[21], Multiplier[17]);
	and(WAND17[22], Multiplicand[22], Multiplier[17]);
	and(WAND17[23], Multiplicand[23], ~Multiplier[17]);
	
	and(WAND18[0], Multiplicand[0], Multiplier[18]);
	and(WAND18[1], Multiplicand[1], Multiplier[18]);
	and(WAND18[2], Multiplicand[2], Multiplier[18]);
	and(WAND18[3], Multiplicand[3], Multiplier[18]);
	and(WAND18[4], Multiplicand[4], Multiplier[18]);
	and(WAND18[5], Multiplicand[5], Multiplier[18]);
	and(WAND18[6], Multiplicand[6], Multiplier[18]);
	and(WAND18[7], Multiplicand[7], Multiplier[18]);
	and(WAND18[8], Multiplicand[8], Multiplier[18]);
	and(WAND18[9], Multiplicand[9], Multiplier[18]);
	and(WAND18[10], Multiplicand[10], Multiplier[18]);
	and(WAND18[11], Multiplicand[11], Multiplier[18]);
	and(WAND18[12], Multiplicand[12], Multiplier[18]);
	and(WAND18[13], Multiplicand[13], Multiplier[18]);
	and(WAND18[14], Multiplicand[14], Multiplier[18]);
	and(WAND18[15], Multiplicand[15], Multiplier[18]);
	and(WAND18[16], Multiplicand[16], Multiplier[18]);
	and(WAND18[17], Multiplicand[17], Multiplier[18]);
	and(WAND18[18], Multiplicand[18], Multiplier[18]);
	and(WAND18[19], Multiplicand[19], Multiplier[18]);
	and(WAND18[20], Multiplicand[20], Multiplier[18]);
	and(WAND18[21], Multiplicand[21], Multiplier[18]);
	and(WAND18[22], Multiplicand[22], Multiplier[18]);
	and(WAND18[23], Multiplicand[23], ~Multiplier[18]);
	
	and(WAND19[0], Multiplicand[0], Multiplier[19]);
	and(WAND19[1], Multiplicand[1], Multiplier[19]);
	and(WAND19[2], Multiplicand[2], Multiplier[19]);
	and(WAND19[3], Multiplicand[3], Multiplier[19]);
	and(WAND19[4], Multiplicand[4], Multiplier[19]);
	and(WAND19[5], Multiplicand[5], Multiplier[19]);
	and(WAND19[6], Multiplicand[6], Multiplier[19]);
	and(WAND19[7], Multiplicand[7], Multiplier[19]);
	and(WAND19[8], Multiplicand[8], Multiplier[19]);
	and(WAND19[9], Multiplicand[9], Multiplier[19]);
	and(WAND19[10], Multiplicand[10], Multiplier[19]);
	and(WAND19[11], Multiplicand[11], Multiplier[19]);
	and(WAND19[12], Multiplicand[12], Multiplier[19]);
	and(WAND19[13], Multiplicand[13], Multiplier[19]);
	and(WAND19[14], Multiplicand[14], Multiplier[19]);
	and(WAND19[15], Multiplicand[15], Multiplier[19]);
	and(WAND19[16], Multiplicand[16], Multiplier[19]);
	and(WAND19[17], Multiplicand[17], Multiplier[19]);
	and(WAND19[18], Multiplicand[18], Multiplier[19]);
	and(WAND19[19], Multiplicand[19], Multiplier[19]);
	and(WAND19[20], Multiplicand[20], Multiplier[19]);
	and(WAND19[21], Multiplicand[21], Multiplier[19]);
	and(WAND19[22], Multiplicand[22], Multiplier[19]);
	and(WAND19[23], Multiplicand[23], ~Multiplier[19]);
	
	and(WAND20[0], Multiplicand[0], Multiplier[20]);
	and(WAND20[1], Multiplicand[1], Multiplier[20]);
	and(WAND20[2], Multiplicand[2], Multiplier[20]);
	and(WAND20[3], Multiplicand[3], Multiplier[20]);
	and(WAND20[4], Multiplicand[4], Multiplier[20]);
	and(WAND20[5], Multiplicand[5], Multiplier[20]);
	and(WAND20[6], Multiplicand[6], Multiplier[20]);
	and(WAND20[7], Multiplicand[7], Multiplier[20]);
	and(WAND20[8], Multiplicand[8], Multiplier[20]);
	and(WAND20[9], Multiplicand[9], Multiplier[20]);
	and(WAND20[10], Multiplicand[10], Multiplier[20]);
	and(WAND20[11], Multiplicand[11], Multiplier[20]);
	and(WAND20[12], Multiplicand[12], Multiplier[20]);
	and(WAND20[13], Multiplicand[13], Multiplier[20]);
	and(WAND20[14], Multiplicand[14], Multiplier[20]);
	and(WAND20[15], Multiplicand[15], Multiplier[20]);
	and(WAND20[16], Multiplicand[16], Multiplier[20]);
	and(WAND20[17], Multiplicand[17], Multiplier[20]);
	and(WAND20[18], Multiplicand[18], Multiplier[20]);
	and(WAND20[19], Multiplicand[19], Multiplier[20]);
	and(WAND20[20], Multiplicand[20], Multiplier[20]);
	and(WAND20[21], Multiplicand[21], Multiplier[20]);
	and(WAND20[22], Multiplicand[22], Multiplier[20]);
	and(WAND20[23], Multiplicand[23], ~Multiplier[20]);
	
	and(WAND21[0], Multiplicand[0], Multiplier[21]);
	and(WAND21[1], Multiplicand[1], Multiplier[21]);
	and(WAND21[2], Multiplicand[2], Multiplier[21]);
	and(WAND21[3], Multiplicand[3], Multiplier[21]);
	and(WAND21[4], Multiplicand[4], Multiplier[21]);
	and(WAND21[5], Multiplicand[5], Multiplier[21]);
	and(WAND21[6], Multiplicand[6], Multiplier[21]);
	and(WAND21[7], Multiplicand[7], Multiplier[21]);
	and(WAND21[8], Multiplicand[8], Multiplier[21]);
	and(WAND21[9], Multiplicand[9], Multiplier[21]);
	and(WAND21[10], Multiplicand[10], Multiplier[21]);
	and(WAND21[11], Multiplicand[11], Multiplier[21]);
	and(WAND21[12], Multiplicand[12], Multiplier[21]);
	and(WAND21[13], Multiplicand[13], Multiplier[21]);
	and(WAND21[14], Multiplicand[14], Multiplier[21]);
	and(WAND21[15], Multiplicand[15], Multiplier[21]);
	and(WAND21[16], Multiplicand[16], Multiplier[21]);
	and(WAND21[17], Multiplicand[17], Multiplier[21]);
	and(WAND21[18], Multiplicand[18], Multiplier[21]);
	and(WAND21[19], Multiplicand[19], Multiplier[21]);
	and(WAND21[20], Multiplicand[20], Multiplier[21]);
	and(WAND21[21], Multiplicand[21], Multiplier[21]);
	and(WAND21[22], Multiplicand[22], Multiplier[21]);
	and(WAND21[23], Multiplicand[23], ~Multiplier[21]);
	
	and(WAND22[0], Multiplicand[0], Multiplier[22]);
	and(WAND22[1], Multiplicand[1], Multiplier[22]);
	and(WAND22[2], Multiplicand[2], Multiplier[22]);
	and(WAND22[3], Multiplicand[3], Multiplier[22]);
	and(WAND22[4], Multiplicand[4], Multiplier[22]);
	and(WAND22[5], Multiplicand[5], Multiplier[22]);
	and(WAND22[6], Multiplicand[6], Multiplier[22]);
	and(WAND22[7], Multiplicand[7], Multiplier[22]);
	and(WAND22[8], Multiplicand[8], Multiplier[22]);
	and(WAND22[9], Multiplicand[9], Multiplier[22]);
	and(WAND22[10], Multiplicand[10], Multiplier[22]);
	and(WAND22[11], Multiplicand[11], Multiplier[22]);
	and(WAND22[12], Multiplicand[12], Multiplier[22]);
	and(WAND22[13], Multiplicand[13], Multiplier[22]);
	and(WAND22[14], Multiplicand[14], Multiplier[22]);
	and(WAND22[15], Multiplicand[15], Multiplier[22]);
	and(WAND22[16], Multiplicand[16], Multiplier[22]);
	and(WAND22[17], Multiplicand[17], Multiplier[22]);
	and(WAND22[18], Multiplicand[18], Multiplier[22]);
	and(WAND22[19], Multiplicand[19], Multiplier[22]);
	and(WAND22[20], Multiplicand[20], Multiplier[22]);
	and(WAND22[21], Multiplicand[21], Multiplier[22]);
	and(WAND22[22], Multiplicand[22], Multiplier[22]);
	and(WAND22[23], Multiplicand[23], ~Multiplier[22]);
	
	and(WAND23[0], ~Multiplicand[0], Multiplier[23]);
	and(WAND23[1], ~Multiplicand[1], Multiplier[23]);
	and(WAND23[2], ~Multiplicand[2], Multiplier[23]);
	and(WAND23[3], ~Multiplicand[3], Multiplier[23]);
	and(WAND23[4], ~Multiplicand[4], Multiplier[23]);
	and(WAND23[5], ~Multiplicand[5], Multiplier[23]);
	and(WAND23[6], ~Multiplicand[6], Multiplier[23]);
	and(WAND23[7], ~Multiplicand[7], Multiplier[23]);
	and(WAND23[8], ~Multiplicand[8], Multiplier[23]);
	and(WAND23[9], ~Multiplicand[9], Multiplier[23]);
	and(WAND23[10], ~Multiplicand[10], Multiplier[23]);
	and(WAND23[11], ~Multiplicand[11], Multiplier[23]);
	and(WAND23[12], ~Multiplicand[12], Multiplier[23]);
	and(WAND23[13], ~Multiplicand[13], Multiplier[23]);
	and(WAND23[14], ~Multiplicand[14], Multiplier[23]);
	and(WAND23[15], ~Multiplicand[15], Multiplier[23]);
	and(WAND23[16], ~Multiplicand[16], Multiplier[23]);
	and(WAND23[17], ~Multiplicand[17], Multiplier[23]);
	and(WAND23[18], ~Multiplicand[18], Multiplier[23]);
	and(WAND23[19], ~Multiplicand[19], Multiplier[23]);
	and(WAND23[20], ~Multiplicand[20], Multiplier[23]);
	and(WAND23[21], ~Multiplicand[21], Multiplier[23]);
	and(WAND23[22], ~Multiplicand[22], Multiplier[23]);
	and(WAND23[23], Multiplicand[23], Multiplier[23]);

	
//////////////////////////////////////////////////////////////////////////

	KSA_48bit KSA0  (.Ci(1'b0), .A({24'b0, WAND0}),         .B({23'b0, WAND1, 1'b0}),   .S(W0),  .Co());
	KSA_48bit KSA1  (.Ci(1'b0), .A({22'b0, WAND2, 2'b0}),   .B({21'b0, WAND3, 3'b0}),   .S(W1),  .Co());
	KSA_48bit KSA2  (.Ci(1'b0), .A({20'b0, WAND4, 4'b0}),   .B({19'b0, WAND5, 5'b0}),   .S(W2),  .Co());
	KSA_48bit KSA3  (.Ci(1'b0), .A({18'b0, WAND6, 6'b0}),   .B({17'b0, WAND7, 7'b0}),   .S(W3),  .Co());
	KSA_48bit KSA4  (.Ci(1'b0), .A({16'b0, WAND8, 8'b0}),   .B({15'b0, WAND9, 9'b0}),   .S(W4),  .Co());
	KSA_48bit KSA5  (.Ci(1'b0), .A({14'b0, WAND10, 10'b0}), .B({13'b0, WAND11, 11'b0}), .S(W5),  .Co());
	KSA_48bit KSA6  (.Ci(1'b0), .A({12'b0, WAND12, 12'b0}), .B({11'b0, WAND13, 13'b0}), .S(W6),  .Co());
	KSA_48bit KSA7  (.Ci(1'b0), .A({10'b0, WAND14, 14'b0}), .B({9'b0, WAND15, 15'b0}),  .S(W7),  .Co());
	KSA_48bit KSA8  (.Ci(1'b0), .A({8'b0, WAND16, 16'b0}),  .B({7'b0, WAND17, 17'b0}),  .S(W8),  .Co());
	KSA_48bit KSA9  (.Ci(1'b0), .A({6'b0, WAND17, 18'b0}),  .B({5'b0, WAND19, 19'b0}),  .S(W9),  .Co());
	KSA_48bit KSA10 (.Ci(1'b0), .A({4'b0, WAND20, 20'b0}),  .B({3'b0, WAND21, 21'b0}),  .S(W10), .Co());
	KSA_48bit KSA11 (.Ci(1'b0), .A({2'b0, WAND22, 22'b0}),  .B({1'b0, WAND23, 23'b0}),  .S(W11), .Co());
	KSA_48bit KSA12 (.Ci(1'b0), .A(W0),    .B(W1),    .S(W12),   .Co());
	KSA_48bit KSA13 (.Ci(1'b0), .A(W2),    .B(W3),    .S(W13),   .Co());
	KSA_48bit KSA14 (.Ci(1'b0), .A(W4),    .B(W5),    .S(W14),   .Co());
	KSA_48bit KSA15 (.Ci(1'b0), .A(W6),    .B(W7),    .S(W15),   .Co());
	KSA_48bit KSA16 (.Ci(1'b0), .A(W8),    .B(W9),    .S(W16),   .Co());
	KSA_48bit KSA17 (.Ci(1'b0), .A(W10),   .B(W11),   .S(W17),   .Co());
	KSA_48bit KSA18 (.Ci(1'b0), .A(W12),   .B(W13),   .S(W18),   .Co());
	KSA_48bit KSA19 (.Ci(1'b0), .A(W14),   .B(W15),   .S(W19),   .Co());
	KSA_48bit KSA20 (.Ci(1'b0), .A(W16),   .B(W17),   .S(W20),   .Co());
	KSA_48bit KSA21 (.Ci(1'b0), .A(W18),   .B(W19),   .S(W21),   .Co());
	KSA_48bit KSA22 (.Ci(1'b0), .A(W20),   .B(W21),   .S(Result),   .Co());

//////////////////////////////////////////////////////////////////////////

  /* KSA_24bit KSA0(.Ci(1'b0), .A({12'b0, WAND0}), .B({11'b0, WAND1, 1'b0}), .S(W0), .Co());
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
  KSA_24bit KSA12(.Ci(1'b0), .A(W10), .B(W11), .S(W12), .Co()); */
  
//////////////////////////////////////////////////////////////////////////

	/* always @(posedge clk) begin
		if(rst == 1'b1) begin			
			Result[23:0] <= 1'b0;
		end else begin
			Result[23:0] <= W12[23:0];
		end
	end */
	
endmodule

