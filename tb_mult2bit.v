`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 14:25:10
// Design Name: 
// Module Name: tb_mult2bit
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


module tb_mult2bit(
);

reg cout;
reg [1:0]a;
reg [1:0]b; 
wire [3:0]sum;
 
 mult2bit uut (
 .a(a),
 .b(b),
 .cout(cout),
 .product(sum)
 );

initial begin
 
 a = 2'b00; b = 2'b00; #50;
 monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 
 a = 2'b10; b = 2'b01; #50;
 monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );

 a = 2'b10; b = 2'b10; #50;
 monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 2'b01; b = 2'b11; #50;
 monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 2'b11; b = 2'b10; #50;
 monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 2'b211; b = 2'b11; #50;
 monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );

end

endmodule
