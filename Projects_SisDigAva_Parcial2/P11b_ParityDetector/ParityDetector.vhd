----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:42:41 09/12/2013 
-- Design Name: 
-- Module Name:    ParityDetector - Behavioral 
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

entity ParityDetector is
    Port ( A      : in   STD_LOGIC_VECTOR (7 downto 0);
           Parity : out  STD_LOGIC);
end ParityDetector;

architecture Behavioral of ParityDetector is

begin
  Detect_Parity: process(A)
    variable Temp: STD_LOGIC;
  begin
    Temp := '0';
	 for i in 0 to 7 loop
	   Temp := Temp xor A(i);
	 end loop;
	 Parity <= Temp;
  end process Detect_Parity;
  

end Behavioral;

