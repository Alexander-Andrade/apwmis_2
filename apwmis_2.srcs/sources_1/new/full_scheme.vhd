library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_scheme is
    Port (not_oe, ent, enp, not_sclr, not_sload, clk, not_aclr, not_aload, a, b, c, d : in std_logic;
          cco, rco, q_a, q_b, q_c, q_d : out std_logic);
end full_scheme;

architecture Behavioral of full_scheme is
    component scheme_1 is
        Port (x0,x1,x2,x3,x4,x5,x6,x7 : in std_logic;
              y0 :out std_logic);
    end component;
    
    component scheme_2 is
        Port (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9 : in std_logic;
              y0 : out std_logic);
    end component;
    
    component scheme_3 is
        Port (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11 : in std_logic;
              y0 : out std_logic);
    end component;
    
    component scheme_4 is
        Port (x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13: in std_logic;
              y0 : out std_logic);
    end component;
    
    component scheme_5 is
        Port (x0,x1,x2,x3,x4 : in std_logic;
              y0, y1 : out std_logic);
    end component;
    
    component scheme_6 is
        Port (x0,x1,x2,x3 : in std_logic;
              y0, y1, y2 : out std_logic);
    end component;
    
    component scheme_7 is
        Port (x0,x1,x2,x3,x4,x5,x6 : in std_logic;
              y0, y1 : out std_logic);
    end component;
    
    component tri_state_buffer is
        Port (x,c : in std_logic;
              y : out std_logic);
    end component;
    
    component JK_trigger is
        Port (j,k, clk, not_s, not_r : in std_logic;
              q, not_q : out std_logic);
    end component;
    
    signal iw : std_logic_vector(19 downto 0) := ('0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0');
begin
    iw(0) <= not not_oe;
    scheme_6_1 : sheme_6 port map(ent, enp, not_sclr, not_sload,  iw(1), iw(2), iw(3));
    iw(4) <= not clk;
    iw(5) <= not not_aclr;
    iw(6) <= not not_aload;
    
    scheme_1_1 : scheme_1 port map(x0=>a,x1=>iw(3),x2=>iw(2),x3=>iw(12),x4=>iw(1),x5=>iw(1),x6=>iw(2),x7=>iw(12),y0=>iw(7));
    scheme_2_1 : scheme_2 port map(x0=>b,x1=>iw(3),x2=>iw(1),x3=>iw(12),x4=>iw(14),x5=>iw(2),x6=>iw(1),x7=>iw(12),x8=>iw(2),x9=>iw(14),y0=>iw(8));
    scheme_3_1 : scheme_3 port map(x0=>c,x1=>iw(3),x2=>iw(2),x3=>iw(14),x4=>iw(12),x5=>iw(16),x6=>iw(2),x7=>iw(1),x8=>iw(14),x9=>iw(12),x10=>iw(2),x11=>iw(16),y0=>iw(9));
    scheme_4_1 : scheme_4 port map(x0=>d,x1=>iw(3),x2=>iw(1),x3=>iw(16),x4=>iw(14),x5=>iw(12),x6=>iw(18),x7=>iw(2),x8=>iw(1),x9=>iw(16),x10=>iw(14),x11=>iw(12),x12=>iw(2),x13=>iw(18),y0=>iw(10));
    
end Behavioral;
