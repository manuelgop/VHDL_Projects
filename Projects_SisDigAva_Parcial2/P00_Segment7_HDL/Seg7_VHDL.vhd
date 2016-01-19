----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:15:06 09/02/2013 
-- Design Name: 
-- Module Name:    Seg7_VHDL - Seg7_ARQ 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Seg7_VHDL is
    Port (    
					I :   in STD_LOGIC_VECTOR (3 downto 0);
			      S :   out STD_LOGIC_VECTOR (7 downto 0);
               Dis : out STD_LOGIC_VECTOR (7 downto 0));
end Seg7_VHDL;

architecture Seg7_ARQ of Seg7_VHDL is

begin

-- Opcion 1:
--S(6)<=(not I(3) and not  I(2) and not I(1) and     I(0)) or 
--   (not    I(3) and      I(2) and not I(1) and not I(0)) or 
--   (       I(3) and      I(2) and not I(1) and     I(0)) or 
--   (        I(3) and not I(2) and     I(1) and     I(0));
--
--S(5)<=(not I(3) and I(2) and not I(1) and     I(0)) or 
--   (not    I(3) and I(2) and     I(1) and not I(0)) or 
--   (       I(3) and I(2) and not I(1) and not I(0)) or 
--   (       I(3) and I(1) and                  I(0));
--
--S(4)<=( I(3) and     I(2) and not          I(0)) or 
--   (    I(3) and     I(2) and I(1)) or 
--   (not I(3) and not I(2) and I(1) and not I(0));
--
--S(3)<=      (not    I(2) and not I(1) and     I(0)) or 
--   (not I(3) and    I(2) and not I(1) and not I(0)) or 
--                   (I(2) and     I(1) and     I(0)) or 
--  (     I(3)and not I(2) and     I(1) and not I(0));
--
--S(2)<=(not I(3) and I(2) and not I(1))or
--   (          not   I(2) and not I(1) and I(0)) or
--   (not    I(3) and                       I(0));
--
--S(1)<=(not I(3) and not I(2) and               I(0)) or
--   (not    I(3) and not I(2) and     I(1)) or
--   (not    I(3) and     I(2) and     I(1) and  I(0)) or
--   (       I(3) and     I(2) and not I(1)	and  I(0));
--
--S(0)<=(not I(3) and not I(2) and not I(1)) or
--   (not    I(3) and     I(2) and     I(1) and     I(0)) or
--   (       I(3) and     I(2) and not I(1) and not I(0));
--	
-- S(7)<=   '1';
Dis(7)<= '1';
Dis(6)<= '1';
Dis(5)<= '1';
Dis(4)<= '1';
Dis(3)<= '1';
Dis(2)<= '1';
Dis(1)<= '1';
Dis(0)<= '0';

-- Dis <= "11111110";


-- Opcion 2: Select 
with I select
-------------ABCDEFG
      S <= "10000001" when "0000",
           "11001111" when "0001",
			  "10010010" when "0010",
			  "10000110" when "0011",
			  "11001100" when "0100",
           "10100100" when "0101",
			  "10100000" when "0110",
			  "10001111" when "0111",
			  "10000000" when "1000",
			  "10001100" when "1001",
			  "10001000" when "1010",
			  "11100000" when "1011",
			  "10110001" when "1100",
			  "11000010" when "1101",
			  "10010000" when "1110",
			  "10111000" when "1111",
           "--------" when others;

end Seg7_ARQ;

