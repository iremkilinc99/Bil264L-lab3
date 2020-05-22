`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 09:40:12
// Design Name: 
// Module Name: tb_fullAdder
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

module tb_fullAdder(
);

reg a,b,cin; 
wire sum,cout;
 
 full_adder uut (
 .a(a),
 .b(b),
 .cin(cin),
 .cout(cout),
 .sum(sum)
 );
 
 initial begin
       a = 1'b0; b = 1'b0; cin = 1'b0; #50;
       a = 1'b0; b = 1'b0; cin = 1'b1; #50;
       a = 1'b0; b = 1'b1; cin = 1'b0; #50;
       a = 1'b0; b = 1'b1; cin = 1'b1; #50;
       a = 1'b1; b = 1'b0; cin = 1'b0; #50;
       a = 1'b1; b = 1'b0; cin = 1'b1; #50;
       a = 1'b1; b = 1'b1; cin = 1'b0; #50;
       a = 1'b1; b = 1'b1; cin = 1'b1; #50;
    end
    



endmodule
