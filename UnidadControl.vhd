----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:06:16 10/14/2016 
-- Design Name: 
-- Module Name:    UnidadControl - Behavioral 
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

entity UnidadControl is
    Port ( Op : in  STD_LOGIC_VECTOR (1 downto 0);
           Op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           SalidaUc : out  STD_LOGIC_VECTOR (5 downto 0));
end UnidadControl;

architecture Behavioral of UnidadControl is

begin
    process(Op,Op3 )
  begin
if (Op="10")then
			       
					 case Op3 is 
				
							when "000000" => -- ADD
								SalidaUc  <= "000001";

							when "000100" => -- SUB
								 SalidaUc <= "000010";
								 
							when "000001" => -- AND
								SalidaUc <= "000011";
								 
							when "000101" => -- ANDN
								SalidaUc <= "000100";
								 
							when "000010" => -- OR
								SalidaUc <= "000101";
								
							when "000110" => -- ORN
								SalidaUc <= "000110";
								 
							when "000011" => -- XOR
								SalidaUc  <= "000111"; 
								
							when "000111" => -- XORN
								SalidaUc <= "001000";
							when others => 
								SalidaUc <= "111111"; 

						end case;
						 
		end if; 

end process; 

end Behavioral;


