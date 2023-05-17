library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_bahav_tb is
--  Port ( );
end and_bahav_tb;

architecture Behavioral of and_bahav_tb is

component and_behav is
    Port ( 
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end component;

signal a1 : STD_LOGIC := '0';
signal b1 : STD_LOGIC := '0';
signal c1 : STD_LOGIC := '0';

begin
-- instantiate the UNIT UNDER TEST
UUT : and_behav port map(
        a => a1,
        b => b1,
        c => c1);  
        
stimulus_process : process
begin
        a1 <= '0';  b1 <= '0'; wait for 500 ns;
        a1 <= '0';  b1 <= '1'; wait for 500 ns;
        a1 <= '1';  b1 <= '0'; wait for 500 ns;
        a1 <= '1';  b1 <= '1'; wait for 500 ns;
        wait;
end process;

end Behavioral;
