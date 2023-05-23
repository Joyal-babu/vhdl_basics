library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seq_detect_tb is
--  Port ( );
end seq_detect_tb;

architecture Behavioral of seq_detect_tb is

component seq_detect_000 is
    Port ( 
           clk     : in  STD_LOGIC;
           a_rstn  : in  STD_LOGIC;
           input   : in  STD_LOGIC;
           output  : out STD_LOGIC );
end component;

signal clk, a_rstn, input, output : std_logic := '0';

begin
--instantiating the design under test
DUT : seq_detect_000 port map(
              clk     => clk,
              a_rstn  => a_rstn,
              input   => input,
              output  => output );
              
stimulus_process : process
begin
    wait until (a_rstn = '1'); wait for 120 ns;
    input  <= '1'; wait for 60 ns;
    input  <= '0'; wait for 25 ns;
    input  <= '1'; wait for 40 ns;
    input  <= '0'; wait for 80 ns;
    wait;
end process;

clock_process : process
begin
    clk <= '0'; wait for 5 ns;
    clk <= '1'; wait for 5 ns;
end process;

reset_process : process
begin
    a_rstn <= '0'; wait for 500 ns;
    a_rstn <= '1'; wait for 500 ns;
    wait;
end process;

end Behavioral;
