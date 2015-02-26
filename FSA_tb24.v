`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:15:35 02/19/2014
// Design Name:   FSA
// Module Name:   D:/Development/Workspace/HDL/ISE/FSA/FSA_tb.v
// Project Name:  FSA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FSA_tb;

	// Inputs
	reg clk;
	reg rst;
	reg [23:0] Multiplicand;
	reg [23:0] Multiplier;

	// Outputs
	wire [47:0] Result;
	
	integer input_file, read_status;

	// Instantiate the Unit Under Test (UUT)
	FSA_24bit_u uut ( 
	   	 
		.Multiplicand(Multiplicand), 
		.Multiplier(Multiplier), 
		.Result(Result)
		
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		Multiplicand = 0;
		Multiplier = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		input_file = $fopen("input.txt", "r");
		$display("time A B S");
		$monitor("%tns %d %d %d", $time, Multiplicand, Multiplier, Result);
		
		while(!$feof(input_file)) begin
		    
			read_status = $fscanf(input_file, "%b %d %d\n", rst, Multiplicand, Multiplier);
			@(posedge clk);
		end
		
		#100
		$stop;

	end
	
	always begin
		#1 clk = ~clk;
	end
      
endmodule

