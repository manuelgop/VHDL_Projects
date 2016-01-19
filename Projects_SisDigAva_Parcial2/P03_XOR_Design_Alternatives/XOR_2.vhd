----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:07:30 08/26/2013 
-- Design Name: 
-- Module Name:    XOR_2 - Behavioral 
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

entity XOR_2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end XOR_2;

architecture Behavioral of XOR_2 is
  -- signal Choice : std_logic_vector(1 downto 0);
begin
  --Dataflow 1 description of a XOR gate
  -- Y <= (A and not B) or (not A and B);
  
  --Dataflow 2 description of a XOR gate
  -- Y <= A xor B;
  
  --Dataflow 3. Including the truth table directly
--  Choice <= A & B;
--   with (Choice) select
--      Y <= '0' when "00",
--           '1' when "01",
--			  '1' when "10",
--           '0' when others;

  --Sequential 1. Using the if statement
  process (A,B)
  begin
    if A = B then
	   Y <= '0';
	 else
	   Y <= '1';
	 end if;
  end process;  

end Behavioral;





