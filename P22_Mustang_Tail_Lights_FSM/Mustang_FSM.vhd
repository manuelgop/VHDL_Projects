----------------------------------------------------------------------------------
-- Company: ITESM
-- Engineer: Manuel Gopar
-- 
-- Create Date:    17:41:19 10/23/2013 
-- Design Name: Mustang Tail FSM
-- Module Name:    Mustang_FSM - Behavioral 
-- Project Name: 
-- Target Devices: Basys2
-- Tool versions: 
-- Description: Using a Moore FSM, define the sequential tail
--					 Lights found on a Ford Mustang. Look at the following video:
--					 watch?c=KVFA-HuikfY
--
-- Dependencies: None
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: The realization od the Moore FSM is based on the template described by your teacher.
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mustang_FSM is
    Port ( Lturn :		in  STD_LOGIC;
           Rturn : 		in  STD_LOGIC;
           Hazard : 		in  STD_LOGIC;
           Rst : 			in  STD_LOGIC;
           Clk100MHz :  in  STD_LOGIC;
           Llights :    out STD_LOGIC_VECTOR (2 downto 0);
           Rlights :		out STD_LOGIC_VECTOR (0 to 2));
end Mustang_FSM;	

architecture Behavioral of Mustang_FSM is
--Definition of embedded sgnals and constants
--Constans declarations
constant Fosc : integer := 100000000;
constant Fdiv : integer := 2;--Frecuenca deseada
constant CtaMax : integer := Fosc/ Fdiv;
--Sinals used by the frequency division process
signal cont : integer range 0 to CtaMax;
signal Clk_En : STD_LOGIC;--2Hz

--State Definition for FSM
--Binary encoding (default) will be used
  type state_values is (ST0,ST1,ST2,ST3,ST4,ST5,ST6,ST7);--eNUMERATION TYPES
  signal pres_state, next_state: state_values;--Means can take values st0, st1,st2, and so on.
  
  
  --Used to cancadenate LTurn, Rturn, and Hazard for easier handling
  SIGNAL RLH : STD_LOGIC_VECTOR (2 DOWNTO 0);--RightLeftHazard(RLH)


begin



-- Frequency divider to obtain a 2hz signal from the 100Mhz board oscilator
  FreqDiv: process(Clk100Mhz,Rst)
  begin	 
    if Rst = '1' then
	    Cont <= 0;
	  elsif (rising_edge(Clk100Mhz)) then
	   -- Check if the last count has been reached
		 if (Cont = (CtaMax - 1)) then
		   Cont <=0;
		   Clk_En     <= '1'; -- Change 2
		 else
		   Cont <= Cont + 1;
			Clk_En   <= '0'; -- Change 3
		end if;
    end if;
  end process FreqDiv;
  
  --The FSM definition begins next
  
  -- Proceso que describe el modulo "Current State Register"(StateReg)
  statereg: process (Clk100Mhz, Rst, Clk_En)
  begin
    if (Rst='1') then 
      pres_state <= ST0;
    elsif (Rising_Edge(Clk100Mhz) and Clk_En = '1') then
      pres_state <= next_state;
    end if;
  end process statereg;
  
  
  -- Proceso que describe el modulo "Next State Logic"
  RLH <= Lturn & Rturn & Hazard;
  fsm: process (pres_state, RLH)
  begin
    case pres_state is
    
      when ST0 => 
          case RLH is
          when "000"   => next_state <= ST0;--All off
          when "110"   => next_state <= ST0;--All off
          when "100"   => next_state <= ST2;-- Left Turn
          when "010"   => next_state <= ST5;--Rigt Turn
          when others => next_state  <= ST1;--Hazard
        end case;
        
      when ST1 => next_state <= ST0;
      when ST2 => next_state <= ST3;
      when ST3 => NEXT_STATE <= ST4;   
		when ST4 => NEXT_STATE <= ST0;
		when ST5 => NEXT_STATE <= ST6;
		when ST6 => NEXT_STATE <= ST7;
		when ST7 => NEXT_STATE <= st0;
      when others => next_state <= ST0;
		end case;
  end process fsm;

-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
  begin
    case pres_state is
      
      when ST0 => Llights <= "000"; Rlights <="000"; 
		when ST1 => Llights <= "111"; Rlights <="111"; 
		when ST2 => Llights <= "001"; Rlights <="000"; 
		when ST3 => Llights <= "011"; Rlights <="000"; 
		when ST4 => Llights <= "111"; Rlights <="000"; 
		when ST5 => Llights <= "000"; Rlights <="001"; 
		when ST6 => Llights <= "000"; Rlights <="011"; 
		when ST7 => Llights <= "000"; Rlights <="111"; 
     
     when others => null;
   end case;
   end process outputs;






end Behavioral;

