--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:53:02 09/04/2013
-- Design Name:   
-- Module Name:   D:/Projects_SisDigAva/P008_Compartor/Comparator_vtb.vhd
-- Project Name:  P008_Compartor
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
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         AgtB : OUT  std_logic;
         AeqB : OUT  std_logic;
         AltB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

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

--      wait for <clock>_period*10;

      -- insert stimulus here
		A <= "0010";
		B <= "0100";
		wait for 100 ns;
		
		A <= "0100";
		B <= "1000";
		wait for 100 ns;
		
		A <= "0110";
		B <= "1100";
		wait for 100 ns;
		
		A <= "1000";
		B <= "0000";
		wait for 100 ns;
		
		A <= "1010";
		B <= "0100";
		wait for 100 ns;
		
		A <= x"C";
		B <= x"8";
		wait for 100 ns;
		
		A <= "1110";
		B <= "1100";
		wait for 100 ns;
		
		A <= "0101";
		B <= "0101";

      wait;
   end process;

END;
