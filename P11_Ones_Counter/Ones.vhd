----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:26 09/11/2013 
-- Design Name: 
-- Module Name:    Ones - Behavioral 
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

entity Ones is
    Port ( Num : in  STD_LOGIC_VECTOR (7 downto 0);
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           Diodos : out  STD_LOGIC_VECTOR (3 downto 0));
end Ones;

	architecture Behavioral of Ones is

--Declare the embedded carry chain
signal C: STD_LOGIC_VECTOR (4 downto 0);--was 4 before n
signal Cout : out  STD_LOGIC);
signal C: out Std_logiC

---DECLARE EMBEDDED COUNTERS----
type sum_array is array (0 to 7) of STD_LOGIC_VECTOR(3 downto 0);--Type senal definida por nosotros
signal sumador: sum_array;
begin

--Initialize the carry chain

C(0) <= Cin;
Ripple_Adder_Replication:
   for i in 0 to 3 generate
      begin
         Sum(i) <= A(i) xor B(i) xor C(i);
			C(i+1) <=(A(i) and B(i)) or
						(A(i) and C(i)) or
						(B(i) and C(i));
   end generate;
--Output the final carry bit
Cout <= C(4);

anodos <= "0000";
with Cout select
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

------------------------
-----CLASE
Counts_Ones: process(Num, Sumador)--solo esos dos estamos leyendo
begin
--Initial Condition
sumador(0) <= "000" & num(0);
for i in 1 to 7 loop
if Num(i) ='1' then
Sumador(i) <= sumador(i-1)+1;
else
sumador(i) <= sumador(i-1);
end if;
end loop;
end process Count_Ones;
--Display 7 segmentos



-------------------------

end Behavioral;

