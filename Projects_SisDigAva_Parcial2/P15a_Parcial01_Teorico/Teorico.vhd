----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:07:49 08/27/2012 
-- Design Name: 
-- Module Name:    Magnitud_Comparator - Behavioral 
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

-- Good
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity Magnitude_Comparator is
--    Port ( A :    in   STD_LOGIC_VECTOR (3 downto 0);
--           B :    in   STD_LOGIC_VECTOR (3 downto 0);
--           AgtB : out  STD_LOGIC;
--           AeqB : out  STD_LOGIC;
--           AltB : out  STD_LOGIC);
--end Magnitude_Comparator;
--
--architecture Behavioral of Magnitude_Comparator is
--  
--begin
--  
--  comparator : process (A,B)
--  begin	 
--	 -- Implementacion del comparador
--	 if (A > B) then
--	   AgtB <= '1'; AeqB <= '0'; AltB <= '0';
--	 elsif (A = B) then
--	   AgtB <= '0'; AeqB <= '1'; AltB <= '0';
--	 else
--	   AgtB <= '0'; AeqB <= '0'; AltB <= '1';
--	 end if;
--  end process comparator;
--  
--end Behavioral;



-- Bad
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Magnitude_Comparator is
    Port ( A :    in   STD_LOGIC_VECTOR (3 downto 0);
           B :    in   STD_LOGIC_VECTOR (3 downto 0);
           AgtB : out  STD_LOGIC;
           AeqB : out  STD_LOGIC;
           AltB : out  STD_LOGIC);
end Magnitude_Comparator;

architecture Behavioral of Magnitude_Comparator is
  
begin
  
  -- Exam problem
--  comparator : process (A,B,AgtB,AeqB,AltB)
--  begin	 
--	 -- Implementacion del comparador
--	 if (A > B) then
--	   AgtB <= '1';;
--	 elsif (A = B) then
--	   AeqB <= '1';
--	 else
--	   AltB <= '1';
--	 end if;
--  end process;
  
  -- Fixed code
  comparator : process (A,B)
  begin	 
	 -- Implementacion del comparador
	 if (A > B) then
	   AgtB <= '1'; AeqB <= '0'; AltB <= '0';
	 elsif (A = B) then
	   AgtB <= '0'; AeqB <= '1'; AltB <= '0';
	 else
	   AgtB <= '0'; AeqB <= '0'; AltB <= '1';
	 end if;
  end process comparator;






--  
end Behavioral;
