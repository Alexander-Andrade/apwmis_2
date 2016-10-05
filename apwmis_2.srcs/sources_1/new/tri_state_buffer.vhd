library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tri_state_buffer is
    Port (x,c : in std_logic;
          y : out std_logic);
end tri_state_buffer;

architecture Behavioral of tri_state_buffer is

begin
    process(c)
    begin
        if rising_edge(c) then
            y<= x;
        else
            y <= 'Z';
        end if;
    end process;
end Behavioral;
