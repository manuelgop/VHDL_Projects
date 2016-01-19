----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:05:40 09/22/2013 
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

entity Teorico is
    Port ( Ent  : in  STD_LOGIC_VECTOR (3 downto 0);
           Sal  : out STD_LOGIC_VECTOR (7 downto 0));
end Teorico;

architecture Behavioral of Teorico is

  --Embedded Signals
      signal a : STD_LOGIC;
      signal b : STD_LOGIC_VECTOR (3 downto 0);
      signal c : STD_LOGIC_VECTOR (3 downto 0);
      signal d : STD_LOGIC_VECTOR (7 downto 0);
		signal e : natural range 0 to 255;
		signal f : integer range -512 to 511;
  
begin

end Behavioral;

