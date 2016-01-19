----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:05:58 11/13/2013 
-- Design Name: 
-- Module Name:    Memory_IPCore - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Use of IPCore to generate a ROM 	16 x 8
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Sync ROM(Rom with a clock pulse)
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

entity Memory_IPCore is
    Port ( Addr : in  STD_LOGIC_VECTOR (3 downto 0);
           Data : out  STD_LOGIC_VECTOR (7 downto 0));
end Memory_IPCore;

architecture Behavioral of Memory_IPCore is

begin


end Behavioral;

