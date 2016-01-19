----------------------------------------------------------------------------------
-- Company:   ITESM
-- Engineer:  Elmer Homero
-- 
-- Create Date:    10:24:05 09/11/2013 
-- Design Name:    Ripple_Adder
-- Module Name:    Ripple_Adder - Behavioral 
-- Project Name:   Ripple Adder
-- Target Devices: Spartan 6 (Nexys-3 Digilent Board)
-- Tool versions:  ISE WebPack v14.6
-- Description:    Implementation of a Generic Ripple
--                 Adder using hardware replication
--                 statements. This adder is virtually
--                 identical to the TTL 74LS83 device
-- Dependencies:   None
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
	   -- n is the size of the ripple-adder in bits
      n : natural := 4);
    Port ( A    : in  STD_LOGIC_VECTOR (n-1 downto 0);
           B    : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Cin  : in  STD_LOGIC;
           Sum  : out STD_LOGIC_VECTOR (n-1 downto 0);
           Cout : out STD_LOGIC);
end Ripple_Adder;

architecture Behavioral of Ripple_Adder is
  --Embedded Carry chain
  signal C : STD_LOGIC_VECTOR (n downto 0);
begin
  -- Concurrent replication of hardware
--  C(0) <= Cin;
--  Adder_Replication:
--   for i in 0 to 3 generate
--      begin
--         Sum(i) <=  A(i) xor B(i) xor C(i);
--			C(i+1) <=  (A(i) and B(i)) or
--			           (A(i) and C(i)) or
--						  (B(i) and C(i));
--      end generate;
--  Cout <= C(4);
  
  -- Sequential replication of hardware
  Adder_Replication: process(A,B,Cin,C)
  begin
    C(0) <= Cin;
    for i in 0 to n-1 loop
         Sum(i) <=  A(i) xor B(i) xor C(i);
			C(i+1) <=  (A(i) and B(i)) or
			           (A(i) and C(i)) or
						  (B(i) and C(i));
    end loop;
	 Cout <= C(n);
  end process Adder_Replication;

end Behavioral;






