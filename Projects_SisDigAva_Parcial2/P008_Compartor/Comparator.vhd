----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: RickWare
-- 
-- Create Date:    16:35:07 09/04/2013 
-- Design Name:    Comparator implementation
-- Module Name:    Comparator - Behavioral 
-- Project Name:   Comparator
-- Target Devices: Nexys 3 board
-- Tool versions:  ISE Webpack14.6
-- Description:    Implementation of a 4-bit magnitude comparator
--
-- Dependencies:   None
--
-- Revision:       1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Package to specify the use quantities represented
-- by magnitude (Default scenario is unsigned)
use IEEE.STD_LOGIC_SIGNED.ALL;

entity Comparator is
    Port ( A    : in   STD_LOGIC_VECTOR (3 downto 0);
           B    : in   STD_LOGIC_VECTOR (3 downto 0);
           AgtB : out  STD_LOGIC;
           AeqB : out  STD_LOGIC;
           AltB : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
  -- Concurrent description of the magnitude comparator
  AgtB <= '1' when A > B else '0';
  AeqB <= '1' when A = B else '0';
  AltB <= '1' when A < B else '0';

end Behavioral;

