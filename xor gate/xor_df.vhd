library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_df is
    Port ( 
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC );
end xor_df;

architecture Behavioral of xor_df is

begin
    C <= (A and ( not B )) or (( not A ) and B);

end Behavioral;
