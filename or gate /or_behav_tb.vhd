library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_behav_tb is
 --Port() 
end or_behav_tb;

Architecture Behavioral of or_behav_tb is

component or_behav is
   Port (
         A : in  STD_LOGIC;
         B : in  STD_LOGIC;
         C : out STD_LOGIC);
end component;

signal  A :  STD_LOGIC := '0';
signal  B :  STD_LOGIC := '0';
signal  C :  STD_LOGIC := '0';

Begin
--instantiate design under test
DUT : or_behav port map(
        A => A,
        B => B,
        C => C);

stimulus_process : process
    Begin
        A <= '0';  B <= '0'; wait for 500 ns;
        A <= '0';  B <= '1'; wait for 500 ns;
        A <= '1';  B <= '0'; wait for 500 ns;
        A <= '1';  B <= '1'; wait for 500 ns;
        wait;
end process;

end Behavioral;
