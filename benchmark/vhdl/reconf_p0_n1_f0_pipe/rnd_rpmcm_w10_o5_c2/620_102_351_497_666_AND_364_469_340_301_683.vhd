library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(24 downto 0);
    y_2: out std_logic_vector(24 downto 0);
    y_3: out std_logic_vector(24 downto 0);
    y_4: out std_logic_vector(25 downto 0);
    clk: in std_logic
);
end entity;
architecture const_mul of const_mul is
  signal config_select_0: std_logic_vector(0 downto 0);
  signal config_select_1: std_logic_vector(0 downto 0);
  signal config_select_2: std_logic_vector(0 downto 0);
  signal config_select_3: std_logic_vector(0 downto 0);
  signal config_select_4: std_logic_vector(0 downto 0);
  signal config_select_5: std_logic_vector(0 downto 0);
  signal config_select_6: std_logic_vector(0 downto 0);
  signal config_select_7: std_logic_vector(0 downto 0);
  signal config_select_8: std_logic_vector(0 downto 0);
  signal config_select_9: std_logic_vector(0 downto 0);
  signal config_select_10: std_logic_vector(0 downto 0);
  signal config_select_11: std_logic_vector(0 downto 0);
  signal config_select_12: std_logic_vector(0 downto 0);
  signal config_select_13: std_logic_vector(0 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_i0_resize: signed(18 downto 0);
  signal c_1_i1_resize: signed(18 downto 0);
  signal c_1_i0_shift: signed(18 downto 0);
  signal c_1_i1_shift: signed(18 downto 0);
  signal c_1_arith: signed(18 downto 0);
  signal c_1_oshift: signed(18 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(22 downto 0);
  signal c_2_1_5_False_resize: signed(22 downto 0);
  signal c_2_1_5_False_shift: signed(22 downto 0);
  signal c_2_1_0_False_resize: signed(22 downto 0);
  signal c_2_1_0_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_1_3_False_resize: signed(21 downto 0);
  signal c_3_1_3_False_shift: signed(21 downto 0);
  signal c_3_1_0_False_resize: signed(21 downto 0);
  signal c_3_1_0_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_1_3_False_resize: signed(21 downto 0);
  signal c_6_1_3_False_shift: signed(21 downto 0);
  signal c_6_5_0_False_resize: signed(21 downto 0);
  signal c_6_5_0_False_shift: signed(21 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_4_0_False_resize: signed(22 downto 0);
  signal c_9_4_0_False_shift: signed(22 downto 0);
  signal c_9_8_0_False_resize: signed(22 downto 0);
  signal c_9_8_0_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(18 downto 0);
  signal c_14: signed(18 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(25 downto 0);
  signal c_18_i0_resize: signed(25 downto 0);
  signal c_18_i1_resize: signed(25 downto 0);
  signal c_18_i0_shift: signed(25 downto 0);
  signal c_18_i1_shift: signed(25 downto 0);
  signal c_18_arith: signed(25 downto 0);
  signal c_18_oshift: signed(25 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_12_2_False_resize: signed(23 downto 0);
  signal c_19_12_2_False_shift: signed(23 downto 0);
  signal c_19_12_0_False_resize: signed(23 downto 0);
  signal c_19_12_0_False_shift: signed(23 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(18 downto 0);
  signal c_21: signed(24 downto 0);
  signal c_21_18_0_False_resize: signed(24 downto 0);
  signal c_21_18_0_False_shift: signed(24 downto 0);
  signal c_21_20_7_False_resize: signed(24 downto 0);
  signal c_21_20_7_False_shift: signed(24 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(22 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_26: signed(22 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_27_23_0_False_resize: signed(24 downto 0);
  signal c_27_23_0_False_shift: signed(24 downto 0);
  signal c_27_26_0_False_resize: signed(24 downto 0);
  signal c_27_26_0_False_shift: signed(24 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_i0_resize: signed(24 downto 0);
  signal c_34_i1_resize: signed(24 downto 0);
  signal c_34_i0_shift: signed(24 downto 0);
  signal c_34_i1_shift: signed(24 downto 0);
  signal c_34_arith: signed(24 downto 0);
  signal c_34_oshift: signed(24 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(24 downto 0);
  signal c_35_30_1_False_resize: signed(24 downto 0);
  signal c_35_30_1_False_shift: signed(24 downto 0);
  signal c_35_17_0_False_resize: signed(24 downto 0);
  signal c_35_17_0_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(23 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_38_23_0_False_resize: signed(24 downto 0);
  signal c_38_23_0_False_shift: signed(24 downto 0);
  signal c_38_37_0_False_resize: signed(24 downto 0);
  signal c_38_37_0_False_shift: signed(24 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(22 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_34_0_False_resize: signed(24 downto 0);
  signal c_41_34_0_False_shift: signed(24 downto 0);
  signal c_41_40_2_False_resize: signed(24 downto 0);
  signal c_41_40_2_False_shift: signed(24 downto 0);
  signal c_41_sel: std_logic_vector(0 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_44_43_0_False_resize: signed(24 downto 0);
  signal c_44_43_0_False_shift: signed(24 downto 0);
  signal c_44_34_0_False_resize: signed(24 downto 0);
  signal c_44_34_0_False_shift: signed(24 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_18_1_False_resize: signed(25 downto 0);
  signal c_45_18_1_False_shift: signed(25 downto 0);
  signal c_45_18_0_False_resize: signed(25 downto 0);
  signal c_45_18_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(24 downto 0);
  signal c_49: signed(24 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_resize: signed(25 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_53_resize: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_resize: signed(24 downto 0);
  signal c_55: signed(24 downto 0);
  signal c_55_resize: signed(24 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_resize: signed(25 downto 0);
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
  -- output node 0 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 1 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 2 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 3 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 4 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_60);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[5], [-3]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 19,
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
  -- node of type 'mux' in stage 2 with id 2 and associated fundamentals [[5], [-96]]
  c_2_1_5_False_resize <= resize(c_1, 23);
  c_2_1_5_False_shift <= shift_left(c_2_1_5_False_resize, 5);
  c_2_1_0_False_resize <= resize(c_1, 23);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_2 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_1_5_False_shift;
        when others => c_2 <= c_2_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[40], [-3]]
  c_3_1_3_False_resize <= resize(c_1, 22);
  c_3_1_3_False_shift <= shift_left(c_3_1_3_False_resize, 3);
  c_3_1_0_False_resize <= resize(c_1, 22);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_3_False_shift;
        when others => c_3 <= c_3_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[-155], [-84]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 5 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 6 and associated fundamentals [[40], [1]]
  c_6_1_3_False_resize <= resize(c_1, 22);
  c_6_1_3_False_shift <= shift_left(c_6_1_3_False_resize, 3);
  c_6_5_0_False_resize <= resize(c_5, 22);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_2 select c_6_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_1_3_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[1], [-84]]
  c_9_4_0_False_resize <= c_4(22 downto 0);
  c_9_4_0_False_shift <= shift_left(c_9_4_0_False_resize, 0);
  c_9_8_0_False_resize <= resize(c_8, 23);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_4_0_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[40], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[40], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[41], [85]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 23,
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
      sub_i => c_12_sub_sel,
      x_i => c_11,
      y_i => c_9,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 13 and associated fundamentals [[5], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 14 and associated fundamentals [[5], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 15 and associated fundamentals [[5], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[5], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[102], [-182]]
  with config_select_6 select c_17_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_12,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 18 and associated fundamentals [[333], [683]]
  with config_select_6 select c_18_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 19,
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
      sub_i => c_18_sub_sel,
      x_i => c_12,
      y_i => c_16,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[164], [85]]
  c_19_12_2_False_resize <= resize(c_12, 24);
  c_19_12_2_False_shift <= shift_left(c_19_12_2_False_resize, 2);
  c_19_12_0_False_resize <= resize(c_12, 24);
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  with config_select_6 select c_19_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_12_2_False_shift;
        when others => c_19 <= c_19_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[5], [-3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[333], [-384]]
  c_21_18_0_False_resize <= c_18(24 downto 0);
  c_21_18_0_False_shift <= shift_left(c_21_18_0_False_resize, 0);
  c_21_20_7_False_resize <= resize(c_20, 25);
  c_21_20_7_False_shift <= shift_left(c_21_20_7_False_resize, 7);
  with config_select_7 select c_21_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_18_0_False_shift;
        when others => c_21 <= c_21_20_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[164], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_19 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[497], [469]]
  with config_select_8 select c_23_sub_sel <= 
    '0' when "0",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 24,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_21,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[41], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 25 and associated fundamentals [[41], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 26 and associated fundamentals [[41], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 27 and associated fundamentals [[41], [469]]
  c_27_23_0_False_resize <= c_23;
  c_27_23_0_False_shift <= shift_left(c_27_23_0_False_resize, 0);
  c_27_26_0_False_resize <= resize(c_26, 25);
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  with config_select_9 select c_27_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_23_0_False_shift;
        when others => c_27 <= c_27_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[-155], [-84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[-155], [-84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[-155], [-84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[-155], [-84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 32 and associated fundamentals [[-155], [-84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 33 and associated fundamentals [[-155], [-84]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 34 and associated fundamentals [[351], [301]]
  with config_select_10 select c_34_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_34_sub_sel,
      x_i => c_27,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 35 and associated fundamentals [[-310], [-182]]
  c_35_30_1_False_resize <= resize(c_30, 25);
  c_35_30_1_False_shift <= shift_left(c_35_30_1_False_resize, 1);
  c_35_17_0_False_resize <= resize(c_17, 25);
  c_35_17_0_False_shift <= shift_left(c_35_17_0_False_resize, 0);
  with config_select_7 select c_35_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_30_1_False_shift;
        when others => c_35 <= c_35_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[102], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[102], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 38 and associated fundamentals [[102], [469]]
  c_38_23_0_False_resize <= c_23;
  c_38_23_0_False_shift <= shift_left(c_38_23_0_False_resize, 0);
  c_38_37_0_False_resize <= resize(c_37, 25);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  with config_select_9 select c_38_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_23_0_False_shift;
        when others => c_38 <= c_38_37_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[41], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 40 and associated fundamentals [[41], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 41 and associated fundamentals [[351], [340]]
  c_41_34_0_False_resize <= c_34;
  c_41_34_0_False_shift <= shift_left(c_41_34_0_False_resize, 0);
  c_41_40_2_False_resize <= resize(c_40, 25);
  c_41_40_2_False_shift <= shift_left(c_41_40_2_False_resize, 2);
  with config_select_11 select c_41_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "0" => c_41 <= c_41_34_0_False_shift;
        when others => c_41 <= c_41_40_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[497], [469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 43 and associated fundamentals [[497], [469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 44 and associated fundamentals [[497], [301]]
  c_44_43_0_False_resize <= c_43;
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  c_44_34_0_False_resize <= c_34;
  c_44_34_0_False_shift <= shift_left(c_44_34_0_False_resize, 0);
  with config_select_11 select c_44_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_43_0_False_shift;
        when others => c_44 <= c_44_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 45 and associated fundamentals [[666], [683]]
  c_45_18_1_False_resize <= c_18;
  c_45_18_1_False_shift <= shift_left(c_45_18_1_False_resize, 1);
  c_45_18_0_False_resize <= c_18;
  c_45_18_0_False_shift <= shift_left(c_45_18_0_False_resize, 0);
  with config_select_7 select c_45_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_18_1_False_shift;
        when others => c_45 <= c_45_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[-310], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[-310], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 48 and associated fundamentals [[-310], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 49 and associated fundamentals [[-310], [-182]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 50 and associated fundamentals [[620], [364]]
  c_50_resize <= resize(c_49, 26);
  c_50 <= -shift_left(c_50_resize, 1);
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[102], [469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 52 and associated fundamentals [[102], [469]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 53 and associated fundamentals [[102], [469]]
  c_53_resize <= c_52;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 11 with id 54 and associated fundamentals [[351], [340]]
  c_54_resize <= c_41;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'output' in stage 11 with id 55 and associated fundamentals [[497], [301]]
  c_55_resize <= c_44;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[666], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[666], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[666], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[666], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 60 and associated fundamentals [[666], [683]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
end architecture;
