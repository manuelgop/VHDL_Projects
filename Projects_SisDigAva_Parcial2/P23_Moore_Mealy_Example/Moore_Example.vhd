--Definicion de una maquina de Moore
--
--RickWare  15/Abril/2004

library IEEE;
use IEEE.std_logic_1164.all;

entity M_oore is
    port (
        Clock: in STD_LOGIC;
        Reset: in STD_LOGIC;
        Data_In: in STD_LOGIC_VECTOR (1 downto 0);
        Data_Out: out STD_LOGIC
    );
end M_oore;

architecture M_oore_arch of M_oore is
  --Codificar estados en combinaciones binarias 
  type state_values is (ST0,ST1,ST2,ST3,ST4);
  signal pres_state, next_state: state_values;

begin
-- Proceso que describe el modulo "Current State Register"
  statereg: process (Clock,Reset)
  begin
    if (Reset='0') then 
      pres_state <= ST0;
    elsif (Clock'event and Clock='1') then
      pres_state <= next_state;
    end if;
  end process statereg;
  
-- Proceso que describe el modulo "Next State Logic"
  fsm: process (pres_state, Data_In)
  begin
    case pres_state is
    
      when ST0 => 
        case Data_In is
          when "00"   => next_state <= ST0;
          when "01"   => next_state <= ST4;
          when "10"   => next_state <= ST1;
          when "11"   => next_state <= ST2;
          when others => null;
        end case;
        
      when ST1 =>
        case Data_In is
          when "00"   => next_state <= ST0;
          when "10"   => next_state <= ST2;
          when others => next_state <= ST1;
        end case;
        
      when ST2 =>
        case Data_In is
          when "00"   => next_state <= ST1;
          when "01"   => next_state <= ST1;
          when "10"   => next_state <= ST3;
          when "11"   => next_state <= ST3;
          when others => null;
        end case;

      when ST3 =>
        case Data_In is
          when "01"   => next_state <= ST4;
          when "11"   => next_state <= ST4;
          when others => next_state <= ST3;
        end case;   

      when ST4 =>
        case Data_In is
          when "11"   => next_state <= ST4;
          when others => next_state <= ST0;
        end case;
        
      when others => next_state <= ST0;
    end case;
  end process fsm;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state)
  begin
    case pres_state is
      
      when ST0 => Data_Out <= '1'; 	
      when ST1 => Data_Out <= '0';
      when ST2 => Data_Out <= '1';
      when ST3 => Data_Out <= '0';
      when ST4 => Data_Out <= '1'; 
     
     when others => null;
   end case;
   end process outputs;
  
end M_oore_arch;


--Definicion de una maquina de Mealy
--
--RickWare  15/Abril/2004
library IEEE;
use IEEE.std_logic_1164.all;

entity M_ealy is
    port (
        Clock: in STD_LOGIC;
        Reset: in STD_LOGIC;
        Data_In: in STD_LOGIC_VECTOR (1 downto 0);
        Data_Out: out STD_LOGIC
    );
end M_ealy;

architecture M_ealy_arch of M_ealy is
  --Codificar estados en combinaciones binarias
  type state_values is (ST0,ST1,ST2,ST3,ST4);
  signal pres_state, next_state: state_values;
begin

-- Proceso que describe el moulo "Current State Register"
  statereg: process (Clock,Reset)
  begin
    if (Reset='0') then 
      pres_state <= ST0;
    elsif (Clock'event and Clock='1') then
      pres_state <= next_state;
    end if;
  end process statereg;
  
-- Proceso que describe el modulo "Next State Logic"
  fsm: process (pres_state,Data_In)
  begin
    case pres_state is  
      
      when ST0 => 
        case Data_In is
          when "00"   => next_state <= ST0;
          when "01"   => next_state <= ST4;
          when "10"   => next_state <= ST1;
          when "11"   => next_state <= ST2;
          when others => null;
        end case;
        
      when ST1 =>
        case Data_In is
          when "00"   => next_state <= ST0;
          when "10"   => next_state <= ST2;
          when others => next_state <= ST1;
        end case;
        
      when ST2 =>
        case Data_In is
          when "00"   => next_state <= ST1;
          when "01"   => next_state <= ST1;
          when "10"   => next_state <= ST3;
          when "11"   => next_state <= ST3;
          when others => null;
        end case;

      when ST3 =>
        case Data_In is
          when "01"   => next_state <= ST4;
          when "11"   => next_state <= ST4;
          when others => next_state <= ST3;
        end case;   

      when ST4 =>
        case Data_In is
          when "11"   => next_state <= ST4;
          when others => next_state <= ST0;
        end case;
        
      when others => next_state <= ST0;
    end case;
  end process fsm;
  
-- Proceso que describe el bloque "Output Logic"
  outputs: process (pres_state,Data_In)
  begin
    case pres_state is
      
      when ST0 =>
      	case Data_In is
      	  when "00"   => Data_Out <= '0';
      	  when others => Data_Out <= '1';
        end case;
      
      when ST1 => Data_Out <= '0';
      
      when ST2 =>
        case Data_In is
          when "00"   => Data_Out <= '0';
          when "01"   => Data_Out <= '0';
          when others => Data_Out <= '1';
        end case;
        
     when ST3 => Data_Out <= '1';
     
     when ST4 =>
       case Data_In is
         when "10"   => Data_Out <= '1';
         when "11"   => Data_Out <= '1';
         when others => Data_Out <= '0';
       end case;
     
     when others => Data_Out <= '0';
   end case;
 end process outputs;
  
end M_ealy_arch;

