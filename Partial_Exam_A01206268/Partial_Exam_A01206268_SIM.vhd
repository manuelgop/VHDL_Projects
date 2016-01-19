--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:24:49 09/25/2013
-- Design Name:   
-- Module Name:   E:/Partial_Exam_A01206268/Partial_Exam_A01206268_SIM.vhd
-- Project Name:  Partial_Exam_A01206268
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Partial_Exam_A01206268
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
 
ENTITY Partial_Exam_A01206268_SIM IS
END Partial_Exam_A01206268_SIM;
 
ARCHITECTURE behavior OF Partial_Exam_A01206268_SIM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Partial_Exam_A01206268
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         C : IN  std_logic_vector(7 downto 0);
         Small : OUT  std_logic_vector(7 downto 0);
         Middle : OUT  std_logic_vector(7 downto 0);
         Large : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal C : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Small : std_logic_vector(7 downto 0);
   signal Middle : std_logic_vector(7 downto 0);
   signal Large : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Partial_Exam_A01206268 PORT MAP (
          A => A,
          B => B,
          C => C,
          Small => Small,
          Middle => Middle,
          Large => Large
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
	 A <= "00000000";
	 B <= "00000000";
	 C <= "00000000";
	 wait for 100 ns;
	 
	 A <= "00110011";
	 B <= "00011100";
	 C <= "00001111";
	 wait for 100 ns;
	 
	 A <= "00000001";
	 B <= "10000000";
	 C <= "00001000";
	 wait for 100 ns;
	 
	 A <= "00011111";
	 B <= "11111111";
	 C <= "10101010";
	 wait for 100 ns;
	 
	 A <= "11000000";
	 B <= "10010000";
	 C <= "10100000";
	 wait for 100 ns;
	 
   end process;

END;
