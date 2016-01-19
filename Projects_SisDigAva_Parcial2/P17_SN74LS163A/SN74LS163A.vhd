----------------------------------------------------------------------------------
-- Company:  ITESM
-- Engineer: Elmer Homero
-- 
-- Create Date:    10:40:44 10/02/2013 
-- Design Name:    Counter
-- Module Name:    Counters - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions:  
-- Description:    Several counters with frequency
--                 division to obtain a 1Hz clock
-- Dependencies:   None
--
-- Revision:       v1.0
-- Revision 0.01 - File Created
-- Additional Comments: All counters will be synch. 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity SN74LS163A is
    Port ( Rst       : in  STD_LOGIC;
           Clk100MHz : in  STD_LOGIC;
			  DataIn    : in  STD_LOGIC_VECTOR (3 downto 0);
			  CEP       : in  STD_LOGIC;
			  nPE       : in  STD_LOGIC;
			  CET       : in  STD_LOGIC;
			  TC        : out STD_LOGIC;
           Seg       : out STD_LOGIC_VECTOR (6 downto 0);
           Anode     : out STD_LOGIC_VECTOR (3 downto 0));
end SN74LS163A;

architecture Behavioral of SN74LS163A is
  -- Constant definition
  -- Oscillator frequency of a Nexys3 board
  constant BoardFreq : natural := 100000000;
  -- To obtain a 1Hz clock for the counters the
  -- board frequency will be divided by 2
  constant MaxCount  : natural := BoardFreq / 2;
  
  -- Embedded signals
  signal Clk_1Hz       : STD_LOGIC;
  signal Count_int     : STD_LOGIC_VECTOR(3 downto 0);
  -- Counter used for frequency division
  signal Freq_Counter  : natural range 0 to (MaxCount-1);
  -- Enable Signal
  signal CE            : STD_LOGIC_VECTOR(1 downto 0);

begin
  -- The hardware description will include 3 modules
  -- Module 1 is used to derive a 1Hz clock from
  --          a 100 MHz clock provided by the FPGA
  --          board (Nexys3).
  --          This is NOT the recommended way of
  --          achieving frequency division. Why?
  Freq_Div: process(Rst,Clk100MHz)
  begin
    if Rst = '1' then
	   Freq_Counter <= 0;
		Clk_1Hz      <= '0';
	 elsif rising_edge(Clk100MHz) then
	   if (Freq_Counter = MaxCount - 1) then
		  Freq_Counter <= 0;
		  Clk_1Hz      <= not Clk_1Hz;
      else
        Freq_Counter <= Freq_Counter + 1;
      end if;
    end if;		
  end process Freq_Div;
  
  -- Module 2 is the actual counter. Implementation
  --          of the 74LS163A. Check the pdf file.
  CE <= CET & CEP;
  
  Counter: process(Rst,Clk_1Hz)
  begin
	 if rising_edge(Clk_1Hz) then
	   if Rst = '0' then
		  Count_int <= (others => '0');
		elsif nPE = '0' then
        Count_int <= DataIn;
      elsif CE = "11" then	  
	     Count_int <= Count_int + 1;
		end if;
	 end if;
  end process Counter;
  
  TC <= '1' when Count_int = "1111" else
        '0';
  
  -- Module 3 will display the counters count in the
  --          7-segment displays.
      with Count_int select
        Seg <= "0000001" when "0000", 
					"1001111" when "0001",
					"0010010" when "0010",
					"0000110" when "0011",		
					"1001100" when "0100",
					"0100100" when "0101",
					"0100000" when "0110",
					"0001111" when "0111",
					"0000000" when "1000",
					"0000100" when "1001",
					"0001000" when "1010",
					"1100000" when "1011",
					"0110001" when "1100",
					"1000010" when "1101",
					"0110000" when "1110",
					"0111000" when "1111",
					"1000001" when others; 

  -- Select one out of the 4 7-segment displays in the Digilent board
  Anode <= "1110";					

end Behavioral;
