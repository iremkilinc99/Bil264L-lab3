`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 09:26:03
// Design Name: 
// Module Name: full_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module full_adder(
input a,b,cin,
output sum,cout
);
 wire cout1,sum1;
 
half_adder ha1 (.a(a),.b(b),.carry_out(cout1),.sum(sum1));
half_adder ha2 (.a(sum1),.b(cin),.carry_out(cout),.sum(sum));

or(cout,cout1,cout);

endmodule
