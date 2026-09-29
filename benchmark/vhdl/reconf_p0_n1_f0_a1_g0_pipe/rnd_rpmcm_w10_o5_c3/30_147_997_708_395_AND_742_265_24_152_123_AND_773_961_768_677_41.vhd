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
  signal config_select_11: std_logic_vector(1 downto 0);
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(19 downto 0);
  signal c_1_0_4_False_resize: signed(19 downto 0);
  signal c_1_0_4_False_shift: signed(19 downto 0);
  signal c_1_0_0_False_resize: signed(19 downto 0);
  signal c_1_0_0_False_shift: signed(19 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(21 downto 0);
  signal c_4_3_1_False_resize: signed(21 downto 0);
  signal c_4_3_1_False_shift: signed(21 downto 0);
  signal c_4_3_0_False_resize: signed(21 downto 0);
  signal c_4_3_0_False_shift: signed(21 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_7_i0_resize: signed(22 downto 0);
  signal c_7_i1_resize: signed(22 downto 0);
  signal c_7_i0_shift: signed(22 downto 0);
  signal c_7_i1_shift: signed(22 downto 0);
  signal c_7_arith: signed(22 downto 0);
  signal c_7_oshift: signed(22 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(15 downto 0);
  signal c_9: signed(24 downto 0);
  signal c_9_i0_resize: signed(24 downto 0);
  signal c_9_i1_resize: signed(24 downto 0);
  signal c_9_i0_shift: signed(24 downto 0);
  signal c_9_i1_shift: signed(24 downto 0);
  signal c_9_arith: signed(24 downto 0);
  signal c_9_oshift: signed(24 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(19 downto 0);
  signal c_10_i0_resize: signed(19 downto 0);
  signal c_10_i1_resize: signed(19 downto 0);
  signal c_10_i0_shift: signed(19 downto 0);
  signal c_10_i1_shift: signed(19 downto 0);
  signal c_10_arith: signed(19 downto 0);
  signal c_10_oshift: signed(19 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(21 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_13_0_False_resize: signed(21 downto 0);
  signal c_14_13_0_False_shift: signed(21 downto 0);
  signal c_14_9_1_False_resize: signed(21 downto 0);
  signal c_14_9_1_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(21 downto 0);
  signal c_18_3_4_False_resize: signed(21 downto 0);
  signal c_18_3_4_False_shift: signed(21 downto 0);
  signal c_18_3_0_False_resize: signed(21 downto 0);
  signal c_18_3_0_False_shift: signed(21 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_17_0_False_resize: signed(23 downto 0);
  signal c_21_17_0_False_shift: signed(23 downto 0);
  signal c_21_20_0_False_resize: signed(23 downto 0);
  signal c_21_20_0_False_shift: signed(23 downto 0);
  signal c_21_17_1_False_resize: signed(23 downto 0);
  signal c_21_17_1_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(21 downto 0);
  signal c_23: signed(21 downto 0);
  signal c_24: signed(21 downto 0);
  signal c_25: signed(21 downto 0);
  signal c_26: signed(21 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_27_sub_sel: std_logic;
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_30_0_False_resize: signed(25 downto 0);
  signal c_31_30_0_False_shift: signed(25 downto 0);
  signal c_31_17_3_False_resize: signed(25 downto 0);
  signal c_31_17_3_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(19 downto 0);
  signal c_33: signed(19 downto 0);
  signal c_34: signed(19 downto 0);
  signal c_35: signed(19 downto 0);
  signal c_36: signed(19 downto 0);
  signal c_37: signed(19 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_39_sub_sel: std_logic;
  signal c_40: signed(15 downto 0);
  signal c_41: signed(15 downto 0);
  signal c_42: signed(15 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_27_0_False_resize: signed(25 downto 0);
  signal c_45_27_0_False_shift: signed(25 downto 0);
  signal c_45_44_2_False_resize: signed(25 downto 0);
  signal c_45_44_2_False_shift: signed(25 downto 0);
  signal c_45_42_5_False_resize: signed(25 downto 0);
  signal c_45_42_5_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(1 downto 0);
  signal c_46: signed(19 downto 0);
  signal c_46_3_2_False_resize: signed(19 downto 0);
  signal c_46_3_2_False_shift: signed(19 downto 0);
  signal c_46_32_0_False_resize: signed(19 downto 0);
  signal c_46_32_0_False_shift: signed(19 downto 0);
  signal c_46_sel: std_logic_vector(0 downto 0);
  signal c_47: signed(19 downto 0);
  signal c_48: signed(19 downto 0);
  signal c_49: signed(19 downto 0);
  signal c_50: signed(19 downto 0);
  signal c_51: signed(19 downto 0);
  signal c_52: signed(19 downto 0);
  signal c_53: signed(19 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_i0_resize: signed(25 downto 0);
  signal c_54_i1_resize: signed(25 downto 0);
  signal c_54_i0_shift: signed(25 downto 0);
  signal c_54_i1_shift: signed(25 downto 0);
  signal c_54_arith: signed(25 downto 0);
  signal c_54_oshift: signed(25 downto 0);
  signal c_54_sub_sel: std_logic;
  signal c_55: signed(19 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_55_1_False_resize: signed(25 downto 0);
  signal c_56_55_1_False_shift: signed(25 downto 0);
  signal c_56_27_0_False_resize: signed(25 downto 0);
  signal c_56_27_0_False_shift: signed(25 downto 0);
  signal c_56_sel: std_logic_vector(0 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_39_0_False_resize: signed(25 downto 0);
  signal c_57_39_0_False_shift: signed(25 downto 0);
  signal c_57_44_0_False_resize: signed(25 downto 0);
  signal c_57_44_0_False_shift: signed(25 downto 0);
  signal c_57_sel: std_logic_vector(0 downto 0);
  signal c_58: signed(21 downto 0);
  signal c_59: signed(21 downto 0);
  signal c_60: signed(21 downto 0);
  signal c_61: signed(21 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_61_8_False_resize: signed(25 downto 0);
  signal c_62_61_8_False_shift: signed(25 downto 0);
  signal c_62_39_0_False_resize: signed(25 downto 0);
  signal c_62_39_0_False_shift: signed(25 downto 0);
  signal c_62_sel: std_logic_vector(0 downto 0);
  signal c_63: signed(23 downto 0);
  signal c_64: signed(23 downto 0);
  signal c_65: signed(24 downto 0);
  signal c_65_27_0_False_resize: signed(24 downto 0);
  signal c_65_27_0_False_shift: signed(24 downto 0);
  signal c_65_64_0_False_resize: signed(24 downto 0);
  signal c_65_64_0_False_shift: signed(24 downto 0);
  signal c_65_sel: std_logic_vector(0 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_67_resize: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_69_resize: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_resize: signed(25 downto 0);
  signal c_72: signed(25 downto 0);
  signal c_72_resize: signed(25 downto 0);
  signal c_73: signed(24 downto 0);
  signal c_74: signed(24 downto 0);
  signal c_74_resize: signed(24 downto 0);
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
      config_select_13 <= config_select_12;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 67
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_67);
    end if;
  end process;
  -- output node 1 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_69);
    end if;
  end process;
  -- output node 2 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_71);
    end if;
  end process;
  -- output node 3 with id 72
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_72);
    end if;
  end process;
  -- output node 4 with id 74
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_74);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[16], [16], [1]]
  c_1_0_4_False_resize <= resize(c_0, 20);
  c_1_0_4_False_shift <= shift_left(c_1_0_4_False_resize, 4);
  c_1_0_0_False_resize <= resize(c_0, 20);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_4_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[33], [31], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 16,
      w_o => 22,
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[33], [62], [3]]
  c_4_3_1_False_resize <= c_3;
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_0_False_resize <= c_3;
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_1_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[37], [66], [1]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 23,
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
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_4,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 9 and associated fundamentals [[147], [265], [5]]
  with config_select_5 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
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
      sub_i => c_9_sub_sel,
      x_i => c_7,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 10 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 20,
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
      x_i => c_0,
      y_i => c_0,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 14 and associated fundamentals [[33], [31], [10]]
  c_14_13_0_False_resize <= c_13;
  c_14_13_0_False_shift <= shift_left(c_14_13_0_False_resize, 0);
  c_14_9_1_False_resize <= c_9(21 downto 0);
  c_14_9_1_False_shift <= shift_left(c_14_9_1_False_resize, 1);
  with config_select_6 select c_14_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_13_0_False_shift;
        when others => c_14 <= c_14_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 17 and associated fundamentals [[133], [123], [41]]
  with config_select_7 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
      w_o => 24,
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
      sub_i => c_17_sub_sel,
      x_i => c_14,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[33], [31], [48]]
  c_18_3_4_False_resize <= c_3;
  c_18_3_4_False_shift <= shift_left(c_18_3_4_False_resize, 4);
  c_18_3_0_False_resize <= c_3;
  c_18_3_0_False_shift <= shift_left(c_18_3_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_3_4_False_shift;
        when others => c_18 <= c_18_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 19 and associated fundamentals [[147], [265], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 20 and associated fundamentals [[147], [265], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 21 and associated fundamentals [[133], [246], [5]]
  c_21_17_0_False_resize <= c_17;
  c_21_17_0_False_shift <= shift_left(c_21_17_0_False_resize, 0);
  c_21_20_0_False_resize <= c_20(23 downto 0);
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  c_21_17_1_False_resize <= c_17;
  c_21_17_1_False_shift <= shift_left(c_21_17_1_False_resize, 1);
  with config_select_8 select c_21_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_17_0_False_shift;
        when "01" => c_21 <= c_21_20_0_False_shift;
        when others => c_21 <= c_21_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[33], [31], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[33], [31], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[33], [31], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[33], [31], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[33], [31], [48]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 27 and associated fundamentals [[395], [742], [773]]
  with config_select_9 select c_27_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_27_sub_sel,
      x_i => c_26,
      y_i => c_21,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[37], [66], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[37], [66], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[37], [66], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 31 and associated fundamentals [[37], [984], [1]]
  c_31_30_0_False_resize <= resize(c_30, 26);
  c_31_30_0_False_shift <= shift_left(c_31_30_0_False_resize, 0);
  c_31_17_3_False_resize <= resize(c_17, 26);
  c_31_17_3_False_shift <= shift_left(c_31_17_3_False_resize, 3);
  with config_select_8 select c_31_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_30_0_False_shift;
        when others => c_31 <= c_31_17_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 32 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 33 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 39 and associated fundamentals [[997], [24], [961]]
  with config_select_9 select c_39_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 6,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_39_sub_sel,
      x_i => c_31,
      y_i => c_38,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 43 and associated fundamentals [[147], [265], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 44 and associated fundamentals [[147], [265], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 45 and associated fundamentals [[588], [32], [773]]
  c_45_27_0_False_resize <= c_27;
  c_45_27_0_False_shift <= shift_left(c_45_27_0_False_resize, 0);
  c_45_44_2_False_resize <= resize(c_44, 26);
  c_45_44_2_False_shift <= shift_left(c_45_44_2_False_resize, 2);
  c_45_42_5_False_resize <= resize(c_42, 26);
  c_45_42_5_False_shift <= shift_left(c_45_42_5_False_resize, 5);
  with config_select_10 select c_45_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "00" => c_45 <= c_45_27_0_False_shift;
        when "01" => c_45 <= c_45_44_2_False_shift;
        when others => c_45 <= c_45_42_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 46 and associated fundamentals [[15], [15], [12]]
  c_46_3_2_False_resize <= c_3(19 downto 0);
  c_46_3_2_False_shift <= shift_left(c_46_3_2_False_resize, 2);
  c_46_32_0_False_resize <= c_32;
  c_46_32_0_False_shift <= shift_left(c_46_32_0_False_resize, 0);
  with config_select_3 select c_46_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "0" => c_46 <= c_46_3_2_False_shift;
        when others => c_46 <= c_46_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 47 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 48 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 49 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 50 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[15], [15], [12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 54 and associated fundamentals [[708], [152], [677]]
  with config_select_11 select c_54_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_54: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 20,
      w_o => 26,
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
      sub_i => c_54_sub_sel,
      x_i => c_45,
      y_i => c_53,
      z_o => c_54_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_54_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 56 and associated fundamentals [[30], [742], [773]]
  c_56_55_1_False_resize <= resize(c_55, 26);
  c_56_55_1_False_shift <= shift_left(c_56_55_1_False_resize, 1);
  c_56_27_0_False_resize <= c_27;
  c_56_27_0_False_shift <= shift_left(c_56_27_0_False_resize, 0);
  with config_select_10 select c_56_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "0" => c_56 <= c_56_55_1_False_shift;
        when others => c_56 <= c_56_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 57 and associated fundamentals [[147], [265], [961]]
  c_57_39_0_False_resize <= c_39;
  c_57_39_0_False_shift <= shift_left(c_57_39_0_False_resize, 0);
  c_57_44_0_False_resize <= resize(c_44, 26);
  c_57_44_0_False_shift <= shift_left(c_57_44_0_False_resize, 0);
  with config_select_10 select c_57_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_57_sel is
        when "0" => c_57 <= c_57_39_0_False_shift;
        when others => c_57 <= c_57_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 58 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 59 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_59 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[33], [31], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 62 and associated fundamentals [[997], [24], [768]]
  c_62_61_8_False_resize <= resize(c_61, 26);
  c_62_61_8_False_shift <= shift_left(c_62_61_8_False_resize, 8);
  c_62_39_0_False_resize <= c_39;
  c_62_39_0_False_shift <= shift_left(c_62_39_0_False_resize, 0);
  with config_select_10 select c_62_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_62_sel is
        when "0" => c_62 <= c_62_61_8_False_shift;
        when others => c_62 <= c_62_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 63 and associated fundamentals [[133], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[133], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 65 and associated fundamentals [[395], [123], [41]]
  c_65_27_0_False_resize <= c_27(24 downto 0);
  c_65_27_0_False_shift <= shift_left(c_65_27_0_False_resize, 0);
  c_65_64_0_False_resize <= resize(c_64, 25);
  c_65_64_0_False_shift <= shift_left(c_65_64_0_False_resize, 0);
  with config_select_10 select c_65_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_65_sel is
        when "0" => c_65 <= c_65_27_0_False_shift;
        when others => c_65 <= c_65_64_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 66 and associated fundamentals [[30], [742], [773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_56 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 67 and associated fundamentals [[30], [742], [773]]
  c_67_resize <= c_66;
  c_67 <= shift_left(c_67_resize, 0);
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[147], [265], [961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 69 and associated fundamentals [[147], [265], [961]]
  c_69_resize <= c_68;
  c_69 <= shift_left(c_69_resize, 0);
  -- node of type 'register' in stage 11 with id 70 and associated fundamentals [[997], [24], [768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_70 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 71 and associated fundamentals [[997], [24], [768]]
  c_71_resize <= c_70;
  c_71 <= shift_left(c_71_resize, 0);
  -- node of type 'output' in stage 11 with id 72 and associated fundamentals [[708], [152], [677]]
  c_72_resize <= c_54;
  c_72 <= shift_left(c_72_resize, 0);
  -- node of type 'register' in stage 11 with id 73 and associated fundamentals [[395], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_73 <= c_65 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 74 and associated fundamentals [[395], [123], [41]]
  c_74_resize <= c_73;
  c_74 <= shift_left(c_74_resize, 0);
end architecture;
