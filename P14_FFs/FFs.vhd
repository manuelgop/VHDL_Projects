----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:53:21 09/18/2013 
-- Design Name: 
-- Module Name:    FFs - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Several implementations of D-type Flip-Flops.
--					 FlipFlops can only be described sequentually 
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

entity FFs is
    Port ( D : in  STD_LOGIC;
			  --Rst : in STD_LOGIC;
			  --Pre : in STD_LOGIC;
			  En : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end FFs;

architecture Behavioral of FFs is

begin
----Case 1: Basuc rising edge D-TYPE FF
--Case1: process(Clk,D)
--begin
--	if(Clk'event and Clk = '1') then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case1;
--
--



--Case 2: Basuc rising edge D-TYPE FF
--Modern way to describing clock transition
--Case2: process(Clk,D)
--begin
--	if Rising_edge(Clk) then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case2;



--Case 3: Basuc rising edge D-TYPE FF
--Modern way to describing clock transition
--Case3: process(Clk,D)
--begin
--	if Falling_edge(Clk) then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case3;

--Case 4: Basuc rising edge D-TYPE FF
--Case4: process(Clk,D)
--begin
--	if(Clk'event and Clk = '0') then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case4;


----Case 5:  D-TYPE FF with asychronous Reset
--Case5: process(Clk,D, Rst)
--begin
--	if Rst = '1' then 
--		Q <= '0';
--	elsif rising_edge(Clk) then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case5;


--Case 6:  D-TYPE FF with asychronous Reset
--Case6: process(Clk,D, Pre)
--begin
--	if Pre = '1' then 
--		Q <= '1';
--	elsif rising_edge(Clk) then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case6;

--Case 7:  D-TYPE FF with asychronous Reset and Present
--				Conflictive!! oif preset and Reset are asserted at the same time, the FF is trying to send Q to 0 
-- 			and 1 to remove this conflict, priority has to be added
--				This practice is not recommended in VHDL
--Case7: process(Clk,D, Pre, Rst)
--begin
--	if Rst = '1' then 
--		Q <= '0';
--	elsif Pre = '1' then 
--		Q <= '1';
--	elsif rising_edge(Clk) then --Instruccion para decirle a VHDL el reloj arriba
--		Q <= D;
--		end if;
--end process Case7;







----FF with sunchronous Rst
--Case8: process(Clk,D,Rst)
--begin
--	if rising_edge(Clk) then 
--		if Rst = '1' then
--		Q <= '0';		
--	else
--		Q <= D;
--		end if;
--	end if;
--end process Case8;



----FF with sunchronous Rst
--Case9: process(Clk,D,Pre)
--begin
--	if rising_edge(Clk) then 
--		if Pre = '1' then
--		Q <= '1';		
--	else
--		Q <= D;
--		end if;
--	end if;
--end process Case9;



--FF with enable
--Case10: process(Clk,D,En)
--begin
--	if rising_edge(Clk) then 
--		if en = '1' then
--			Q <= D;
--		end if;
--	end if;
--end process Case10;


Case10a: process(Clk,D,En)
begin
	if (rising_edge(Clk) and En = '1') then 
			Q <= D;
		end if;

end process Case10a;
end Behavioral;

