----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:32:28 10/30/2013 
-- Design Name: 
-- Module Name:    SecondPartial1 - Behavioral 
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

entity SecondPartial1 is
    Port (
				--Parallel : in  BIT_VECTOR (3 downto 0);
				Parallel : STD_LOGIC_VECTOR (3 downto 0);
				Mode : in  STD_LOGIC_VECTOR (0 downto 1);
          -- Outputs : out  BIT_VECTOR (3 downto 0);
				Outputs : out  STD_LOGIC_VECTOR (3 downto 0);
				--sr     : in   integer range 0 to 3;--?
				--sl     : in   integer range 0 to 3;--?
				sr : in  STD_LOGIC;
				sl: in  STD_LOGIC;
           Clear : in  STD_LOGIC;
           Clk : in  STD_LOGIC);
end SecondPartial1;

architecture Behavioral of SecondPartial1 is
-- Shift Register signals
  signal Shift       : STD_LOGIC_VECTOR (3 downto 0);

begin

problem1: process(Clear, mode, parallel, clk)
begin
	if clear = '0' then 
	outputs <= (others => '0');
	elsif(rising_edge(Clk)) then
		if(mode(0)='1' and mode(1)='1') then
			outputs <= parallel;
			elsif(mode(0)='0' and mode(1)='1') then
				--OUTPUTS <= Parallel srl sr;
				shift <= sr & shift(2 downto 0);
				outputs <= shift;
			elsif(mode(0)='1' and mode(1)='0') then
				--OUTPUTS <= Parallel sll sl;
				shift <= shift(2 downto 0) & sl;
				outputs <= shift;
				
				
		end if;
		end if;
end process problem1;
end Behavioral;

