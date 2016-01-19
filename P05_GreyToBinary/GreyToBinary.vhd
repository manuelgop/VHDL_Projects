----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:03:57 08/30/2013 
-- Design Name: 
-- Module Name:    GreyToBinary - Behavioral 
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

entity GreyToBinary is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : out  STD_LOGIC;
           F : out  STD_LOGIC;
           G : out  STD_LOGIC;
           H : out  STD_LOGIC);
end GreyToBinary;

architecture Behavioral of GreyToBinary is

begin
E <= A;
F <= (NOT A AND B) OR (A AND NOT B);
G <= (NOT A AND NOT B AND C) OR ( A AND B AND C) OR ( A AND NOT B AND NOT C) OR (NOT A AND B AND NOT C);
H <= (NOT A AND NOT B AND NOT C AND D) OR (NOT A AND NOT B AND C AND NOT D) OR (NOT A AND B AND C AND D) OR 
(A AND B AND C AND NOT D) OR (NOT A AND B AND NOT C AND NOT D) OR (A AND NOT B AND NOT C AND NOT D) OR (A AND NOT B AND C AND D) OR (A AND B AND NOT C AND D);

end Behavioral;

