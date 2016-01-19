----------------------------------------------------------------------------------
-- Company:  ITESM
-- Engineer: Elmer Homero
-- 
-- Create Date:    18:36:23 09/04/2013 
-- Design Name:    Arithmetic Logic Unit
-- Module Name:    ALU - Behavioral 
-- Project Name:   Arithmetic Logic Unit
-- Target Devices: Spartan 6 (Nexys3)
-- Tool versions:  v14.6
-- Description: Implementation of an ALU with 8 arithmetic and
--              8 logic functions
-- Dependencies: None
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: Pimp my Nexys3 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Packages needed for arithmetic operations
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;

entity ALU is
    Port ( A   : in   STD_LOGIC_VECTOR (2 downto 0);
           B   : in   STD_LOGIC_VECTOR (2 downto 0);
           Cin : in   STD_LOGIC;
           Sel : in   STD_LOGIC_VECTOR (3 downto 0);
           Res : out  STD_LOGIC_VECTOR (2 downto 0));
end ALU;

architecture Behavioral of ALU is
  --Embedded signals declaration
  signal Arith: STD_LOGIC_VECTOR (2 downto 0);
  signal Logic: STD_LOGIC_VECTOR (2 downto 0);
begin
   -- ALU will be described concurently
   
	-- Describe the Arithmetic section
	with Sel(2 downto 0) select
      Arith <=  A           when "000",
                A + 1       when "001",
					 -- YOU fill in the rest
                A + B + Cin when others;
					 
	-- Describe the Logic section
	with Sel(2 downto 0) select
      Logic <=  not A       when "000",
                not B       when "001",
					 -- YOU fill in the rest
                A xnor B    when others;
					 
   -- Describe the Multiplexer
	Res <= Arith when Sel(3) = '0' else
	       Logic;

end Behavioral;









