----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: S0 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity S0 is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           box : out STD_LOGIC_VECTOR (1 downto 0));
end S0;

architecture Behavioral of S0 is

type row is array (0 to 3) of integer range 0 to 3;
constant row0 : row := (1,0,3,2);
constant row1 : row := (3,2,1,0);
constant row2 : row := (0,2,1,3);
constant row3 : row := (3,1,3,2);

signal srow : row;
signal sel_row : std_logic_vector(1 downto 0);
signal sel_col : std_logic_vector(1 downto 0);

begin

sel_row <= input(0) & input(3);
sel_col <= input(1) & input(2);

process(sel_row)
begin
    case(sel_row) is
    when "00" => srow <= row0;
    when "01" => srow <= row1;
    when "10" => srow <= row2;
    when "11" => srow <= row3;
    when others => srow <= row0;
    end case;
end process;

process(sel_col)
begin
    case(sel_col) is
    when "00" => box <= std_logic_vector(to_unsigned(srow(0),2));
    when "01" => box <= std_logic_vector(to_unsigned(srow(1),2));
    when "10" => box <= std_logic_vector(to_unsigned(srow(2),2));
    when "11" => box <= std_logic_vector(to_unsigned(srow(3),2));
    when others => box <= "00";
    end case;
end process;


end Behavioral;
