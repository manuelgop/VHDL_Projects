--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:53:39 10/18/2012
-- Design Name:   
-- Module Name:   D:/ProySisDigAva/P22_Sniffer_FSM_Moore/Sniffer_vtb.vhd
-- Project Name:  P22_Sniffer_FSM_Moore
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sniffer
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
 
ENTITY Sniffer_vtb IS
END Sniffer_vtb;
 
ARCHITECTURE behavior OF Sniffer_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sniffer
    PORT(
         DataIn : IN  std_logic;
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         Found : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal DataIn : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';

 	--Outputs
   signal Found : std_logic;
	
	--Embedded test signal
	signal Pattern : std_logic_vector(19 downto 0) := "01011001010101101011";

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sniffer PORT MAP (
          DataIn => DataIn,
          Rst => Rst,
          Clk => Clk,
          Found => Found
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
		for i in Pattern'range loop
        DataIn <= Pattern(i);
        wait for Clk_period;
      end loop;
		

      wait;
   end process;

END;
