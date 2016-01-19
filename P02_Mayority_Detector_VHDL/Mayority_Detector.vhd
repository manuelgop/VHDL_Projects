----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:13:00 08/21/2013 
-- Design Name: 
-- Module Name:    Mayority_Detector - Mayority_Detector_Arch 
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
---------------------------
--"USE" us for paquetes
--Procidual coding
--blue:reserve word
--black:variables
---------------------------
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mayority_Detector is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end Mayority_Detector;

architecture Mayority_Detector_Arch of Mayority_Detector is

begin
--Describe our hardware using a Boolean equation.
--Y = AB+AC+BC;
Y <= (A and B) or (A and C) or (B and C); 
end Mayority_Detector_Arch;

