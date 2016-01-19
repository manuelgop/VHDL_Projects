library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Cont0a99 is
 port (
   Load   : in  STD_LOGIC;
   Enable : in  STD_LOGIC;
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
   ValorDec  : in  STD_LOGIC_VECTOR(3 downto 0);
	ValorUni  : in  STD_LOGIC_VECTOR(3 downto 0);
   Cuenta : out STD_LOGIC_VECTOR(7 downto 0));
end Cont0a99;

architecture Behavioral of Cont0a99 is

--EMBEDDED
signal CountUni : STD_LOGIC_VECTOR (3 downto 0);
signal CountDec : STD_LOGIC_VECTOR (3 downto 0);


begin

-- Count Unidades
process (Rst,Clk,Load)
begin
	if ((Rst = '1') or (Load = '1')) then CountUni <= (others => '0');
	elsif (rising_edge(Clk)) then
		if (Enable = '1') then
		-- CountUni is reset when unidades = 9
			if (CountUni = "1001") then CountUni <= (others => '0');
			else CountUni <= CountUni - 1;
			end if;
		else CountUni <= CountUni;
		end if;
	end if;
end process;

-- Count Decenas
process (Rst,Clk,Load)
begin
	if ((Rst = '1') or (Load = '1')) then CountDec <= (others => '0');
	elsif (rising_edge(Clk)) then
		if (Enable = '1') then
			if (CountDec = "1001") then CountDec <= (others => '0');
			elsif (CountUni = "1001") then CountDec <= CountDec - 1;
			end if;
		else CountDec <= CountDec;
		end if;
	end if;
end process;

 --Agrupar en un solo bus
  Cuenta <= CountDec & CountUni;

end Behavioral;

