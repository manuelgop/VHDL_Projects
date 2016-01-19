----------------------------------------------------------------------------------
-- Company:     ITESM
-- Engineer:    Elmer Homero
-- 
-- Create Date:    11:41:24 10/23/2013 
-- Design Name: 
-- Module Name:    Mustang_FSM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:   Moore Finite State Machine (FSM) to control
--                the turning sequence for the tail lights
--                of a Ford Mustang
--                https://www.youtube.com/watch?v=KVFA-HuikfY
-- Dependencies: 
--
-- Revision:      v1.0
-- Revision 0.01 - File Created
-- Additional Comments: The FSM implementation will consist
--                      of 4 processes
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mustang_FSM is
    Port ( Lturn     : in   STD_LOGIC;
           Rturn     : in   STD_LOGIC;
           Hazard    : in   STD_LOGIC;
           Clk100MHz : in   STD_LOGIC;
           Rst       : in   STD_LOGIC;
           Left      : out  STD_LOGIC_VECTOR (2 downto 0);
           Right     : out  STD_LOGIC_VECTOR (0 to 2));
end Mustang_FSM;

architecture Behavioral of Mustang_FSM is
  -- Embedded signals and constants
  -- Constants used for frequency division
  constant Fosc    : integer := 100000000;   --Frecuencia del oscilador de tabletas NEXYS 3
  constant Fdiv    : integer := 2;           --Frecuencia deseada del divisor
  constant CtaMax  : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  -- Signal declaration
  signal Cont      : integer range 0 to CtaMax;
  signal Clk1Hz_En : STD_LOGIC;
  -- States definition
  -- Default binary state coding 
  type state_values is (ST0,ST1,ST2,ST3,ST4,ST5,ST6,ST7);
  signal pres_state, next_state: state_values;
  -- Concatenation signal used for inputs
  signal LRH       : STD_LOGIC_VECTOR (2 downto 0);


begin
  -- Frequency divider to obtain a 2Hz signal from
  -- the 100 MHz board oscillator
  FreqDiv: process (Rst, Clk100MHz)
  begin
    if Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(Clk100MHz)) then
	   if Cont = CtaMax then
        Cont      <= 0;
        Clk1Hz_En <= '1';
      else		  
	     Cont      <= Cont + 1;
		  Clk1Hz_En <= '0';
		end if;
	end if;
  end process FreqDiv;

  -- Process which describes the "Current State Register"
  StateReg: process (Clk100MHz,Clk1Hz_En,Rst)
  begin
    if (Rst = '1') then 
      pres_state <= ST0;
    elsif (rising_edge(Clk100MHz) and Clk1Hz_En = '1') then
      pres_state <= next_state;
    end if;
  end process StateReg;
 
  -- Process which describes the "Next State Logic"
  -- Concatenate input signals to handle them easier
  LRH <= Lturn & Rturn & Hazard;
  
  FSM: process (pres_state, LRH)
  begin
    case pres_state is
    
      when ST0 => 
        case LRH is
          when "000"  => next_state <= ST0;
          when "110"  => next_state <= ST0;
          when "100"  => next_state <= ST2;
          when "010"  => next_state <= ST5;
          when others => next_state <= ST1;
        end case;
        
      when ST1        => next_state <= ST0;
		when ST2        => next_state <= ST3;
	   when ST3        => next_state <= ST4;
	   when ST4        => next_state <= ST0;
	   when ST5        => next_state <= ST6;
	   when ST6        => next_state <= ST7;
	   when ST7        => next_state <= ST0;
        
      when others     => next_state <= ST0;
    end case;
  end process FSM;
 
  -- Process which describes the "Output Logic"
  Outputs: process (pres_state)
  begin
    case pres_state is
      
      when ST0 => Left <= "000"; Right <= "000"; 	
      when ST1 => Left <= "111"; Right <= "111"; 
      when ST2 => Left <= "001"; Right <= "000"; 
      when ST3 => Left <= "011"; Right <= "000"; 
      when ST4 => Left <= "111"; Right <= "000";
      when ST5 => Left <= "000"; Right <= "001"; 
      when ST6 => Left <= "000"; Right <= "011"; 
      when ST7 => Left <= "000"; Right <= "111";		
     
     when others => null;
   end case;
   end process Outputs;



end Behavioral;







