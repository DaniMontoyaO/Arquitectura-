----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:13:14 09/26/2016 
-- Design Name: 
-- Module Name:    NPC - Behavioral 
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

entity NPC is
    Port ( insalidasumador : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           salidaNPC : out  STD_LOGIC_VECTOR (31 downto 0));
end NPC;

architecture Behavioral of NPC is

begin   
process(insalidasumador,rst,clk)
	begin
	
	if (rst= '1')then
	   salidaNPC<=(others=>'0');
	else
	    if (rising_edge(clk))then
		    salidaNPC<=insalidasumador;
		 end if;
	end if;
	end process;
end Behavioral;


