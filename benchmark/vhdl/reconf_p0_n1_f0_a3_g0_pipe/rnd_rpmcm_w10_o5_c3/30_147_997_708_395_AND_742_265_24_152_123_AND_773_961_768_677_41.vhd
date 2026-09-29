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
    y_4: out std_logic_vector(24 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_1_1_False_resize: signed(18 downto 0);
  signal c_3_1_1_False_shift: signed(18 downto 0);
  signal c_3_2_0_False_resize: signed(18 downto 0);
  signal c_3_2_0_False_shift: signed(18 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(23 downto 0);
  signal c_5_i0_resize: signed(23 downto 0);
  signal c_5_i1_resize: signed(23 downto 0);
  signal c_5_i0_shift: signed(23 downto 0);
  signal c_5_i1_shift: signed(23 downto 0);
  signal c_5_arith: signed(23 downto 0);
  signal c_5_oshift: signed(23 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_7_1_0_False_resize: signed(20 downto 0);
  signal c_7_1_0_False_shift: signed(20 downto 0);
  signal c_7_2_5_False_resize: signed(20 downto 0);
  signal c_7_2_5_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_1_5_False_resize: signed(23 downto 0);
  signal c_10_1_5_False_shift: signed(23 downto 0);
  signal c_10_2_0_False_resize: signed(23 downto 0);
  signal c_10_2_0_False_shift: signed(23 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_12: signed(26 downto 0);
  signal c_12_i0_resize: signed(26 downto 0);
  signal c_12_i1_resize: signed(26 downto 0);
  signal c_12_i0_shift: signed(26 downto 0);
  signal c_12_i1_shift: signed(26 downto 0);
  signal c_12_arith: signed(26 downto 0);
  signal c_12_oshift: signed(26 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(22 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_18_i0_resize: signed(24 downto 0);
  signal c_18_i1_resize: signed(24 downto 0);
  signal c_18_i0_shift: signed(24 downto 0);
  signal c_18_i1_shift: signed(24 downto 0);
  signal c_18_arith: signed(24 downto 0);
  signal c_18_oshift: signed(24 downto 0);
  signal c_19: signed(18 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_9_0_False_resize: signed(24 downto 0);
  signal c_20_9_0_False_shift: signed(24 downto 0);
  signal c_20_19_1_False_resize: signed(24 downto 0);
  signal c_20_19_1_False_shift: signed(24 downto 0);
  signal c_20_13_2_False_resize: signed(24 downto 0);
  signal c_20_13_2_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_i0_resize: signed(24 downto 0);
  signal c_21_i1_resize: signed(24 downto 0);
  signal c_21_i0_shift: signed(24 downto 0);
  signal c_21_i1_shift: signed(24 downto 0);
  signal c_21_arith: signed(24 downto 0);
  signal c_21_oshift: signed(24 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_23_0_False_resize: signed(24 downto 0);
  signal c_24_23_0_False_shift: signed(24 downto 0);
  signal c_24_18_1_False_resize: signed(24 downto 0);
  signal c_24_18_1_False_shift: signed(24 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(22 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_15_1_False_resize: signed(25 downto 0);
  signal c_29_15_1_False_shift: signed(25 downto 0);
  signal c_29_15_0_False_resize: signed(25 downto 0);
  signal c_29_15_0_False_shift: signed(25 downto 0);
  signal c_29_28_0_False_resize: signed(25 downto 0);
  signal c_29_28_0_False_shift: signed(25 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(26 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_18_0_False_resize: signed(25 downto 0);
  signal c_31_18_0_False_shift: signed(25 downto 0);
  signal c_31_30_0_False_resize: signed(25 downto 0);
  signal c_31_30_0_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_23_3_False_resize: signed(25 downto 0);
  signal c_32_23_3_False_shift: signed(25 downto 0);
  signal c_32_15_0_False_resize: signed(25 downto 0);
  signal c_32_15_0_False_shift: signed(25 downto 0);
  signal c_32_23_8_False_resize: signed(25 downto 0);
  signal c_32_23_8_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(1 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_34_1_False_resize: signed(25 downto 0);
  signal c_35_34_1_False_shift: signed(25 downto 0);
  signal c_35_27_0_False_resize: signed(25 downto 0);
  signal c_35_27_0_False_shift: signed(25 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_resize: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_49_resize: signed(24 downto 0);
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
      config_select_7 <= config_select_6;
      config_select_8 <= config_select_7;
      config_select_9 <= config_select_8;
      config_select_10 <= config_select_9;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 38
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_38);
    end if;
  end process;
  -- output node 1 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 2 with id 44
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_44);
    end if;
  end process;
  -- output node 3 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 4 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_49);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [3], [3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[1], [6], [6]]
  c_3_1_1_False_resize <= c_1;
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  c_3_2_0_False_resize <= resize(c_2, 19);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_1_False_shift;
        when others => c_3 <= c_3_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[33], [191], [193]]
  with config_select_3 select c_5_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 5,
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
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[79], [47], [47]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 23,
      s_x_i => 4,
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
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[5], [32], [3]]
  c_7_1_0_False_resize <= resize(c_1, 21);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  c_7_2_5_False_resize <= resize(c_2, 21);
  c_7_2_5_False_shift <= shift_left(c_7_2_5_False_resize, 5);
  with config_select_2 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_1_0_False_shift;
        when others => c_7 <= c_7_2_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 9 and associated fundamentals [[30], [76], [18]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 21,
      w_o => 23,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_8,
      y_i => c_7,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[160], [1], [96]]
  c_10_1_5_False_resize <= resize(c_1, 24);
  c_10_1_5_False_shift <= shift_left(c_10_1_5_False_resize, 5);
  c_10_2_0_False_resize <= resize(c_2, 24);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_1_5_False_shift;
        when others => c_10 <= c_10_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[160], [1], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 12 and associated fundamentals [[1313], [183], [961]]
  with config_select_4 select c_12_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 27,
      s_x_i => 0,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_12_sub_sel,
      x_i => c_5,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[79], [47], [47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[79], [47], [47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[997], [371], [773]]
  with config_select_5 select c_15_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_15_sub_sel,
      x_i => c_12,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 16 and associated fundamentals [[207], [417], [337]]
  with config_select_4 select c_16_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_16_sub_sel,
      x_i => c_9,
      y_i => c_5,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[30], [76], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_9 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 18 and associated fundamentals [[147], [265], [301]]
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_16,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 20 and associated fundamentals [[316], [76], [6]]
  c_20_9_0_False_resize <= resize(c_9, 25);
  c_20_9_0_False_shift <= shift_left(c_20_9_0_False_resize, 0);
  c_20_19_1_False_resize <= resize(c_19, 25);
  c_20_19_1_False_shift <= shift_left(c_20_19_1_False_resize, 1);
  c_20_13_2_False_resize <= resize(c_13, 25);
  c_20_13_2_False_shift <= shift_left(c_20_13_2_False_resize, 2);
  with config_select_4 select c_20_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_9_0_False_shift;
        when "01" => c_20 <= c_20_19_1_False_shift;
        when others => c_20 <= c_20_13_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 21 and associated fundamentals [[395], [123], [41]]
  with config_select_5 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 25,
      w_o => 25,
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
      sub_i => c_21_sub_sel,
      x_i => c_14,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[5], [3], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[294], [3], [3]]
  c_24_23_0_False_resize <= resize(c_23, 25);
  c_24_23_0_False_shift <= shift_left(c_24_23_0_False_resize, 0);
  c_24_18_1_False_resize <= c_18;
  c_24_18_1_False_shift <= shift_left(c_24_18_1_False_resize, 1);
  with config_select_6 select c_24_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_0_False_shift;
        when others => c_24 <= c_24_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[207], [417], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[207], [417], [337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 27 and associated fundamentals [[708], [-831], [677]]
  with config_select_7 select c_27_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
      w_o => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_24,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[30], [76], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 29 and associated fundamentals [[30], [742], [773]]
  c_29_15_1_False_resize <= c_15;
  c_29_15_1_False_shift <= shift_left(c_29_15_1_False_resize, 1);
  c_29_15_0_False_resize <= c_15;
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  c_29_28_0_False_resize <= resize(c_28, 26);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_6 select c_29_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_15_1_False_shift;
        when "01" => c_29 <= c_29_15_0_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[1313], [183], [961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 31 and associated fundamentals [[147], [265], [961]]
  c_31_18_0_False_resize <= resize(c_18, 26);
  c_31_18_0_False_shift <= shift_left(c_31_18_0_False_resize, 0);
  c_31_30_0_False_resize <= c_30(25 downto 0);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  with config_select_6 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_18_0_False_shift;
        when others => c_31 <= c_31_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[997], [24], [768]]
  c_32_23_3_False_resize <= resize(c_23, 26);
  c_32_23_3_False_shift <= shift_left(c_32_23_3_False_resize, 3);
  c_32_15_0_False_resize <= c_15;
  c_32_15_0_False_shift <= shift_left(c_32_15_0_False_resize, 0);
  c_32_23_8_False_resize <= resize(c_23, 26);
  c_32_23_8_False_shift <= shift_left(c_32_23_8_False_resize, 8);
  with config_select_6 select c_32_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "00" => c_32 <= c_32_23_3_False_shift;
        when "01" => c_32 <= c_32_15_0_False_shift;
        when others => c_32 <= c_32_23_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[30], [76], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[30], [76], [18]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 35 and associated fundamentals [[708], [152], [677]]
  c_35_34_1_False_resize <= resize(c_34, 26);
  c_35_34_1_False_shift <= shift_left(c_35_34_1_False_resize, 1);
  c_35_27_0_False_resize <= c_27;
  c_35_27_0_False_shift <= shift_left(c_35_27_0_False_resize, 0);
  with config_select_8 select c_35_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_34_1_False_shift;
        when others => c_35 <= c_35_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 38 and associated fundamentals [[30], [742], [773]]
  c_38_resize <= c_37;
  c_38 <= shift_left(c_38_resize, 0);
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[147], [265], [961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[147], [265], [961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 41 and associated fundamentals [[147], [265], [961]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'register' in stage 7 with id 42 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 44 and associated fundamentals [[997], [24], [768]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 8 with id 45 and associated fundamentals [[708], [152], [677]]
  c_45_resize <= c_35;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[395], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[395], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[395], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 49 and associated fundamentals [[395], [123], [41]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
end architecture;
