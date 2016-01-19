----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:37:01 10/06/2010 
-- Design Name: 
-- Module Name:    DecBCD7Seg - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DecBCD7Seg is
  port (
	 BCD   : in  STD_LOGIC_VECTOR (3 downto 0);
	 Seg   : out STD_LOGIC_VECTOR (7 downto 0));
end DecBCD7Seg;

architecture Behavioral of DecBCD7Seg is

begin

  --Implementacion de un decodificador Binario a 7 segmentos que tambien sirve como
  --Decodificador BCD a 7 segmentos
  --Los segmentos encienden con un 0 logico, se apagan con un 1 logico
  with BCD select
        --  .gfedcba
    	Seg <= "11000000" when X"0",
			 "11111001" when X"1",
			 "10100100" when X"2",
			 "10110000" when X"3",
			 "10011001" when X"4",
			 "10010010" when X"5",
			 "10000010" when X"6",
			 "11111000" when X"7",
			 "10000000" when X"8",
			 "10010000" when X"9",
			 "10000110" when X"A",
			 "10000110" when X"B",
			 "10000110" when X"C",
			 "10000110" when X"D",
			 "10000110" when X"E",
			 "10000110" when X"F",
			 "10000110" when others;
			 

end Behavioral;

