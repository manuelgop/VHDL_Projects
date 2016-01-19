----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:33:53 10/13/2013 
-- Design Name: 
-- Module Name:    sn74ls163a - Behavioral 
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
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sn74ls163a is
    Port ( P : in  STD_LOGIC_VECTOR (0 to 3);
           PE : in  STD_LOGIC;
           CEP : in  STD_LOGIC;
           CET : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk100 : in  STD_LOGIC;
			  Seg : out STD_LOGIC_VECTOR (0 to 6);
			  Anode : out STD_LOGIC_VECTOR (0 to 3);
           --Q : out  STD_LOGIC_VECTOR (3 downto 0);
           TC : out  STD_LOGIC);
end sn74ls163a;

architecture Behavioral of sn74ls163a is
--constan declaratios
constant BoardFreq : natural := 25000000;
constant MaxCount : natural := BoardFreq /2;
--Embedded signals
signal Clk_1Hz : STD_LOGIC;
SIGNAL Count_int : STD_LOGIC_VECTOR (3 downto 0);

--Freq Division Counter
signal FreqCounter : natural range 0 to (MaxCount -1);
begin

--Module 1 Freq Divider
FreqDiv: process(Rst, Clk100)
begin
if Rst = '1' then
FreqCounter <= 0;
Clk_1hz <= '0';
elsif rising_edge(Clk100) then
--Check if the last count has been reached
if (FreqCounter = (MaxCount-1)) then
	FreqCounter <= 0;
	Clk_1hz <= not Clk_1hz;
	else
	FreqCounter <= FreqCounter + 1;
	end if;
end if;
end process FreqDiv;

--Module 2 contadores
--Assync
Count: process(Rst, Clk_1Hz, PE, CET, CEP)
begin
if Rst = '1' then
	Count_int <= (others => '0');
	
	elsif rising_edge(Clk_1hz) then
		if (PE = '0') then
			Count_int <= P;
			elsif(CET ='1' and CEP ='1') then
				if count_int = "1111" then
					count_int <= "0000";
					TC <= '1';
					else
					TC <= '0';
					count_int <= count_int +1;
					end if;
			
	end if;
	end if;
	
end process Count;

--Module 3: A binary to 7 segment decoder will be specified next with concurrent statements
--
anode <= "0000";
with count_int select
      seg <= "0000001" when "0000",--0
			    "1001111" when "0001",--1
				 "0010010" when "0010",--2
				 "0000110" when "0011",--3
				 "1001100" when "0100",--4
				 "0100100" when "0101",--5
				 "0100000" when "0110",--6
				 "0001111" when "0111",--7
				 "0000000" when "1000",--8
				 "0001100" when "1001",--9
				 "0001000" when "1010",--A
				 "1100000" when "1011",--B
				 "0110001" when "1100",--C
				 "1000010" when "1101",--D
				 "0110000" when "1110",--E
				 "0111000" when "1111",--F
				 "0111000" when others;--NULL

end Behavioral;

