----------------------------------------------------------------------------------
-- Company:        ITESM
-- Engineer:       Mr. National Instruments
-- 
-- Create Date:    17:41:27 10/23/2013 
-- Design Name: 
-- Module Name:    Mustang_FSM - Behavioral 
-- Project Name: 
-- Target Devices: Spartan 6 (Nexys 3 Digilent board)
-- Tool versions:  ISE Webpack v14.6
-- Description:    Using a Moore FSM, define the sequential tail
--                 lights found on a Ford Mustang. Look at the
--                 following video:
--                 https://www.youtube.com/watch?v=KVFA-HuikfY
-- Dependencies:   None
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: The realization of the Moore FSM is based
--                      on the template described by your teacher
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Mustang_FSM is
    Port ( Lturn     : in   STD_LOGIC;
           Rturn     : in   STD_LOGIC;
           Hazard    : in   STD_LOGIC;
           Rst       : in   STD_LOGIC;
           Clk100MHz : in   STD_LOGIC;
           Llights   : out  STD_LOGIC_VECTOR (2 downto 0);
           Rlights   : out  STD_LOGIC_VECTOR (0 to 2));
end Mustang_FSM;

architecture Behavioral of Mustang_FSM is
  -- Definition of embedded signals and constants
  -- Constants used for frequency division
  constant Fosc    : integer := 100000000;   --Frecuencia del oscilador de tabletas NEXYS 3
  constant Fdiv    : integer := 2;           --Frecuencia deseada del divisor
  constant CtaMax  : integer := Fosc / Fdiv; --Cuenta maxima a la que hay que llegar
  -- Signal used by the frequency division process
  signal Cont      : integer range 0 to CtaMax;
  signal Clk_En    : STD_LOGIC;
  
  -- State definition for the FSM
  -- Binary encoding (default) will be used 
  -- Equivalent of enumeration types in programming languages  
   type state_values is (ST0,ST1,ST2,ST3,ST4,ST5,ST6,ST7);
   signal pres_state, next_state: state_values;
  
  -- One hot state coding
  -- ONE HOT ENCODED state machine: Sreg0
--  subtype Sreg0_type is std_logic_vector(7 downto 0);
--  constant ST0: Sreg0_type := "00000001";
--  constant ST1: Sreg0_type := "00000010";
--  constant ST2: Sreg0_type := "00000100";
--  constant ST3: Sreg0_type := "00001000";
--  constant ST4: Sreg0_type := "00010000";
--  constant ST5: Sreg0_type := "00100000";
--  constant ST6: Sreg0_type := "01000000";
--  constant ST7: Sreg0_type := "10000000";
--  signal pres_state, next_state: Sreg0_type;
  
  -- Used to concatenate Lturn, Rturn and Hazard for easier
  -- handling
  signal LRH       : STD_LOGIC_VECTOR (2 downto 0);

begin
  -- Frequency divider to obtain a 2Hz signal from
  -- the 100 MHz board oscillator
  FreqDiv: process (Rst, Clk100MHz)
  begin
    if Rst = '1' then
	   Cont <= 0;
	 elsif (rising_edge(Clk100MHz)) then
	   if Cont = CtaMax - 1 then
        Cont      <= 0;
        Clk_En    <= '1';
      else		  
	     Cont      <= Cont + 1;
		  Clk_En    <= '0';
		end if;
	end if;
  end process FreqDiv;
  
  -- The FSM definition begins next

  -- "Current State Register" (StateReg) description
  StateReg: process (Clk100MHz,Clk_En,Rst)
  begin
    if (Rst = '1') then 
      pres_state <= ST0;
    elsif (rising_edge(Clk100MHz) and Clk_En = '1') then
      pres_state <= next_state;
    end if;
  end process StateReg;
 
  -- "Next State Logic" (FSM) description
  LRH <= Lturn & Rturn & Hazard;
  FSM: process (pres_state, LRH)
  begin
    case pres_state is
    
      when ST0 => 
        case LRH is
          when "000"   => next_state <= ST0; -- All off
          when "110"   => next_state <= ST0; -- All off
          when "100"   => next_state <= ST2; -- Left Turn
          when "010"   => next_state <= ST5; -- Right Turn
          when others  => next_state <= ST1; -- Hazard
        end case;
        
      when ST1         => next_state <= ST0;
      when ST2         => next_state <= ST3;
      when ST3         => next_state <= ST4;
      when ST4         => next_state <= ST0;
      when ST5         => next_state <= ST6;
      when ST6         => next_state <= ST7;	
      when ST7         => next_state <= ST0;		
      -- Include when others to avoid latches  
      when others      => next_state <= ST0;
    end case;
  end process FSM;
 
  -- "Output Logic" (Outputs) description
  Outputs: process (pres_state)
  begin
    case pres_state is
      
      when ST0 => Llights <= "000"; Rlights <= "000";
      when ST1 => Llights <= "111"; Rlights <= "111";	
      when ST2 => Llights <= "001"; Rlights <= "000";
      when ST3 => Llights <= "011"; Rlights <= "000";
      when ST4 => Llights <= "111"; Rlights <= "000";
      when ST5 => Llights <= "000"; Rlights <= "001";
      when ST6 => Llights <= "000"; Rlights <= "011";
      when ST7 => Llights <= "000"; Rlights <= "111";		
		
      when others => null;
   end case;
  end process Outputs;

end Behavioral;






