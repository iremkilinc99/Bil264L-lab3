`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 15:05:27
// Design Name: 
// Module Name: mult3bit
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


module mult3bit(
input a[2:0],b[2:0],
output product[5:0],cout
);

and (product[0],a[0],b[0]);
and (and1,a[0],b[1]);
and (and2,a[0],b[2]);
and (and3,a[1],b[0]);
and (and4,a[1],b[1]);
and (and5,a[1],b[2]);
and (and6,a[2],b[0]);
and (and7,a[2],b[1]);
and (and8,a[2],b[2]);

half_adder(.a(and1),.b(and2),.carry_out(cout1),.sum(product[1]));
half_adder(.a(and3),.b(and4),.carry_out(cout2),.sum(sum1));
full_adder(.a(sum1),.b(and5),.cin(cout1),.cout(cout3),.sum(product[2]));
full_adder(.a(and6),.b(and7),.cin(cout2),.cout(cout4),.sum(sum2));
half_adder(.a(sum2),.b(cout3),.carry_out(cout5),.sum(product[3]));
full_adder(.a(and8),.b(cout5),.cin(cout4),.cout(product[5]),.sum(product[4]));





endmodule
