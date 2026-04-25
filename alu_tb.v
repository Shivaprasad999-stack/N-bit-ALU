`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 15:25:03
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;
parameter N=4;
reg [N-1:0]a,b;
reg[3:0]sel;
wire [N-1:0]result;
wire carry,zero,sign,overflow;
alu #(N) dut(a,b,sel,result,carry,zero,overflow,sign);
initial begin
$monitor("time,a=%b,b=%b,sel=%b,result=%b",a,b,sel,result);
a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;
    
    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;
    
    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;

    a = $random % (1<<N);
    b = $random % (1<<N);
    sel = $random % 11;
    #1;
    
    $finish;
end
endmodule
