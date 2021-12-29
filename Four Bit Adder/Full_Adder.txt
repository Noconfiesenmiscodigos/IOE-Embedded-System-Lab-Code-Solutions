----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:20 12/29/2021 
-- Design Name: 
-- Module Name:    Full_Adder - Behavioral 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           S : out  STD_LOGIC;
           COUT : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

signal S1,C1,C2:STD_LOGIC;

component OR_Gate is
PORT (A: in STD_LOGIC;
B: in STD_LOGIC;
Y:out STD_LOGIC);

end component;

component Half_Adder is
PORT (A: in STD_LOGIC;
B: in STD_LOGIC;
S: out STD_LOGIC;
C: out STD_LOGIC);

end component;

begin

HA1: Half_Adder PORT MAP (A,B,S1,C1);
HA2: Half_Adder PORT MAP (S1,CIN,S,C2);
G1: OR_Gate port map (c1,c2,Cout);

end Behavioral;

