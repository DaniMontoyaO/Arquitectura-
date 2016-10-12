----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:58 10/11/2016 
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
           RegistroFuente : in  STD_LOGIC_VECTOR (4 downto 0);
           SalidaAlu : in  STD_LOGIC_VECTOR (31 downto 0);
           ContenidoRegistro1 : out  STD_LOGIC_VECTOR (31 downto 0);
           ContenidoRegistro2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture Behavioral of RegisterFile is

begin


end Behavioral;

