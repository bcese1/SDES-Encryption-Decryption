----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: P8 - Behavioral
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

entity P8 is
    Port ( permuted : in STD_LOGIC_VECTOR (9 downto 0);
           K : out STD_LOGIC_VECTOR (7 downto 0));
end P8;

architecture Behavioral of P8 is

begin

K(7) <= permuted(8);
K(6) <= permuted(9);
K(5) <= permuted(4);
K(4) <= permuted(7);
K(3) <= permuted(3);
K(2) <= permuted(6);
K(1) <= permuted(2);
K(0) <= permuted(5);



end Behavioral;
