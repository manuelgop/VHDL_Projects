----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:34:33 11/13/2013 
-- Design Name: 
-- Module Name:    RWM_Memory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Sync Write, Async Read
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RWM_Memory is
	 Generic (
           n    : integer := 4; -- Length=2^n memory locations
			  m    : integer := 8  -- Size in bits of each memory location
			  );

    Port ( Addr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           WClk : in  STD_LOGIC;
           WE : in  STD_LOGIC;
           Data : inout  STD_LOGIC_VECTOR (m-1 downto 0));
end RWM_Memory;

architecture Behavioral of RWM_Memory is
 -- Define the memory structure
  TYPE RWM_type is array (0 to (2**n)-1) of
        STD_LOGIC_VECTOR (m-1 downto 0);
SIGNAL RWM : RWM_type;
begin
--Syn write
	RWM_Write : process(WClk)
	begin
		if rising_edge(WClk) then
			if WE = '1' then
				RWM(conv_integer(Addr)) <= Data;
			end if;
		end if;
	end process RWM_Write;
--Async read with a Hi-Z(High Empedance) protection
	data <= RWM(Conv_integer(Addr))  when WE= '0' else
	(others => 'Z');--Para evitar el corto sircuito, Hiz when WE =1

end Behavioral;

