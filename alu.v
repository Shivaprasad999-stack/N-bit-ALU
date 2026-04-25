`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2026 14:43:12
// Design Name: 
// Module Name: alu
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


module alu #(parameter N=4)(a,b,sel,result,carry,zero,overflow,sign);
input [N-1:0]a,b;
input [3:0]sel;
output reg [N-1:0]result;
output carry;
output zero;
output sign;
output overflow;


//AND-SUB
wire is_sub;
assign is_sub=(sel==4'b0011);

//modify b so that we can use this for both addition and subtraction
wire[N-1:0]b_mod;
assign b_mod=is_sub?~b:b;

wire[N:0] sum_ext;
assign sum_ext=a+b_mod+is_sub;

//outputs
assign carry=sum_ext[N];
assign sign=result[N-1];
assign zero=(result==0);

//overflow(if both inputs are positive and the result is -ve, or vice versa then overflow condition takes place)
assign overflow = (a[N-1] & b_mod[N-1] & ~sum_ext[N-1]) |
                  (~a[N-1] & ~b_mod[N-1] & sum_ext[N-1]);
    
//MAIN ALU
always@(*)
begin
case(sel)
        4'b0000:result=a&b;                   //AND
        4'b0001: result = a | b;              // OR
        4'b0010: result = sum_ext[N-1:0];     // ADD
        4'b0011: result = sum_ext[N-1:0];     // SUB
        4'b0100: result = a ^ b;              // XOR
        4'b0101: result = ~a;                 // NOT
        4'b0110: result = a << 1;             // SHIFT LEFT
        4'b0111: result = a >> 1;             // SHIFT RIGHT
        4'b1000: result = (a == b);           // EQ
        4'b1001: result = (a > b);            // GT
        4'b1010: result = (a < b);            // LT
        default: result = {N{1'b0}};
    endcase
end

endmodule
