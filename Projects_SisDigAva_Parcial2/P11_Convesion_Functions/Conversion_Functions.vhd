----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:14:40 09/09/2013 
-- Design Name: 
-- Module Name:    Conversion_Functions - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Use of Conversion Functions to mix different
--              signal types
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.all;
--use IEEE.std_logic_arith.all;
--
--entity Conversion_Functions is
--    Port ( A   : in   integer range 0 to 255;
--           B   : in   integer range 0 to 255;
--           Sum : out  STD_LOGIC_VECTOR (7 downto 0));
--end Conversion_Functions;
--
--architecture Behavioral of Conversion_Functions is
--
--begin
--  Sum <= CONV_STD_LOGIC_VECTOR(A + B, Sum'Length);
--end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
-- use IEEE.std_logic_arith.all;

entity Conversion_Functions is
    Port ( A   : in   STD_LOGIC_VECTOR (7 downto 0);
           B   : in   STD_LOGIC_VECTOR (7 downto 0);
           Sum : out  integer range 0 to 255);
			  
end Conversion_Functions;

architecture Behavioral of Conversion_Functions is
  -- Embedded signal declarations
  signal Aux : STD_LOGIC_VECTOR (7 downto 0);
begin
  Aux <= A + B;
  Sum <= CONV_INTEGER(Aux);
  -- Sum <= A + B;
end Behavioral;













