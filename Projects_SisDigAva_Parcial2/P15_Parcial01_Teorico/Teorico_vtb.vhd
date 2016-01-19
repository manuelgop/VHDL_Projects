--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:54 09/29/2013
-- Design Name:   
-- Module Name:   D:/Projects_SisDigAva/P15_Parcial01_Teorico/Teorico_vtb.vhd
-- Project Name:  P15_Parcial01_Teorico
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Teorico
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
use IEEE.STD_LOGIC_ARITH.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Teorico_vtb IS
END Teorico_vtb;
 
ARCHITECTURE behavior OF Teorico_vtb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Teorico
    PORT(
         a : IN  signed(3 downto 0);
         b : IN  signed(3 downto 0);
         sum : OUT  signed(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : signed(3 downto 0) := (others => '0');
   signal b : signed(3 downto 0) := (others => '0');

 	--Outputs
   signal sum : signed(4 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Teorico PORT MAP (
          a => a,
          b => b,
          sum => sum
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		a <= x"0"; b <= x"0"; wait for 100 ns;
		a <= x"2"; b <= x"4"; wait for 100 ns;
		a <= x"4"; b <= x"8"; wait for 100 ns;
		a <= x"6"; b <= x"C"; wait for 100 ns;
		a <= x"8"; b <= x"0"; wait for 100 ns;
		a <= x"A"; b <= x"4"; wait for 100 ns;
		a <= x"C"; b <= x"8"; wait for 100 ns;
		a <= x"E"; b <= x"C"; wait for 100 ns;

      wait;
   end process;

END;
