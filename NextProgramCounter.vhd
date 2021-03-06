----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:57:54 10/14/2016 
-- Design Name: 
-- Module Name:    NextProgramCounter - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NextProgramCounter is
    Port ( Salidasumador : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           SalidaNpc : out  STD_LOGIC_VECTOR (31 downto 0));
end NextProgramCounter;

architecture Behavioral of NextProgramCounter is

begin
   process (Salidasumador,rst,clk)
	begin
	if(rising_edge(clk))then
			if rst='1' then
			SalidaNpc<=x"00000000";
		else
		SalidaNpc <=Salidasumador;		
		end if;
	end if;
end process;
 

end Behavioral;
