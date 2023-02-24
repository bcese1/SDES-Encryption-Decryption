----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2021 01:11:14 AM
-- Design Name: 
-- Module Name: EP_tb - Behavioral
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

entity EP_tb is
--  Port ( );
end EP_tb;

architecture Behavioral of EP_tb is

component EP is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           expanded : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal input : STD_LOGIC_VECTOR (3 downto 0);
signal expanded : STD_LOGIC_VECTOR (7 downto 0);

begin

inst: EP
port map(
input => input,
expanded => expanded);

process
begin
    input <= "0000";
    wait for 100ns;
    input <= "1010";
    wait;
end process;


end Behavioral;
