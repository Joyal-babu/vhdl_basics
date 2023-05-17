library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_behav_tb is
 --Port() 
end or_behav_tb;

Architecture Behavioral of or_behav_tb is

 signal  A :  STD_LOGIC;
 signal  B :  STD_LOGIC;

Begin

    stimulus_process : process
        Begin
            A <= '0';  B <= '0'; wait for 500 ns;
            A <= '0';  B <= '1'; wait for 500 ns;
            A <= '1';  B <= '0'; wait for 500 ns;
            A <= '1';  B <= '1'; wait for 500 ns;
            wait;
    end process;

end Behavioral;
