----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    07:45:16 11/14/2013 
-- Design Name: 
-- Module Name:    Proc1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:    Find the largest of two signals (A and B) using a Procedure
--                 Convert Integer to STD_LOGIC_VECTOR using a Function
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

entity Proc1 is
    Port ( A   : in   STD_LOGIC_VECTOR (3 downto 0);
           B   : in   STD_LOGIC_VECTOR (3 downto 0);
           Res : out  STD_LOGIC_VECTOR (3 downto 0));
end Proc1;

architecture Behavioral of Proc1 is
  
  procedure Mayor (AA, BB : in  integer;
                   tmp    : out integer) is
  -- subprogram_declarative_items (constant declarations, variable declarations, etc.)      
  begin
    if AA > BB then
	   tmp := AA;
	 else
	   tmp := BB;
	 end if;
  end Mayor;

  -- Convert an integer to an STD_LOGIC_VECTOR
  function CONV_SLV(ARG: INTEGER; SIZE: INTEGER) return STD_LOGIC_VECTOR is
    variable result: STD_LOGIC_VECTOR (SIZE-1 downto 0);
    variable temp  : integer;
  begin
    temp := ARG;
    for i in 0 to SIZE-1 loop
      if (temp mod 2) = 1 then
        result(i) := '1';
      else
		  result(i) := '0';
      end if;
      temp := temp / 2;
    end loop;
    return result;
  end CONV_SLV;
  
begin
  
  process(A,B)
    variable max : integer;
  begin
    Mayor(conv_integer(A),conv_integer(B),max); -- Procedure Call
	 Res <= CONV_SLV(max,4); -- User defined Function that does the same as below
	 --Res <= conv_std_logic_vector(max,4); -- Standard conversion Function
  end process;


end Behavioral;

