----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar
-- 
-- Create Date:    16:37:02 08/28/2013 
-- Design Name: 
-- Module Name:    Mux4to1 - Mux4to1_Arch
-- Project Name: 	P6_Mux4to1
-- Target Devices: Basys2
-- Tool versions: ISE WebPack v14.6
-- Description: Several ways to implement MUX4to1
--
-- Dependencies: None
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

entity Mux4to1 is
    Port ( I 	: in  STD_LOGIC_VECTOR (0 to 3);--SE CAMBIO A TO instead od downto
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Y 	: out  STD_LOGIC);
end Mux4to1;

architecture Behavioral of Mux4to1 is
--Embedded signals are declared HERE!
--signal A : STD_LOGIC;
--signal B : STD_LOGIC;
--signal C : STD_LOGIC;
--signal D : STD_LOGIC;--1 bit

--Alternative way to declare signals
--signal A,B,C,D : STD_LOGIC;

begin
--Option 1
--Data flow description using Boolean Equation

--Y <= (I(0) AND NOT SEL(1) AND NOT SEL(0))  OR
--	    (I(1) AND NOT SEL(1) AND 	   SEL(0))  OR
--	    (I(2) AND     SEL(1) AND NOT SEL(0))  OR
--	    (I(3) AND 	   SEL(1) AND 	   SEL(0));


--Option 2
--Data flow description using a Boolean Equation and embedded signals

--A <= I(0) AND NOT SEL(1) AND NOT SEL(0);
--B <= I(1) AND NOT SEL(1) AND 	   SEL(0);
--C <= I(2) AND     SEL(1) AND NOT SEL(0);
--D <= I(3) AND 	   SEL(1) AND 	   SEL(0);
--
--Y <=  A OR B OR C OR D;

--Option 3
--Behavorial description using concurrent statements
--Using the Select-When statement

--  with Sel select
--      Y <= I(0) when "00",--If it was a single bit '0'
--           I(1) when "01",
--           I(2) when "10",
--			  I(3) when others;


--Option 4
--Behavorial description using concurrent statements
--Using the When-Else statement

--   Y <= I(0) when sel = "00" else
--		  --i(0) when (Sel(1) = '0' and Sel(0) = '0' else ESTA ES LA MISMA QUE ARRIBA
--        I(1) when Sel = "01" else
--		  I(2) when Sel = "10" else
--        I(3);
			
--Option 5
--Behavorial description using Sequential statements
--Using the If/Else/If/Else statement
process(Sel, I)--Sensitivity list

begin
	--Only sequntial statements are allowed here!!!

 if Sel = "00" then
      Y <=I(0);
   elsif Sel = "01" then 
      y <=I(1);
   elsif Sel = "10" then
      y <= i(2);
		else
		y <= I(3);
   end if;
	
	end process;
	

end Behavioral;--Mux4to1_Arch

