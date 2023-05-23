library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity seq_detect_000 is
    Port ( 
           clk     : in  STD_LOGIC;
           a_rstn  : in  STD_LOGIC;
           input   : in  STD_LOGIC;
           output  : out STD_LOGIC );
end seq_detect_000;

architecture Behavioral of seq_detect_000 is

type state_type is (s0,s1,s2);
signal current_state,next_state : state_type;

signal rst_cnt: std_logic_vector (3 downto 0); 
signal a_rst  : std_logic;
signal reset  : std_logic;

begin

a_rst <= not (a_rstn);
reset <= '0' when rst_cnt = 12 else '1';

process(clk, a_rst)
begin
    if(a_rst = '1') then
        rst_cnt <= (others => '0');
    elsif (rising_edge (clk)) then
        if(rst_cnt < 12) then 
            rst_cnt <= rst_cnt + 1;
        else
            rst_cnt <= rst_cnt;
        end if;    
    end if;    
end process;

process(clk, reset)
begin
    if(reset = '1') then 
        current_state <= s0;
    elsif (rising_edge (clk)) then
        current_state <= next_state;     
    end if;
end process;

process(current_state, input)
begin
    case current_state is
        when s0 => if (input = '0') then
                        next_state <= s1;
                        output     <= '0';
                   else
                        next_state <= s0;
                        output     <= '0';
                   end if;
        when s1 => if (input = '0') then
                        next_state <= s2;
                        output     <= '0';
                   else
                        next_state <= s0;
                        output     <= '0';
                   end if;
        when s2 => if (input = '0') then
                        next_state <= s2;
                        output     <= '1';
                   else
                        next_state <= s0;
                        output     <= '0';
                   end if;
    end case;
end process;

end Behavioral;
