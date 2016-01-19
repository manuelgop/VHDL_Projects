----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:59:01 10/30/2013 
-- Design Name: 
-- Module Name:    Grey - Behavioral 
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

entity Grey is
    Port ( DataIn : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           grey : out  STD_LOGIC_VECTOR (0 to 3));
end Grey;

architecture Behavioral of Grey is
type state_values is (ST0,ST1,ST2,ST3,ST4,ST5,ST6,ST7,ST8,ST9,ST10,ST11,ST12,ST13,ST14, ST15);
  signal pres_state, next_state: state_values;
begin
  -- Process which describes the "Current State Register"
  statereg: process (Clk,Rst)
  begin
    if (Rst='1') then 
      pres_state <= ST0;
    elsif (rising_edge(Clk)) then
      pres_state <= next_state;
    end if;
  end process statereg;
  
  
  -- Process that describes the "Next State Logic" section

  
  fsm: process (pres_state, DataIn)
  begin
    case pres_state is
    
      when ST0 => 
        if DataIn = '1' then
        next_state <= ST1;
      else
        next_state <= ST15;
        end if; 

      when ST1 => 
        if DataIn = '1' then
        next_state <= ST2;
      else
        next_state <= ST0;
        end if;

      when ST2 => 
        if DataIn = '1' then
        next_state <= ST3;
      else
        next_state <= ST1;
        end if;

      when ST3 => 
        if DataIn = '1' then
        next_state <= ST4;
      else
        next_state <= ST2;
        end if;

      when ST4 => 
        if DataIn = '1' then
        next_state <= ST5;
      else
        next_state <= ST3;
        end if;     
		
		 when ST5 => 
        if DataIn = '1' then
        next_state <= ST6;
      else
        next_state <= ST4;
        end if;
		   when ST6 => 
        if DataIn = '1' then
        next_state <= ST7;
      else
        next_state <= ST5;
        end if;
		   when ST7 => 
        if DataIn = '1' then
        next_state <= ST8;
      else
        next_state <= ST6;
        end if;
		  
		   when ST8 => 
        if DataIn = '1' then
        next_state <= ST9;
      else
        next_state <= ST7;
        end if;
		  
		   when ST9 => 
        if DataIn = '1' then
        next_state <= ST10;
      else
        next_state <= ST8;
        end if;
		  
		   when ST10 => 
        if DataIn = '1' then
        next_state <= ST11;
      else
        next_state <= ST9;
        end if;
		  
		   when ST11 => 
        if DataIn = '1' then
        next_state <= ST12;
      else
        next_state <= St10;
        end if;
		  
		   when ST12 => 
        if DataIn = '1' then
        next_state <= ST13;
      else
        next_state <= ST11;
        end if;
		  
		   when ST13 => 
        if DataIn = '1' then
        next_state <= ST14;
      else
        next_state <= ST12;
        end if;
		  
		   when ST14 => 
        if DataIn = '1' then
        next_state <= ST15;
      else
        next_state <= ST13;
        end if;
		  
		   when ST15 => 
        if DataIn = '1' then
        next_state <= ST0;
      else
        next_state <= ST14;
        end if;
      when others => next_state <= ST0;
    end case;
  end process fsm;
  
  -- Process which describe the "Output Logic" section
  outputs: process (pres_state)
  begin
    case pres_state is
      
      when ST0 => grey <= "0000";
		when ST1 => grey <= "0001";
		when ST2 => grey <= "0011";
		when ST3 => grey <= "0010";
		when ST4 => grey <= "0110"; 
		
		when ST5 => grey <= "0111";
		when ST6 => grey <= "0101";
		when ST7 => grey <= "0100";
		when ST8 => grey <= "1100";
		when ST9 => grey <= "1101"; 
		
		when ST10 => grey <= "1111";
		when ST11 => grey <= "1110";
		when ST12 => grey <= "1010";
		when ST13 => grey <= "1011";
		when ST14 => grey <= "1001";
		when ST15 => grey <= "1000";
     when others => null;
    
   end case;
   end process outputs;

end Behavioral;

