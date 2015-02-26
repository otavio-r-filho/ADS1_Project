module Mux(sel,in0,in1,out);
input wire sel;
input wire [23:0] in0,in1;
output wire [23:0] out;

assign out=(sel)? in1:in0;

endmodule