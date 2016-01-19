----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:19:42 10/16/2013 
-- Design Name: 
-- Module Name:    Shift_Registers - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Synchronous Shift Register examples
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: All Shift Register are controlled
--                      by a clock
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Shift_Registers is
    Port ( Sin       : in   STD_LOGIC;
           Rst       : in   STD_LOGIC;
           Clk100MHz : in   STD_LOGIC;
           LEDs      : out  STD_LOGIC_VECTOR (7 downto 0));
end Shift_Registers;

architecture Behavioral of Shift_Registers is
  -- Constants declarations
  -- Nexys3 Xtal Oscillator, oscillates at 100MHz
  constant BoardFreq : natural := 100000000; -- 100 MHz
  constant MaxCount  : natural := BoardFreq;
  
  -- Embedded 1 Hz Clock Enable Signal
signal Clk1Hz_En   : STD_LOGIC;
  
  -- Frequency division counter
  signal FreqCounter : natural range 0 to (MaxCount - 1);
  
  -- Shift Register signals
  signal Shift       : STD_LOGIC_VECTOR (7 downto 0);
begin
  -- Module 1: A frequency divider will be specified next.
  --           Taking the Nexys3 100-MHz oscillator, obtain
  --           a 1Hz clock enable signal used by the shift register.
  FreqDiv: process(Clk100MHz,Rst)
  begin 
    if Rst = '1' then
	   FreqCounter <= 0;
		Clk1Hz_En   <= '0';
	  elsif rising_edge(Clk100MHz) then
	   -- Check if the last count has been reached
		 if (FreqCounter = (MaxCount - 1)) then
		   FreqCounter   <= 0;
		   Clk1Hz_En     <= '1';
		 else
		   FreqCounter   <= FreqCounter + 1;
			Clk1Hz_En     <= '0';
		end if;
    end if;
  end process FreqDiv;
  
  -- Module 2: LSL Shift Register specification
  LSL_SR: process(Rst,Clk100MHz,Clk1Hz_En,Shift)
  begin
    if Rst = '1' then
	   Shift <= (others => '0');
	 elsif (rising_edge(Clk100MHz) and Clk1Hz_En = '1') then
	   Shift <= Shift(6 downto 0) & Sin;
	 end if;
	 LEDs <= Shift;
  end process LSL_SR;

end Behavioral; 



