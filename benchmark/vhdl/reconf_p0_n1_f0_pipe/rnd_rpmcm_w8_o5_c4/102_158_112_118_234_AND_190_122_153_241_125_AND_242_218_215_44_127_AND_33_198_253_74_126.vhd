library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(23 downto 0);
    y_1: out std_logic_vector(23 downto 0);
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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(15 downto 0);
  signal c_4: signed(21 downto 0);
  signal c_4_i0_resize: signed(21 downto 0);
  signal c_4_i1_resize: signed(21 downto 0);
  signal c_4_i0_shift: signed(21 downto 0);
  signal c_4_i1_shift: signed(21 downto 0);
  signal c_4_arith: signed(21 downto 0);
  signal c_4_oshift: signed(21 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(15 downto 0);
  signal c_6: signed(18 downto 0);
  signal c_6_5_2_False_resize: signed(18 downto 0);
  signal c_6_5_2_False_shift: signed(18 downto 0);
  signal c_6_4_0_False_resize: signed(18 downto 0);
  signal c_6_4_0_False_shift: signed(18 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(21 downto 0);
  signal c_10_4_0_False_resize: signed(21 downto 0);
  signal c_10_4_0_False_shift: signed(21 downto 0);
  signal c_10_7_4_False_resize: signed(21 downto 0);
  signal c_10_7_4_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_11_3_2_False_resize: signed(21 downto 0);
  signal c_11_3_2_False_shift: signed(21 downto 0);
  signal c_11_3_6_False_resize: signed(21 downto 0);
  signal c_11_3_6_False_shift: signed(21 downto 0);
  signal c_11_1_0_False_resize: signed(21 downto 0);
  signal c_11_1_0_False_shift: signed(21 downto 0);
  signal c_11_sel: std_logic_vector(1 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_i0_resize: signed(22 downto 0);
  signal c_13_i1_resize: signed(22 downto 0);
  signal c_13_i0_shift: signed(22 downto 0);
  signal c_13_i1_shift: signed(22 downto 0);
  signal c_13_arith: signed(22 downto 0);
  signal c_13_oshift: signed(22 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_9_0_False_resize: signed(22 downto 0);
  signal c_14_9_0_False_shift: signed(22 downto 0);
  signal c_14_9_1_False_resize: signed(22 downto 0);
  signal c_14_9_1_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(19 downto 0);
  signal c_15_3_4_False_resize: signed(19 downto 0);
  signal c_15_3_4_False_shift: signed(19 downto 0);
  signal c_15_1_0_False_resize: signed(19 downto 0);
  signal c_15_1_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(17 downto 0);
  signal c_20_1_0_False_resize: signed(17 downto 0);
  signal c_20_1_0_False_shift: signed(17 downto 0);
  signal c_20_3_1_False_resize: signed(17 downto 0);
  signal c_20_3_1_False_shift: signed(17 downto 0);
  signal c_20_3_0_False_resize: signed(17 downto 0);
  signal c_20_3_0_False_shift: signed(17 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(15 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(22 downto 0);
  signal c_25_24_6_False_resize: signed(22 downto 0);
  signal c_25_24_6_False_shift: signed(22 downto 0);
  signal c_25_19_0_False_resize: signed(22 downto 0);
  signal c_25_19_0_False_shift: signed(22 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(17 downto 0);
  signal c_27: signed(17 downto 0);
  signal c_28: signed(17 downto 0);
  signal c_29: signed(17 downto 0);
  signal c_30: signed(17 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_9_0_False_resize: signed(22 downto 0);
  signal c_34_9_0_False_shift: signed(22 downto 0);
  signal c_34_33_1_False_resize: signed(22 downto 0);
  signal c_34_33_1_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_35_4_0_False_resize: signed(21 downto 0);
  signal c_35_4_0_False_shift: signed(21 downto 0);
  signal c_35_7_3_False_resize: signed(21 downto 0);
  signal c_35_7_3_False_shift: signed(21 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_i0_resize: signed(23 downto 0);
  signal c_38_i1_resize: signed(23 downto 0);
  signal c_38_i0_shift: signed(23 downto 0);
  signal c_38_i1_shift: signed(23 downto 0);
  signal c_38_arith: signed(23 downto 0);
  signal c_38_oshift: signed(23 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_43_40_0_False_resize: signed(23 downto 0);
  signal c_43_40_0_False_shift: signed(23 downto 0);
  signal c_43_42_1_False_resize: signed(23 downto 0);
  signal c_43_42_1_False_shift: signed(23 downto 0);
  signal c_43_38_0_False_resize: signed(23 downto 0);
  signal c_43_38_0_False_shift: signed(23 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(22 downto 0);
  signal c_45: signed(22 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_45_1_False_resize: signed(23 downto 0);
  signal c_46_45_1_False_shift: signed(23 downto 0);
  signal c_46_38_1_False_resize: signed(23 downto 0);
  signal c_46_38_1_False_shift: signed(23 downto 0);
  signal c_46_38_0_False_resize: signed(23 downto 0);
  signal c_46_38_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_47_40_4_False_resize: signed(23 downto 0);
  signal c_47_40_4_False_shift: signed(23 downto 0);
  signal c_47_19_0_False_resize: signed(23 downto 0);
  signal c_47_19_0_False_shift: signed(23 downto 0);
  signal c_47_38_0_False_resize: signed(23 downto 0);
  signal c_47_38_0_False_shift: signed(23 downto 0);
  signal c_47_sel: std_logic_vector(1 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_42_0_False_resize: signed(23 downto 0);
  signal c_48_42_0_False_shift: signed(23 downto 0);
  signal c_48_19_0_False_resize: signed(23 downto 0);
  signal c_48_19_0_False_shift: signed(23 downto 0);
  signal c_48_42_1_False_resize: signed(23 downto 0);
  signal c_48_42_1_False_shift: signed(23 downto 0);
  signal c_48_sel: std_logic_vector(1 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_52_resize: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
  signal c_54: signed(23 downto 0);
  signal c_54_resize: signed(23 downto 0);
  signal c_55: signed(23 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_56_resize: signed(23 downto 0);
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
  -- output node 1 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 2 with id 54
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_54);
    end if;
  end process;
  -- output node 3 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 4 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_57);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [3], [3], [1]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 18,
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
      sub_i => c_1_sub_sel,
      x_i => c_0,
      y_i => c_0,
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(17 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [4], [1], [4]]
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_2_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[7], [31], [7], [33]]
  with config_select_2 select c_4_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 22,
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
      sub_i => c_4_sub_sel,
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
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[4], [4], [7], [4]]
  c_6_5_2_False_resize <= resize(c_5, 19);
  c_6_5_2_False_shift <= shift_left(c_6_5_2_False_resize, 2);
  c_6_4_0_False_resize <= c_4(18 downto 0);
  c_6_4_0_False_shift <= shift_left(c_6_4_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_2_False_shift;
        when others => c_6 <= c_6_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[3], [3], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[3], [3], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[67], [61], [109], [63]]
  with config_select_4 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 23,
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
      sub_i => c_9_sub_sel,
      x_i => c_6,
      y_i => c_8,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 10 and associated fundamentals [[48], [31], [48], [33]]
  c_10_4_0_False_resize <= c_4;
  c_10_4_0_False_shift <= shift_left(c_10_4_0_False_resize, 0);
  c_10_7_4_False_resize <= resize(c_7, 22);
  c_10_7_4_False_shift <= shift_left(c_10_7_4_False_resize, 4);
  with config_select_3 select c_10_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_4_0_False_shift;
        when others => c_10 <= c_10_7_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[3], [64], [4], [4]]
  c_11_3_2_False_resize <= resize(c_3, 22);
  c_11_3_2_False_shift <= shift_left(c_11_3_2_False_resize, 2);
  c_11_3_6_False_resize <= resize(c_3, 22);
  c_11_3_6_False_shift <= shift_left(c_11_3_6_False_resize, 6);
  c_11_1_0_False_resize <= resize(c_1, 22);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "00" when "10",
    "00" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "00" => c_11 <= c_11_3_2_False_shift;
        when "01" => c_11 <= c_11_3_6_False_shift;
        when others => c_11 <= c_11_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[3], [64], [4], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[51], [95], [44], [37]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 22,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 14 and associated fundamentals [[67], [122], [109], [126]]
  c_14_9_0_False_resize <= c_9;
  c_14_9_0_False_shift <= shift_left(c_14_9_0_False_resize, 0);
  c_14_9_1_False_resize <= c_9;
  c_14_9_1_False_shift <= shift_left(c_14_9_1_False_resize, 1);
  with config_select_5 select c_14_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_9_0_False_shift;
        when others => c_14 <= c_14_9_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 15 and associated fundamentals [[16], [3], [3], [1]]
  c_15_3_4_False_resize <= resize(c_3, 20);
  c_15_3_4_False_shift <= shift_left(c_15_3_4_False_resize, 4);
  c_15_1_0_False_resize <= resize(c_1, 20);
  c_15_1_0_False_shift <= shift_left(c_15_1_0_False_resize, 0);
  with config_select_2 select c_15_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_3_4_False_shift;
        when others => c_15 <= c_15_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[16], [3], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[16], [3], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[16], [3], [3], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 19 and associated fundamentals [[118], [241], [215], [253]]
  with config_select_6 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_19_sub_sel,
      x_i => c_14,
      y_i => c_18,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 20 and associated fundamentals [[2], [3], [1], [2]]
  c_20_1_0_False_resize <= c_1;
  c_20_1_0_False_shift <= shift_left(c_20_1_0_False_resize, 0);
  c_20_3_1_False_resize <= resize(c_3, 18);
  c_20_3_1_False_shift <= shift_left(c_20_3_1_False_resize, 1);
  c_20_3_0_False_resize <= resize(c_3, 18);
  c_20_3_0_False_shift <= shift_left(c_20_3_0_False_resize, 0);
  with config_select_2 select c_20_sel <= 
    "00" when "01",
    "01" when "11",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_1_0_False_shift;
        when "01" => c_20 <= c_20_3_1_False_shift;
        when others => c_20 <= c_20_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 21 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 22 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 25 and associated fundamentals [[118], [64], [64], [64]]
  c_25_24_6_False_resize <= resize(c_24, 23);
  c_25_24_6_False_shift <= shift_left(c_25_24_6_False_resize, 6);
  c_25_19_0_False_resize <= c_19(22 downto 0);
  c_25_19_0_False_shift <= shift_left(c_25_19_0_False_resize, 0);
  with config_select_7 select c_25_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_24_6_False_shift;
        when others => c_25 <= c_25_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 26 and associated fundamentals [[2], [3], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 27 and associated fundamentals [[2], [3], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[2], [3], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[2], [3], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[2], [3], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 31 and associated fundamentals [[-234], [-125], [-127], [-126]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
      w_o => 24,
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
      x_i => c_30,
      y_i => c_25,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 32 and associated fundamentals [[7], [31], [7], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 33 and associated fundamentals [[7], [31], [7], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 34 and associated fundamentals [[67], [61], [109], [66]]
  c_34_9_0_False_resize <= c_9;
  c_34_9_0_False_shift <= shift_left(c_34_9_0_False_resize, 0);
  c_34_33_1_False_resize <= resize(c_33, 23);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  with config_select_5 select c_34_sel <= 
    "0" when "00",
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_9_0_False_shift;
        when others => c_34 <= c_34_33_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 35 and associated fundamentals [[24], [31], [24], [33]]
  c_35_4_0_False_resize <= c_4;
  c_35_4_0_False_shift <= shift_left(c_35_4_0_False_resize, 0);
  c_35_7_3_False_resize <= resize(c_7, 22);
  c_35_7_3_False_shift <= shift_left(c_35_7_3_False_resize, 3);
  with config_select_3 select c_35_sel <= 
    "0" when "01",
    "0" when "11",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_4_0_False_shift;
        when others => c_35 <= c_35_7_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 36 and associated fundamentals [[24], [31], [24], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 37 and associated fundamentals [[24], [31], [24], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 38 and associated fundamentals [[158], [153], [242], [99]]
  with config_select_6 select c_38_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_38_sub_sel,
      x_i => c_34,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 39 and associated fundamentals [[7], [31], [7], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[7], [31], [7], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 41 and associated fundamentals [[51], [95], [44], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[51], [95], [44], [37]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[102], [190], [242], [33]]
  c_43_40_0_False_resize <= resize(c_40, 24);
  c_43_40_0_False_shift <= shift_left(c_43_40_0_False_resize, 0);
  c_43_42_1_False_resize <= resize(c_42, 24);
  c_43_42_1_False_shift <= shift_left(c_43_42_1_False_resize, 1);
  c_43_38_0_False_resize <= c_38;
  c_43_38_0_False_shift <= shift_left(c_43_38_0_False_resize, 0);
  with config_select_7 select c_43_sel <= 
    "00" when "11",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_40_0_False_shift;
        when "01" => c_43 <= c_43_42_1_False_shift;
        when others => c_43 <= c_43_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 44 and associated fundamentals [[67], [61], [109], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 45 and associated fundamentals [[67], [61], [109], [63]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 46 and associated fundamentals [[158], [122], [218], [198]]
  c_46_45_1_False_resize <= resize(c_45, 24);
  c_46_45_1_False_shift <= shift_left(c_46_45_1_False_resize, 1);
  c_46_38_1_False_resize <= c_38;
  c_46_38_1_False_shift <= shift_left(c_46_38_1_False_resize, 1);
  c_46_38_0_False_resize <= c_38;
  c_46_38_0_False_shift <= shift_left(c_46_38_0_False_resize, 0);
  with config_select_7 select c_46_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_45_1_False_shift;
        when "01" => c_46 <= c_46_38_1_False_shift;
        when others => c_46 <= c_46_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 47 and associated fundamentals [[112], [153], [215], [253]]
  c_47_40_4_False_resize <= resize(c_40, 24);
  c_47_40_4_False_shift <= shift_left(c_47_40_4_False_resize, 4);
  c_47_19_0_False_resize <= c_19;
  c_47_19_0_False_shift <= shift_left(c_47_19_0_False_resize, 0);
  c_47_38_0_False_resize <= c_38;
  c_47_38_0_False_shift <= shift_left(c_47_38_0_False_resize, 0);
  with config_select_7 select c_47_sel <= 
    "00" when "00",
    "01" when "11",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "00" => c_47 <= c_47_40_4_False_shift;
        when "01" => c_47 <= c_47_19_0_False_shift;
        when others => c_47 <= c_47_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 48 and associated fundamentals [[118], [241], [44], [74]]
  c_48_42_0_False_resize <= resize(c_42, 24);
  c_48_42_0_False_shift <= shift_left(c_48_42_0_False_resize, 0);
  c_48_19_0_False_resize <= c_19;
  c_48_19_0_False_shift <= shift_left(c_48_19_0_False_resize, 0);
  c_48_42_1_False_resize <= resize(c_42, 24);
  c_48_42_1_False_shift <= shift_left(c_48_42_1_False_resize, 1);
  with config_select_7 select c_48_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_48_sel is
        when "00" => c_48 <= c_48_42_0_False_shift;
        when "01" => c_48 <= c_48_19_0_False_shift;
        when others => c_48 <= c_48_42_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[102], [190], [242], [33]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 50 and associated fundamentals [[102], [190], [242], [33]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[158], [122], [218], [198]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 52 and associated fundamentals [[158], [122], [218], [198]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[112], [153], [215], [253]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_47 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 54 and associated fundamentals [[112], [153], [215], [253]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[118], [241], [44], [74]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 8 with id 56 and associated fundamentals [[118], [241], [44], [74]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
  -- node of type 'output' in stage 8 with id 57 and associated fundamentals [[234], [125], [127], [126]]
  c_57_resize <= c_31;
  c_57 <= -shift_left(c_57_resize, 0);
end architecture;
