`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:16:42 09/05/2013
// Design Name:   FFs
// Module Name:   D:/Projects_SisDigAva/P21_Verilog_FFs/FFs_vtf.v
// Project Name:  P21_Verilog_FFs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FFs
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FFs_vtf;

	// Inputs
	reg Clk;
	reg Rst;
	reg D;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	FFs uut (
		.Clk(Clk), 
		.Rst(Rst), 
		.D(D), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Rst = 0;
		D = 0;
      
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

