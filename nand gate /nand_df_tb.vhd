library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nand_df_tb is
--  Port ( );
end nand_df_tb;

architecture Behavioral of nand_df_tb is

component nand_df is
    Port ( 
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC  );
end component;

signal A,B,C : STD_LOGIC := '0';

begin
--instantiate design under test
DUT : nand_df port map(
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
