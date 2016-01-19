----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:46 10/25/2013 
-- Design Name: 
-- Module Name:    SelAnodo - Behavioral 
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

entity SelAnodo is
port(
	Sel :	in  STD_LOGIC_VECTOR( 1 downto 0);
	Anodo :	out  STD_LOGIC_VECTOR( 3 downto 0));
end SelAnodo;

architecture Behavioral of SelAnodo is

begin

 with Sel select
      Anodo <= "1110" when "00",
               "1101" when "01",
               "1011" when "10",
					"0111" when others;


end Behavioral;

