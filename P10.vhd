----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: P10 - Behavioral
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

entity P10 is
    Port ( input : in STD_LOGIC_VECTOR(9 DOWNTO 0);
           permuted_key : out STD_LOGIC_VECTOR(9 DOWNTO 0));
end P10;

architecture Behavioral of P10 is

begin

permuted_key(9) <= input(5);
permuted_key(8) <= input(7);
permuted_key(7) <= input(8);
permuted_key(6) <= input(0);
permuted_key(5) <= input(9);
permuted_key(4) <= input(3);
permuted_key(3) <= input(6);
permuted_key(2) <= input(1);
permuted_key(1) <= input(4);
permuted_key(0) <= input(2);


end Behavioral;
