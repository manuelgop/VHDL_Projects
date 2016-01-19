--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:19:25 09/04/2013
-- Design Name:   
-- Module Name:   D:/Projects_SisDigAva/P08b_Comparator/Comparator_vtb.vhd
-- Project Name:  P08b_Comparator
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Comparator
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Comparator_vtb IS
END Comparator_vtb;
 
ARCHITECTURE behavior OF Comparator_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         A : IN  integer range -8 to 7;
         B : IN  integer range -8 to 7;
         AgtB : OUT  std_logic;
         AeqB : OUT  std_logic;
         AltB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : integer range -8 to 7 := 0;
   signal B : integer range -8 to 7 := 0;

 	--Outputs
   signal AgtB : std_logic;
   signal AeqB : std_logic;
   signal AltB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          A => A,
          B => B,
          AgtB => AgtB,
          AeqB => AeqB,
          AltB => AltB
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- wait for <clock>_period*10;

      -- insert stimulus here 
		A <= 2; --"0010";
		B <= 4; --"0100";
		wait for 100 ns;
		
		A <= 4;  --"0100";
		B <= -8; --"1000";
		wait for 100 ns;
		
		A <= 6;  --"0110";
		B <= -4; --"1100";
		wait for 100 ns;
		
		A <= -8; --"1000";
		B <= 0;  --"0000";
		wait for 100 ns;
		
		A <= -6; --"1010";
		B <= 4;  --"0100";
		wait for 100 ns;
		
		A <= -4; --"1100";
		B <= -8; --"1000";
		wait for 100 ns;
		
		A <= -2; --"1110";
		B <= -4; --"1100";
		wait for 100 ns;
		
		A <= 0;  --"0000";
		B <= 0;  --"0000";
		wait for 100 ns;

      wait;
   end process;

END;
