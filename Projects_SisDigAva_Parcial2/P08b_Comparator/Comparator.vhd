----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:16:28 09/04/2013 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--use IEEE.NUMERIC_STD.ALL;


entity Comparator is
    Port ( A    : in   STD_LOGIC_VECTOR (3 downto 0);
           B    : in   STD_LOGIC_VECTOR (3 downto 0);
           AgtB : out  STD_LOGIC;
           AeqB : out  STD_LOGIC;
           AltB : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
  AgtB <= '1' when A > B else '0';
  AeqB <= '1' when A = B else '0';
  AltB <= '1' when A < B else '0';

end Behavioral;

