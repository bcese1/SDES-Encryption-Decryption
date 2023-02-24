----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2021 01:12:16 AM
-- Design Name: 
-- Module Name: P8_tb - Behavioral
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

entity P8_tb is
--  Port ( );
end P8_tb;

architecture Behavioral of P8_tb is


component P8 is
    Port ( permuted : in STD_LOGIC_VECTOR (9 downto 0);
           K : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal permuted : STD_LOGIC_VECTOR (9 downto 0);
signal K : STD_LOGIC_VECTOR (7 downto 0);

begin

inst: P8
port map(
    permuted => permuted,
    K => K
    );
process
begin
    permuted <= "0000000000";
    wait for 100ns;
    permuted <= "1011011000";
    wait;
end process;

end Behavioral;
