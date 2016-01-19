----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:00:16 10/16/2013 
-- Design Name: 
-- Module Name:    Barrel_Shifter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Use of Barrel Shifters
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Barrel shifters are mainly used for
--                      re-rounting buses
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Barrel_Shifter is
    Port ( Bus_A : in   BIT_VECTOR (7 downto 0);
	        n     : in   integer range 0 to 3;
           Bus_B : out  BIT_VECTOR (7 downto 0));
end Barrel_Shifter;

architecture Behavioral of Barrel_Shifter is

begin
  -- No shift Barrel Shifter
  --Bus_B <= Bus_A;
  
  -- Case 1 Barrel Shifter
  -- Rotate 1 right straight shift
  -- Look at your notes
  --Bus_B <= Bus_A(0) & Bus_A(7 downto 1);
  
  -- Case 2 Barrel Shifter
  -- Rotate 2 right straight shift
  -- Look at your notes
  -- Bus_B <= Bus_A(1 downto 0) & Bus_A(7 downto 2);
  -- Bus_B <= Bus_A(1) & Bus_A(0) & Bus_A(7 downto 2);
  
  -- Case 3 Barrel Shifter
  -- Rotate left 1-line
  -- Bus_B <= Bus_A(6 downto 0) & Bus_A(7);
	Bus_B <= Bus_A rol n;
  
  -- Case 4 Barrel Shifter
  -- Nibble swapper
  -- Bus_B <= Bus_A(3 downto 0) & Bus_A(7 downto 4);
  
  -- Case 4a Barrel Shifter
  -- Conditional Nibble Swapper.
  -- When Swap=0 no swapping takes place, otherwise swapping occurs
--  Nibble_exchange: process (Swap,Bus_A)
--  begin
--    if Swap = '0' then
--	   Bus_B <= Bus_A;
--	 else
--	   Bus_B <= Bus_A(3 downto 0) & Bus_A(7 downto 4);
--	 end if;
--  end process Nibble_exchange;
  
  -- Case 5 Barrel Shifter
  -- Reverse order of bits
--  Reserve:
--    for i in Bus_B'left downto Bus_B'right generate
--	 begin
--	   Bus_B(i) <= Bus_A(Bus_B'left - i);
--	 end generate;
  
  
end Behavioral;









