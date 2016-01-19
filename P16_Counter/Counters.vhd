----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar
-- 
-- Create Date:    16:28:48 10/02/2013 
-- Design Name: 	 Counters
-- Module Name:    Counters - Behavioral 
-- Project Name: 
-- Target Devices: Spartan 3 Basys 2
-- Tool versions: 
-- Description: Implementation of several Counter, including a 1Hz Frequency divider.
--
-- Dependencies: None
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: All counters will be asynchronous
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Package use for arithmetic operations namely addition
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Counters is
    Port ( Rst : in  STD_LOGIC;
			  Swc : in STD_LOGIC;
           Clk100 : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (0 to 6);
           Anode : out  STD_LOGIC_VECTOR (3 downto 0));
end Counters;

architecture Behavioral of Counters is
--Constant Declarations
--Nexys3 Xtal Oscillator, oscilates at 100Mhz.
constant BoardFreq : natural :=25000000;--100000000
constant MaxCount : natural := BoardFreq /2;



--Embedded Signal declarations
signal Clk_1Hz : STD_LOGIC;
SIGNAL Count_int : STD_LOGIC_VECTOR (3 downto 0);
--Frequenci division Counter
signal FreqCounter : natural range 0 to (MaxCount -1);
begin
--Module 1: A Frequency Devider will be specified next
--	Taking the nexys3 100-Mhz scillator, obtain a 1Hz clock signal used for the counter
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

--Module 2: In ths section the realization of several counter will take place.
--The first of them will be a 4-bit binary counter.
--
Count: process(Rst, Clk_1Hz)
begin
--Asynchronous Reset
	if Rst = '1' then 
	Count_int <= (others => '0');--Aggregate
	elsif rising_edge(Clk_1Hz) then
	-----------------------
	if swc = '1' then
	--Assending
		if count_int = "1001" then
			count_int <= (others => '0');
		else
			Count_int <= count_int +1;
		end if;
		
		--Descending 
	elsif swc = '0' then
		if count_int = "0000" then
			count_int <= "1001";
		else
			Count_int <= count_int - 1;
		end if;
	end if;
	
	-----------------------
	--if count_int = "1001" then
	--count_int <= (others => '0');
--	else
--	Count_int <= count_int +1;
--	end if;
--Contador BCD (0-9)
-------------------------------------------	
--	if count_int = "1001" then
--	count_int <= "0000";
--	end if;
-------------------------------------------	
	end if;
end process Count;



--Module 3: A binary to 7 segment decoder will be specified next with concurrent statements
--
anode <= "0000";
with Count_int select
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
--				 "0001000" when "1010",--A
--				 "1100000" when "1011",--B
--				 "0110001" when "1100",--C
--				 "1000010" when "1101",--D
--				 "0110000" when "1110",--E
--				 "0111000" when "1111",--F
				 "0111000" when others;--NULL
				 


end Behavioral;

