----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       RickWare
-- 
-- Create Date:    08:22:31 10/17/2012 
-- Design Name:    Ford Mercury Tail Lights controller
-- Module Name:    Ford_Mercury - Behavioral 
-- Project Name:   Ford_Mercury
-- Target Devices: Spartan 6 (Nexys 3)
-- Tool versions:  Xilinx ISE 13.2
-- Description:    Sequential Light control of a 1967 Ford Mercury
--                 tail light by means of a Moore FSM
-- Dependencies:   None
--
-- Revision:       1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sniffer is
    Port ( DataIn  : in   STD_LOGIC; -- 
           Rst     : in   STD_LOGIC;
           Clk     : in   STD_LOGIC;
           Found   : out  STD_LOGIC);  -- 
end Sniffer;   

architecture Behavioral of Sniffer is
  -- Definition of state names for the FSM
  type state_values is (ST0,ST1,ST2,ST3,ST4);
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
        if DataIn = '0' then
		    next_state <= ST0;
		  else
		    next_state <= ST1;
        end if; 

      when ST1 => 
        if DataIn = '0' then
		    next_state <= ST2;
		  else
		    next_state <= ST1;
        end if;

      when ST2 => 
        if DataIn = '0' then
		    next_state <= ST0;
		  else
		    next_state <= ST3;
        end if;

      when ST3 => 
        if DataIn = '0' then
		    next_state <= ST4;
		  else
		    next_state <= ST1;
        end if;

      when ST4 => 
        if DataIn = '0' then
		    next_state <= ST0;
		  else
		    next_state <= ST3;
        end if;		  

      when others => next_state <= ST0;
    end case;
  end process fsm;
  
  -- Process which describe the "Output Logic" section
  outputs: process (pres_state)
  begin
    case pres_state is
      
      when ST0 => Found <= '0';
		when ST1 => Found <= '0';
		when ST2 => Found <= '0';
		when ST3 => Found <= '0';
		when ST4 => Found <= '1';	
     -- All ouput possibilities have been accounted for, so
	  -- "null" can be used to reflect this
     when others => null;
	  
   end case;
   end process outputs;


end Behavioral;

