----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: 
-- 
-- Create Date:    18:19:59 10/16/2013 
-- Design Name: 
-- Module Name:    Shift_Reg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Shift Register Example
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: All shift Registers are controlled  by clock
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Shift_Reg is
    Port ( Rst : in  STD_LOGIC;
           Sin : in  STD_LOGIC;
           CLk100 : in  STD_LOGIC;
			  Data : in STD_LOGIC(7 downto 0);
			  Load : in STD_LOGIC;
           Leds : out  STD_LOGIC_VECTOR (7 downto 0));
end Shift_Reg;

  
	architecture Behavioral of Shift_Reg is
--Constans declarations
constant BoardFreq : natural := 25000000;
constant MaxCount : natural := BoardFreq;
--Embedded signals

signal Clk1Hz_En : STD_LOGIC;

--Freq Division Counter
signal FreqCounter : natural range 0 to (MaxCount -1);
--Shift Register
SIGNAL Shift : STD_LOGIC_VECTOR(7 downto 0);

begin



-- Module 1: A frequency divider will be specified next.
  --           Taking the Nexys3 100-MHz oscillator, obtain
  --           a 1Hz clock signal used for the counter.
  FreqDiv: process(Clk100,Rst)
  begin
    -- Beware Resetting the frequency divider asynchronously and then resetting the counter
	 -- below synchronously. When the frequency divider is reset, there is no clock to reset
	 -- the counter synchronously!
	 
    if Rst = '1' then
	   FreqCounter <= 0;
		Clk1Hz_En    <= '0';
	  elsif rising_edge(Clk100) then
	   -- Check if the last count has been reached
		 if (FreqCounter = (MaxCount - 1)) then
		   FreqCounter <= 0;
		   Clk1Hz_En     <= '1'; -- Change 2
		 else
		   FreqCounter <= FreqCounter + 1;
			Clk1Hz_En   <= '0'; -- Change 3
		end if;
    end if;
  end process FreqDiv;
  
--  --MODULE 2: LSL Shift Register Specification
--  LSL_SR : process(Rst, Clk100, Clk1Hz_En, Shift)
--  BEGIN
--	if Rst = '1' then
--		Shift <= (others=> '0');
--	elsif(rising_edge(Clk100) and Clk1Hz_En = '1') then
--		Shift <= Shift(6 downto 0) & Sin;
--	end if;
--	Leds <= Shift;
--  
--  end process LSL_SR;

--MODULE 2: LSL Shift Register Specification
--  LSR_SR : process(Rst, Clk100, Clk1Hz_En, Shift)
--  BEGIN
--	if Rst = '1' then
--		Shift <= (others=> '0');
--	elsif(rising_edge(Clk100) and Clk1Hz_En = '1') then
--		Shift <= Shift(0 to 6) & Sin;
--	end if;
--	Leds <= Shift;
--  
--  end process LSR_SR;
DataLoad : process(Rst, Clk100, Clk1Hz_En, Shift)
begin

if Rst = '1' then
		Shift <= (others=> '0');
	elsif(rising_edge(Clk100) and Clk1Hz_En = '1') then
		if(Load = '1') then 
		leds <= data;
		end if;
	end if;
	Leds <= Shift;
  
  end process DataLoad;

end Behavioral;

