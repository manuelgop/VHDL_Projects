--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:14:11 10/10/2013
-- Design Name:   
-- Module Name:   D:/Projects_SisDigAva/P17a_Structural_Clock/Mux4to1_vtb.vhd
-- Project Name:  P17a_Structural_Clock
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux4to1
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
 
ENTITY Mux4to1_vtb IS
END Mux4to1_vtb;
 
ARCHITECTURE behavior OF Mux4to1_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux4to1
    PORT(
         DecHor : IN  std_logic_vector(3 downto 0);
         UniHor : IN  std_logic_vector(3 downto 0);
         DecMin : IN  std_logic_vector(3 downto 0);
         UniMin : IN  std_logic_vector(3 downto 0);
         Sel : IN  std_logic_vector(1 downto 0);
         Tiempo : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DecHor : std_logic_vector(3 downto 0) := (others => '0');
   signal UniHor : std_logic_vector(3 downto 0) := (others => '0');
   signal DecMin : std_logic_vector(3 downto 0) := (others => '0');
   signal UniMin : std_logic_vector(3 downto 0) := (others => '0');
   signal Sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Tiempo : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux4to1 PORT MAP (
          DecHor => DecHor,
          UniHor => UniHor,
          DecMin => DecMin,
          UniMin => UniMin,
          Sel => Sel,
          Tiempo => Tiempo
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
		DecHor <= x"1";
		UniHor <= x"2";
		DecMin <= x"3";
		UniMin <= x"4";
		
		Sel <= "00"; wait for 100 ns;
		Sel <= "01"; wait for 100 ns;
		Sel <= "10"; wait for 100 ns;
		Sel <= "11"; wait for 100 ns;
		

      wait;
   end process;

END;
