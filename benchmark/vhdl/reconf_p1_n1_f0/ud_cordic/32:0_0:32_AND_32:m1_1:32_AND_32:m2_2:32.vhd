library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(21 downto 0);
    y_1: out std_logic_vector(21 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(1 downto 0);
  signal config_select_1: std_logic_vector(1 downto 0);
  signal config_select_2: std_logic_vector(1 downto 0);
  signal config_select_3: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(15 downto 0);
  signal c_2: signed(19 downto 0);
  signal c_2_0_0_False_resize: signed(19 downto 0);
  signal c_2_0_0_False_shift: signed(19 downto 0);
  signal c_2_0_1_False_resize: signed(19 downto 0);
  signal c_2_0_1_False_shift: signed(19 downto 0);
  signal c_2_1_4_False_resize: signed(19 downto 0);
  signal c_2_1_4_False_shift: signed(19 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(16 downto 0);
  signal c_3_1_0_False_resize: signed(16 downto 0);
  signal c_3_1_0_False_shift: signed(16 downto 0);
  signal c_3_1_1_False_resize: signed(16 downto 0);
  signal c_3_1_1_False_shift: signed(16 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_5: signed(20 downto 0);
  signal c_5_1_0_False_resize: signed(20 downto 0);
  signal c_5_1_0_False_shift: signed(20 downto 0);
  signal c_5_0_5_False_resize: signed(20 downto 0);
  signal c_5_0_5_False_shift: signed(20 downto 0);
  signal c_5_1_1_False_resize: signed(20 downto 0);
  signal c_5_1_1_False_shift: signed(20 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(16 downto 0);
  signal c_6_0_0_False_resize: signed(16 downto 0);
  signal c_6_0_0_False_shift: signed(16 downto 0);
  signal c_6_0_1_False_resize: signed(16 downto 0);
  signal c_6_0_1_False_shift: signed(16 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_7_i0_resize: signed(21 downto 0);
  signal c_7_i1_resize: signed(21 downto 0);
  signal c_7_i0_shift: signed(21 downto 0);
  signal c_7_i1_shift: signed(21 downto 0);
  signal c_7_arith: signed(21 downto 0);
  signal c_7_oshift: signed(21 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_8_resize: signed(21 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_resize: signed(21 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select_0;
      config_select_2 <= config_select_1;
      config_select_3 <= config_select_2;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1);
    end if;
  end process;
  -- output node 0 with id 8
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_8);
    end if;
  end process;
  -- output node 1 with id 9
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_9);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 16], [1, 0], [2, 0]]
  c_2_0_0_False_resize <= resize(c_0, 20);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 20);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_1_4_False_resize <= resize(c_1, 20);
  c_2_1_4_False_shift <= shift_left(c_2_1_4_False_resize, 4);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_1_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 3 and associated fundamentals [[0, 1], [0, 2], [0, 2]]
  c_3_1_0_False_resize <= resize(c_1, 17);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_1_1_False_resize <= resize(c_1, 17);
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  with config_select_1 select c_3_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 4 and associated fundamentals [[0, 32], [1, 32], [2, 32]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 17,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 4,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[32, 0], [0, 1], [0, 2]]
  c_5_1_0_False_resize <= resize(c_1, 21);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  c_5_0_5_False_resize <= resize(c_0, 21);
  c_5_0_5_False_shift <= shift_left(c_5_0_5_False_resize, 5);
  c_5_1_1_False_resize <= resize(c_1, 21);
  c_5_1_1_False_shift <= shift_left(c_5_1_1_False_resize, 1);
  with config_select_1 select c_5_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_1_0_False_shift;
        when "01" => c_5 <= c_5_0_5_False_shift;
        when others => c_5 <= c_5_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 6 and associated fundamentals [[2, 0], [1, 0], [1, 0]]
  c_6_0_0_False_resize <= resize(c_0, 17);
  c_6_0_0_False_shift <= shift_left(c_6_0_0_False_resize, 0);
  c_6_0_1_False_resize <= resize(c_0, 17);
  c_6_0_1_False_shift <= shift_left(c_6_0_1_False_resize, 1);
  with config_select_1 select c_6_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_0_0_False_shift;
        when others => c_6 <= c_6_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 7 and associated fundamentals [[-32, 0], [-32, 1], [-32, 2]]
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 17,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'output' in stage 2 with id 8 and associated fundamentals [[32, 0], [32, -1], [32, -2]]
  c_8_resize <= c_7;
  c_8 <= -shift_left(c_8_resize, 0);
  -- node of type 'output' in stage 2 with id 9 and associated fundamentals [[0, 32], [1, 32], [2, 32]]
  c_9_resize <= c_4;
  c_9 <= shift_left(c_9_resize, 0);
end architecture;
