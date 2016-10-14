----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:21 10/14/2016 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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

entity RegisterFile is
    Port ( Registro1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Registro2 : in  STD_LOGIC_VECTOR (4 downto 0);
           RegistroDestino : in  STD_LOGIC_VECTOR (4 downto 0);
			  rst : in  STD_LOGIC;
           SalidaAlu : in  STD_LOGIC_VECTOR (31 downto 0);
           ContenidoRegistro1 : out  STD_LOGIC_VECTOR (31 downto 0);
           ContenidoRegistro2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal reg : ram_type :=(others => x"00000000");

begin
process(Registro1,Registro2,RegistroDestino,SalidaAlu)
begin
	if(rst = '1')then
				ContenidoRegistro1 <= (others=>'0');
				ContenidoRegistro2 <= (others=>'0');
			
				reg <= (others => x"00000000");
			else
				ContenidoRegistro1 <= reg(conv_integer(Registro1));
				ContenidoRegistro2 <= reg(conv_integer(Registro1));
				
				
			if(RegistroDestino  /= "000000")then
					reg(conv_integer(RegistroDestino)) <= SalidaAlu;
				end if;
			end if;
	
end process; 

end Behavioral;


