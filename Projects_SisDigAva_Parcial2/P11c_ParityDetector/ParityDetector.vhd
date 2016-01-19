----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:03:38 09/12/2013 
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
    Generic (
	        n : natural := 8);
    Port ( A         : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Even_nOdd : in  STD_LOGIC;
           Parity    : out STD_LOGIC);
end ParityDetector;

architecture Behavioral of ParityDetector is
  signal ParityEven: STD_LOGIC;
begin
  -- Third world country approach
  ParityEven <= A(7) xor A(6) xor A(5) xor A(4) xor
                A(3) xor A(2) xor A(1) xor A(0);
					 
  Parity <= ParityEven when Even_nOdd = '1' else
            not ParityEven;

end Behavioral;

