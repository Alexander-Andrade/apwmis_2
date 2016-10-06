library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_scheme_test is
end full_scheme_test;

architecture Behavioral of full_scheme_test is
    component full_scheme is
        Port (not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : in std_logic;
              cco, rco, q_a, q_b, q_c, q_d : out std_logic);
    end component;
    
    signal not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : std_logic := '0';
    signal cco, rco, q_a, q_b, q_c, q_d : std_logic := '0';
begin


end Behavioral;
