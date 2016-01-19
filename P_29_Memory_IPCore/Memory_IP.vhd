----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:32:17 11/13/2013 
-- Design Name: 
-- Module Name:    Memory_IP - Behavioral 
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

entity Memory_IP is
    Port ( Addr : in  STD_LOGIC_VECTOR (3 downto 0);
           Data : out  STD_LOGIC_VECTOR (7 downto 0);
			  CLK : IN STD_LOGIC);
end Memory_IP;

architecture Behavioral of Memory_IP is
--Use the IP core generated element as component
component Memory
port (
   ADDRA : IN STD_LOGIC_VECTOR (3 downto 0);
   CLKA  : IN STD_LOGIC;
	DOUTA : OUT STD_LOGIC_VECTOR (7 downto 0));
end component;
begin
--Instatiate the component

U1: Memory
port map (
   Addra => Addr,
   CLKA => CLK,
	DOUTA => DATA);

end Behavioral;

