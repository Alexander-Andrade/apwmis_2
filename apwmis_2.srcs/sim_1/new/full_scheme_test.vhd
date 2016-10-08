library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_scheme_test is
end full_scheme_test;

architecture Behavioral of full_scheme_test is
    component full_scheme is
        Port (not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : in std_logic;
              cco, rco, q_a, q_b, q_c, q_d : out std_logic; y_iw : out std_logic_vector(27 downto 0));
    end component;
    
    signal not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : std_logic := '0';
    signal cco, rco, q_a, q_b, q_c, q_d : std_logic := '0';
    
    signal iw : std_logic_vector(27 downto 0) := (others=>'0');
    
    constant clk_period : time := 5 ns;
    constant clk_x2 : time := 10 ns;
begin
   uut : full_scheme port map(not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d, cco, rco, q_a, q_b, q_c, q_d, iw);
   process
   begin
       clk <= '0';
       wait for clk_period;
       clk <= '1';
       wait for clk_period;
   end process;
  
   not_oe<='0';
   ent<='1';
   enp<='1';
   not_sclr<='1';
   not_sload<='1';
   not_aclr<='1';
   not_aload<='1';
         
end Behavioral;
