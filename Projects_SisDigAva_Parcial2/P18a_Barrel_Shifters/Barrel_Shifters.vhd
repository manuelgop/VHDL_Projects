----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:55:19 10/16/2013 
-- Design Name: 
-- Module Name:    Barrel_Shifters - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Several implementations of Barrel
--                 Shifters
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Please look at your notes for
--                      the parcticular description
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Barrel_Shifters is
    Port ( Bus_A : in   STD_LOGIC_VECTOR (7 downto 0);
	        Swap  : in   STD_LOGIC;
           Bus_B : out  STD_LOGIC_VECTOR (7 downto 0));
end Barrel_Shifters;

architecture Behavioral of Barrel_Shifters is

begin
  -- Case 1: Direct connection
  -- Bus_B <= Bus_A;
  
  -- Case 2: Rotate Right 1 bit
  -- Bus_B <= Bus_A(0) & Bus_A(7 downto 1);
  
  -- Case 3: Rotate Right 2 bits
  -- Bus_B <= Bus_A(1) & Bus_A(0) & Bus_A(7 downto 2);
  -- Bus_B <= Bus_A(1 downto 0)   & Bus_A(7 downto 2);
  
  -- Case 6: Conditional Nibble swap
--  Conditional_Swap: process (Swap,Bus_A)
--  begin
--    if Swap = '0' then
--	   Bus_B <= Bus_A;
--	 else
--	   Bus_B <= Bus_A(3 downto 0) &
--		         Bus_A(7 downto 4);
--	 end if;
--  end process Conditional_Swap;
  
  -- Case 7: Resolved concurrently
  Reverse: process(Bus_A)
  begin
    for i in Bus_B'Left downto Bus_B'Right loop
	   Bus_B(i) <= Bus_A(Bus_B'Left - i);
	 end loop;
  end process Reverse;

end Behavioral;




