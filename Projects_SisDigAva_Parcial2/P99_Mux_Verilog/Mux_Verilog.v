`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:38:29 09/10/2013 
// Design Name: 
// Module Name:    Mux_Verilog 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_Verilog(Ent, Sel, Sal);

    input [3:0] Ent;
    input [1:0] Sel;
    output Sal; 
    reg Sal;
  
  always @(Sel or Ent)
  begin
    case (Sel)
	   2'b00 : Sal <= Ent[0];
		2'b01 : Sal <= Ent[1];
		2'b10 : Sal <= Ent[2];
		2'b11 : Sal <= Ent[3];
	 endcase
  end

endmodule
