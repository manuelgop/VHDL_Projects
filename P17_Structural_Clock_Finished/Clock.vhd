
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Clock is
    Port ( HorEn     : in   STD_LOGIC;
           DecEnt    : in   STD_LOGIC_VECTOR (3 downto 0);
           MinEn     : in   STD_LOGIC;
           UniEnt    : in   STD_LOGIC_VECTOR (3 downto 0);
           Rst       : in   STD_LOGIC;
           Clk100MHz : in   STD_LOGIC;
           Seg       : out  STD_LOGIC_VECTOR (7 downto 0);
           Disp      : out  STD_LOGIC_VECTOR (3 downto 0);
           SegOut    : out  STD_LOGIC_VECTOR (7 downto 0));
end Clock;

architecture Behavioral of Clock is
  -- Declare used components for the structural clock
  
  -- Component that acts as a frequency divider, taking
  -- the 100MHz Nexys3 oscillator as an input and deriving
  -- a 1Hz enable signal. This is the correct way of
  -- implementing frequency dividers
  component Clk1Hz
  port (
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
	ClkOut : out STD_LOGIC);
end component;

  -- Fully Synchronous (unless indicated) decimal counter (0 to 9).
  -- It contains the following capabilities:
  --   1) Parallel Load (Load signal)
  --   2) Enable to Freeze the count in its current value
  --   3) Asynchronous Reset
  --   4) Terminal Count Output (1 when highest count is reached)
  component Cont0a9
  port (
    Load   : in  STD_LOGIC;
 	 Enable : in  STD_LOGIC;
	 Rst    : in  STD_LOGIC;
	 Clk    : in  STD_LOGIC;
	 Valor  : in  STD_LOGIC_VECTOR(3 downto 0);
	 TCO    : out STD_LOGIC;
	 Cuenta : out STD_LOGIC_VECTOR(3 downto 0));
  end component;

  -- Fully Synchronous (unless indicated) 0 to 5 counter.
  -- It contains the following capabilities:
  --   1) Parallel Load (Load signal)
  --   2) Enable to Freeze the count in its current value
  --   3) Asynchronous Reset
  --   4) Terminal Count Output (1 when highest count is reached)
  --   Although a counter ranging from 0 to 5 requires only
  --   3 bits, 4 will be used to mantain consistency.
  component Cont0a5
  port (
    Load   : in  STD_LOGIC;
 	 Enable : in  STD_LOGIC;
	 Rst    : in  STD_LOGIC;
	 Clk    : in  STD_LOGIC;
	 Valor  : in  STD_LOGIC_VECTOR(3 downto 0);
	 TCO    : out STD_LOGIC;
	 Cuenta : out STD_LOGIC_VECTOR(3 downto 0));
  end component;
  
  -- Fully Synchronous (unless indicated) 00 to 23 counter.
  -- It contains the following capabilities:
  --   1) Parallel Load (Load signal) which include two
  --   separate values. The first for the decimal hours,
  --   the second for de decimal units.
  --   2) Enable to Freeze the count in its current value
  --   3) Asynchronous Reset
  component Cont0a23
  port (
    Load      : in  STD_LOGIC;
 	 Enable    : in  STD_LOGIC;
	 Rst       : in  STD_LOGIC;
	 Clk       : in  STD_LOGIC;
	 ValorDec  : in  STD_LOGIC_VECTOR(3 downto 0);
	 ValorUni  : in  STD_LOGIC_VECTOR(3 downto 0);
	 Cuenta    : out STD_LOGIC_VECTOR(7 downto 0));
  end component;

  -- Component that acts as a frequency divider, taking
  -- the 100MHz Nexys3 oscillator as an input and deriving
  -- a 200Hz enable signal used for display demultiplexing.
  -- This is the correct way of implementing frequency dividers
  component RefreshDisplay
  port (
   Rst    : in  STD_LOGIC;
   Clk    : in  STD_LOGIC;
	ClkOut : out STD_LOGIC);
end component;

  -- Fully Synchronous (unless indicated) 0 to 3 counter (binary).
  -- It contains the following capabilities:
  --   1) Enable to Freeze the count in its current value
  --   2) Asynchronous Reset
  -- This counters has a dual function:
  --   a) Sel the Anode
  --   b) Sel the Display
  component Cont0a3
  port (
 	 Enable : in  STD_LOGIC;
	 Rst    : in  STD_LOGIC;
	 Clk    : in  STD_LOGIC;
	 Cuenta : out STD_LOGIC_VECTOR(1 downto 0));
  end component;
  
  -- 4 to 1 4-bit multiplexor.
  -- Passes the value of the selected counter to the
  -- 7-segment BCD decoder.
  component Mux4to1
  port (
    DecHor   : in  STD_LOGIC_VECTOR(3 downto 0);
	 UniHor   : in  STD_LOGIC_VECTOR(3 downto 0);
    DecMin   : in  STD_LOGIC_VECTOR(3 downto 0);
	 UniMin   : in  STD_LOGIC_VECTOR(3 downto 0);
	 Sel      : in  STD_LOGIC_VECTOR(1 downto 0);
	 Tiempo   : out STD_LOGIC_VECTOR(3 downto 0));
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
  signal EnHoras_int    : STD_LOGIC;
  signal EnDecMin_int   : STD_LOGIC;
  signal EnUniMin_int   : STD_LOGIC;
  signal EnSeg_int      : STD_LOGIC;
  signal EnDecSeg_int   : STD_LOGIC;
  signal Clk1Hz_int     : STD_LOGIC;
  signal TCODecMin_int  : STD_LOGIC;
  signal TCOUniMin_int  : STD_LOGIC;
  signal TCODecSeg_int  : STD_LOGIC;
  signal TCOUniSeg_int  : STD_LOGIC;
  signal ClkRefresh_int : STD_LOGIC;
  
  -- 2-bit Embedded Signals
  signal Sel_int        : STD_LOGIC_VECTOR(1 downto 0);
  
  -- 4-bit Embedded Signals
  signal DecMin_int     : STD_LOGIC_VECTOR(3 downto 0);
  signal UniMin_int     : STD_LOGIC_VECTOR(3 downto 0);
  signal Tiempo_int     : STD_LOGIC_VECTOR(3 downto 0);
  
  -- 8-bit Embedded Signals
  signal Hor_int        : STD_LOGIC_VECTOR(7 downto 0);
  
begin
  -- Do the wiring using VHDL
  -- Wiring alternative 1 (the long approach)
  U1 : Clk1Hz
  port map (
    Rst    => Rst,
    Clk    => Clk100MHz,
	 ClkOut => Clk1Hz_int);
	 
  U2 : Cont0a9
  port map (
    Load    => EnSeg_int,
	 Enable  => Clk1Hz_int,
	 Rst     => Rst,
	 Clk     => Clk100MHz,
	 Valor   => (others => '0'),
	 TCO     => TCOUniSeg_int,
	 Cuenta  => SegOut (3 downto 0));
	 
  -- Short way of instantiating components
  -- Only valid with modern VHDL (>= 2003)
  U3 : Cont0a5
  port map (
    EnSeg_int,
	 EnDecSeg_int,
	 Rst,
	 Clk100MHz,
	 (others => '0'),
	 TCODecSeg_int,
	 SegOut(7 downto 4));
	 
  U4 : Cont0a9
  port map (
    Load    => MinEn,
	 Enable  => EnUniMin_int,
	 Rst     => Rst,
	 Clk     => Clk100MHz,
	 Valor   => UniEnt,
	 TCO     => TCOUniMin_int,
	 Cuenta  => UniMin_int);

  U5 : Cont0a5
  port map (
    Load    => MinEn,
	 Enable  => EnDecMin_int,
	 Rst     => Rst,
	 Clk     => Clk100MHz,
	 Valor   => DecEnt,
	 TCO     => TCODecMin_int,
	 Cuenta  => DecMin_int);

  U6 : Cont0a23
  port map (
    Load     => HorEn,
	 Enable   => EnHoras_int,
	 Rst      => Rst,
	 Clk      => Clk100MHz,
	 ValorDec => DecEnt,
	 ValorUni => UniEnt,
	 Cuenta   => Hor_int);	

  U7 : RefreshDisplay
  port map (
    Rst    => Rst,
    Clk    => Clk100MHz,
	 ClkOut => ClkRefresh_int);

  U8 : Cont0a3
  port map (
    Enable  => ClkRefresh_int,
    Rst     => Rst,
    Clk     => Clk100MHz,
    Cuenta  => Sel_int);

  U9 : Mux4to1
  port map (
    DecHor  => Hor_int(7 downto 4),
    UniHor  => Hor_int(3 downto 0),
    DecMin  => DecMin_int,
    UniMin  => UniMin_int,
    Sel     => Sel_int,
    Tiempo  => Tiempo_int);

  U10 : SelAnodo
  port map (
    Sel    => Sel_int,
    Anodo  => Disp);

  U11 : DecBCD7Seg
  port map (
    BCD   => Tiempo_int,
    Seg	 => Seg);
	 
  -- Place gates used in design (concurrently)
  EnHoras_int  <= EnDecMin_int  and TCODecMin_int and Clk1Hz_int;
  EnDecMin_int <= EnUniMin_int  and TCOUniMin_int and Clk1Hz_int;
  EnUniMin_int <= TCOUniSeg_int and TCODecSeg_int and Clk1Hz_int;
  EnSeg_int    <= HorEn         or  MinEn;
  EnDecSeg_int <= TCOUniSeg_int and                   Clk1Hz_int;
	
end Behavioral;





