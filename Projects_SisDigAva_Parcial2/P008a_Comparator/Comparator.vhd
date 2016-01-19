----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:10 09/04/2013 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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
-- Include the following package to enable the use of
-- "unsigned" and "signed" types
use IEEE.NUMERIC_STD.ALL;

entity Comparator is
    Port ( A    : in   signed (3 downto 0);
           B    : in   signed (3 downto 0);
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

