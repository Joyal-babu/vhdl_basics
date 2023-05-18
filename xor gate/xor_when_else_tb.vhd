library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_when_else_tb is
--  Port ( );
end xor_when_else_tb;

architecture Behavioral of xor_when_else_tb is

component xor_when_else is
    Port ( 
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC  );
end component;

signal A,B,C : STD_LOGIC := '0';

begin
--instantiate design under test
DUT : xor_when_else port map(
                A => A,
                B => B,
                C => C );
               
stimulus_process : process
           begin
                A <= '0'; B <= '0'; wait for 500 ns;
                A <= '0'; B <= '1'; wait for 500 ns;
                A <= '1'; B <= '0'; wait for 500 ns;
                A <= '1'; B <= '1'; wait for 500 ns;
                wait;
           end process;
end Behavioral;
