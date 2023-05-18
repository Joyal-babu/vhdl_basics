
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_with_select is
    Port (
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC );
end nand_with_select;

architecture Behavioral of nand_with_select is
signal sel : STD_LOGIC_VECTOR( 1 downto 0);
begin
    sel <= A & B;   --concatenation 
    with sel select
    
    C <= '1' when "00",
         '1' when "01",
         '1' when "10",
         '0' when "11",
         'Z' when others; 

end Behavioral;
