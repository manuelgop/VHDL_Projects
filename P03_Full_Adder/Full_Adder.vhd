----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:47:04 08/21/2013 
-- Design Name: 
-- Module Name:    Full_Adder - Full_Adder_Arch 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end Full_Adder;

architecture Full_Adder_Arch of Full_Adder is


begin

S <= (NOT A AND NOT B AND D) OR (NOT A AND B AND NOT D) OR (A AND NOT B AND NOT D) OR (A AND B AND D);
C <= (A AND B) OR (A AND D) OR (B AND D);

end Full_Adder_Arch;

