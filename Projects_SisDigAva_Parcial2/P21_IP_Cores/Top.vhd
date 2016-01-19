----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:00:15 10/17/2013 
-- Design Name: 
-- Module Name:    Top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
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

entity Top is
    Port ( InA       : in   STD_LOGIC_VECTOR (7 downto 0);
	        Clk100MHz : in   STD_LOGIC;
           OutY      : out  STD_LOGIC_VECTOR (4 downto 0);
			  Rdy       : out  STD_LOGIC);
end Top;

architecture Behavioral of Top is
  -- Component Square Root (from IP core)
  component IP_Core
  port (
     X_IN  : in  STD_LOGIC_VECTOR (7 downto 0);
	  CLK   : in  STD_LOGIC;
	  X_OUT : out STD_LOGIC_VECTOR (4 downto 0);
	  RDY   : out STD_LOGIC);
end component;

begin
  -- Component Instantiation
  U1 : IP_Core
  port map (
     X_IN  => InA,
	  CLK   => Clk100MHz,
	  X_OUT => OutY,
	  RDY   => Rdy);


end Behavioral;

