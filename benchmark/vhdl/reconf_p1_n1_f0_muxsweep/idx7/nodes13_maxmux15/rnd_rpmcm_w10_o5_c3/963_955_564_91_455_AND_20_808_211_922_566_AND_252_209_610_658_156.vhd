library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(1 downto 0);
  signal config_select_1: std_logic_vector(1 downto 0);
  signal config_select_2: std_logic_vector(1 downto 0);
  signal config_select_3: std_logic_vector(1 downto 0);
  signal config_select_4: std_logic_vector(1 downto 0);
  signal config_select_5: std_logic_vector(1 downto 0);
  signal config_select_6: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(22 downto 0);
  signal c_3_i0_resize: signed(22 downto 0);
  signal c_3_i1_resize: signed(22 downto 0);
  signal c_3_i0_shift: signed(22 downto 0);
  signal c_3_i1_shift: signed(22 downto 0);
  signal c_3_arith: signed(22 downto 0);
  signal c_3_oshift: signed(22 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(19 downto 0);
  signal c_6_i0_resize: signed(19 downto 0);
  signal c_6_i1_resize: signed(19 downto 0);
  signal c_6_i0_shift: signed(19 downto 0);
  signal c_6_i1_shift: signed(19 downto 0);
  signal c_6_arith: signed(19 downto 0);
  signal c_6_oshift: signed(19 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(23 downto 0);
  signal c_7_5_4_False_resize: signed(23 downto 0);
  signal c_7_5_4_False_shift: signed(23 downto 0);
  signal c_7_5_0_False_resize: signed(23 downto 0);
  signal c_7_5_0_False_shift: signed(23 downto 0);
  signal c_7_6_0_False_resize: signed(23 downto 0);
  signal c_7_6_0_False_shift: signed(23 downto 0);
  signal c_7_sel: std_logic_vector(1 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_1_0_False_resize: signed(22 downto 0);
  signal c_9_1_0_False_shift: signed(22 downto 0);
  signal c_9_1_1_False_resize: signed(22 downto 0);
  signal c_9_1_1_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_6_1_False_resize: signed(24 downto 0);
  signal c_10_6_1_False_shift: signed(24 downto 0);
  signal c_10_6_5_False_resize: signed(24 downto 0);
  signal c_10_6_5_False_shift: signed(24 downto 0);
  signal c_10_6_0_False_resize: signed(24 downto 0);
  signal c_10_6_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(1 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_i0_resize: signed(25 downto 0);
  signal c_11_i1_resize: signed(25 downto 0);
  signal c_11_i0_shift: signed(25 downto 0);
  signal c_11_i1_shift: signed(25 downto 0);
  signal c_11_arith: signed(25 downto 0);
  signal c_11_oshift: signed(25 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(21 downto 0);
  signal c_14_5_3_False_resize: signed(21 downto 0);
  signal c_14_5_3_False_shift: signed(21 downto 0);
  signal c_14_5_0_False_resize: signed(21 downto 0);
  signal c_14_5_0_False_shift: signed(21 downto 0);
  signal c_14_1_0_False_resize: signed(21 downto 0);
  signal c_14_1_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_17: signed(22 downto 0);
  signal c_17_5_3_False_resize: signed(22 downto 0);
  signal c_17_5_3_False_shift: signed(22 downto 0);
  signal c_17_5_0_False_resize: signed(22 downto 0);
  signal c_17_5_0_False_shift: signed(22 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_18_5_0_False_resize: signed(19 downto 0);
  signal c_18_5_0_False_shift: signed(19 downto 0);
  signal c_18_6_0_False_resize: signed(19 downto 0);
  signal c_18_6_0_False_shift: signed(19 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(24 downto 0);
  signal c_20_12_0_False_resize: signed(24 downto 0);
  signal c_20_12_0_False_shift: signed(24 downto 0);
  signal c_20_16_0_False_resize: signed(24 downto 0);
  signal c_20_16_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_8_1_False_resize: signed(25 downto 0);
  signal c_22_8_1_False_shift: signed(25 downto 0);
  signal c_22_15_0_False_resize: signed(25 downto 0);
  signal c_22_15_0_False_shift: signed(25 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_resize: signed(25 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_resize: signed(25 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_15_0_False_resize: signed(25 downto 0);
  signal c_25_15_0_False_shift: signed(25 downto 0);
  signal c_25_8_2_False_resize: signed(25 downto 0);
  signal c_25_8_2_False_shift: signed(25 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(25 downto 0);
  signal c_26_resize: signed(25 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_resize: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_19_1_False_resize: signed(25 downto 0);
  signal c_28_19_1_False_shift: signed(25 downto 0);
  signal c_28_19_0_False_resize: signed(25 downto 0);
  signal c_28_19_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_resize: signed(25 downto 0);
begin
  config_select_0 <= config_select;
  process(clk)
  begin
    if rising_edge(clk) then
      config_select_1 <= config_select_0;
      config_select_2 <= config_select_1;
      config_select_3 <= config_select_2;
      config_select_4 <= config_select_3;
      config_select_5 <= config_select_4;
      config_select_6 <= config_select_5;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 23
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_23);
    end if;
  end process;
  -- output node 1 with id 24
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_24);
    end if;
  end process;
  -- output node 2 with id 26
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_26);
    end if;
  end process;
  -- output node 3 with id 27
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_27);
    end if;
  end process;
  -- output node 4 with id 29
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_29);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 1 and associated fundamentals [[34], [34], [34]]
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 22,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [2]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[67], [67], [66]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 17,
      w_o => 23,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 4 and associated fundamentals [[65], [65], [65]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 5 and associated fundamentals [[7], [9], [9]]
  with config_select_1 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_5_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 6 and associated fundamentals [[10], [10], [-6]]
  with config_select_1 select c_6_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 1,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_6_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[7], [144], [-6]]
  c_7_5_4_False_resize <= resize(c_5, 24);
  c_7_5_4_False_shift <= shift_left(c_7_5_4_False_resize, 4);
  c_7_5_0_False_resize <= resize(c_5, 24);
  c_7_5_0_False_shift <= shift_left(c_7_5_0_False_resize, 0);
  c_7_6_0_False_resize <= resize(c_6, 24);
  c_7_6_0_False_shift <= shift_left(c_7_6_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "00" => c_7 <= c_7_5_4_False_shift;
        when "01" => c_7 <= c_7_5_0_False_shift;
        when others => c_7 <= c_7_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 8 and associated fundamentals [[141], [10], [126]]
  with config_select_3 select c_8_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_3,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[34], [34], [68]]
  c_9_1_0_False_resize <= resize(c_1, 23);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_1_1_False_resize <= resize(c_1, 23);
  c_9_1_1_False_shift <= shift_left(c_9_1_1_False_resize, 1);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[20], [320], [-6]]
  c_10_6_1_False_resize <= resize(c_6, 25);
  c_10_6_1_False_shift <= shift_left(c_10_6_1_False_resize, 1);
  c_10_6_5_False_resize <= resize(c_6, 25);
  c_10_6_5_False_shift <= shift_left(c_10_6_5_False_resize, 5);
  c_10_6_0_False_resize <= resize(c_6, 25);
  c_10_6_0_False_shift <= shift_left(c_10_6_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "00" => c_10 <= c_10_6_1_False_shift;
        when "01" => c_10 <= c_10_6_5_False_shift;
        when others => c_10 <= c_10_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[232], [912], [532]]
  with config_select_3 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 12 and associated fundamentals [[45], [85], [53]]
  with config_select_2 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_12_sub_sel,
      x_i => c_4,
      y_i => c_6,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[91], [922], [658]]
  with config_select_4 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_13_sub_sel,
      x_i => c_11,
      y_i => c_8,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 14 and associated fundamentals [[56], [9], [34]]
  c_14_5_3_False_resize <= resize(c_5, 22);
  c_14_5_3_False_shift <= shift_left(c_14_5_3_False_resize, 3);
  c_14_5_0_False_resize <= resize(c_5, 22);
  c_14_5_0_False_shift <= shift_left(c_14_5_0_False_resize, 0);
  c_14_1_0_False_resize <= c_1;
  c_14_1_0_False_shift <= shift_left(c_14_1_0_False_resize, 0);
  with config_select_2 select c_14_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_5_3_False_shift;
        when "01" => c_14 <= c_14_5_0_False_shift;
        when others => c_14 <= c_14_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 15 and associated fundamentals [[963], [211], [610]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_3,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 16 and associated fundamentals [[252], [324], [324]]
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 2,
      s_y_i => 5,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_5,
      y_i => c_5,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 17 and associated fundamentals [[56], [72], [9]]
  c_17_5_3_False_resize <= resize(c_5, 23);
  c_17_5_3_False_shift <= shift_left(c_17_5_3_False_resize, 3);
  c_17_5_0_False_resize <= resize(c_5, 23);
  c_17_5_0_False_shift <= shift_left(c_17_5_0_False_resize, 0);
  with config_select_2 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_5_3_False_shift;
        when others => c_17 <= c_17_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 18 and associated fundamentals [[7], [10], [-6]]
  c_18_5_0_False_resize <= c_5;
  c_18_5_0_False_shift <= shift_left(c_18_5_0_False_resize, 0);
  c_18_6_0_False_resize <= c_6;
  c_18_6_0_False_shift <= shift_left(c_18_6_0_False_resize, 0);
  with config_select_2 select c_18_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_5_0_False_shift;
        when others => c_18 <= c_18_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 19 and associated fundamentals [[455], [566], [78]]
  with config_select_3 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_19_sub_sel,
      x_i => c_17,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[45], [324], [53]]
  c_20_12_0_False_resize <= resize(c_12, 25);
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_16_0_False_resize <= c_16;
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  with config_select_3 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_12_0_False_shift;
        when others => c_20 <= c_20_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 21 and associated fundamentals [[955], [808], [209]]
  with config_select_4 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_21_sub_sel,
      x_i => c_19,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 22 and associated fundamentals [[963], [20], [252]]
  c_22_8_1_False_resize <= resize(c_8, 26);
  c_22_8_1_False_shift <= shift_left(c_22_8_1_False_resize, 1);
  c_22_15_0_False_resize <= c_15;
  c_22_15_0_False_shift <= shift_left(c_22_15_0_False_resize, 0);
  with config_select_4 select c_22_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_8_1_False_shift;
        when others => c_22 <= c_22_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 23 and associated fundamentals [[963], [20], [252]]
  c_23_resize <= c_22;
  c_23 <= shift_left(c_23_resize, 0);
  -- node of type 'output' in stage 4 with id 24 and associated fundamentals [[955], [808], [209]]
  c_24_resize <= c_21;
  c_24 <= shift_left(c_24_resize, 0);
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[564], [211], [610]]
  c_25_15_0_False_resize <= c_15;
  c_25_15_0_False_shift <= shift_left(c_25_15_0_False_resize, 0);
  c_25_8_2_False_resize <= resize(c_8, 26);
  c_25_8_2_False_shift <= shift_left(c_25_8_2_False_resize, 2);
  with config_select_4 select c_25_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_15_0_False_shift;
        when others => c_25 <= c_25_8_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 26 and associated fundamentals [[564], [211], [610]]
  c_26_resize <= c_25;
  c_26 <= shift_left(c_26_resize, 0);
  -- node of type 'output' in stage 4 with id 27 and associated fundamentals [[91], [922], [658]]
  c_27_resize <= c_13;
  c_27 <= shift_left(c_27_resize, 0);
  -- node of type 'mux' in stage 4 with id 28 and associated fundamentals [[455], [566], [156]]
  c_28_19_1_False_resize <= c_19;
  c_28_19_1_False_shift <= shift_left(c_28_19_1_False_resize, 1);
  c_28_19_0_False_resize <= c_19;
  c_28_19_0_False_shift <= shift_left(c_28_19_0_False_resize, 0);
  with config_select_4 select c_28_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_19_1_False_shift;
        when others => c_28 <= c_28_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 4 with id 29 and associated fundamentals [[455], [566], [156]]
  c_29_resize <= c_28;
  c_29 <= shift_left(c_29_resize, 0);
end architecture;
