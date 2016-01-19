----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:03:47 10/10/2013 
-- Design Name: 
-- Module Name:    Mux4to1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Implementation of the Mux4to1
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

entity Mux4to1 is
  -- The folling was copyied (<ctrl-c>) from top hierarchy
  -- and then pasted below (<ctrl-v>)
  port (
    DecHor  : in  STD_LOGIC_VECTOR(3 downto 0);
	 UniHor  : in  STD_LOGIC_VECTOR(3 downto 0);
	 DecMin  : in  STD_LOGIC_VECTOR(3 downto 0);
	 UniMin  : in  STD_LOGIC_VECTOR(3 downto 0);
	 Sel     : in  STD_LOGIC_VECTOR(1 downto 0);
	 Tiempo  : out STD_LOGIC_VECTOR(3 downto 0));
end Mux4to1;

architecture Behavioral of Mux4to1 is

begin
  
  -- Implement the multiplexor
   with Sel select
      Tiempo <= DecHor when "00",
                UniHor when "01",
					 DecMin when "10",
                UniMin when others;


end Behavioral;

