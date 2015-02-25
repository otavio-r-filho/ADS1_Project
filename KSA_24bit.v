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
module KSA_24bit(Ci, A, B, S, Co);
	input Ci;						//Carry in
	input [23:0] A, B;			//Números a serem somados
	output wire [23:0] S;		//Soma
	output wire Co;				//Carry out
	
	wire W1, W2;
	//wire [23:0] WS;
	
	KoggeStoneAdder8bit KSA0(.A(A[7:0]),   .B(B[7:0]),   .Ci(Ci), .S(S[7:0]),   .Co(W1));
	KoggeStoneAdder8bit KSA1(.A(A[15:8]),  .B(B[15:8]),  .Ci(W1), .S(S[15:8]),  .Co(W2));
	KoggeStoneAdder8bit KSA2(.A(A[23:16]), .B(B[23:16]), .Ci(W2), .S(S[23:16]), .Co(Co));
	
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
