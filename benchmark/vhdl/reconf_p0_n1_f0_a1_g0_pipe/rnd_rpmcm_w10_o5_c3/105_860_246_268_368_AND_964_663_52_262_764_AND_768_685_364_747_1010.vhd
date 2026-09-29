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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_7_0_False_resize: signed(20 downto 0);
  signal c_8_7_0_False_shift: signed(20 downto 0);
  signal c_8_6_0_False_resize: signed(20 downto 0);
  signal c_8_6_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_10_9_0_False_resize: signed(20 downto 0);
  signal c_10_9_0_False_shift: signed(20 downto 0);
  signal c_10_3_0_False_resize: signed(20 downto 0);
  signal c_10_3_0_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(24 downto 0);
  signal c_11_i0_resize: signed(24 downto 0);
  signal c_11_i1_resize: signed(24 downto 0);
  signal c_11_i0_shift: signed(24 downto 0);
  signal c_11_i1_shift: signed(24 downto 0);
  signal c_11_arith: signed(24 downto 0);
  signal c_11_oshift: signed(24 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_12_6_3_False_resize: signed(22 downto 0);
  signal c_12_6_3_False_shift: signed(22 downto 0);
  signal c_12_3_0_False_resize: signed(22 downto 0);
  signal c_12_3_0_False_shift: signed(22 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(20 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_14_0_False_resize: signed(23 downto 0);
  signal c_17_14_0_False_shift: signed(23 downto 0);
  signal c_17_14_1_False_resize: signed(23 downto 0);
  signal c_17_14_1_False_shift: signed(23 downto 0);
  signal c_17_16_5_False_resize: signed(23 downto 0);
  signal c_17_16_5_False_shift: signed(23 downto 0);
  signal c_17_sel: std_logic_vector(1 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_19: signed(20 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_20_14_2_False_resize: signed(24 downto 0);
  signal c_20_14_2_False_shift: signed(24 downto 0);
  signal c_20_19_0_False_resize: signed(24 downto 0);
  signal c_20_19_0_False_shift: signed(24 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_27: signed(20 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_25_0_False_resize: signed(24 downto 0);
  signal c_28_25_0_False_shift: signed(24 downto 0);
  signal c_28_21_0_False_resize: signed(24 downto 0);
  signal c_28_21_0_False_shift: signed(24 downto 0);
  signal c_28_27_3_False_resize: signed(24 downto 0);
  signal c_28_27_3_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_33_i0_resize: signed(24 downto 0);
  signal c_33_i1_resize: signed(24 downto 0);
  signal c_33_i0_shift: signed(24 downto 0);
  signal c_33_i1_shift: signed(24 downto 0);
  signal c_33_arith: signed(24 downto 0);
  signal c_33_oshift: signed(24 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_16_4_False_resize: signed(24 downto 0);
  signal c_34_16_4_False_shift: signed(24 downto 0);
  signal c_34_11_0_False_resize: signed(24 downto 0);
  signal c_34_11_0_False_shift: signed(24 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_38_0_False_resize: signed(24 downto 0);
  signal c_39_38_0_False_shift: signed(24 downto 0);
  signal c_39_33_1_False_resize: signed(24 downto 0);
  signal c_39_33_1_False_shift: signed(24 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(25 downto 0);
  signal c_44_i1_resize: signed(25 downto 0);
  signal c_44_i0_shift: signed(25 downto 0);
  signal c_44_i1_shift: signed(25 downto 0);
  signal c_44_arith: signed(25 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(25 downto 0);
  signal c_45_16_5_False_resize: signed(25 downto 0);
  signal c_45_16_5_False_shift: signed(25 downto 0);
  signal c_45_14_0_False_resize: signed(25 downto 0);
  signal c_45_14_0_False_shift: signed(25 downto 0);
  signal c_45_11_2_False_resize: signed(25 downto 0);
  signal c_45_11_2_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_46_11_0_False_resize: signed(24 downto 0);
  signal c_46_11_0_False_shift: signed(24 downto 0);
  signal c_46_19_1_False_resize: signed(24 downto 0);
  signal c_46_19_1_False_shift: signed(24 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_56: signed(24 downto 0);
  signal c_57: signed(24 downto 0);
  signal c_58: signed(24 downto 0);
  signal c_59: signed(24 downto 0);
  signal c_59_resize: signed(24 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_resize: signed(25 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_66: signed(24 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_resize: signed(25 downto 0);
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
      config_select_12 <= config_select_11;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 1 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 2 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 3 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_64);
    end if;
  end process;
  -- output node 4 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_67);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[8], [24], [24]]
  with config_select_1 select c_1_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
      s_x_i => 4,
      s_y_i => 3,
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
      c_1 <= c_1_oshift(20 downto 0);
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[6], [26], [20]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 17,
      w_o => 21,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [4]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 6 and associated fundamentals [[15], [15], [63]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 22,
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
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[8], [24], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 8 and associated fundamentals [[15], [15], [24]]
  c_8_7_0_False_resize <= c_7;
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_6_0_False_resize <= c_6(20 downto 0);
  c_8_6_0_False_shift <= shift_left(c_8_6_0_False_resize, 0);
  with config_select_3 select c_8_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_0_False_shift;
        when others => c_8 <= c_8_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[6], [1], [20]]
  c_10_9_0_False_resize <= resize(c_9, 21);
  c_10_9_0_False_shift <= shift_left(c_10_9_0_False_resize, 0);
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  with config_select_3 select c_10_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_9_0_False_shift;
        when others => c_10 <= c_10_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[246], [241], [364]]
  with config_select_4 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 21,
      w_o => 25,
      s_x_i => 4,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_11_sub_sel,
      x_i => c_8,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[120], [120], [20]]
  c_12_6_3_False_resize <= resize(c_6, 23);
  c_12_6_3_False_shift <= shift_left(c_12_6_3_False_resize, 3);
  c_12_3_0_False_resize <= resize(c_3, 23);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_6_3_False_shift;
        when others => c_12 <= c_12_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[15], [15], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 14 and associated fundamentals [[105], [105], [83]]
  with config_select_4 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[8], [24], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[8], [24], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 17 and associated fundamentals [[256], [210], [83]]
  c_17_14_0_False_resize <= resize(c_14, 24);
  c_17_14_0_False_shift <= shift_left(c_17_14_0_False_resize, 0);
  c_17_14_1_False_resize <= resize(c_14, 24);
  c_17_14_1_False_shift <= shift_left(c_17_14_1_False_resize, 1);
  c_17_16_5_False_resize <= resize(c_16, 24);
  c_17_16_5_False_shift <= shift_left(c_17_16_5_False_resize, 5);
  with config_select_5 select c_17_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "00" => c_17 <= c_17_14_0_False_shift;
        when "01" => c_17 <= c_17_14_1_False_shift;
        when others => c_17 <= c_17_16_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[6], [26], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[6], [26], [20]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[6], [26], [332]]
  c_20_14_2_False_resize <= resize(c_14, 25);
  c_20_14_2_False_shift <= shift_left(c_20_14_2_False_resize, 2);
  c_20_19_0_False_resize <= resize(c_19, 25);
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_14_2_False_shift;
        when others => c_20 <= c_20_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 21 and associated fundamentals [[268], [262], [747]]
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 25,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_17,
      y_i => c_20,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 22 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 23 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[8], [24], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[8], [24], [24]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[64], [262], [1]]
  c_28_25_0_False_resize <= resize(c_25, 25);
  c_28_25_0_False_shift <= shift_left(c_28_25_0_False_resize, 0);
  c_28_21_0_False_resize <= c_21(24 downto 0);
  c_28_21_0_False_shift <= shift_left(c_28_21_0_False_resize, 0);
  c_28_27_3_False_resize <= resize(c_27, 25);
  c_28_27_3_False_shift <= shift_left(c_28_27_3_False_resize, 3);
  with config_select_7 select c_28_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_25_0_False_shift;
        when "01" => c_28 <= c_28_21_0_False_shift;
        when others => c_28 <= c_28_27_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 29 and associated fundamentals [[15], [15], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[15], [15], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[15], [15], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[15], [15], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 33 and associated fundamentals [[184], [382], [505]]
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 25,
      w_o => 25,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_32,
      y_i => c_28,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[246], [384], [384]]
  c_34_16_4_False_resize <= resize(c_16, 25);
  c_34_16_4_False_shift <= shift_left(c_34_16_4_False_resize, 4);
  c_34_11_0_False_resize <= c_11;
  c_34_11_0_False_shift <= shift_left(c_34_11_0_False_resize, 0);
  with config_select_5 select c_34_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_16_4_False_shift;
        when others => c_34 <= c_34_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[105], [105], [83]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[105], [105], [83]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[105], [105], [83]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[105], [105], [83]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[368], [105], [83]]
  c_39_38_0_False_resize <= resize(c_38, 25);
  c_39_38_0_False_shift <= shift_left(c_39_38_0_False_resize, 0);
  c_39_33_1_False_resize <= c_33;
  c_39_33_1_False_shift <= shift_left(c_39_33_1_False_resize, 1);
  with config_select_9 select c_39_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_0_False_shift;
        when others => c_39 <= c_39_33_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[246], [384], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[246], [384], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[246], [384], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[246], [384], [384]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 44 and associated fundamentals [[860], [663], [685]]
  with config_select_10 select c_44_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_44_sub_sel,
      x_i => c_43,
      y_i => c_39,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 45 and associated fundamentals [[105], [964], [768]]
  c_45_16_5_False_resize <= resize(c_16, 26);
  c_45_16_5_False_shift <= shift_left(c_45_16_5_False_resize, 5);
  c_45_14_0_False_resize <= resize(c_14, 26);
  c_45_14_0_False_shift <= shift_left(c_45_14_0_False_resize, 0);
  c_45_11_2_False_resize <= resize(c_11, 26);
  c_45_11_2_False_shift <= shift_left(c_45_11_2_False_resize, 2);
  with config_select_5 select c_45_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_16_5_False_shift;
        when "01" => c_45 <= c_45_14_0_False_shift;
        when others => c_45 <= c_45_11_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 46 and associated fundamentals [[246], [52], [364]]
  c_46_11_0_False_resize <= c_11;
  c_46_11_0_False_shift <= shift_left(c_46_11_0_False_resize, 0);
  c_46_19_1_False_resize <= resize(c_19, 25);
  c_46_19_1_False_shift <= shift_left(c_46_19_1_False_resize, 1);
  with config_select_5 select c_46_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_11_0_False_shift;
        when others => c_46 <= c_46_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 47 and associated fundamentals [[105], [964], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[105], [964], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[105], [964], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[105], [964], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[105], [964], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 52 and associated fundamentals [[105], [964], [768]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 10 with id 53 and associated fundamentals [[860], [663], [685]]
  c_53_resize <= c_44;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'register' in stage 6 with id 54 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 55 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[246], [52], [364]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 59 and associated fundamentals [[246], [52], [364]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 7 with id 60 and associated fundamentals [[268], [262], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[268], [262], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[268], [262], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[268], [262], [747]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 64 and associated fundamentals [[268], [262], [747]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
  -- node of type 'register' in stage 9 with id 65 and associated fundamentals [[184], [382], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 66 and associated fundamentals [[184], [382], [505]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_65 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 67 and associated fundamentals [[368], [764], [1010]]
  c_67_resize <= resize(c_66, 26);
  c_67 <= shift_left(c_67_resize, 1);
end architecture;
