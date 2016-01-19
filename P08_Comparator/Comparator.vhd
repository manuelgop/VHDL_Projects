----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: 
-- 
-- Create Date:    16:35:06 09/04/2013 
-- Design Name: 	 Comparator Implementation
-- Module Name:    Comparator - Behavioral 
-- Project Name: 	 Comparator 
-- Target Devices: Basys 2
-- Tool versions: ISE webPack
-- Description: Implementation of a magnitud comparator
--
-- Dependencies: None
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Packague to specify the use quantities represented by magnitud(Default scenario is unsigned)
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_SIGNED.ALL;


entity Comparator is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           AgB : out  STD_LOGIC;
           AeqB : out  STD_LOGIC;
           AlB : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin
--Concurrent description of the magnitud comparator
Agb <= '1' when A > B else '0';
AeqB <= '1' when A = B else '0';
AlB <= '1' when A < B else '0';

end Behavioral;

