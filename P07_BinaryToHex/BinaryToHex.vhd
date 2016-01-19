----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar Amadro
-- 
-- Create Date:    19:23:39 09/03/2013 
-- Design Name: 	Hexadecimal decorer 
-- Module Name:    BinaryToHex - Behavioral 
-- Project Name: 
-- Target Devices: Basys 2
-- Tool versions: ISE Web pack v14.6
-- Description: Hexadecimal Decoder
--
-- Dependencies: NONE
--
-- Revision: 1.0
-- Revision 0.01 - File Created

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

entity BinaryToHex is
    Port ( Bin : in  STD_LOGIC_VECTOR (0 to 3);
           Hex : out STD_LOGIC_VECTOR (0 to 6);
        anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end BinaryToHex;

architecture Behavioral of BinaryToHex is

begin
-----------------------------------------------
------------------DATA FLOW DESCRIPTION USING BOOLEAN EQUATIONS-----------
--anodos <= "0000";






------------------end DATA FLOW DESCRIPTION USING BOOLEAN EQUATIONS-----------


-----------------------------------------------
------------2. Behavorial description using concurrent statements-------------
--Using the select-when statement
--anodos <= "0000";
--with Bin select
--      HEX <= "0000001" when "0000",--0
--			    "1001111" when "0001",--1
--				 "0010010" when "0010",--2
--				 "0000110" when "0011",--3
--				 "1001100" when "0100",--4
--				 "0100100" when "0101",--5
--				 "0100000" when "0110",--6
--				 "0001111" when "0111",--7
--				 "0000000" when "1000",--8
--				 "0001100" when "1001",--9
--				 "0001000" when "1010",--A
--				 "1100000" when "1011",--B
--				 "0110001" when "1100",--C
--				 "1000010" when "1101",--D
--				 "0110000" when "1110",--E
--				 "0111000" when "1111",--F
--				 "0111000" when others;--NULL


------------end Behavorial description using concurrent statements-------------



-----------------------------------------------
-------------3.Behavorial description using concurrent statements
--Using the When-Else statement
--anodos <= "0000";
--HEX <= "0000001" when BIN = "0000" else--0
--       "1001111" when BIN = "0001" else--1
--		 "0010010" when BIN = "0010" else--2
--		 "0000110" when BIN = "0011" else--3
--		 "1001100" when BIN = "0100" else--4
--		 "0100100" when BIN = "0101" else--5
--		 "0100000" when BIN = "0110" else--6
--		 "0001111" when BIN = "0111" else--7
--		 "0000000" when BIN = "1000" else--8
--		 "0001100" when BIN = "1001" else--9
--		 "0001000" when BIN = "1010" else--A
--		 "1100000" when BIN = "1011" else--B
--		 "0110001" when BIN = "1100" else--C
--		 "1000010" when BIN = "1101" else--D
--		 "0110000" when BIN = "1110" else--E
--		 "0111000" when BIN = "1000" else--F
--       "0111000";--NULL


-------------end Behavorial description using concurrent statements


-----------------------------------------------
-------------------4.Behavorial description using Sequential statements
--Using the If/Else/If/Else statement
process(Bin)
BEGIN
anodos <= "0000";

if BIN = "0000" then--0
      HEX <="0000001";--0
   elsif BIN ="0001" then--1
      HEX <="1001111";--1
	elsif BIN="0010" then--2
		HEX <= "0010010";--2
	elsif BIN="0011" then--3
		HEX <= "0000110";--3
	elsif BIN="0100" then--4
		HEX <= "1001100";--4
	elsif BIN="0101" then--5
		HEX <= "0100100";--5
	elsif BIN="0110" then--6
		HEX <= "0100000";--6
	elsif BIN="0111" then--7
		HEX <= "0001111";--7
	elsif BIN="1000" then--8
		HEX <= "0000000";--8
	elsif BIN="1001" then--9
		HEX <= "0001100";--9
	elsif BIN="1010" then--A
		HEX <= "0001000";--A
	elsif BIN="1011" then--B
		HEX <= "1100000";--B
	elsif BIN="1011" then--C
		HEX <= "0110001";--C
	elsif BIN="1101" then--D
		HEX <= "1000010";--D
	elsif BIN="1110" then--E
		HEX <= "0110000";--E
	elsif BIN="1111" then--F
		HEX <= "0111000";--F
   else
      HEX <="0111000";--NULL
   end if;

END PROCESS;

----------------end Behavorial description using Sequential statements
-----------------------------------------------
---------------------5.CASE----------------------
--process(Bin)
--begin

--anodos <= "0000";
--
--
--Case(BIN) is 
--						  --ABCDEFG	
--when "0000" => HEX <="0000001";--0
--when "0001" => HEX <="1001111";--1
--when "0010" => HEX <="0010010";--2
--when "0011" => HEX <="0000110";--3
--when "0100" => HEX <="1001100";--4
--when "0101" => HEX <="0100100";--5
--when "0110" => HEX <="0100000";--6
--when "0111" => HEX <="0001111";--7
--when "1000" => HEX <="0000000";--8
--when "1001" => HEX <="0001100";--9
--when "1010" => HEX <="0001000";--A
--when "1011" => HEX <="1100000";--B
--when "1100" => HEX <="0110001";--C
--when "1101" => HEX <="1000010";--D
--when "1110" => HEX <="0110000";--E
--when "1111" => HEX <="0111000";--F
--when others => HEX <="0000000";--null
--
--END CASE;
--
--END PROCESS;
------------------CASE------------------------
end Behavioral;

