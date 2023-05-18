--DATAFLOW MODELLING  

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_when_else is
    Port ( 
           A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : out STD_LOGIC );
end or_when_else;

architecture Behavioral of or_when_else is

begin                                      -- when-else is used in dataflow style of modeling which is similar to if-then 
   C <= '0' when A='0' and B='0' else      -- in behavioral style of modeling where we need process statement.  
        '1' when A='0' and B='1' else      -- Since this is dataflow style using when-else, we don't need process statement
        '1' when A='1' and B='0' else
        '1' when A='1' and B='1' else
        'Z';
end Behavioral;
