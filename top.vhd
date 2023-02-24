----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 09:47:06 PM
-- Design Name: 
-- Module Name: top - Behavioral
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

entity top is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           key : in STD_LOGIC_VECTOR (9 downto 0);
           cipher : out STD_LOGIC_VECTOR (7 downto 0);
           decoded : out STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is


component key_generate is
    Port ( inkey : in STD_LOGIC_VECTOR (9 downto 0);
           K1 : out STD_LOGIC_VECTOR (7 downto 0);
           K2 : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component encrypt is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           K1 : in STD_LOGIC_VECTOR (7 downto 0);
           K2 : in STD_LOGIC_VECTOR (7 downto 0);
           cipher : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component decrypt is
    Port ( cipher : in STD_LOGIC_VECTOR (7 downto 0);
           K1 : in STD_LOGIC_VECTOR (7 downto 0);
           K2 : in STD_LOGIC_VECTOR (7 downto 0);
           decoded : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal K1 : std_logic_vector(7 downto 0);
signal K2 : std_logic_vector(7 downto 0);
signal out1 : std_logic_vector(7 downto 0);
signal out2 : std_logic_vector(7 downto 0);

begin

cipher <= out1;
decoded <= out2;

kg: key_generate
port map(
    inkey => key,
    K1 => K1,
    K2 => K2
    );
en: encrypt
port map(
    input => input,
    K1 => K1,
    K2 => K2,
    cipher => out1
    );
de: decrypt
port map(
    cipher => out1,
    K1 => K1,
    K2 => K2,
    decoded => out2
    );

end Behavioral;
