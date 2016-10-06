library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_scheme_test is
end full_scheme_test;

architecture Behavioral of full_scheme_test is
    component full_scheme is
        Port (not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : in std_logic;
              cco, rco, q_a, q_b, q_c, q_d : out std_logic);
    end component;
    
    signal x : std_logic_vector(11 downto 0) := ('0','0','0','0','0','0','0','0','0','0','0','0');
    signal y : std_logic_vecotr() := ();
    
    constant clk_period : time := 5 ns;
begin
   process
   begin
       clk <= '0';
       wait for clk_period;
       clk <= '1';
       wait for clk_period;
   end process;

    

end Behavioral;
