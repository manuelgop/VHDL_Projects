`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:43:54 09/10/2013
// Design Name:   Mux_Verilog
// Module Name:   D:/Projects_SisDigAva/P99_Mux_Verilog/Mux_Verilog_vtf.v
// Project Name:  P99_Mux_Verilog
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_Verilog
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_Verilog_vtf;

	// Inputs
	reg [3:0] Ent;
	reg [1:0] Sel;

	// Outputs
	wire Sal;

	// Instantiate the Unit Under Test (UUT)
	Mux_Verilog uut (
		.Ent(Ent), 
		.Sel(Sel), 
		.Sal(Sal)
	);

	initial begin
		// Initialize Inputs
		Ent = 0;
		Sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		Ent = 4'b0011; Sel = 2'b00; #100;
		Ent = 4'b1011; Sel = 2'b00; #100;
		Ent = 4'b1110; Sel = 2'b01; #100;
		Ent = 4'b1100; Sel = 2'b01; #100;
		Ent = 4'b1010; Sel = 2'b10; #100;
		Ent = 4'b0110; Sel = 2'b10; #100;
		Ent = 4'b1000; Sel = 2'b11; #100;
		Ent = 4'b0011; Sel = 2'b11; #100;
		Ent = 4'b1110; Sel = 2'b00; #100;
		Ent = 4'b0100; Sel = 2'b00; #100;
		Ent = 4'b1101; Sel = 2'b01; #100;
		Ent = 4'b0101; Sel = 2'b01; #100;
		Ent = 4'b0011; Sel = 2'b10; #100;
		Ent = 4'b0101; Sel = 2'b10; #100;
		Ent = 4'b0100; Sel = 2'b11; #100;
		Ent = 4'b1001; Sel = 2'b11; #100;
		Ent = 4'b1111; Sel = 2'b00; #100;
		Ent = 4'b1011; Sel = 2'b00; #100;

	end
      
endmodule

