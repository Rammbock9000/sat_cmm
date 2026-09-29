library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(24 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(21 downto 0);
  signal c_1_i0_resize: signed(21 downto 0);
  signal c_1_i1_resize: signed(21 downto 0);
  signal c_1_i0_shift: signed(21 downto 0);
  signal c_1_i1_shift: signed(21 downto 0);
  signal c_1_arith: signed(21 downto 0);
  signal c_1_oshift: signed(21 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_i0_resize: signed(20 downto 0);
  signal c_4_i1_resize: signed(20 downto 0);
  signal c_4_i0_shift: signed(20 downto 0);
  signal c_4_i1_shift: signed(20 downto 0);
  signal c_4_arith: signed(20 downto 0);
  signal c_4_oshift: signed(20 downto 0);
  signal c_5: signed(16 downto 0);
  signal c_5_0_0_False_resize: signed(16 downto 0);
  signal c_5_0_0_False_shift: signed(16 downto 0);
  signal c_5_0_1_False_resize: signed(16 downto 0);
  signal c_5_0_1_False_shift: signed(16 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_7_4_0_False_resize: signed(20 downto 0);
  signal c_7_4_0_False_shift: signed(20 downto 0);
  signal c_7_1_0_False_resize: signed(20 downto 0);
  signal c_7_1_0_False_shift: signed(20 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(21 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_8_1_False_resize: signed(22 downto 0);
  signal c_9_8_1_False_shift: signed(22 downto 0);
  signal c_9_3_0_False_resize: signed(22 downto 0);
  signal c_9_3_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_11_i0_resize: signed(23 downto 0);
  signal c_11_i1_resize: signed(23 downto 0);
  signal c_11_i0_shift: signed(23 downto 0);
  signal c_11_i1_shift: signed(23 downto 0);
  signal c_11_arith: signed(23 downto 0);
  signal c_11_oshift: signed(23 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(20 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_17_6_0_False_resize: signed(21 downto 0);
  signal c_17_6_0_False_shift: signed(21 downto 0);
  signal c_17_16_1_False_resize: signed(21 downto 0);
  signal c_17_16_1_False_shift: signed(21 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_20: signed(21 downto 0);
  signal c_20_1_0_False_resize: signed(21 downto 0);
  signal c_20_1_0_False_shift: signed(21 downto 0);
  signal c_20_2_2_False_resize: signed(21 downto 0);
  signal c_20_2_2_False_shift: signed(21 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_21_i0_resize: signed(22 downto 0);
  signal c_21_i1_resize: signed(22 downto 0);
  signal c_21_i0_shift: signed(22 downto 0);
  signal c_21_i1_shift: signed(22 downto 0);
  signal c_21_arith: signed(22 downto 0);
  signal c_21_oshift: signed(22 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(21 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_23_2_False_resize: signed(25 downto 0);
  signal c_24_23_2_False_shift: signed(25 downto 0);
  signal c_24_15_0_False_resize: signed(25 downto 0);
  signal c_24_15_0_False_shift: signed(25 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(20 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_29_21_0_False_resize: signed(22 downto 0);
  signal c_29_21_0_False_shift: signed(22 downto 0);
  signal c_29_28_1_False_resize: signed(22 downto 0);
  signal c_29_28_1_False_shift: signed(22 downto 0);
  signal c_29_18_0_False_resize: signed(22 downto 0);
  signal c_29_18_0_False_shift: signed(22 downto 0);
  signal c_29_sel: std_logic_vector(1 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_32_i0_resize: signed(24 downto 0);
  signal c_32_i1_resize: signed(24 downto 0);
  signal c_32_i0_shift: signed(24 downto 0);
  signal c_32_i1_shift: signed(24 downto 0);
  signal c_32_arith: signed(24 downto 0);
  signal c_32_oshift: signed(24 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(25 downto 0);
  signal c_33_19_0_False_resize: signed(25 downto 0);
  signal c_33_19_0_False_shift: signed(25 downto 0);
  signal c_33_19_1_False_resize: signed(25 downto 0);
  signal c_33_19_1_False_shift: signed(25 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(20 downto 0);
  signal c_35: signed(20 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_35_2_False_resize: signed(25 downto 0);
  signal c_36_35_2_False_shift: signed(25 downto 0);
  signal c_36_15_0_False_resize: signed(25 downto 0);
  signal c_36_15_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(24 downto 0);
  signal c_37_21_2_False_resize: signed(24 downto 0);
  signal c_37_21_2_False_shift: signed(24 downto 0);
  signal c_37_21_0_False_resize: signed(24 downto 0);
  signal c_37_21_0_False_shift: signed(24 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_resize: signed(25 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_resize: signed(24 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_resize: signed(24 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 40
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_40);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
    end if;
  end process;
  -- output node 2 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 3 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 4 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_50);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[34], [34], [30]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
      c_1 <= c_1_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[26], [26], [38]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 4 and associated fundamentals [[31], [31], [31]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 5,
      s_y_i => 0,
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
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[2], [1], [2]]
  c_5_0_0_False_resize <= resize(c_0, 17);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  c_5_0_1_False_resize <= resize(c_0, 17);
  c_5_0_1_False_shift <= shift_left(c_5_0_1_False_resize, 1);
  with config_select_1 select c_5_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_0_0_False_shift;
        when others => c_5 <= c_5_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[35], [29], [35]]
  with config_select_2 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 17,
      w_o => 22,
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
      sub_i => c_6_sub_sel,
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 7 and associated fundamentals [[31], [31], [30]]
  c_7_4_0_False_resize <= c_4;
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_1_0_False_resize <= c_1(20 downto 0);
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_2 select c_7_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_4_0_False_shift;
        when others => c_7 <= c_7_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[34], [34], [30]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[26], [68], [38]]
  c_9_8_1_False_resize <= resize(c_8, 23);
  c_9_8_1_False_shift <= shift_left(c_9_8_1_False_resize, 1);
  c_9_3_0_False_resize <= resize(c_3, 23);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_1_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[31], [31], [30]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_7 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 11 and associated fundamentals [[222], [180], [202]]
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_10,
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[889], [719], [809]]
  with config_select_5 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
      x_i => c_11,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 16 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 17 and associated fundamentals [[35], [29], [62]]
  c_17_6_0_False_resize <= c_6;
  c_17_6_0_False_shift <= shift_left(c_17_6_0_False_resize, 0);
  c_17_16_1_False_resize <= resize(c_16, 22);
  c_17_16_1_False_shift <= shift_left(c_17_16_1_False_resize, 1);
  with config_select_3 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_6_0_False_shift;
        when others => c_17 <= c_17_16_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[26], [26], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_3 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 19 and associated fundamentals [[381], [387], [546]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 26,
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
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[34], [34], [4]]
  c_20_1_0_False_resize <= c_1;
  c_20_1_0_False_shift <= shift_left(c_20_1_0_False_resize, 0);
  c_20_2_2_False_resize <= resize(c_2, 22);
  c_20_2_2_False_shift <= shift_left(c_20_2_2_False_resize, 2);
  with config_select_2 select c_20_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_1_0_False_shift;
        when others => c_20 <= c_20_2_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 21 and associated fundamentals [[86], [86], [72]]
  with config_select_3 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[26], [26], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[26], [26], [38]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[889], [719], [152]]
  c_24_23_2_False_resize <= resize(c_23, 26);
  c_24_23_2_False_shift <= shift_left(c_24_23_2_False_resize, 2);
  c_24_15_0_False_resize <= c_15;
  c_24_15_0_False_shift <= shift_left(c_24_15_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_23_2_False_shift;
        when others => c_24 <= c_24_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 27 and associated fundamentals [[887], [717], [154]]
  with config_select_7 select c_27_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 16,
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
  -- node of type 'register' in stage 3 with id 28 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[86], [26], [62]]
  c_29_21_0_False_resize <= c_21;
  c_29_21_0_False_shift <= shift_left(c_29_21_0_False_resize, 0);
  c_29_28_1_False_resize <= resize(c_28, 23);
  c_29_28_1_False_shift <= shift_left(c_29_28_1_False_resize, 1);
  c_29_18_0_False_resize <= resize(c_18, 23);
  c_29_18_0_False_shift <= shift_left(c_29_18_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "00" => c_29 <= c_29_21_0_False_shift;
        when "01" => c_29 <= c_29_28_1_False_shift;
        when others => c_29 <= c_29_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[35], [29], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[35], [29], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 32 and associated fundamentals [[379], [133], [213]]
  with config_select_5 select c_32_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
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
      sub_i => c_32_sub_sel,
      x_i => c_29,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 33 and associated fundamentals [[381], [774], [546]]
  c_33_19_0_False_resize <= c_19;
  c_33_19_0_False_shift <= shift_left(c_33_19_0_False_resize, 0);
  c_33_19_1_False_resize <= c_19;
  c_33_19_1_False_shift <= shift_left(c_33_19_1_False_resize, 1);
  with config_select_5 select c_33_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_19_0_False_shift;
        when others => c_33 <= c_33_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 36 and associated fundamentals [[124], [719], [809]]
  c_36_35_2_False_resize <= resize(c_35, 26);
  c_36_35_2_False_shift <= shift_left(c_36_35_2_False_resize, 2);
  c_36_15_0_False_resize <= c_15;
  c_36_15_0_False_shift <= shift_left(c_36_15_0_False_resize, 0);
  with config_select_6 select c_36_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_2_False_shift;
        when others => c_36 <= c_36_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 37 and associated fundamentals [[86], [344], [288]]
  c_37_21_2_False_resize <= resize(c_21, 25);
  c_37_21_2_False_shift <= shift_left(c_37_21_2_False_resize, 2);
  c_37_21_0_False_resize <= resize(c_21, 25);
  c_37_21_0_False_shift <= shift_left(c_37_21_0_False_resize, 0);
  with config_select_4 select c_37_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_21_2_False_shift;
        when others => c_37 <= c_37_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 39 and associated fundamentals [[381], [774], [546]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 40 and associated fundamentals [[381], [774], [546]]
  c_40_resize <= c_39;
  c_40 <= shift_left(c_40_resize, 0);
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[124], [719], [809]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_36 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 42 and associated fundamentals [[124], [719], [809]]
  c_42_resize <= c_41;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'register' in stage 5 with id 43 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[86], [344], [288]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 46 and associated fundamentals [[86], [344], [288]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'output' in stage 7 with id 47 and associated fundamentals [[887], [717], [154]]
  c_47_resize <= c_27;
  c_47 <= shift_left(c_47_resize, 0);
  -- node of type 'register' in stage 6 with id 48 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[379], [133], [213]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 50 and associated fundamentals [[379], [133], [213]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
end architecture;
