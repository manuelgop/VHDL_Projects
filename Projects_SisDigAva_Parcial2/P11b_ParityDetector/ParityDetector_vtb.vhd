--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:59:18 09/12/2013
-- Design Name:   
-- Module Name:   D:/Projects_SisDigAva/P11b_ParityDetector/ParityDetector_vtb.vhd
-- Project Name:  P11b_ParityDetector
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ParityDetector
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
 
ENTITY ParityDetector_vtb IS
END ParityDetector_vtb;
 
ARCHITECTURE behavior OF ParityDetector_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ParityDetector
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         Parity : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Parity : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ParityDetector PORT MAP (
          A => A,
          Parity => Parity
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
		A <= x"06";
		wait for 100 ns;
		
		A <= x"09";
		wait for 100 ns;
		
		A <= x"00";
		wait for 100 ns;

      wait;
   end process;

END;
