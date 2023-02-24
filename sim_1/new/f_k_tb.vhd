----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/25/2021 01:09:43 AM
-- Design Name: 
-- Module Name: f_k_tb - Behavioral
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

entity f_k_tb is
--  Port ( );
end f_k_tb;

architecture Behavioral of f_k_tb is

component f_k is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
            K   : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;


signal input : STD_LOGIC_VECTOR (7 downto 0);
signal K   : STD_LOGIC_VECTOR (7 downto 0);
signal output : STD_LOGIC_VECTOR (7 downto 0);

begin

inst: f_k
port map(
    input => input,
    K => K,
    output => output
    );

process
begin
    input <= "00000000";
    K <= "00000000";
    wait for 100ns;
    input <= "10010011";
    K <= "10100011";
    wait;
end process;
end Behavioral;
