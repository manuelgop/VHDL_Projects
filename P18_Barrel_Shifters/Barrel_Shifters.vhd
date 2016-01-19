----------------------------------------------------------------------------------
-- Company: ITESM		
-- Engineer: Manuel Gopar
-- 
-- Create Date:    16:56:00 10/16/2013 
-- Design Name: 
-- Module Name:    Barrel_Shifters - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Barrel_Shifters is
    Port ( Bus_A : in  STD_LOGIC_VECTOR (7 downto 0);
			 -- Swap : in STD_LOGIC;
           Bus_B : out  STD_LOGIC_VECTOR (7 downto 0));
end Barrel_Shifters;

architecture Behavioral of Barrel_Shifters is

begin
--Case 1: Direct cnnection 
--Bus_B <= Bus_A;
--Case 2
--Bus_b <= Bus_A(0) & Bus_A(7 downto 1);

--Case 3
--Bus_b <= Bus_A(1 downto 0) & Bus_A(7 downto 2);
--Case 4
--Bus_b <= Bus_A(2 downto 0) & Bus_A(7 downto 3);
--Case 5
--Bus_b <= Bus_A(3 downto 0) & Bus_A(7 downto 4);
--------------------------------------
--case6 : process (swap, bus_A)
--begin
--  
--	if(swap = '1') then
--		Bus_b <= Bus_A(3 downto 0) & Bus_A(7 downto 4);
--	else
--		Bus_b <= Bus_A;
--	end if;
--	end process case6;
-----------------------------
--CASE 7
Reverse : process(Bus_A)
begin
for i in Bus_B'Left downto Bus_B'Right loop
      Bus_B(i) <= Bus_A(Bus_B'Left - i);
   end loop;
End process Reverse;
	
end Behavioral;

