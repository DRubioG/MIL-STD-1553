library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIL_STD_1553 is
    Port ( 
        clk : in std_logic;
        rst_n : in std_logic;
        en : in std_logic;
        data_in : in std_logic;
        en_buffer : out std_logic;
        data_out : out std_logic 
    );
end MIL_STD_1553;

architecture arch_MIL_STD_1553 of MIL_STD_1553 is

begin

    


end arch_MIL_STD_1553;
