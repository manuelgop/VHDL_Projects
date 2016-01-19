----------------------------------------------------------------------------------
-- Company:    ITESM
-- Engineer:   RickWare
-- 
-- Create Date:    11:39:17 09/11/2013 
-- Design Name: 
-- Module Name:    Ones_Counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Displays the total number on input containing the value 1
--
-- Dependencies: 
--
-- Revision:       v1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ones_Counter is
    Port ( Inp   : in   STD_LOGIC_VECTOR (7 downto 0);
           Seg   : out  STD_LOGIC_VECTOR (0 to 6);
           Anode : out  STD_LOGIC_VECTOR (3 downto 0));
end Ones_Counter;

architecture Behavioral of Ones_Counter is
  type vector is array (0 to 7) of STD_LOGIC_VECTOR(3 downto 0); 
  signal Count: vector;
begin
  -- Concurrent implementation
  Count(0) <= "000" & Inp(0);
  Count_Ones:
   for i in 1 to 7 generate
      begin
         Count(i) <= Count(i-1) + 1 when Inp(i) = '1' else
			            Count(i-1);
   end generate;

	with Count(7) select
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

  Anode <= "1110";					

end Behavioral;

