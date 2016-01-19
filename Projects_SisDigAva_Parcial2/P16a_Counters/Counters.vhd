----------------------------------------------------------------------------------
-- Company:     ITESM
-- Engineer:    Elmer Homero
-- 
-- Create Date:    16:28:29 10/02/2013 
-- Design Name:    Counters
-- Module Name:    Counters - Behavioral 
-- Project Name:   Counters
-- Target Devices: Spartan 6, Nexys 3 Board
-- Tool versions:  v14.6 ISE WebPack
-- Description:    Implementation of several Counter, inclu-
--                 ding a 1Hz Frequency divider
-- Dependencies:   None
--
-- Revision:       v1.0
-- Revision 0.01 - File Created
-- Additional Comments: All counters will be synchronous 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Package used for arithmetic operations, namely addition.
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity Counters is
    Port ( Rst       : in   STD_LOGIC;
           Clk100MHz : in   STD_LOGIC;
			  UpDown    : in   STD_LOGIC;
           Seg       : out  STD_LOGIC_VECTOR (0 to 6);
           Anode     : out  STD_LOGIC_VECTOR (3 downto 0));
end Counters;

architecture Behavioral of Counters is
  -- Constants declarations
  -- Nexys3 Xtal Oscillator, oscillates at 100MHz
  constant BoardFreq : natural := 100000000;
  constant MaxCount  : natural := BoardFreq / 2;
  
  -- Embedded Signal declarations
  signal Clk_1Hz     : STD_LOGIC;
  signal Count_int   : STD_LOGIC_VECTOR (3 downto 0);
  -- Frequency division counter
  signal FreqCounter : natural range 0 to (MaxCount - 1);
begin
  -- Module 1: A frequency divider will be specified next.
  --           Taking the Nexys3 100-MHz oscillator, obtain
  --           a 1Hz clock signal used for the counter.
  FreqDiv: process(Rst,Clk100MHz)
  begin
    if Rst = '1' then
	   FreqCounter <= 0;
		Clk_1Hz     <= '0';
	 elsif rising_edge(Clk100MHz) then
	   -- Check if the last count has been reached
		if (FreqCounter = (MaxCount - 1)) then
		  FreqCounter <= 0;
		  Clk_1Hz     <= not Clk_1Hz;
		else
		  FreqCounter <= FreqCounter + 1;
		end if;
    end if;
  end process FreqDiv;
  
  -- Module 2: In this section the realization of several
  --           counters will take place. The first of them
  --           will be a 4-bit binary couter.
--  Count: process(Rst,Clk_1Hz)
--  begin
--    --Asynchronous Reset
--	 if Rst = '1' then
--	   Count_int <= (others => '0');  --Aggregate
--	 elsif rising_edge(Clk_1Hz) then
--	   Count_int <= Count_int + 1;
--	 end if;
--  end process Count;
  
  -- Module 2: In this section the realization of several
  --           counters will take place. The second of them
  --           will be a 4-bit decimal counter.
--  Count: process(Rst,Clk_1Hz)
--  begin
--    --Asynchronous Reset
--	 if Rst = '1' then
--	   Count_int <= (others => '0');  --Aggregate
--	 elsif rising_edge(Clk_1Hz) then
--	   if Count_int = "1001" then
--		  Count_int <= (others => '0');
--		else
--	     Count_int <= Count_int + 1;
--		end if;
--	 end if;
--  end process Count;

  -- Module 2: In this section the realization of several
  --           counters will take place. The second of them
  --           will be a 4-bit decimal counter.  
--  Count: process(Rst,Clk_1Hz)
--  begin
--    Asynchronous Reset
--	 if Rst = '1' then
--	   Count_int <= (others => '0');  --Aggregate
--	 elsif rising_edge(Clk_1Hz) then
--	   Count_int <= Count_int + 1;
--	   if Count_int = "1001" then
--		  Count_int <= (others => '0');
--	   end if;
--	  end if;
--  end process Count;

  -- Module 2: In this section the realization of several
  --           counters will take place. The second of them
  --           will be a 4-bit decimal counter.
  Count: process(Rst,Clk_1Hz)
  begin
    --Asynchronous Reset
	 if Rst = '1' then
	   Count_int <= (others => '0');  --Aggregate
	 elsif rising_edge(Clk_1Hz) then
	   if UpDown = '1' then
	     -- Ascending Count
		  if Count_int = "1001" then
		    Count_int <= (others => '0');
		  else
	       Count_int <= Count_int + 1;
		  end if;
		-- Descending Count
		else
		  if Count_int = "0000" then
		    Count_int <= "1001";
		  else
		    Count_int <= Count_int - 1;
		  end if;
		end if;
	  end if;
  end process Count;
  
  -- Module 3: A binary to 7-segment decoder will the
  --           specified next with concurrent statements.
    with Count_int select
    --Segments  abcdefg
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










