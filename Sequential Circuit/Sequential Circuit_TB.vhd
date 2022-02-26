--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:16:45 02/26/2022
-- Design Name:   
-- Module Name:   D:/Lab_3/Sequentrial_Circuit/Sequential_Circuit_TB.vhd
-- Project Name:  Sequentrial_Circuit
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sequential_Circuit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Sequential_Circuit_TB IS
END Sequential_Circuit_TB;
 
ARCHITECTURE behavior OF Sequential_Circuit_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sequential_Circuit
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sequential_Circuit PORT MAP (
          D => D,
          CLK => CLK,
          RST => RST,
          Q => Q
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for CLK_period*10;

      -- insert stimulus here

      RST<='0';
		CLK<='1';
		D<='0';
		wait for 100 ns;
		
		RST<='1';
		CLK <='1';
		D<='0';
		wait for 100 ns;
		
		D<='1';		

      wait;
   end process;

END;
