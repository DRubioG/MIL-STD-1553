library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_1553 is
    Port ( 
        clk : in std_logic;
        rst_n : in std_logic;
        en : in std_logic;
        start : in std_logic;
        data_in : in std_logic;
        sync : out std_logic_vector(2 downto 0);
        data_out_rdy : out std_logic;
        data_out : out std_logic_vector(16 downto 0)
    );
end decoder_1553;

architecture arch_decoder_1553 of decoder_1553 is

type fsm is (S0, S1, S2);
signal state : fsm;

signal finish_sync : std_logic;
signal cont : integer range 0 to 16;

begin

    process(clk, rst_n, start)
    begin
        if rst_n = '0' then
            state <= S0;
        elsif rising_edge(clk) then
            if en = '1' then
                case state is
                    when S0 =>
                        if start = '1' then
                            state <= S1;
                        end if;
                    when S1 =>
                        if finish_sync = '1' then
                            state <= S2;
                        end if;
                    when S2 =>
                        if cont = 16 then
                            state <= S0;
                        end if;
                end case;
            elsif en = '0' then
                state <= S0;
            end if;
        end if;
    end process;
    
    
    process(clk, rst_n, en, state)
    begin   
        if rst_n = '0' then
            
        elsif rising_edge(clk) then
            if en = '1' then
                if state = S1 then
                    
                end if;
            elsif en = '0' then
                
            end if;
        end if;
    end process;


end arch_decoder_1553;
