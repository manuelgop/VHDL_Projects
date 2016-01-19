----------------------------------------------------------------------------------
-- Company: ITESM Qro
-- Engineer: Rafael Suarez
-- 
-- Create Date:    10:11:53 09/25/2013 
-- Design Name:    Partial Exam
-- Module Name:    Partial_Exam_A01206268 - Behavioral 
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
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Partial_Exam_A01206268 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           C : in  STD_LOGIC_VECTOR (7 downto 0);
           Small : out  STD_LOGIC_VECTOR (7 downto 0);
           Middle : out  STD_LOGIC_VECTOR (7 downto 0);
           Large : out  STD_LOGIC_VECTOR (7 downto 0));
end Partial_Exam_A01206268;

architecture Behavioral of Partial_Exam_A01206268 is

begin
-- Concurrent Solution
Small <= A when ((A < B) and (B < C)) or ((A < C) and (C < B)) else
         B when ((B < A) and (A < C)) or ((B < C) and (C < A)) else
         C;
			
Large <= A when ((A > B) and (B > C)) or ((A > C) and (C > B)) else
			B when ((B > A) and (A > C)) or ((B > C) and (C > A)) else
			C;

Middle <= A when ((A < B) and (A > C)) or ((A < C) and (A > B)) else
			 B when ((B < A) and (B > C)) or ((B < C) and (B > A)) else
			 C;
			
-- Sequential Solution
Smallest: process (A, B, C)
begin
	if ((A < B) and (B < C)) or ((A < C) and (C < B)) then
		Small <= A;
	elsif ((B < A) and (A < C)) or ((B < C) and (C < A)) then
		Small <= B;
	else
		Small <= C;
	end if;
	end process Smallest;
	
Largest: process (A, B, C)
begin
	if ((A > B) and (B > C)) or ((A > C) and (C > B)) then
		Large <= A;
	elsif ((B > A) and (A > C)) or ((B > C) and (C > A))  then
		Large <= B;
	else
		Large <= C;
	end if;
	end process Largest;
		
Middler: process (A, B, C)
begin
	if ((A < B) and (A > C)) or ((A < C) and (A > B)) then
		Middle <= A;
	elsif ((B < A) and (B > C)) or ((B < C) and (B > A)) then
		Middle <= B;
	else
		Middle <= C;
	end if;
	end process Middler;
		
			

end Behavioral;

