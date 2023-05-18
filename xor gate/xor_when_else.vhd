library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_when_else is
    Port ( 
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC  );
end xor_when_else;

architecture Dataflow of xor_when_else is
begin
    C <= '0' when A='0' and B='0' else
         '1' when A='0' and B='1' else
         '1' when A='1' and B='0' else
         '0' when A='1' and B='1' else
         'Z';
end Dataflow;
