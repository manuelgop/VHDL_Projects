----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:06 09/04/2013 
-- Design Name: 
-- Module Name:    Arithmetic - Behavioral 
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

-- Library used for signed and unsigned types
use IEEE.STD_LOGIC_ARITH.ALL;

-- Libraries used for Standard_logic_vector arithmetic operations
-- use IEEE.NUMERIC_STD.ALL;
-- use IEEE.STD_LOGIC_SIGNED.ALL;

entity Arithmetic is
    Port ( A   : in  signed (3 downto 0);
           B   : in  signed (3 downto 0);
           Sum : out signed (4 downto 0));
end Arithmetic;

architecture Behavioral of Arithmetic is

begin
   -- Perform a binary addition for signed
   Sum <= (A(3) & A) + (B(3) & B);
	
	-- Perform a binary addition for unsigned
   -- Sum <= ('0' & A) + ('0' & B);
	
end Behavioral;

