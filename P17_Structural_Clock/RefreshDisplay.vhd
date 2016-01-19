----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:54:22 10/25/2013 
-- Design Name: 
-- Module Name:    RefreshDisplay - Behavioral 
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

entity RefreshDisplay is
port (
   Rst    : in  STD_LOGIC;
   Clk    :	in  STD_LOGIC;
	ClkOut : out STD_LOGIC
	);
end RefreshDisplay;

architecture Behavioral of RefreshDisplay is
--Definition of embedded sgnals and constants
--Constans declarations
constant Fosc : integer := 100000000;
constant Fdiv : integer := 200;--Frecuenca deseada
constant CtaMax : integer := Fosc/ Fdiv;
--Embedded signals
--signal Clk_1Hz : STD_LOGIC;
--SIGNAL Count_int : STD_LOGIC_VECTOR (3 downto 0);


--Sinals used by the frequency division process
signal cont : integer range 0 to CtaMax;
--signal Clk_En : STD_LOGIC;--2Hz


begin


-- Frequency divider to obtain a 2hz signal from the 100Mhz board oscilator
  FreqDiv: process(Clk,Rst)
  begin	 
    if Rst = '1' then
	    Cont <= 0;
	  elsif (rising_edge(Clk)) then
	   -- Check if the last count has been reached
		 if (Cont = (CtaMax - 1)) then
		   Cont <=0;
		   ClkOut    <= '1'; -- Change 2
		 else
		   Cont <= Cont + 1;
			ClkOut  <= '0'; -- Change 3
		end if;
    end if;
  end process FreqDiv;

end Behavioral;

