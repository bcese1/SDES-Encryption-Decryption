----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 09:51:13 PM
-- Design Name: 
-- Module Name: top_tb - Behavioral
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

entity top_tb is
--  Port ( );
end top_tb;

architecture Behavioral of top_tb is

component top is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           key : in STD_LOGIC_VECTOR (9 downto 0);
           cipher : out STD_LOGIC_VECTOR (7 downto 0);
           decoded : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal input : STD_LOGIC_VECTOR (7 downto 0);
signal key : STD_LOGIC_VECTOR (9 downto 0);
signal cipher : STD_LOGIC_VECTOR (7 downto 0);
signal decoded : STD_LOGIC_VECTOR (7 downto 0);

begin

tb : top
port map(
    input => input,
    key => key,
    cipher => cipher,
    decoded => decoded
    );
 
process
begin
    input <= (others => '0');
    key <= (others => '0');
    wait for 100 ns;
    
    input <= "10011100";
    key <= "1010101010";
    wait;
end process;

end Behavioral;
