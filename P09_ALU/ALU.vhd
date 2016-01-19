----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar	
-- 
-- Create Date:    18:36:31 09/04/2013 
-- Design Name: 	Aritmetic Logic Unit
-- Module Name:    ALU - Behavioral 
-- Project Name: 	 Aritmetic Logic Unit
-- Target Devices: Basys 2
-- Tool versions: ISE Web Pack v14.6		
-- Description: 	Implementation of an ALU with 8 aritmethic and 8 logic functions
--
-- Dependencies: None
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Packages needed 
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;




entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (2 downto 0);
           B : in  STD_LOGIC_VECTOR (2 downto 0);
           Cin : in  STD_LOGIC;
           Sel : in  STD_LOGIC_VECTOR (3 downto 0);
           Res : inout  STD_LOGIC_VECTOR (2 downto 0);
			  Hex : out STD_LOGIC_VECTOR (0 to 6);
			  anodos : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU;

architecture Behavioral of ALU is

--Declarar señales embebidas
signal Arith: STD_LOGIC_VECTOR (2 downto 0);
signal Logic: STD_LOGIC_VECTOR (2 downto 0);

begin
--ALU will be described concurrently

--Describe the Arithmetic section

   with Sel(2 downto 0) select
      Arith <= A when     "000",
               A + 1 when "001",
					--Fill the others
					A - 1 when "010",
					B     when "011",
					B + 1 when "100",
					B - 1 when "101",
					A + B when "110",
               A + B + Cin when others;
			
--Describe the logic section

   with Sel(2 downto 0) select
      Logic <= not A    when  "000",
               not B    when  "001",
					--Fill the others
					A and B  when  "010",
					A or B   when  "011",
					A nand A when  "100",
					A nor B  when  "101",
					A xor B  when  "110",
               A xnor B when others;
					
					
--Describe the MUX
Res <= Arith when Sel(3) = '0' else
		logic;
		
		
--		--Using the select-when statement
anodos <= "0000";
with Res select
      HEX <= "0000001" when "000",--0
			    "1001111" when "001",--1
				 "0010010" when "010",--2
				 "0000110" when "011",--3
				 "1001100" when "100",--4
				 "0100100" when "101",--5
				 "0100000" when "110",--6
				 "0001111" when "111",--7
				 "0111000" when others;--NULL
--			


end Behavioral;

