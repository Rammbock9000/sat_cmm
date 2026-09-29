library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity times_k is
  generic (
    W_out: integer := 19
  );
  port (
    x: in signed(15 downto 0);
    s: in std_logic_vector(3 downto 0);
    y: out signed(W_out - 1 downto 0)
);
end entity;
architecture times_k of times_k is
    signal x_resize: signed(W_out - 1 downto 0);

    signal x_s1_shift: signed(W_out - 1 downto 0);
    signal x_s2_shift: signed(W_out - 1 downto 0);
    signal x_s3_shift: signed(W_out - 1 downto 0);

    signal decoder_out: std_logic_vector(4 downto 0);
    signal m1, m2, m3, m4, sub: std_logic;
    signal m3_resize: std_logic_vector(W_out - 1 downto 0);
    signal m1_resize: std_logic_vector(W_out - 1 downto 0);

    signal x_s0_and: signed(W_out - 1 downto 0);
    signal x_s3_and: signed(W_out - 1 downto 0);

    signal mux_top: signed(W_out - 1 downto 0);
    signal mux_bot: signed(W_out - 1 downto 0);

begin
    -- decoder
    with s select decoder_out <=
        "00100" when "0000",
        "00110" when "0001",
        "00111" when "0010",
        "11010" when "0011",
        "01000" when "0100",
        "01010" when "0101",
        "01011" when "0110",
        "11110" when "0111",
        "01100" when others;
    sub <= decoder_out(4);
    m1 <= decoder_out(3);
    m2 <= decoder_out(2);
    m3 <= decoder_out(1);
    m4 <= decoder_out(0);

    -- resizes
    x_resize <= resize(x, W_out);
    m3_resize <= (others => m3);
    m1_resize <= (others => m1);

    -- shifts
    x_s1_shift <= shift_left(x_resize, 1);
    x_s2_shift <= shift_left(x_resize, 2);
    x_s3_shift <= shift_left(x_resize, 3);

    -- AND gates
    x_s0_and <= x_resize and signed(m3_resize);
    x_s3_and <= x_s3_shift and signed(m1_resize);

    -- MUXs
    mux_top <=
        x_s3_and when m2 = '1' else
        x_s2_shift;
    
    mux_bot <=
        x_s1_shift when m4 = '1' else
        x_s0_and;

    -- compute output
    inst_add_sub : entity work.add_sub
    generic map (W => W_out)
    port map (
        a_i => mux_top,
        b_i => mux_bot,
        sub_i => sub,
        s_o => y
    );

end architecture;



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  generic (
    W_out: integer := 27
  );
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(3 downto 0);
    y_0: out std_logic_vector(W_out-1 downto 0);
    y_1: out std_logic_vector(W_out-1 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_d: std_logic_vector(3 downto 0);
  signal x_0_signed: signed(15 downto 0);
  signal x_1_signed: signed(15 downto 0);
  signal x_0_times_k: signed(18 downto 0);
  signal x_1_times_k: signed(18 downto 0);
  signal x_0_times_k_resize: signed(W_out-1 downto 0);
  signal x_1_times_k_resize: signed(W_out-1 downto 0);
  signal x_0_resize: signed(W_out-1 downto 0);
  signal x_1_resize: signed(W_out-1 downto 0);
  signal x_0_shifted: signed(W_out-1 downto 0);
  signal x_1_shifted: signed(W_out-1 downto 0);
  signal y_0_signed: signed(W_out-1 downto 0);
  signal y_1_signed: signed(W_out-1 downto 0);
begin
  process (clk)
  begin
    if rising_edge(clk) then
      -- config select register
      config_select_d <= config_select;
      -- input node 0 with id 0
      x_0_signed <= signed(x_0);
      -- input node 1 with id 1
      x_1_signed <= signed(x_1);
      -- output node 0
      y_0 <= std_logic_vector(y_0_signed);
      -- output node 1
      y_1 <= std_logic_vector(y_1_signed);
    end if;
  end process;
  -- resize and shift inputs
  x_0_resize <= resize(x_0_signed, W_out);
  x_1_resize <= resize(x_1_signed, W_out);
  x_0_shifted <= shift_left(x_0_resize, 10);
  x_1_shifted <= shift_left(x_1_resize, 10);
  -- times k
  inst_times_k_0 : entity work.times_k
    generic map (W_out => 19)
    port map (
      x => x_0_signed,
      s => config_select_d,
      y => x_0_times_k
    );
  inst_times_k_1 : entity work.times_k
    generic map (W_out => 19)
    port map (
      x => x_1_signed,
      s => config_select_d,
      y => x_1_times_k
    );
  -- resize times k outputs
  x_0_times_k_resize <= resize(x_0_times_k, W_out);
  x_1_times_k_resize <= resize(x_1_times_k, W_out);
  -- output add/sub
  y_0_signed <= x_0_shifted - x_1_times_k_resize;
  y_1_signed <= x_1_shifted + x_0_times_k_resize;
end architecture;
