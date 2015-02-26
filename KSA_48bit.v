`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:04 01/07/2014 
// Design Name: 
// Module Name:    KSA_24bit 
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
module KSA_48bit(Ci, A, B, S, Co);
	input Ci;						//Carry in
	input [47:0] A, B;			//Números a serem somados
	output wire [47:0] S;		//Soma
	output wire Co;				//Carry out
	
	wire W1, W2, W3, W4, W5;
	//wire [23:0] WS;
	
	KoggeStoneAdder8bit KSA0(.A(A[7:0]),   .B(B[7:0]),   .Ci(Ci), .S(S[7:0]),   .Co(W1));
	KoggeStoneAdder8bit KSA1(.A(A[15:8]),  .B(B[15:8]),  .Ci(W1), .S(S[15:8]),  .Co(W2));
	KoggeStoneAdder8bit KSA2(.A(A[23:16]), .B(B[23:16]), .Ci(W2), .S(S[23:16]), .Co(W3));
	KoggeStoneAdder8bit KSA3(.A(A[31:24]), .B(B[31:24]), .Ci(W3), .S(S[31:24]), .Co(W4));
	KoggeStoneAdder8bit KSA4(.A(A[39:32]), .B(B[39:32]), .Ci(W4), .S(S[39:32]), .Co(W5));
	KoggeStoneAdder8bit KSA5(.A(A[47:40]), .B(B[47:40]), .Ci(W5), .S(S[47:40]), .Co(Co));
	
	//Transformação de lógica sequencial para combinacional, para aumentar a velocidade. O controle será feito pelo top module.
	//always @(posedge clk) begin
		//if (rst) begin
			//S[23:0] <= 1'b0;
			//Co <= 1'b0;
		//end else begin
			//S[23:0] <= WS[23:0];
			//Co <= WCo;
		//end
	//end

endmodule
