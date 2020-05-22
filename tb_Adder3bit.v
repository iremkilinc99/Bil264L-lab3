`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2020 10:08:25
// Design Name: 
// Module Name: tb_Adder3bit
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


module tb_Adder3bit(
);
reg [2:0]a;
reg [2:0]b; 
wire [3:0]sum;
 
 Adder3Bit uut (
 .sayi1(a),
 .sayi2(b),
 .sum(sum)
 );

initial begin
 
 a = 3'b000; b = 3'b000; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 
 a = 3'b101; b = 3'b001; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );

 a = 3'b010; b = 3'b010; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 3'b001; b = 3'b011; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 3'b000; b = 3'b100; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 3'b011; b = 3'b101; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 3'b111; b = 3'b110; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

 a = 3'b100; b = 3'b111; #50;
 $monitor( "a(%b) + b(%b)  = carry sum(%b)", a, b, sum );
 

end

 
 
endmodule
