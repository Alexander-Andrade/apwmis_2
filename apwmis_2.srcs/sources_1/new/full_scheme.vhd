library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_scheme is
    Port (not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : in std_logic;
          cco, rco, q_a, q_b, q_c, q_d : out std_logic);
end full_scheme;

architecture Behavioral of full_scheme is
    signal i_wire : std_logic_vector(10 downto 0) := ('0','0','0','0','0','0','0','0','0','0');
begin


end Behavioral;
