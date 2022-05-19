----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:36 05/19/2022 
-- Design Name: 
-- Module Name:    Detect_Sequence_1001 - Behavioral 
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

entity Detect_Sequence_1001 is
    Port ( X : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
           Z : out  STD_LOGIC);
end Detect_Sequence_1001;

architecture Behavioral of Detect_Sequence_1001 is
type state is (Q0,Q1,Q2,Q3,Q4);
signal PS,NS:state;

begin
sync_proc: process(CLK,RESET)
begin

if (RESET='1') then
PS<=Q0;
elsif(rising_edge(CLK)) then
PS<=NS;
end if;
end process sync_proc;

comb_proc: process(PS,X)
begin
case PS is 

when Q0=>Z<='0';
 if (X='1') then NS<=Q1;
 else NS<=Q0;
 end if;
 
when Q1=>Z<='0';
 if (X='0') then NS<=Q2;
 else NS<=Q1;
 end if; 

when Q2=>Z<='0';
 if (X='0') then NS<=Q3;
 else NS<=Q1;
 end if;
 
 when Q3=>Z<='0';
 if (X='1') then NS<=Q4;
 else NS<=Q0;
 end if;
 
 when Q4=>Z<='1';
 if (X='1') then NS<=Q1;
 else NS<=Q0;
 end if;
 
when others=>NS<=Q0;
 
 end case;
 end process comb_proc;
end Behavioral;

