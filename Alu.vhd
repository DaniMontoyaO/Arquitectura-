----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:26:21 10/11/2016 
-- Design Name: 
-- Module Name:    Alu - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu is
    Port ( ContenidoRegistro1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ContenidoRegistro2 : in  STD_LOGIC_VECTOR (31 downto 0);
           SalidaUc : in  STD_LOGIC_VECTOR (5 downto 0);
           SalidaAlu : in  STD_LOGIC_VECTOR (31 downto 0));
end Alu;

architecture Behavioral of Alu is

begin
   process (ContenidoRegistro1,ContenidoRegistro2,SalidaUc)
	begin
	  if (SalidaUc="000000") then
	      SalidaAlu<=ContenidoRegistro1+ ContenidoRegistro2;
	  end if;
	end process;
	     
			  

end Behavioral;

