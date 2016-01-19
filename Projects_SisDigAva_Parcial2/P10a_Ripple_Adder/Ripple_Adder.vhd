----------------------------------------------------------------------------------
-- Company:   ITESM
-- Engineer:  Rick
-- 
-- Create Date:    16:26:17 09/11/2013 
-- Design Name: 
-- Module Name:    Ripple_Adder - Behavioral 
-- Project Name:   Ripple Adder
-- Target Devices: 
-- Tool versions:  Webpack v14.6
-- Description:    Implement a n-bit (generic) ripple-adder
--                 using Loops
--
-- Dependencies: 
--
-- Revision:       v1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity Ripple_Adder is
    generic (
	   -- n is the size of our adder in bits
      n : natural := 4);
    Port ( A    : in   STD_LOGIC_VECTOR (n-1 downto 0);
           B    : in   STD_LOGIC_VECTOR (n-1 downto 0);
           Cin  : in   STD_LOGIC;
           Sum  : out  STD_LOGIC_VECTOR (n-1 downto 0);
           Cout : out  STD_LOGIC);
end Ripple_Adder;

architecture Behavioral of Ripple_Adder is
  -- Declare the embedded carry chain
  signal C: STD_LOGIC_VECTOR (n downto 0);
begin
  -- Concurrent replication of hardware
  
  -- Initialize the carry chain
--  C(0) <= Cin;
--  
--  Ripple_Adder_Replication:
--   for i in 0 to n-1 generate
--      begin
--         Sum(i) <= A(i) xor B(i) xor C(i);
--         C(i+1) <= (A(i) and B(i)) or
--			          (A(i) and C(i)) or
--						 (B(i) and C(i));
--      end generate;
--		
--  -- Output the final Carry bit
--  Cout <= C(n);
  
  -- Sequential replication of hardware
  Ripple_Adder_Replication: process(A,B,Cin,C)
  begin
     -- Initialize the carry chain
     C(0) <= Cin;
	  
     for i in 0 to n-1 loop
         Sum(i) <= A(i) xor B(i) xor C(i);
         C(i+1) <= (A(i) and B(i)) or
			          (A(i) and C(i)) or
						 (B(i) and C(i));
     end loop;
	  
    -- Output the final Carry bit
    Cout <= C(n);
	 
  end process Ripple_Adder_Replication;

end Behavioral;







