----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar
-- 
-- Create Date:    16:24:46 09/18/2013 
-- Design Name: 
-- Module Name:    Latches - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Latches not wanted in FPGAs... This code demostrate how lathces are synthetized
--					 Latches appear when not all cases are considered in decision making statements(if-else, when, case, etc)
-- Dependencies: None
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Latches is
    Port ( D : in  STD_LOGIC;
           En : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end Latches;

architecture Behavioral of Latches is

begin
--
----Concurrent latch
--Q <= D when En = '1' else 
--Q;

--Sequential latch
process(En,D)--Estamos leyendo a En y D
begin
	if En = '1' then 
	Q <= D;
	end if;
end process;
end Behavioral;

