----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Rick L. Swenson 
-- 
-- Create Date:    16:38:01 08/28/2013 
-- Design Name:    4 to 1 Multiplexer
-- Module Name:    Mux4to1 - Mux4to1_Arch 
-- Project Name:   P06_Mux4to1
-- Target Devices: Basys2 (Spartan 3E-100 CP132)
-- Tool versions:  ISE Webpack v14.6
-- Description:    Several ways of implementing a 4 to 1 multiplexor
--
-- Dependencies:   None
--
-- Revision:       1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux4to1 is
    Port ( I   : in   STD_LOGIC_VECTOR (0 to 3);
           Sel : in   STD_LOGIC_VECTOR (1 downto 0);
           Y   : out  STD_LOGIC);
end Mux4to1;

architecture Mux4to1_Arch of Mux4to1 is
  -- Embedded signals are declared here
--  signal A : STD_LOGIC;
--  signal B : STD_LOGIC;
--  signal C : STD_LOGIC;
--  signal D : STD_LOGIC;
  
  -- Alternate way of declaring embedded signals
  -- signal A,B,C,D : STD_LOGIC;
	 
begin
  -- Option 1
  -- Dataflow description using a Boolean equation
--  Y <= (I(0) and not Sel(1) and not Sel(0)) or
--       (I(1) and not Sel(1) and     Sel(0)) or
--		 (I(2) and     Sel(1) and not Sel(0)) or
--		 (I(3) and     Sel(1) and     Sel(0));

  -- Option 2
  -- Dataflow description using a Boolean equation
  -- and embedded signals
--  A <= I(0) and not Sel(1) and not Sel(0);
--  B <= I(1) and not Sel(1) and     Sel(0);
--  C <= I(2) and     Sel(1) and not Sel(0);
--  D <= I(3) and     Sel(1) and     Sel(0);
--  
--  Y <= A or B or C or D;

  -- Option 3
  -- Behavioral description using concurrent statements
  -- Using the Select-When statement
  
--     with Sel select
--       Y <= I(0) when "00",
--            I(1) when "01",
--				I(2) when "10",
--            I(3) when others;
				
  -- Option 4
  -- Behavioral description using concurrent statements
  -- Using the When-Else statement
--     Y <= I(0) when Sel = "00" else
--          I(1) when Sel = "01" else
--			 I(2) when Sel = "10" else
--			 I(3);
			 
  -- Option 5
  -- Behavioral description using sequential statements
  -- Using the IF - ELSE - ELSE IF statement
--  process (Sel,I)  -- Sensitivity list
--  begin
--    -- Only sequential statements are allowed here
--	 if Sel = "00" then
--      Y <= I(0);
--   elsif Sel = "01" then
--      Y <= I(1);
--   elsif Sel = "10" then
--      Y <= I(2);
--   else
--	   Y <= I(3);
--   end if;
--	
--  end process;
 
  -- Option 6
  -- Behavioral description using sequential statements
  -- Using the Case statement
  caseoption: process (Sel,I)
  begin
    case (Sel) is 
      when "00"   => Y <= I(0);
      when "01"   => Y <= I(1);
      when "10"   => Y <= I(2);
      when "11"   => Y <= I(3);
      when others => Y <= I(0);
   end case;
  end process caseoption;
 
end Mux4to1_Arch;















