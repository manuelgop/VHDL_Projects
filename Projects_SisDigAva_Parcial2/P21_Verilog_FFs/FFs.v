`timescale 1ns / 1ps

//Flip-Flop declarations

module FFs(Clk,Rst,D,Q);

  input  Clk;
  input  Rst;
  input  D;
  output Q;
  reg    Q;
  
  // D Flip-Flop with Synchronous Reset
//  always @ (posedge Clk)
//  begin
//    if (Rst == 1)
//	   Q <= 1'b0;
//	 else
//	 begin
//	   Q <= D;
//	 end
//  end
  
  // D Flip-Flop with Asynchronous Reset
  
  always @ (posedge Clk or posedge Rst)
  begin
    if (Rst)
	   Q <= 1'b0;
	 else
	 begin
	   Q <= D;
	 end
  end



endmodule 