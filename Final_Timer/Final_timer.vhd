----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:17:18 12/02/2013 
-- Design Name: 
-- Module Name:    Final_timer - Behavioral 
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

entity Final_timer is
    Port ( Rst : in  STD_LOGIC;
           Clk100Mhz : in  STD_LOGIC;
           Segundos  : in  STD_LOGIC_VECTOR (7 downto 0);
			  
           Load : in  STD_LOGIC;
           Seg : out  STD_LOGIC_VECTOR (7 downto 0);
           SelAn : out  STD_LOGIC_VECTOR (3 downto 0);
           Fin : out  STD_LOGIC);
end Final_timer;

architecture Behavioral of Final_timer is

component Clk1Hz
  port (
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
	ClkOut : out STD_LOGIC);
end component;

 
component Cont0a99
  port (
    Load   : in  STD_LOGIC;
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
	ValorDec  : in  STD_LOGIC_VECTOR(3 downto 0);
   ValorUni  : in  STD_LOGIC_VECTOR(3 downto 0);
   Cuenta : out STD_LOGIC_VECTOR(7 downto 0));
  end component;

component Cont0a3
  port (
   Enable : in  STD_LOGIC;
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
   Cuenta : out STD_LOGIC_VECTOR(1 downto 0));
  end component;

component RefreshDisplay
  port (
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
  ClkOut : out STD_LOGIC);
end component;

component Mux4to1
  port (
   UnidadesCont   : in  STD_LOGIC_VECTOR(3 downto 0);
   DecenasCont   : in  STD_LOGIC_VECTOR(3 downto 0);
	Sel    : in  STD_LOGIC_VECTOR (1 downto 0);
	Contador : out STD_LOGIC_VECTOR(1 downto 0));
 end component;
  
  -- Anode Selector.
  -- According to a 2-bit count, select one of the 4
  -- display anodes
  component SelAnodo
  port (
    Sel    : in  STD_LOGIC_VECTOR(1 downto 0);
   Anodo  : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  
  -- BCD (or Binary could be used) to 7 Segment decoder
  component DecBCD7Seg
  port (
    BCD    : in  STD_LOGIC_VECTOR(3 downto 0);
   Seg    : out STD_LOGIC_VECTOR(7 downto 0));
  end component;
  
  -- Embedded signal declaration
  -- 1-bit Embedded Signals
  signal Clk1Hz_int     : STD_LOGIC;
  signal ClkRefresh_int : STD_LOGIC;
  
  signal contador_int     : STD_LOGIC_VECTOR(4 downto 0);
	signal Sel_int        : STD_LOGIC_VECTOR(1 downto 0);
  -- 8-bit Embedded Signals
  signal Cuenta_int        : STD_LOGIC_VECTOR(7 downto 0);

begin
 -- Do the wiring using VHDL
U1 : Clk1Hz
  port map (
    Rst    => Rst,
    Clk    => Clk100MHz,
   ClkOut => Clk1Hz_int);

U2 : Cont0a99
  port map (
	Load     => Load,
   Rst      => Rst,
   Clk      => Clk100MHz,
   ValorDec => Segundos (7 downto 4),
   ValorUni => Segundos (3 downto 0),
   Cuenta   => Cuenta_int);  

	
U3 : RefreshDisplay
  port map (
    Rst    => Rst,
    Clk    => Clk100MHz,
   ClkOut => ClkRefresh_int);
	
U4 : Mux4to1
  port map (
    UnidadesCont  => Cuenta_int(3 downto 0),
    DecenasCont  => Cuenta_int(7 downto 4),
	 Sel => Sel_int,
	 Contador => Contador_int);
	 
 U5 : SelAnodo
  port map (
    Sel    => Sel_int,
    Anodo  => SelAn);

  U6 : DecBCD7Seg
  port map (
    BCD   => Contador_int,
    Seg  => Seg);
	 
U7 : Cont0a3
  port map (
    Enable  => ClkRefresh_int,
    Rst     => Rst,
    Clk     => Clk100MHz,
    Cuenta  => Sel_int);


end Behavioral;

