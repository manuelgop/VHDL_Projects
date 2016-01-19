----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:39 09/04/2013 
-- Design Name: 
-- Module Name:    Comparator - Behavioral 
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


--Unsigned = natural
--Signed = integer 
entity Comparator is
    Port ( A : in  integer range  -8 to 7;
           B : in  integer range -8 to 7;
           AgB : out  STD_LOGIC;
           AeqB : out  STD_LOGIC;
           AlB : out  STD_LOGIC);
end Comparator;

architecture Behavioral of Comparator is

begin

--Concurrent description of the magnitud comparator
Agb <= '1' when A > B else '0';
AeqB <= '1' when A = B else '0';
AlB <= '1' when A < B else '0';


end Behavioral;

