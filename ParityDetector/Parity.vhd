----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:55:59 09/27/2013 
-- Design Name: 
-- Module Name:    Parity - Behavioral 
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

entity Parity is
 generic ( n : natural := 4);
 Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
 Parity : out STD_LOGIC;
 Eo : in STD_LOGIC);
end Parity;

architecture Behavioral of Parity is
--Embedded Signals
signal par: STD_LOGIC;
signal impar: STD_LOGIC;

type vector is array (0 to n-1) of STD_LOGIC; signal Cp: vector;
begin

--8-bit input 
par <= A(7) xor A(6) xor A(5) xor A(4) xor A(3) xor A(2) xor A(1) xor A(0);
impar <= not par; 
Parity <= par when Eo = '1' else
impar;




--Cp(0) <= A (0);
-- for i in 0 to n-1 generate
-- begin
-- Cp(i) <= A(i) xor Cp(i-1);
-- end generate;
--
--par <= Cp (n-1);
--impar <= not par; 
--
--Parity <= par when Eo = '1' else
--parity <= impar;

end Behavioral;

