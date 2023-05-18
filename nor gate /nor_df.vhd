library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nor_df is
    Port (
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out STD_LOGIC );
end nor_df;

architecture Behavioral of nor_df is

begin
    C <= A nor B;

end Behavioral;
