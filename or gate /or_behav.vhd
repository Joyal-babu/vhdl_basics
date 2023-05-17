library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_behav is
   Port (
         A : in  STD_LOGIC;
         B : in  STD_LOGIC;
         C : out STD_LOGIC);
end or_behav;

architecture Behavioral of or_behav is

begin
    process(A,B)
    begin
        C <= A OR B;
    end process;

end Behavioral;
