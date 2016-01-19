----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:01:00 09/30/2013 
-- Design Name: 
-- Module Name:    Counters - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Several Synchronous counters
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity Counters is
    Port ( Rst   : in  STD_LOGIC;
           Clk   : in  STD_LOGIC;
           Count : out STD_LOGIC_VECTOR (3 downto 0));
end Counters;

architecture Behavioral of Counters is
  -- Embedded signal for the counter
  signal Cta : STD_LOGIC_VECTOR (3 downto 0);
begin

  -- Counters should always be part of a process
  -- 4-bit binary counter with asynchronous reset
  -- OK (Recommend way)
--  Counter01: process(Rst,Clk,Cta)
--  begin
--    if Rst = '1' then
--	   Cta <= (others => '0');
--	 elsif rising_edge(Clk) then
--	   -- Check the roll-over condition first
--	   if Cta = "1001" then
--		  Cta <= (others => '0');
--		else
--		  Cta <= Cta + '1';
--		end if;
--    end if;
--	 Count <= Cta;
--  end process Counter01;

  -- Counters should always be part of a process
  -- 4-bit binary counter with asynchronous reset
  -- OK: Never do it like this
--  Counter02: process(Rst,Clk,Cta)
--  begin
--    if Rst = '1' then
--	   Cta <= (others => '0');
--	 elsif rising_edge(Clk) then
--		Cta <= Cta + '1';
--		if Cta = "1001" then
--		  Cta <= (others => '0');
--		end if;
--    end if;
--	 Count <= Cta;
--  end process Counter02;
--  
  -- Counters should always be part of a process
  -- 4-bit binary counter with asynchronous reset
  -- Not OK, Counts from 0
--  Counter03: process(Rst,Clk,Cta)
--  begin
--    if Rst = '1' then
--	   Cta <= (others => '0');
--	 elsif rising_edge(Clk) then
--	 	if Cta = "1001" then
--		  Cta <= (others => '0');
--		end if;
--		Cta <= Cta + '1';
--    end if;
--	 Count <= Cta;
--  end process Counter03;
  
  -- Counters should always be part of a process
  -- 4-bit binary counter with asynchronous reset
  -- OK.
--  Counter04: process(Rst,Clk)
--    variable Cta : STD_LOGIC_VECTOR (3 downto 0);
--  begin
--    if Rst = '1' then
--	   Cta := (others => '0');
--	 elsif rising_edge(Clk) then
--		Cta := Cta + '1';
--		if Cta = "1010" then
--		  Cta := (others => '0');
--		end if;
--    end if;
--	 Count <= Cta;
--  end process Counter04;

  -- Counters should always be part of a process
  -- 4-bit binary counter with asynchronous reset
  -- OK.
  Counter05: process(Rst,Clk)
    variable Cta : STD_LOGIC_VECTOR (3 downto 0);
  begin
    if Rst = '1' then
	   Cta := (others => '0');
	 elsif rising_edge(Clk) then
      if (Cta <= "1001") then
		  Cta := Cta + 1;
		end if;
		if (Cta = "1010") then
		  Cta := (others => '0');
		end if;
    end if;
	 Count <= Cta;
  end process Counter05;

end Behavioral;







