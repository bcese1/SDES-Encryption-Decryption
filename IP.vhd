----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: IP - Behavioral
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

entity IP is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           permute : out STD_LOGIC_VECTOR (7 downto 0));
end IP;

architecture Behavioral of IP is

begin

permute(7) <= input(6);
permute(6) <= input(4);
permute(5) <= input(7);
permute(4) <= input(3);
permute(3) <= input(0);
permute(2) <= input(2);
permute(1) <= input(5);
permute(0) <= input(1);


end Behavioral;
