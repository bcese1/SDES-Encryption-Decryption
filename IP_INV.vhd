----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: IP_INV - Behavioral
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

entity IP_INV is
    Port ( permuted : in STD_LOGIC_VECTOR (7 downto 0);
           reversed : out STD_LOGIC_VECTOR (7 downto 0));
end IP_INV;

architecture Behavioral of IP_INV is

begin

reversed(7) <= permuted(5);
reversed(6) <= permuted(7);
reversed(5) <= permuted(1);
reversed(4) <= permuted(6);
reversed(3) <= permuted(4);
reversed(2) <= permuted(2);
reversed(1) <= permuted(0);
reversed(0) <= permuted(3);


end Behavioral;
