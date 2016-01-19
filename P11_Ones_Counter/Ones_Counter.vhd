----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:41:08 09/11/2013 
-- Design Name: 
-- Module Name:    Ones_Counter - Behavioral 
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

entity Ones_Counter is
    Port ( Num: in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (0 downto 7);
           Diodos : out  STD_LOGIC_VECTOR (3 downto 0));
end Ones_Counter;

architecture Behavioral of Ones_Counter is
--Declare the embedded carry chain
signal C: STD_LOGIC_VECTOR (4 downto 0);
begin

--Initialize the carry chain

C(0) <= Cin;
Ripple_Adder_Replication:
   for i in 0 to 7 generate
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
      Sum <= "0000001" when "0000",--0
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

