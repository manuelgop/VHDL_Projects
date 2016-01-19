----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:40:43 10/25/2013 
-- Design Name: 
-- Module Name:    Cont0a23 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Cont0a23 is
port(
	Load : in STD_LOGIC;
	Enable : in STD_LOGIC;
	Rst : in STD_LOGIC;
	Clk : in STD_LOGIC;
	ValorDec : in STD_LOGIC_VECTOR(3 downto 0);
	ValorUni : in STD_LOGIC_VECTOR(3 downto 0);
	Cuenta : inout  STD_LOGIC_VECTOR(7 downto 0));
end Cont0a23;

architecture Behavioral of Cont0a23 is

begin

--Asynchronous Reset
Count: process(Rst, Clk)
begin
	if Rst = '1' then 
	cuenta <= (others => '0');--Aggregate
	elsif rising_edge(Clk) then
	if Cuenta = "10111" then
	cuenta <= (others => '0');
	else
	cuenta <= cuenta +1;
	end if;
end if;
	
end process Count;


end Behavioral;

