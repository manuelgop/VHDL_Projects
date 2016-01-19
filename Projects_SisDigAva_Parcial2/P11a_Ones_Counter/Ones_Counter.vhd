----------------------------------------------------------------------------------
-- Company:   ITESM
-- Engineer:  RickWare
-- 
-- Create Date:    17:34:15 09/11/2013 
-- Design Name: 
-- Module Name:    Ones_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Display the total number of inputs containing a logic 1
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
--Packages needed for addition operation
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Ones_Counter is
    Port ( Num   : in   STD_LOGIC_VECTOR (7 downto 0);
           Seg   : out  STD_LOGIC_VECTOR (0 to 6);
           Anode : out  STD_LOGIC_VECTOR (3 downto 0));
end Ones_Counter;

architecture Behavioral of Ones_Counter is
  -- Define embedded counters
  type sum_array is array (0 to 7) of STD_LOGIC_VECTOR (3 downto 0);
  signal Sumador: sum_array;
begin
  --Point of view of a programmer, does not work to describe
  --Hardware
--  Count_Ones: process(Num,Count)
--  begin
--    Count <= "0000";
--	 for i in 0 to 7 loop
--	   if Num(i) = '1' then
--		  Count <= Count + 1;
--		else
--		  Count <= Count + 0;
--		end if;
--	 end loop;
--  end process Count_Ones;
  
  --Point of view of an engineer describing Hardwar
  Count_Ones: process(Num,Sumador)
  begin
    --Initial condition
	 Sumador(0) <= "000" & Num(0);
	 for i in 1 to 7 loop
	   if Num(i) = '1' then
		  Sumador(i) <= Sumador(i-1) + 1;
		else
		  Sumador(i) <= Sumador(i-1);
		end if;
	  end loop;
  end process Count_Ones;

   -- Section that displays "Sumador" to the 7-Segment display
	with Sumador(7) select
			Seg <="0000001" when "0000", 
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",		
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0000100" when "1001",
					"0001000" when "1010",
					"1100000" when "1011",
					"0110001" when "1100",
					"1000010" when "1101",
					"0110000" when "1110",
					"0111000" when "1111",
					"1000001" when others; 

  -- Select one out of the 4 7-segment displays in the Digilent board
  Anode <= "1110";					

end Behavioral;

