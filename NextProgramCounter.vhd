----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:02:49 10/11/2016 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity NextProgramCounter is
    Port ( Salidasumador : in  STD_LOGIC_VECTOR (31 downto 0);
           rst : in  STD_LOGIC_VECTOR (0 downto 0);
           clk : in  STD_LOGIC_VECTOR (0 downto 0);
           SalidaNpc : out  STD_LOGIC_VECTOR (31 downto 0));
end NextProgramCounter;

architecture Behavioral of NextProgramCounter is

begin


end Behavioral;

