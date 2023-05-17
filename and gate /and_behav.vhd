library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_behav is
    Port (
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end and_behav;

architecture Behavioral of and_behav is

begin
    process(a,b)
    begin
        c <= a AND b;
    end process;

end Behavioral;
