----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:30:01 12/02/2013 
-- Design Name: 
-- Module Name:    Conv_to_integer - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Conv_to_integer is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Suma : out  integer range 0 to 255);
end Conv_to_integer;

architecture Behavioral of Conv_to_integer is

function conv_to_integer (arg: std_logic_vector; size: integer) return integer is
	variable aux : integer;
	begin
	aux := 0;
	for i in 0 to size-1 loop
		if (arg(i)='1') then 
			aux := aux + 2**i;
			else
			aux := aux;
		end if;
		end loop;
		return aux;
end conv_to_integer;
			

begin

suma <= conv_to_integer(A, 8) + Conv_to_integer(B, 8);


end Behavioral;

