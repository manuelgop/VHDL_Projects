----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:56:44 11/11/2013 
-- Design Name: 
-- Module Name:    ROM_Memory - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    2^n x m Single Port ROM Memory
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Fully asynchronous
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ROM_Memory is
  Generic (
           n    : integer := 4; -- Length=2^n memory locations
			  m    : integer := 8  -- Size in bits of each memory location
			  );
    Port ( Addr : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Data : out STD_LOGIC_VECTOR (m-1 downto 0));
end ROM_Memory;

architecture Behavioral of ROM_Memory is
  -- Define the memory structure
  TYPE ROM_type is array (0 to (2**n)-1) of
        STD_LOGIC_VECTOR (m-1 downto 0);
  -- Implement and initialize the memory
  CONSTANT ROM : ROM_type :=
      (X"00", X"11", X"22", X"33",
		 X"44", X"55", X"66", X"77",
		 X"88", X"99", X"AA", X"BB",
		 X"CC", X"DD", X"EE", X"FF");
begin
  -- Instantiate de ROM
  -- Addresses for memories in VHDL should be of type integer
  Data <= ROM(conv_integer(Addr)); 


end Behavioral;

