----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:28:59 09/04/2013 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Libraries used for standard_logic_vector arithmetic operations
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.all;

entity ALU is
    Port ( A    : in   STD_LOGIC_VECTOR (2 downto 0);
           B    : in   STD_LOGIC_VECTOR (2 downto 0);
           Cin  : in   STD_LOGIC;
           Sel  : in   STD_LOGIC_VECTOR (3 downto 0);
           Res  : out  STD_LOGIC_VECTOR (2 downto 0);
           Cout : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
  -- Embedded signals for the Arithmetic and Logic Modules
  signal Arith: STD_LOGIC_VECTOR (3 downto 0);
  signal Logic: STD_LOGIC_VECTOR (3 downto 0);
begin
  -- Concurrent ALU definition
  
  -- Implement the Arithmetic section of the ALU
  with (Sel(2 downto 0)) select
      Arith <= ('0' & A)                   when "000",
               (('0' & A) + 1)             when "001",
					(('0' & A) - 1)             when "010",
					-- Fill in the rest
               ('0' & A) + ('0' & B) + Cin when others;
					
  -- Implement the Logic section of the ALU
  with (Sel(2 downto 0)) select
      Logic <= ('0' & (not A))             when "000",
		         ('0' & (not B))             when "001",
					-- Fill in the rest
					('0' & (A xnor B))          when others;
					
  -- Implement the Multiplexor
  Res <= Arith(2 downto 0) when Sel(3) = '0' else
         Logic(2 downto 0);
			
  Cout <= Arith(3) when Sel(3) = '0' else
          Logic(3);

end Behavioral;

