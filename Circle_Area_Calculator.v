module Circle_Area_Calculator(clk, rst, radius, area);
  input wire clk, rst;
  input wire [31:0] radius;
  output reg [31:0] area;
  
  wire [31:0] Square_radius, Result;
  
  //IEEE 754 float point representation of 3,14159 = Pi.
  parameter Pi = 32'b01000000010010010000111111010000;
  
  FloatMultiplier FM0(.Multiplicand(radius), .Multiplier(radius), .Result(Square_radius));
  FloatMultiplier FM1(.Multiplicand(Square_radius), .Multiplier(Pi), .Result(Result));
  
  always @(posedge clk) begin
	if(rst) begin
		area[31:0] <= 1'b0;
	end else begin
		area[31:0] <= Result[31:0];
	end
  end
  
endmodule