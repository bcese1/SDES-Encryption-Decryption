----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: circular_left2 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity circular_left2 is
    Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
           shifted : out STD_LOGIC_VECTOR (4 downto 0));
end circular_left2;

architecture Behavioral of circular_left2 is

begin

shifted(0) <= input(3);
shifted(1) <= input(4);
shifted(2) <= input(1);
shifted(3) <= input(2);
shifted(4) <= input(3);


end Behavioral;
