----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:01:46 10/30/2013 
-- Design Name: 
-- Module Name:    tlc - Behavioral 
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

entity tlc is
    Port ( Clk     : in   STD_LOGIC;
           Stby    : in   STD_LOGIC;
           Test    : in   STD_LOGIC;
           Red1    : out  STD_LOGIC;
           Red2    : out  STD_LOGIC;
           Yellow1 : out  STD_LOGIC;
           Yellow2 : out  STD_LOGIC;
           Green1  : out  STD_LOGIC;
           Green2  : out  STD_LOGIC);
end tlc;

architecture Behavioral of tlc is

  CONSTANT BrdFreq  : NATURAL := 100000000;    -- Nexys 3 board frequency in Hertz
  CONSTANT timeMAX  : NATURAL := BrdFreq * 20; -- Largest count
  CONSTANT timeRG   : NATURAL := BrdFreq * 15;
  CONSTANT timeRY   : NATURAL := BrdFreq * 5;
  CONSTANT timeGR   : NATURAL := BrdFreq * 20;
  CONSTANT timeYR   : NATURAL := BrdFreq * 5;
  CONSTANT timeTEST : NATURAL := BrdFreq;
  
  TYPE state IS (RG, RY, GR, YR, YY);
  SIGNAL pr_state, nx_state: state;
  
  SIGNAL time       : NATURAL RANGE 0 TO timeMAX;
  
BEGIN
 
  -------- Lower section of state machine: ---
  PROCESS (Clk, Stby)
    VARIABLE count : NATURAL RANGE 0 TO timeMAX;
  BEGIN
    IF (Stby = '1') THEN
      pr_state <= YY;
      count := 0;
    ELSIF rising_edge(Clk) THEN
      count := count + 1;
      IF (count = time) THEN
        pr_state <= nx_state;
        count := 0;
      END IF;
    END IF;
  END PROCESS;
  
  
  -------- Upper section of state machine: ---
  PROCESS (pr_state, test)
  BEGIN
    CASE pr_state IS
	 
      WHEN RG =>
        nx_state <= RY;
        IF (Test = '0') THEN
		    time <= timeRG;
        ELSE
		    time <= timeTEST;
        END IF;
		  
      WHEN RY =>    
        nx_state <= GR;
        IF (Test = '0') THEN
		    time <= timeRY;
        ELSE
		    time <= timeTEST;
        END IF;
		  
      WHEN GR =>
        nx_state <= YR;
        IF (Test = '0') THEN
		    time <= timeGR;
        ELSE
		    time <= timeTEST;
        END IF;
		  
      WHEN YR =>
        nx_state <= RG;
        IF (Test = '0') THEN
		    time <= timeYR;
        ELSE
		    time <= timeTEST;
        END IF;
		  
        WHEN YY =>
          nx_state <= RY;
			 time     <= timeTest;
			 
		  WHEN others =>
		    nx_state <= YY;
			 time     <= timeTest;
			 
    END CASE;
  END PROCESS;
  
  -------- Output section of state machine: ---
  process (pr_state)
  begin
    case pr_state is
	   when RG     => Red1<='1'; Red2<='0'; Yellow1<='0'; Yellow2<='0'; Green1<='0'; Green2<='1';
		when RY     => Red1<='1'; Red2<='0'; Yellow1<='0'; Yellow2<='1'; Green1<='0'; Green2<='0';
		when GR     => Red1<='0'; Red2<='1'; Yellow1<='0'; Yellow2<='0'; Green1<='1'; Green2<='0';
		when YR     => Red1<='0'; Red2<='1'; Yellow1<='1'; Yellow2<='0'; Green1<='0'; Green2<='0';
		when YY     => Red1<='0'; Red2<='0'; Yellow1<='1'; Yellow2<='1'; Green1<='0'; Green2<='0';
      when others => Red1<='0'; Red2<='0'; Yellow1<='0'; Yellow2<='0'; Green1<='0'; Green2<='0';
	 end case;
  end process;

end Behavioral;

