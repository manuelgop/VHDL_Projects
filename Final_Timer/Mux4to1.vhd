----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:24 10/06/2010 
-- Design Name: 
-- Module Name:    Mux4to1 - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mux4to1 is
   port (
   UnidadesCont   : in  STD_LOGIC_VECTOR(1 downto 0);
   DecenasCont   : in  STD_LOGIC_VECTOR(1 downto 0);
	Sel    : in  STD_LOGIC_VECTOR (1 downto 0);
	Contador : out STD_LOGIC_VECTOR(1 downto 0));
	
end Mux4to1;

architecture Behavioral of Mux4to1 is

begin
    --Seleccion de unidad de tiempo  HH:MM
  with Sel select
    Contador <= UnidadesCont when "00",
	             DecenasCont when "01",
				  
				  DecenasCont when others;

end Behavioral;

