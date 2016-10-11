--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:33:10 09/26/2016
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/Procesador/Procesador1/test_registro.vhd
-- Project Name:  Procesador1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NPC
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
 
ENTITY test_registro IS
END test_registro;
 
ARCHITECTURE behavior OF test_registro IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT NPC
    PORT(
         insalidasumador : IN  std_logic_vector(31 downto 0);
         rst : IN  std_logic;
         clk : IN  std_logic;
         salidaNPC : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal insalidasumador : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal salidaNPC : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: NPC PORT MAP (
          insalidasumador => insalidasumador,
          rst => rst,
          clk => clk,
          salidaNPC => salidaNPC
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
      rst <= '1';
-- hold reset state for 100 ns.
      wait for 30 ns;
		rst <= '0';
	   insalidasumador <= x"00100000";
		wait for 30 ns;
	   insalidasumador <= x"00100000";
     
     
   end process;

END;