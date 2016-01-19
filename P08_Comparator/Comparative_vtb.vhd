--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:09:42 09/04/2013
-- Design Name:   
-- Module Name:   C:/Projectos_VHDL/P08_Comparator/Comparative_vtb.vhd
-- Project Name:  P08_Comparator
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
 
ENTITY Comparative_vtb IS
END Comparative_vtb;
 
ARCHITECTURE behavior OF Comparative_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Comparator
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         AgB : OUT  std_logic;
         AeqB : OUT  std_logic;
         AlB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal AgB : std_logic;
   signal AeqB : std_logic;
   signal AlB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 --  constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Comparator PORT MAP (
          A => A,
          B => B,
          AgB => AgB,
          AeqB => AeqB,
          AlB => AlB
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
    --  wait for 100 ns;	

    --  wait for <clock>_period*10;

      -- insert stimulus here 
		
		A <= "0000";
		B <= "0000";
		wait for 100 ns;
		
		A <= x"2";
		B <= x"4";
		wait for 100 ns;
		
		A <= x"4";
		b <= x"8";
		wait for 100 ns;
		
		a <= x"6";
		b <= x"c";
		wait for 100 ns;
		
		a <= x"8";
		b <= x"0";
		wait for 100 ns;
		
		a <= x"4";
		b <= x"a";
		wait for 100 ns;
		
		a <= x"c";
		b <= x"8";
		wait for 100 ns;

      wait;
   end process;

END;
