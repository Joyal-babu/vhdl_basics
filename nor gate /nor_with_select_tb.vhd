library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity nor_with_select_tb is
--  Port ( );
end nor_with_select_tb;

architecture Behavioral of nor_with_select_tb is

component nor_with_select is
   Port (
         A : in  STD_LOGIC;
         B : in  STD_LOGIC;
         C : out STD_LOGIC );
end component;

signal  A :  STD_LOGIC := '0';
signal  B :  STD_LOGIC := '0';
signal  C :  STD_LOGIC := '0';

Begin
--instantiate design under test
DUT : nor_with_select port map(
        A => A,
        B => B,
        C => C );

stimulus_process : process
    Begin
        A <= '0';  B <= '0'; wait for 500 ns;
        A <= '0';  B <= '1'; wait for 500 ns;
        A <= '1';  B <= '0'; wait for 500 ns;
        A <= '1';  B <= '1'; wait for 500 ns;
        wait;
end process;

end Behavioral;
