----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: F - Behavioral
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

entity F is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           key : in STD_LOGIC_VECTOR (7 downto 0);
           mapping : out STD_LOGIC_VECTOR (3 downto 0));
end F;

architecture Behavioral of F is

component EP is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           expanded : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component S1 is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           box : out STD_LOGIC_VECTOR (1 downto 0));
end component;

component S0 is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           box : out STD_LOGIC_VECTOR (1 downto 0));
end component;

signal expanded : std_logic_vector(7 downto 0);
signal P : std_logic_vector(7 downto 0);
signal n0 : std_logic_vector(1 downto 0); 
signal n1 : std_logic_vector(1 downto 0); 

begin

inst: EP
port map(
    input => input,
    expanded => expanded
    );
    
boxs0 : S0
port map(
    input => P(3 downto 0),
    box => n0);
    
boxs1 : S1
port map(
    input => P(7 downto 4),
    box => n1);

P <= expanded XOR key;
mapping(0) <= n0(1);
mapping(1) <= n1(1);
mapping(2) <= n1(0);
mapping(3) <= n0(0);

end Behavioral;
