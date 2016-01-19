library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--packeges needed fot addition operation
use IEEE.NUMERIC_STD.ALL;
 use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Ones_Counter is
    Port ( Num   : in  STD_LOGIC_VECTOR (7 downto 0);
           Seg   : out  STD_LOGIC_VECTOR (0 to 6);
           Anode : out  STD_LOGIC_VECTOR (3 downto 0));
end Ones_Counter;

architecture Behavioral of Ones_Counter is
--define embedded counters
type sum_array is array (0 to 7) of STD_LOGIC_VECTOR( 3 downto 0);

signal Sumador: sum_array;
begin
----Point of view of a programmer, does not work to describe hardware
--
--    Count_Ounes:process(Num,Count)
--    begin
--        Count <="0000";
--        for i in 0 to 7 loop
--        if Num(i) = '1' then
--            Count  <= Coun+1;
--        else
--            Count <= Count;
--        end if;
--en loop;
--end process Count_Ones;

--Point of view of an engineer  describing hardware, the good one
Count_ones: process(Num,Sumador)
begin
--inital condition
Sumador(0) <= "000" & Num(0);
for i in 1 to 7 loop
if Num(i)= '1' then
    Sumador(i) <= Sumador(i-1) + 1;
else
    Sumador(i) <= Sumador(i-1);
    end if;
    end loop;
end process Count_Ones;
--Display 7 segmentos count
anode <="0000";
with Sumador(7) select
      Seg <= "0000001" when "0000",--0
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