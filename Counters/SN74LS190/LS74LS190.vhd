----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:27:35 10/15/2013 
-- Design Name: 
-- Module Name:    LS74LS190 - Behavioral 
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

entity LS74LS190 is
    Port ( Clk100Mhz : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           CE : in  STD_LOGIC;
           UD : in  STD_LOGIC;
           --CP : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (0 to 6);
           Anode : out  STD_LOGIC_VECTOR (0 to 3));
end LS74LS190;

architecture Behavioral of LS74LS190 is
--Constans declarations
constant BoardFreq : natural := 25000000;
constant MaxCount : natural := BoardFreq;
--Embedded signals
signal Clk_1Hz : STD_LOGIC;
SIGNAL Count_int : STD_LOGIC_VECTOR (3 downto 0);

--Freq Division Counter
signal FreqCounter : natural range 0 to (MaxCount -1);

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
  
--Module 2 contadores
--Assync
Count: process(Rst,Clk_1Hz,Clk100MHz)  -- Change 4 (Add Clk100Mhz signal to the sensitivity list)
  begin
    --Asynchronous Reset
 if Rst = '1' then
	Count_int <= (others => '0');  --Aggregate
-- Change 5 Connect Board Clock to Clock (Clocks to Clocks)
-- Enable that clock for 1 period of time 
	elsif (rising_edge(Clk100MHz) and Clk_1Hz = '1') then
	       if(Rst='0' AND CE='0' AND UD='0') then
					if count_int = "1111" then
						count_int <= (others => '0');
						else
							count_int<= count_int +1;
					end if;
			elsif(Rst= '0' and CE = '0' and UD= '1') then
				if count_int = "0000" then
					count_int <= "1111";
				else
					count_int <= count_int -1;
					end if;
			end if;		
		end if;
  end process Count;
  
--Module 3: A binary to 7 segment decoder will be specified next with concurrent statements
--
anode <= "0000";
with count_int select
      seg <= "0000001" when "0000",--0
			    "1001111" when "0001",--1
				 "0010010" when "0010",--2
				 "0000110" when "0011",--3
				 "1001100" when "0100",--4
				 "0100100" when "0101",--5
				 "0100000" when "0110",--6
				 "0001111" when "0111",--7
				 "0000000" when "1000",--8
				 "0001100" when "1001",--9
				 "0001000" when "1010",--A
				 "1100000" when "1011",--B
				 "0110001" when "1100",--C
				 "1000010" when "1101",--D
				 "0110000" when "1110",--E
				 "0111000" when "1111",--F
				 "0111000" when others;--NULL

end Behavioral;

