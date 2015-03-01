`timescale 1ns / 1ps
module FloatMultiplier(Multiplicand, Multiplier, Result);
	
	
	input wire [31:0] Multiplicand;
	input wire [31:0] Multiplier;
	
	output wire [31:0] Result;
	
	wire [47:0] Wmult;
	wire [23:0] Wmux, Wround;
	wire [7:0] WE1;
	
	
	
	
	

    // mantissa multiplication:
	FSA_24bit_u Mult( .Multiplicand({1'b1,Multiplicand[22:0]}), .Multiplier({1'b1,Multiplier[22:0]}), .Result(Wmult));
	Mux m2to1( .sel(Wmult[47]), .in0(Wmult[45:22]), .in1(Wmult[46:23]), .out(Wmux));
	//or o1(Result[0],Wmux[1],Wmux[0]);
    
	//rounding:
	KSA_24bit addr( .Ci(Wmux[0]), .A({1'b0,Wmux[23:1]}), .B(24'b0), .S(Wround), .Co());
	
	assign Result[22:0] = Wround[22:0];
	
	// exponent addition:
	KoggeStoneAdder8bit Add1( .A(Multiplicand[30:23]), .B(8'b10000001), .Ci(Wmult[47]), .S(WE1), .Co());
	KoggeStoneAdder8bit Add2( .A(WE1), .B(Multiplier[30:23]), .Ci(Wround[23]), .S(Result[30:23]), .Co());
	// sign bit:
	xor x1(Result[31],Multiplicand[31],Multiplier[31]);

	
	
endmodule

