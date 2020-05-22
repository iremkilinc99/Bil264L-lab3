`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 09:45:43
// Design Name: 
// Module Name: Adder3Bit
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


module Adder3Bit(
input [2:0]sayi1,[2:0]sayi2,
output [3:0]sum
);


half_adder halfAdder(.a(sayi1[0]),.b(sayi2[0]),.carry_out(cout1),.sum(sum[0]));
full_adder fa1(.a(sayi1[1]),.b(sayi2[1]),.cin(cout1),.cout(cout2),.sum(sum[1]));
full_adder fa2(.a(sayi1[2]),.b(sayi2[2]),.cin(cout2),.cout(sum[3]),.sum(sum[2]));


endmodule
