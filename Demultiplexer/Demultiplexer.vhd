----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:00 02/26/2022 
-- Design Name: 
-- Module Name:    Demultiplexer - Behavioral 
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

entity Demultiplexer is
    Port ( A : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC_VECTOR (3 downto 0));
end Demultiplexer;

architecture Behavioral of Demultiplexer is

begin

process (S,A)
begin
case S is
when "00"=>
Y(0)<=A;
Y(1)<='0';
Y(2)<='0';
Y(3)<='0';

when "01"=>
Y(0)<='0';
Y(1)<=A;
Y(2)<='0';
Y(3)<='0';

when "10"=>
Y(0)<='0';
Y(1)<='0';
Y(2)<=A;
Y(3)<='0';

when "11"=>
Y(0)<='0';
Y(1)<='0';
Y(2)<='0';
Y(3)<=A;

when others=>null;
end case;
end process;


end Behavioral;

