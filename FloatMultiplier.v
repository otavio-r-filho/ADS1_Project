`timescale 1ns / 1ps
module FloatMultiplier(Multiplicand, Multiplier, Result);
	
	
	input [31:0] Multiplicand;
	input [31:0] Multiplier;
	
	output wire [31:0] Result;
	
	
	wire [47:0] Wmult;
	wire [23:0] Wmux;
	wire [7:0] WE1;
	
	
	
	

    // mantisa multiplication:
	FSA_24bit Mult( .Multiplicand({1'b1,Multiplicand[22:0]}), .Multiplier({1'b1,Multiplier[22:0]}), .Result(Wmult), .Co());
	Mux m2to1( .sel(Wmult[47]), .in0(Wmult[46:23]), .in1(Wmult[45:22]), .out(Wmux));
	or o1(Result[0],Wmux[1],Wmux[0]);
	assign Result[22:1]= Wmux[23:2];
	
	// exponent addition:
	KoggeStoneAdder8bit Add1( .A(Multiplicand[30:23]), .B(8'b10000001), .Ci(1'b0), .S(WE1), .Co());
	KoggeStoneAdder8bit Add2( .A(WE1), .B(Multiplier[30:23]), .Ci(Wmult[47]), .S(Result[30:23]), .Co());
	// sign bit:
	xor x1(Result[31],Multiplicand[31],Multiplier[31]);

	
	
endmodule

