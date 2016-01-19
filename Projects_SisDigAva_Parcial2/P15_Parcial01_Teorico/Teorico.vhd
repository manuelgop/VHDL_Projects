----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:05 09/22/2013 
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
use IEEE.STD_LOGIC_ARITH.ALL;

entity Teorico is
    Port ( a :   in   SIGNED (3 downto 0);
           b :   in   SIGNED (3 downto 0);
           sum : out  SIGNED (4 downto 0));
end Teorico;

architecture Behavioral of Teorico is

begin
  sum <= (a(3) & a) + (b(3) & b);
end Behavioral;

