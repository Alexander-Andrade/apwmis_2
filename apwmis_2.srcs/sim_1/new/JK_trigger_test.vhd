library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity JK_trigger_test is
end JK_trigger_test;

architecture Behavioral of JK_trigger_test is

    component JK_trigger is
        Port (j,k, clk, not_s, not_r : in std_logic;
              q, not_q : out std_logic);
    end component;
    
    signal j,k,clk, not_s, not_r : std_logic := '0';
    signal q, not_q : std_logic := '0';
    constant clk_period : time := 5 ns;
begin
    uut : JK_trigger port map(j,k,clk,not_s,not_r,q,not_q);

    process
    begin
        clk <= '0';
        wait for clk_period;
        clk <= '1';
        wait for clk_period;
    end process;
    
    process
    begin
        j<='0';
        k<='0';        
        wait for clk_period*2;
        j<='0';
        k<='1';        
        wait for clk_period*2;
        j<='1';
        k<='0';        
        wait for clk_period*2;
        j<='1';
        k<='1';        
        wait for clk_period*2;
        not_r<='0';       
        wait for clk_period*2;
        not_s<='0';        
        wait for clk_period*2;
    end process;
    
end Behavioral;
