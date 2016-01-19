----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:55:12 11/23/2013 
-- Design Name: 
-- Module Name:    Conv - Behavioral 
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

entity Conv is
    Port ( Binary : in  STD_LOGIC_VECTOR (0 downto 8);
           BCD0 : out  STD_LOGIC_VECTOR (0 downto 3);
           BCD1 : out  STD_LOGIC_VECTOR (0 downto 3);
           BCD2 : out  STD_LOGIC_VECTOR (0 downto 3);
           BCD3 : out  STD_LOGIC_VECTOR (0 downto 3));
end Conv;

architecture Behavioral of Conv is

begin

process (i, bcd, binary)
begin
   
	
   for i in 0 to 15 loop
      bcd(11 downto 1) <= bcd(10 downto 0);
		bcd(0) <= bint(15);
		binary(7 downto 1) <= binany(6 downto 0);
		binary(0) <= '0';
		
		if(i < 7 and bcd(3 downto 0) > "0100") then --add 3 if BCD digit is greater than 4.
		bcd(3 downto 0) <=  bcd(3 downto 0) + "0011";
end if;
	
	if(i < 7 and bcd(7 downto 4) > "0100") then --add 3 if BCD digit is greater than 4.
	bcd(7 downto 4) := bcd(7 downto 4) + "0011";
end if;

	if(i < 7 and bcd(11 downto 8) > "0100") then  --add 3 if BCD digit is greater than 4.
	bcd(11 downto 8) := bcd(11 downto 8) + "0011";
end if;
      
			if(i < 7 and bcd(15 downto 12) > "0100") then  --add 3 if BCD digit is greater than 4.
	bcd(11 downto 8) <= bcd(11 downto 8) + "0011";
end if;
   end loop;
	bcd <=bcd;
end process;

end Behavioral;

