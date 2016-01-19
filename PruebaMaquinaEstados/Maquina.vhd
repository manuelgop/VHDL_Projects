----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:31:40 11/22/2013 
-- Design Name: 
-- Module Name:    Maquina - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Maquina is
    Port ( Rst : in  STD_LOGIC;
           PingIn : in  STD_LOGIC;
           PingOut : out  STD_LOGIC;
           Clk : in  STD_LOGIC);
end Maquina;

architecture Behavioral of Maquina is
 CONSTANT BrdFreq  : NATURAL := 100000000;    -- Nexys 3 board frequency in Hertz
  CONSTANT timeMAX  : NATURAL := 100000000; -- Largest count
  CONSTANT timeSt0ToSt1   : NATURAL := 5000;--5MicroSeconds
  CONSTANT timeSt1ToSt2   : NATURAL := 75000;--750Micro
  Constant timeSt2ToSt3   : NATURAL := 1850000;
  CONSTANT timeSt3toSt0   : NATURAL := BrdFreq *1; --1Segundo
  
  
  TYPE state IS (Inout0, intOut1, intOut2, inOut3);
  SIGNAL pr_state, nx_state: state;
  
  SIGNAL time       : NATURAL RANGE 0 TO timeMAX;
  
BEGIN
 
  -------- Lower section of state machine: ---
  PROCESS (Clk)
    VARIABLE count : NATURAL RANGE 0 TO timeMAX;
    VARIABLE count2 : NATURAL RANGE 0 TO timeMAX;
  BEGIN

  
    if rising_edge(Clk) THEN
      count := count + 1;
      count2 :=Count2 +1;

      IF (count = time) THEN
        pr_state <= nx_state;
        count := 0;
      END IF;
		End if;
 
  END PROCESS;
  
  
  -------- Upper section of state machine: ---
  PROCESS (pr_state)
  BEGIN
    CASE pr_state IS
   
      WHEN Inout0 =>
        nx_state <= intOut1;
        time <= timeSt0ToSt1;
      
      WHEN InOut1 =>    
        nx_state <= inOut2;
        
        time <= timeSt1ToSt2;
      
      WHEN Inout2 =>
        nx_state <= InOut3;
        
        time <= timeSt2ToSt3;
        pingOut <= count2;
      
      WHEN Inout3 =>
        nx_state <= Inout0;
       
        time <= timeSt3ToSt0;

    END CASE;
  END PROCESS;
  
  -------- Output section of state machine: ---
  process (pr_state)
  begin
    case pr_state is
     when Inout0     => PingIn<='0'; PingOut<='1'; 
     when InOut1     => PingIn<='0'; PingOut<='0';
     when InOut2     => PingIn<='1'; PingOut<=cont2;
     when InOut3     => PingIn<='0'; PingOut<='0'; 
   end case;
  end process;

end Behavioral;



