----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar
-- 
-- Create Date:    16:26:05 09/11/2013 
-- Design Name: 
-- Module Name:    RripleAdder - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;
entity RripleAdder is

generic (
--n is the size of our adder in bits
   n : natural := 4);--Para cambiar el numero del sumador, por ejemplo 32+32 solo cambiamos el 4 por 32 

    Port ( A    : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B    : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Cin  : in  STD_LOGIC;
           Sum  : out  STD_LOGIC_VECTOR (n-1 downto 0);
           Cout : out  STD_LOGIC);
end RripleAdder;

architecture Behavioral of RripleAdder is
--Declare the embedded carry chain
signal C: STD_LOGIC_VECTOR (n downto 0);--was 4 before n
begin
--Concurrent replication of hardware
--------------------------------------------------------------
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
------------------------------------------------------------------+++++++++++++++++++++++++++


----Sequential Replication of hardware

--Ripple_Adder_Replication: process(A,B,Cin,C)
--begin
--C(0) <= Cin;
----there is no labble here
--  for i in 0 to n-1 loop
--      Sum(i) <= A(i) xor B(i) xor C(i);
--			C(i+1) <=(A(i) and B(i)) or
--						(A(i) and C(i)) or
--						(B(i) and C(i));
--   end loop;
--	
--	--Output the final carry bit
--	Cout <= C(n);
--
--end process Ripple_Adder_Replication;

end Behavioral;

