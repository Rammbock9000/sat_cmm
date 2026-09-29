library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(22 downto 0);
    y_2: out std_logic_vector(23 downto 0);
    y_3: out std_logic_vector(23 downto 0);
    y_4: out std_logic_vector(23 downto 0);
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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_i0_resize: signed(20 downto 0);
  signal c_3_i1_resize: signed(20 downto 0);
  signal c_3_i0_shift: signed(20 downto 0);
  signal c_3_i1_shift: signed(20 downto 0);
  signal c_3_arith: signed(20 downto 0);
  signal c_3_oshift: signed(20 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(20 downto 0);
  signal c_4_0_5_False_resize: signed(20 downto 0);
  signal c_4_0_5_False_shift: signed(20 downto 0);
  signal c_4_0_0_False_resize: signed(20 downto 0);
  signal c_4_0_0_False_shift: signed(20 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_5_0_False_resize: signed(18 downto 0);
  signal c_6_5_0_False_shift: signed(18 downto 0);
  signal c_6_3_0_False_resize: signed(18 downto 0);
  signal c_6_3_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(20 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(20 downto 0);
  signal c_10_3_0_False_resize: signed(20 downto 0);
  signal c_10_3_0_False_shift: signed(20 downto 0);
  signal c_10_5_3_False_resize: signed(20 downto 0);
  signal c_10_5_3_False_shift: signed(20 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(15 downto 0);
  signal c_14: signed(15 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_9_0_False_resize: signed(21 downto 0);
  signal c_15_9_0_False_shift: signed(21 downto 0);
  signal c_15_14_0_False_resize: signed(21 downto 0);
  signal c_15_14_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(20 downto 0);
  signal c_17: signed(20 downto 0);
  signal c_18: signed(20 downto 0);
  signal c_19: signed(21 downto 0);
  signal c_19_18_0_False_resize: signed(21 downto 0);
  signal c_19_18_0_False_shift: signed(21 downto 0);
  signal c_19_12_0_False_resize: signed(21 downto 0);
  signal c_19_12_0_False_shift: signed(21 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(21 downto 0);
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
  signal c_24: signed(21 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_24_6_False_resize: signed(23 downto 0);
  signal c_25_24_6_False_shift: signed(23 downto 0);
  signal c_25_21_1_False_resize: signed(23 downto 0);
  signal c_25_21_1_False_shift: signed(23 downto 0);
  signal c_25_21_0_False_resize: signed(23 downto 0);
  signal c_25_21_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(1 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_9_2_False_resize: signed(23 downto 0);
  signal c_26_9_2_False_shift: signed(23 downto 0);
  signal c_26_17_0_False_resize: signed(23 downto 0);
  signal c_26_17_0_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(0 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_28: signed(23 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_30_i0_resize: signed(23 downto 0);
  signal c_30_i1_resize: signed(23 downto 0);
  signal c_30_i0_shift: signed(23 downto 0);
  signal c_30_i1_shift: signed(23 downto 0);
  signal c_30_arith: signed(23 downto 0);
  signal c_30_oshift: signed(23 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(15 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_12_0_False_resize: signed(22 downto 0);
  signal c_32_12_0_False_shift: signed(22 downto 0);
  signal c_32_31_0_False_resize: signed(22 downto 0);
  signal c_32_31_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_i0_resize: signed(23 downto 0);
  signal c_34_i1_resize: signed(23 downto 0);
  signal c_34_i0_shift: signed(23 downto 0);
  signal c_34_i1_shift: signed(23 downto 0);
  signal c_34_arith: signed(23 downto 0);
  signal c_34_oshift: signed(23 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_35_21_0_False_resize: signed(22 downto 0);
  signal c_35_21_0_False_shift: signed(22 downto 0);
  signal c_35_24_0_False_resize: signed(22 downto 0);
  signal c_35_24_0_False_shift: signed(22 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_36_12_0_False_resize: signed(22 downto 0);
  signal c_36_12_0_False_shift: signed(22 downto 0);
  signal c_36_12_1_False_resize: signed(22 downto 0);
  signal c_36_12_1_False_shift: signed(22 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(20 downto 0);
  signal c_38: signed(20 downto 0);
  signal c_39: signed(20 downto 0);
  signal c_40: signed(20 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_40_6_False_resize: signed(23 downto 0);
  signal c_43_40_6_False_shift: signed(23 downto 0);
  signal c_43_42_2_False_resize: signed(23 downto 0);
  signal c_43_42_2_False_shift: signed(23 downto 0);
  signal c_43_30_0_False_resize: signed(23 downto 0);
  signal c_43_30_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_40_0_False_resize: signed(23 downto 0);
  signal c_44_40_0_False_shift: signed(23 downto 0);
  signal c_44_30_0_False_resize: signed(23 downto 0);
  signal c_44_30_0_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_resize: signed(23 downto 0);
  signal c_48: signed(22 downto 0);
  signal c_49: signed(22 downto 0);
  signal c_50: signed(22 downto 0);
  signal c_51: signed(22 downto 0);
  signal c_52: signed(22 downto 0);
  signal c_52_resize: signed(22 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_53_resize: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_57_resize: signed(23 downto 0);
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
  -- output node 0 with id 47
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_47);
    end if;
  end process;
  -- output node 1 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 2 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_53);
    end if;
  end process;
  -- output node 3 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 4 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_57);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_2_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[17], [3], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 21,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [32], [32]]
  c_4_0_5_False_resize <= resize(c_0, 21);
  c_4_0_5_False_shift <= shift_left(c_4_0_5_False_resize, 5);
  c_4_0_0_False_resize <= resize(c_0, 21);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_5_False_shift;
        when others => c_4 <= c_4_0_0_False_shift;
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
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [3], [5]]
  c_6_5_0_False_resize <= resize(c_5, 19);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_3_0_False_resize <= c_3(18 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_0_False_shift;
        when others => c_6 <= c_6_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [32], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [32], [32]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[3], [61], [59]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 19,
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
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[17], [3], [8]]
  c_10_3_0_False_resize <= c_3;
  c_10_3_0_False_shift <= shift_left(c_10_3_0_False_resize, 0);
  c_10_5_3_False_resize <= resize(c_5, 21);
  c_10_5_3_False_shift <= shift_left(c_10_5_3_False_resize, 3);
  with config_select_3 select c_10_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_3_0_False_shift;
        when others => c_10 <= c_10_5_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[17], [3], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[37], [67], [43]]
  with config_select_5 select c_12_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 21,
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
      x_i => c_9,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[1], [1], [59]]
  c_15_9_0_False_resize <= c_9;
  c_15_9_0_False_shift <= shift_left(c_15_9_0_False_resize, 0);
  c_15_14_0_False_resize <= resize(c_14, 22);
  c_15_14_0_False_shift <= shift_left(c_15_14_0_False_resize, 0);
  with config_select_5 select c_15_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_9_0_False_shift;
        when others => c_15 <= c_15_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[37], [3], [5]]
  c_19_18_0_False_resize <= resize(c_18, 22);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_12_0_False_resize <= c_12(21 downto 0);
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  with config_select_6 select c_19_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_18_0_False_shift;
        when others => c_19 <= c_19_12_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[1], [1], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 21 and associated fundamentals [[75], [7], [49]]
  with config_select_7 select c_21_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 22,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_19,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[3], [61], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[3], [61], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 24 and associated fundamentals [[3], [61], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 25 and associated fundamentals [[192], [7], [98]]
  c_25_24_6_False_resize <= resize(c_24, 24);
  c_25_24_6_False_shift <= shift_left(c_25_24_6_False_resize, 6);
  c_25_21_1_False_resize <= resize(c_21, 24);
  c_25_21_1_False_shift <= shift_left(c_25_21_1_False_resize, 1);
  c_25_21_0_False_resize <= resize(c_21, 24);
  c_25_21_0_False_shift <= shift_left(c_25_21_0_False_resize, 0);
  with config_select_8 select c_25_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "00" => c_25 <= c_25_24_6_False_shift;
        when "01" => c_25 <= c_25_21_1_False_shift;
        when others => c_25 <= c_25_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[17], [244], [5]]
  c_26_9_2_False_resize <= resize(c_9, 24);
  c_26_9_2_False_shift <= shift_left(c_26_9_2_False_resize, 2);
  c_26_17_0_False_resize <= resize(c_17, 24);
  c_26_17_0_False_shift <= shift_left(c_26_17_0_False_resize, 0);
  with config_select_5 select c_26_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "0" => c_26 <= c_26_9_2_False_shift;
        when others => c_26 <= c_26_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[17], [244], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[17], [244], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[17], [244], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 30 and associated fundamentals [[175], [251], [103]]
  with config_select_9 select c_30_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_30_sub_sel,
      x_i => c_25,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_14 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[1], [67], [43]]
  c_32_12_0_False_resize <= c_12;
  c_32_12_0_False_shift <= shift_left(c_32_12_0_False_resize, 0);
  c_32_31_0_False_resize <= resize(c_31, 23);
  c_32_31_0_False_shift <= shift_left(c_32_31_0_False_resize, 0);
  with config_select_6 select c_32_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_12_0_False_shift;
        when others => c_32 <= c_32_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[1], [67], [43]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[151], [53], [141]]
  with config_select_8 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_21,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 35 and associated fundamentals [[75], [61], [59]]
  c_35_21_0_False_resize <= c_21;
  c_35_21_0_False_shift <= shift_left(c_35_21_0_False_resize, 0);
  c_35_24_0_False_resize <= resize(c_24, 23);
  c_35_24_0_False_shift <= shift_left(c_35_24_0_False_resize, 0);
  with config_select_8 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_21_0_False_shift;
        when others => c_35 <= c_35_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 36 and associated fundamentals [[37], [67], [86]]
  c_36_12_0_False_resize <= c_12;
  c_36_12_0_False_shift <= shift_left(c_36_12_0_False_resize, 0);
  c_36_12_1_False_resize <= c_12;
  c_36_12_1_False_shift <= shift_left(c_36_12_1_False_resize, 1);
  with config_select_6 select c_36_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_12_0_False_shift;
        when others => c_36 <= c_36_12_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[17], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[75], [7], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[75], [7], [49]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 43 and associated fundamentals [[175], [192], [196]]
  c_43_40_6_False_resize <= resize(c_40, 24);
  c_43_40_6_False_shift <= shift_left(c_43_40_6_False_resize, 6);
  c_43_42_2_False_resize <= resize(c_42, 24);
  c_43_42_2_False_shift <= shift_left(c_43_42_2_False_resize, 2);
  c_43_30_0_False_resize <= c_30;
  c_43_30_0_False_shift <= shift_left(c_43_30_0_False_resize, 0);
  with config_select_10 select c_43_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_40_6_False_shift;
        when "01" => c_43 <= c_43_42_2_False_shift;
        when others => c_43 <= c_43_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 44 and associated fundamentals [[17], [251], [103]]
  c_44_40_0_False_resize <= resize(c_40, 24);
  c_44_40_0_False_shift <= shift_left(c_44_40_0_False_resize, 0);
  c_44_30_0_False_resize <= c_30;
  c_44_30_0_False_shift <= shift_left(c_44_30_0_False_resize, 0);
  with config_select_10 select c_44_sel <= 
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_40_0_False_shift;
        when others => c_44 <= c_44_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[75], [61], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[75], [61], [59]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 47 and associated fundamentals [[150], [122], [118]]
  c_47_resize <= resize(c_46, 24);
  c_47 <= shift_left(c_47_resize, 1);
  -- node of type 'register' in stage 7 with id 48 and associated fundamentals [[37], [67], [86]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[37], [67], [86]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[37], [67], [86]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 51 and associated fundamentals [[37], [67], [86]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 52 and associated fundamentals [[37], [67], [86]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 10 with id 53 and associated fundamentals [[175], [192], [196]]
  c_53_resize <= c_43;
  c_53 <= shift_left(c_53_resize, 0);
  -- node of type 'output' in stage 10 with id 54 and associated fundamentals [[17], [251], [103]]
  c_54_resize <= c_44;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[151], [53], [141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 56 and associated fundamentals [[151], [53], [141]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 57 and associated fundamentals [[151], [53], [141]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
end architecture;
