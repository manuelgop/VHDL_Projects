----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:36 09/22/2013 
-- Design Name: 
-- Module Name:    Teorico - Behavioral 
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

-- Original Exam
--entity Teorico is
--    Port ( a      : in  STD_LOGIC_VECTOR (7 downto 0);
--           b      : in  STD_LOGIC_VECTOR (7 downto 0);
--           Sel    : in  STD_LOGIC_VECTOR (1 downto 0);
--           Output : out STD_LOGIC_VECTOR (7 downto 0));
--end Teorico;
--
--architecture Behavioral of Teorico is
--
--begin
--  process (Sel,a,b)
--  begin
--    if    Sel = "00" then
--	   Output <= "00000000";
--	 elsif Sel = "01" then
--	   Output <= a;
--	 elsif Sel = "10" then
--	   Output <= b;
--	 else
--	   Output <= "ZZZZZZZZ";
--	 end if;
--  end process;
  
-- Generic Exam
entity Teorico is
    Generic(
	        n      : natural := 8);
    Port ( a      : in  STD_LOGIC_VECTOR (n-1 downto 0);
           b      : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Sel    : in  STD_LOGIC_VECTOR (1 downto 0);
           Output : out STD_LOGIC_VECTOR (n-1 downto 0));
end Teorico;

architecture Behavioral of Teorico is

begin
  process (Sel,a,b)
  begin
    if    Sel = "00" then
	   Output <= (others => '0');
	 elsif Sel = "01" then
	   Output <= a;
	 elsif Sel = "10" then
	   Output <= b;
	 else
	   Output <= (others => 'Z');
	 end if;
  end process;


end Behavioral;

