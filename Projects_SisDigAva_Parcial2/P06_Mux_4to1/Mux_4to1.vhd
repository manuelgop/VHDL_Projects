----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Rick L. Swenson
-- 
-- Create Date:    10:47:45 08/28/2013 
-- Design Name: 
-- Module Name:    Mux_4to1 - Behavioral 
-- Project Name: 
-- Target Devices: Nexys Board
-- Tool versions: 14.6
-- Description: Several ways of describing a 4 to 1 Multiplexer
--              using sequential and concurrent statements
--
-- Dependencies: none
--
-- Revision: 1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_4to1 is
    Port ( I   : in   STD_LOGIC_VECTOR (0 to 3);
           Sel : in   STD_LOGIC_VECTOR (1 downto 0);
           Y   : out  STD_LOGIC);
end Mux_4to1;

architecture Behavioral of Mux_4to1 is
  -- Embedded signal are declared here
  -- Embedded signal don't have direction
--  signal A : STD_LOGIC;
--  signal B : STD_LOGIC;
--  signal C : STD_LOGIC;
--  signal D : STD_LOGIC;
  
  -- Alternative declaration
  -- signal A,B,C,D : STD_LOGIC;

begin
   -- Option 1
	-- Dataflow description
	-- Write the Boolean equation
--	Y <= (I(0) and not Sel(1) and not Sel(0)) or
--        (I(1) and not Sel(1) and     Sel(0)) or
--        (I(2) and     Sel(1) and not Sel(0)) or
--        (I(3) and     Sel(1) and     Sel(0));	

   -- Option 2
	-- Dataflow description
	-- Using embedded signals to make the Boolean equation
   -- more readable.
--   A <= I(0) and not Sel(1) and not Sel(0);
--   B <= I(1) and not Sel(1) and     Sel(0);
--   C <= I(2) and     Sel(1) and not Sel(0);
--   D <= I(3) and     Sel(1) and     Sel(0);
--	
--	Y <= A or B or C or D;

   -- Option 3
	-- Behavioral (truth table) concurrent description
	-- Using the Select-When concurrent statement
--	with Sel select
--      Y <= I(0) when "00",
--           I(1) when "01",
--			  I(2) when "10",
--			  I(3) when others;

   -- Option 4
	-- Behavioral (truth table) concurrent description
	-- Using the When-Else concurrent statement
--	   Y <= I(0) when (Sel = "00") else
--           I(1) when (Sel = "00") else
--			  I(2) when (Sel = "01") else
--           I(3);
			  
   -- Option 5
	-- Behavioral (truth table) sequential description
	-- Using the if - elsif - else
	-- Sequential statements are ALWAYS part of a process
	process(Sel,I)  --Inside the parenthesis you have a "sensitity list"
	begin
	  -- Only sequential statements are allowed here
	  if Sel = "00" then
        Y <= I(0);
     elsif Sel = "01" then
        Y <= I(1); 
	  elsif Sel = "10" then
	     Y <= I(2);
     else
        Y <= I(3);
     end if;
	  
	end process;
	
end Behavioral;









