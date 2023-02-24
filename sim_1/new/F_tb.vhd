----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2021 01:10:14 AM
-- Design Name: 
-- Module Name: F_tb - Behavioral
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

entity F_tb is
--  Port ( );
end F_tb;

architecture Behavioral of F_tb is

component F is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           key : in STD_LOGIC_VECTOR (7 downto 0);
           mapping : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal input : STD_LOGIC_VECTOR (3 downto 0);
signal key : STD_LOGIC_VECTOR (7 downto 0);
signal mapping : STD_LOGIC_VECTOR (3 downto 0);

begin

inst: F
port map(
    input => input,
    key => key,
    mapping => mapping
    );

process
begin
    input <= "0000";
    key <= "00000000";
    wait for 100ns;
    input <= "1001";
    key <= "11001011";
    wait;
end process;
end Behavioral;
