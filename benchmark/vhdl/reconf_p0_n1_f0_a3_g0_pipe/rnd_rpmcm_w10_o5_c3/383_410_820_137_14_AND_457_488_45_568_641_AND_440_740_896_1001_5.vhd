library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(24 downto 0);
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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(23 downto 0);
  signal c_1_i0_resize: signed(23 downto 0);
  signal c_1_i1_resize: signed(23 downto 0);
  signal c_1_i0_shift: signed(23 downto 0);
  signal c_1_i1_shift: signed(23 downto 0);
  signal c_1_arith: signed(23 downto 0);
  signal c_1_oshift: signed(23 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(19 downto 0);
  signal c_2_i0_resize: signed(19 downto 0);
  signal c_2_i1_resize: signed(19 downto 0);
  signal c_2_i0_shift: signed(19 downto 0);
  signal c_2_i1_shift: signed(19 downto 0);
  signal c_2_arith: signed(19 downto 0);
  signal c_2_oshift: signed(19 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_4_0_False_resize: signed(19 downto 0);
  signal c_5_4_0_False_shift: signed(19 downto 0);
  signal c_5_2_0_False_resize: signed(19 downto 0);
  signal c_5_2_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(21 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(21 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(15 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(23 downto 0);
  signal c_11_1_0_False_resize: signed(23 downto 0);
  signal c_11_1_0_False_shift: signed(23 downto 0);
  signal c_11_4_0_False_resize: signed(23 downto 0);
  signal c_11_4_0_False_shift: signed(23 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(25 downto 0);
  signal c_12_i0_resize: signed(25 downto 0);
  signal c_12_i1_resize: signed(25 downto 0);
  signal c_12_i0_shift: signed(25 downto 0);
  signal c_12_i1_shift: signed(25 downto 0);
  signal c_12_arith: signed(25 downto 0);
  signal c_12_oshift: signed(25 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_15: signed(24 downto 0);
  signal c_15_10_0_False_resize: signed(24 downto 0);
  signal c_15_10_0_False_shift: signed(24 downto 0);
  signal c_15_14_3_False_resize: signed(24 downto 0);
  signal c_15_14_3_False_shift: signed(24 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(15 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(21 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(20 downto 0);
  signal c_25: signed(20 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_20_0_False_resize: signed(23 downto 0);
  signal c_27_20_0_False_shift: signed(23 downto 0);
  signal c_27_26_0_False_resize: signed(23 downto 0);
  signal c_27_26_0_False_shift: signed(23 downto 0);
  signal c_27_18_1_False_resize: signed(23 downto 0);
  signal c_27_18_1_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(1 downto 0);
  signal c_28: signed(19 downto 0);
  signal c_29: signed(19 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(19 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_35_2_False_resize: signed(24 downto 0);
  signal c_37_35_2_False_shift: signed(24 downto 0);
  signal c_37_36_0_False_resize: signed(24 downto 0);
  signal c_37_36_0_False_shift: signed(24 downto 0);
  signal c_37_10_0_False_resize: signed(24 downto 0);
  signal c_37_10_0_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(1 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_38_6_False_resize: signed(25 downto 0);
  signal c_41_38_6_False_shift: signed(25 downto 0);
  signal c_41_40_0_False_resize: signed(25 downto 0);
  signal c_41_40_0_False_shift: signed(25 downto 0);
  signal c_41_34_1_False_resize: signed(25 downto 0);
  signal c_41_34_1_False_shift: signed(25 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_12_0_False_resize: signed(25 downto 0);
  signal c_42_12_0_False_shift: signed(25 downto 0);
  signal c_42_29_0_False_resize: signed(25 downto 0);
  signal c_42_29_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_47_resize: signed(24 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
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
      config_select_11 <= config_select_10;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 2 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 3 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 4 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_59);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[96], [160], [96]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 5,
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
      c_1 <= c_1_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 2 and associated fundamentals [[14], [14], [14]]
  inst_adder_node_2: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
      s_x_i => 4,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_0,
      y_i => c_0,
      z_o => c_2_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_2_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 1 with id 3 and associated fundamentals [[20], [20], [20]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
      s_y_i => 2,
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
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 5 and associated fundamentals [[1], [14], [14]]
  c_5_4_0_False_resize <= resize(c_4, 20);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_2_0_False_resize <= c_2;
  c_5_2_0_False_shift <= shift_left(c_5_2_0_False_resize, 0);
  with config_select_2 select c_5_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 7 and associated fundamentals [[10], [114], [110]]
  with config_select_3 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_5,
      y_i => c_6,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 8 and associated fundamentals [[19], [45], [29]]
  with config_select_2 select c_8_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 22,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 2,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_8_sub_sel,
      x_i => c_1,
      y_i => c_3,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[41], [457], [439]]
  with config_select_4 select c_10_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 25,
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
      sub_i => c_10_sub_sel,
      x_i => c_7,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[96], [160], [1]]
  c_11_1_0_False_resize <= c_1;
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  c_11_4_0_False_resize <= resize(c_4, 24);
  c_11_4_0_False_shift <= shift_left(c_11_4_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_1_0_False_shift;
        when others => c_11 <= c_11_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 12 and associated fundamentals [[383], [641], [5]]
  with config_select_3 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 16,
      w_o => 26,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_6,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[19], [45], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[19], [45], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[41], [360], [439]]
  c_15_10_0_False_resize <= c_10;
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  c_15_14_3_False_resize <= resize(c_14, 25);
  c_15_14_3_False_shift <= shift_left(c_15_14_3_False_resize, 3);
  with config_select_5 select c_15_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_10_0_False_shift;
        when others => c_15 <= c_15_14_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[471], [872], [73]]
  with config_select_6 select c_18_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 9,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_18_sub_sel,
      x_i => c_17,
      y_i => c_15,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[19], [45], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[19], [45], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 21 and associated fundamentals [[137], [568], [1001]]
  with config_select_7 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 26,
      w_o => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_18,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 22 and associated fundamentals [[20], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[20], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[20], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[20], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[20], [20], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 27 and associated fundamentals [[19], [20], [146]]
  c_27_20_0_False_resize <= resize(c_20, 24);
  c_27_20_0_False_shift <= shift_left(c_27_20_0_False_resize, 0);
  c_27_26_0_False_resize <= resize(c_26, 24);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  c_27_18_1_False_resize <= c_18(23 downto 0);
  c_27_18_1_False_shift <= shift_left(c_27_18_1_False_resize, 1);
  with config_select_7 select c_27_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "00" => c_27 <= c_27_20_0_False_shift;
        when "01" => c_27 <= c_27_26_0_False_shift;
        when others => c_27 <= c_27_18_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 28 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 29 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[410], [488], [740]]
  with config_select_8 select c_34_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 5,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_27,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 35 and associated fundamentals [[10], [114], [110]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 36 and associated fundamentals [[383], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 37 and associated fundamentals [[383], [457], [440]]
  c_37_35_2_False_resize <= resize(c_35, 25);
  c_37_35_2_False_shift <= shift_left(c_37_35_2_False_resize, 2);
  c_37_36_0_False_resize <= c_36(24 downto 0);
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  c_37_10_0_False_resize <= c_10;
  c_37_10_0_False_shift <= shift_left(c_37_10_0_False_resize, 0);
  with config_select_5 select c_37_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "00" => c_37 <= c_37_35_2_False_shift;
        when "01" => c_37 <= c_37_36_0_False_shift;
        when others => c_37 <= c_37_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[14], [14], [14]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[19], [45], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 40 and associated fundamentals [[19], [45], [29]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 41 and associated fundamentals [[820], [45], [896]]
  c_41_38_6_False_resize <= resize(c_38, 26);
  c_41_38_6_False_shift <= shift_left(c_41_38_6_False_resize, 6);
  c_41_40_0_False_resize <= resize(c_40, 26);
  c_41_40_0_False_shift <= shift_left(c_41_40_0_False_resize, 0);
  c_41_34_1_False_resize <= c_34;
  c_41_34_1_False_shift <= shift_left(c_41_34_1_False_resize, 1);
  with config_select_9 select c_41_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_38_6_False_shift;
        when "01" => c_41 <= c_41_40_0_False_shift;
        when others => c_41 <= c_41_34_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 42 and associated fundamentals [[14], [641], [5]]
  c_42_12_0_False_resize <= c_12;
  c_42_12_0_False_shift <= shift_left(c_42_12_0_False_resize, 0);
  c_42_29_0_False_resize <= resize(c_29, 26);
  c_42_29_0_False_shift <= shift_left(c_42_29_0_False_resize, 0);
  with config_select_4 select c_42_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_12_0_False_shift;
        when others => c_42 <= c_42_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 43 and associated fundamentals [[383], [457], [440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[383], [457], [440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[383], [457], [440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[383], [457], [440]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 47 and associated fundamentals [[383], [457], [440]]
  c_47_resize <= c_46;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[410], [488], [740]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 49 and associated fundamentals [[410], [488], [740]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 9 with id 50 and associated fundamentals [[820], [45], [896]]
  c_50_resize <= c_41;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[137], [568], [1001]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[137], [568], [1001]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 53 and associated fundamentals [[137], [568], [1001]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'register' in stage 5 with id 54 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 55 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 56 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 57 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 58 and associated fundamentals [[14], [641], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 59 and associated fundamentals [[14], [641], [5]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
end architecture;
