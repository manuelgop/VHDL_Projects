----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:03 09/04/2013 
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
use IEEE.NUMERIC_STD.ALL;

entity Comparator is
    Port ( A : in  SIGNED (3 downto 0);--Uso de paquete numeric_std.all PARA PODER USAR "UNSIGNED" O "SIGNED"
           B : in  SIGNED (3 downto 0);
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

