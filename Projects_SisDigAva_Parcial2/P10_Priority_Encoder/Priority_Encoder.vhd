----------------------------------------------------------------------------------
-- Company:   ITESM
-- Engineer:  Elmer Homero
-- 
-- Create Date:    08:09:03 09/05/2013 
-- Design Name:    Priority Encoder
-- Module Name:    Priority_Encoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    8 line to 3 line Priority Encoder
--                 similar to the 74LS148
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity Priority_Encoder is
    Port ( I : in   STD_LOGIC_VECTOR (7 downto 0);
           A : out  STD_LOGIC_VECTOR (2 downto 0));
end Priority_Encoder;

architecture Behavioral of Priority_Encoder is

begin
  -- Priority using the if-else if-endif sequential statement
  process(I)
  begin
    if      I(7) = '0' then A <= "111";
      elsif I(6) = '0' then A <= "110";
      elsif I(5) = '0' then A <= "101";
      elsif I(4) = '0' then A <= "100";
      elsif I(3) = '0' then A <= "011";
      elsif I(2) = '0' then A <= "010";
      elsif I(1) = '0' then A <= "001";
      elsif I(0) = '0' then A <= "000";
	   else                  A <= "000";
    end if;
  end process;

end Behavioral;
