`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 14:09:40
// Design Name: 
// Module Name: mult2bit
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


module mult2bit(
input a[1:0],b[1:0],
output product[3:0],cout
);

and and00(product[0],a[0],b[0]);
and and01(and1,a[0],b[1]);
and and10(and2,a[1],b[0]);
and and11(and3,a[1],b[1]);

half_adder(.a(and2),.b(and1),.carry_out(cout),.sum(product[1]));
half_adder(.a(and3),.b(cout),.carry_out(product[3]),.sum(product[2]));

endmodule
