----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:45 12/29/2021 
-- Design Name: 
-- Module Name:    Four_Bit_Adder - Behavioral 
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

entity Four_Bit_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Four_Bit_Adder;

architecture Behavioral of Four_Bit_Adder is

signal C:STD_LOGIC_VECTOR (2 downto 0);

component Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           CIN : in  STD_LOGIC;
           S : out  STD_LOGIC;
           COUT : out  STD_LOGIC);
			  
end component;

begin

FA0: Full_Adder port map (A(0),B(0),Cin,S(0),C(0));
FA1: Full_Adder port map (A(1),B(1),C(0),S(1),C(1));
FA2: Full_Adder port map (A(2),B(2),C(1),S(2),C(2));
FA3: Full_Adder port map (A(3),B(3),C(2),S(3),Cout);


end Behavioral;

