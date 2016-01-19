--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.6
--  \   \         Application : sch2hdl
--  /   /         Filename : Mayority_Detector.vhf
-- /___/   /\     Timestamp : 08/14/2013 18:43:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl D:/Project_SisDigAva/P01_Mayority_Detector_SCH/Mayority_Detector.vhf -w D:/Project_SisDigAva/P01_Mayority_Detector_SCH/Mayority_Detector.sch
--Design Name: Mayority_Detector
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Mayority_Detector is
   port ( A : in    std_logic; 
          B : in    std_logic; 
          C : in    std_logic; 
          Y : out   std_logic);
   attribute LOC : string ;
   attribute LOC of A : signal is "V9";
   attribute LOC of B : signal is "T9";
   attribute LOC of C : signal is "T10";
   attribute LOC of Y : signal is "U16";
end Mayority_Detector;

architecture BEHAVIORAL of Mayority_Detector is
   attribute BOX_TYPE         : string ;
   attribute IOSTANDARD       : string ;
   attribute IBUF_DELAY_VALUE : string ;
   attribute IFD_DELAY_VALUE  : string ;
   attribute SLEW             : string ;
   attribute DRIVE            : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component IBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of IBUF : component is "DEFAULT";
   attribute IBUF_DELAY_VALUE of IBUF : component is "0";
   attribute IFD_DELAY_VALUE of IBUF : component is "AUTO";
   attribute BOX_TYPE of IBUF : component is "BLACK_BOX";
   
   component OBUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute IOSTANDARD of OBUF : component is "DEFAULT";
   attribute SLEW of OBUF : component is "SLOW";
   attribute DRIVE of OBUF : component is "12";
   attribute BOX_TYPE of OBUF : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>XLXN_6,
                I1=>XLXN_8,
                O=>XLXN_1);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_9,
                I1=>XLXN_8,
                O=>XLXN_3);
   
   XLXI_3 : AND2
      port map (I0=>XLXN_9,
                I1=>XLXN_6,
                O=>XLXN_2);
   
   XLXI_4 : OR3
      port map (I0=>XLXN_2,
                I1=>XLXN_3,
                I2=>XLXN_1,
                O=>XLXN_10);
   
   XLXI_5 : IBUF
      port map (I=>A,
                O=>XLXN_8);
   
   XLXI_6 : IBUF
      port map (I=>B,
                O=>XLXN_6);
   
   XLXI_7 : IBUF
      port map (I=>C,
                O=>XLXN_9);
   
   XLXI_8 : OBUF
      port map (I=>XLXN_10,
                O=>Y);
   
end BEHAVIORAL;


