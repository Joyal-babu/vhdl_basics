
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_if_else is
    Port (
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC);
end or_if_else;

architecture Behavioral of or_if_else is

begin
    process(A,B)
    begin
    if (A='0' and B='0')    then
        C <= '0';
    elsif (A='0' and B='1') then
        C <= '1';
    elsif (A='1' and B='0') then
        C <= '1';
    elsif (A='1' and B='1') then
        C <= '1';
    end if;
    end process;

end Behavioral;
