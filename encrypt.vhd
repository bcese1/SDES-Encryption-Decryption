----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/24/2021 09:28:32 PM
-- Design Name: 
-- Module Name: encrypt - Behavioral
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

entity encrypt is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           K1 : in STD_LOGIC_VECTOR (7 downto 0);
           K2 : in STD_LOGIC_VECTOR (7 downto 0);
           cipher : out STD_LOGIC_VECTOR (7 downto 0));
end encrypt;

architecture Behavioral of encrypt is

component f_k is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
            K   : in STD_LOGIC_VECTOR (7 downto 0);
           output : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component switch is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           switched : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component IP is
    Port ( input : in STD_LOGIC_VECTOR (7 downto 0);
           permute : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component IP_INV is
    Port ( permuted : in STD_LOGIC_VECTOR (7 downto 0);
           reversed : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal permute : std_logic_vector(7 downto 0);
signal step1_out : std_logic_vector(7 downto 0);
signal step4_out : std_logic_vector(7 downto 0);
signal switched : std_logic_vector(7 downto 0);


begin

step1: IP
port map(
    input => input,
    permute => permute
    );
step2: f_k
port map(
    input => permute,
    K => K1,
    output => step1_out
    );
step3: switch
port map(
    input => step1_out,
    switched => switched
    );
step4: f_k
port map(
    input => switched,
    K => K2,
    output => step4_out
    );
step5: IP_INV
port map(
    permuted => step4_out,
    reversed => cipher
    );
end Behavioral;
