----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 
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

entity key_generate is
    Port ( inkey : in STD_LOGIC_VECTOR (9 downto 0);
           K1 : out STD_LOGIC_VECTOR (7 downto 0);
           K2 : out STD_LOGIC_VECTOR (7 downto 0));
end key_generate;

architecture Behavioral of key_generate is

component P10 is
    Port ( input : in STD_LOGIC_VECTOR(9 DOWNTO 0);
           permuted_key : out STD_LOGIC_VECTOR(9 DOWNTO 0));
end component;

component circular_left1 is
    Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
           shifted : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component circular_left2 is
    Port ( input : in STD_LOGIC_VECTOR (4 downto 0);
           shifted : out STD_LOGIC_VECTOR (4 downto 0));
end component;

component P8 is
    Port ( permuted : in STD_LOGIC_VECTOR (9 downto 0);
           K : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal permuted_key : std_logic_vector(9 downto 0);
signal shifted_key : std_logic_vector(9 downto 0);
signal shifted_key2 : std_logic_vector(9 downto 0);

begin

step1: P10
port map(
    input => inkey,
    permuted_key => permuted_key
    );
step2a: circular_left1
port map(
    input => permuted_key(4 downto 0),
    shifted => shifted_key(4 downto 0)
    );
step2b: circular_left1
port map(
    input => permuted_key(9 downto 5),
    shifted => shifted_key(9 downto 5)
    );
step3: P8
port map(
    permuted => shifted_key,
    K => K1
    );
step4a: circular_left2
port map(
    input => shifted_key(4 downto 0),
    shifted => shifted_key2(4 downto 0)
    );
step4b: circular_left2
port map(
    input => shifted_key(9 downto 5),
    shifted => shifted_key2(9 downto 5)
    );
step5: P8
port map(
    permuted => shifted_key2,
    K => K2
    );

end Behavioral;
