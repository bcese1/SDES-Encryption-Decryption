----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2021 01:10:31 AM
-- Design Name: 
-- Module Name: circular_left2_tb - Behavioral
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

entity circular_left2_tb is
--  Port ( );
end circular_left2_tb;

architecture Behavioral of circular_left2_tb is

component circular_left2 is
    Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
           shifted : out STD_LOGIC_VECTOR (4 downto 0));
end component;


signal input : STD_LOGIC_VECTOR (4 downto 0);
signal shifted : STD_LOGIC_VECTOR (4 downto 0);
begin

inst: circular_left2
port map(
    input => input,
    shifted => shifted
    );
    
process
begin
    input <= "00000";
    wait for 100ns;
    input <= "10010";
    wait;
end process;
end Behavioral;
