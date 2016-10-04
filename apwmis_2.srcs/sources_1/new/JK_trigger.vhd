library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--J K Q(t) Q(t+1)
--0	0	0	0
--0	0	1	1
--0	1	0	0
--0	1	1	0
--1	0	0	1
--1	0	1	1
--1	1	0	1
--1	1	1	0

entity JK_trigger is
    Port (j,k, clk, not_s, not_r : in std_logic;
          q, not_q : out std_logic);
end JK_trigger;

architecture Behavioral of JK_trigger is
    signal q_temp : std_logic := '0';
begin
    process(clk, not_s, not_r)
    begin
    --async
    if falling_edge(not_s) then
        q<='1';
    end if;
    
    if falling_edge(not_r) then
        q<='0';
    end if;
    
    --sync
    if rising_edge(clk) then
        if j='0' and k='0' and q_temp='0' then
            q_temp <='0';
        elsif j='0' and k='0' and q_temp='1' then
            q_temp <='1';
        elsif j='0' and k='1' and q_temp='0' then
            q_temp <='0';
        elsif j='0' and k='1' and q_temp='1' then
            q_temp <='0';
        elsif j='1' and k='0' and q_temp='0' then
            q_temp <='1';
        elsif j='1' and k='0' and q_temp='1' then
            q_temp <='1';
        elsif j='1' and k='1' and q_temp='0' then
            q_temp <='1';
        elsif j='1' and k='1' and q_temp='1' then
            q_temp <='0';
        end if;
    end if;
    q<= q_temp;
    not_q <= not q_temp;
    end process;
end Behavioral;
