----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:16:04 10/04/2013 
-- Design Name: 
-- Module Name:    Contador - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Contador is
    Port ( Rst       : in   STD_LOGIC;
           Clk100MHz : in   STD_LOGIC;
           Seg       : out  STD_LOGIC_VECTOR (0 to 6);
           Anode     : out  STD_LOGIC_VECTOR (3 downto 0));
end Contador;

architecture Behavioral of Contador is
  
  -- Constants declarations
  -- Nexys3 Xtal Oscillator, oscillates at 100MHz
  constant BoardFreq : natural := 100000000;
  constant MaxCount  : natural := BoardFreq; -- Change 1
  
  -- Embedded Signal declarations
  signal Clk_1Hz     : STD_LOGIC;
  signal Count_int   : STD_LOGIC_VECTOR (3 downto 0);
  -- Frequency division counter
  signal FreqCounter : natural range 0 to (MaxCount - 1);
begin
  -- Module 1: A frequency divider will be specified next.
  --           Taking the Nexys3 100-MHz oscillator, obtain
  --           a 1Hz clock signal used for the counter.
  FreqDiv: process(Clk100MHz,Rst)
  begin
    -- Beware Resetting the frequency divider asynchronously and then resetting the counter
	 -- below synchronously. When the frequency divider is reset, there is no clock to reset
	 -- the counter synchronously!
	 
    if Rst = '1' then
	   FreqCounter <= 0;
		Clk_1Hz     <= '0';
	  elsif rising_edge(Clk100MHz) then
	   -- Check if the last count has been reached
		 if (FreqCounter = (MaxCount - 1)) then
		   FreqCounter <= 0;
		   Clk_1Hz     <= '1'; -- Change 2
		 else
		   FreqCounter <= FreqCounter + 1;
			Clk_1Hz     <= '0'; -- Change 3
		end if;
    end if;
  end process FreqDiv;
  
  -- Module 2: In this section the realization of several
  --           counters will take place. The first of them
  --           will be a 4-bit binary couter.
  Count: process(Rst,Clk_1Hz,Clk100MHz)  -- Change 4 (Add Clk100Mhz signal to the sensitivity list)
  begin
    --Asynchronous Reset
      if Rst = '1' then
	       Count_int <= (others => '0');  --Aggregate
	   -- Change 5 Connect Board Clock to Clock (Clocks to Clocks)
		-- Enable that clock for 1 period of time 
	   elsif (rising_edge(Clk100MHz) and Clk_1Hz = '1') then
	       Count_int <= Count_int + 1;
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

