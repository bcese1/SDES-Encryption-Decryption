----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: f_k - Behavioral
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

entity f_k is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
            K   : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end f_k;

architecture Behavioral of f_k is

component F is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           key : in STD_LOGIC_VECTOR (7 downto 0);
           mapping : out STD_LOGIC_VECTOR (3 downto 0));
end component;

signal L : std_logic_vector(3 downto 0);
signal R : std_logic_vector(3 downto 0);
signal mapping : STD_LOGIC_VECTOR (3 downto 0);

begin

L <= input(3 downto 0);
R <= input(7 downto 4);

map0: F
port map(
    input => R,
    key => K,
    mapping => mapping
    );
    
output(3 downto 0) <= L xor mapping;
output(7 downto 4) <= R;



end Behavioral;
