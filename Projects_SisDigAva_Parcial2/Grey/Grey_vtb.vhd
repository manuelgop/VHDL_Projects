--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:16:18 10/30/2013
-- Design Name:   
-- Module Name:   C:/Projectos_VHDL/Projects_SisDigAva_Parcial2/Grey/Grey_vtb.vhd
-- Project Name:  Grey
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Grey
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
 USE ieee.numeric_std.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Grey_vtb IS
END Grey_vtb;
 
ARCHITECTURE behavior OF Grey_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Grey
    PORT(
         DataIn : IN  std_logic;
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         grey : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal DataIn : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal grey : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Grey PORT MAP (
          DataIn => DataIn,
          Rst => Rst,
          Clk => Clk,
          grey => grey
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 
		Rst <= '1';
		wait for Clk_period;
		
		Rst <= '0';
		dataIn <= '1';
		wait for Clk_period;
		dataIn <= '1';
		
      wait;
   end process;

END;
