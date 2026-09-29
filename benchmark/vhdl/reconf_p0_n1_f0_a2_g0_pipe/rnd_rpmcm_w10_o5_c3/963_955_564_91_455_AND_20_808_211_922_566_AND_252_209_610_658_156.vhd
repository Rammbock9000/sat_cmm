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
  signal config_select_7: std_logic_vector(1 downto 0);
  signal config_select_8: std_logic_vector(1 downto 0);
  signal config_select_9: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_1_False_resize: signed(20 downto 0);
  signal c_3_2_1_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(0 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_i0_resize: signed(22 downto 0);
  signal c_5_i1_resize: signed(22 downto 0);
  signal c_5_i0_shift: signed(22 downto 0);
  signal c_5_i1_shift: signed(22 downto 0);
  signal c_5_arith: signed(22 downto 0);
  signal c_5_oshift: signed(22 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(22 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_7_0_False_resize: signed(22 downto 0);
  signal c_8_7_0_False_shift: signed(22 downto 0);
  signal c_8_5_0_False_resize: signed(22 downto 0);
  signal c_8_5_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_12_i0_resize: signed(22 downto 0);
  signal c_12_i1_resize: signed(22 downto 0);
  signal c_12_i0_shift: signed(22 downto 0);
  signal c_12_i1_shift: signed(22 downto 0);
  signal c_12_arith: signed(22 downto 0);
  signal c_12_oshift: signed(22 downto 0);
  signal c_12_sub_sel: std_logic;
  signal c_13: signed(22 downto 0);
  signal c_13_6_1_False_resize: signed(22 downto 0);
  signal c_13_6_1_False_shift: signed(22 downto 0);
  signal c_13_9_0_False_resize: signed(22 downto 0);
  signal c_13_9_0_False_shift: signed(22 downto 0);
  signal c_13_6_0_False_resize: signed(22 downto 0);
  signal c_13_6_0_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_14_0_0_False_resize: signed(17 downto 0);
  signal c_14_0_0_False_shift: signed(17 downto 0);
  signal c_14_0_2_False_resize: signed(17 downto 0);
  signal c_14_0_2_False_shift: signed(17 downto 0);
  signal c_14_0_1_False_resize: signed(17 downto 0);
  signal c_14_0_1_False_shift: signed(17 downto 0);
  signal c_14_sel: std_logic_vector(1 downto 0);
  signal c_15: signed(17 downto 0);
  signal c_16: signed(17 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_17_i0_resize: signed(24 downto 0);
  signal c_17_i1_resize: signed(24 downto 0);
  signal c_17_i0_shift: signed(24 downto 0);
  signal c_17_i1_shift: signed(24 downto 0);
  signal c_17_arith: signed(24 downto 0);
  signal c_17_oshift: signed(24 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(20 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_12_0_False_resize: signed(24 downto 0);
  signal c_19_12_0_False_shift: signed(24 downto 0);
  signal c_19_18_4_False_resize: signed(24 downto 0);
  signal c_19_18_4_False_shift: signed(24 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(24 downto 0);
  signal c_22_12_2_False_resize: signed(24 downto 0);
  signal c_22_12_2_False_shift: signed(24 downto 0);
  signal c_22_21_0_False_resize: signed(24 downto 0);
  signal c_22_21_0_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(25 downto 0);
  signal c_23_i0_resize: signed(25 downto 0);
  signal c_23_i1_resize: signed(25 downto 0);
  signal c_23_i0_shift: signed(25 downto 0);
  signal c_23_i1_shift: signed(25 downto 0);
  signal c_23_arith: signed(25 downto 0);
  signal c_23_oshift: signed(25 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_26_25_7_False_resize: signed(24 downto 0);
  signal c_26_25_7_False_shift: signed(24 downto 0);
  signal c_26_20_0_False_resize: signed(24 downto 0);
  signal c_26_20_0_False_shift: signed(24 downto 0);
  signal c_26_17_2_False_resize: signed(24 downto 0);
  signal c_26_17_2_False_shift: signed(24 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(23 downto 0);
  signal c_29_9_0_False_resize: signed(23 downto 0);
  signal c_29_9_0_False_shift: signed(23 downto 0);
  signal c_29_6_2_False_resize: signed(23 downto 0);
  signal c_29_6_2_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_33_i0_resize: signed(25 downto 0);
  signal c_33_i1_resize: signed(25 downto 0);
  signal c_33_i0_shift: signed(25 downto 0);
  signal c_33_i1_shift: signed(25 downto 0);
  signal c_33_arith: signed(25 downto 0);
  signal c_33_oshift: signed(25 downto 0);
  signal c_33_sub_sel: std_logic;
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_36_1_False_resize: signed(25 downto 0);
  signal c_37_36_1_False_shift: signed(25 downto 0);
  signal c_37_33_0_False_resize: signed(25 downto 0);
  signal c_37_33_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(22 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_38_3_False_resize: signed(25 downto 0);
  signal c_39_38_3_False_shift: signed(25 downto 0);
  signal c_39_32_0_False_resize: signed(25 downto 0);
  signal c_39_32_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_33_1_False_resize: signed(25 downto 0);
  signal c_40_33_1_False_shift: signed(25 downto 0);
  signal c_40_38_0_False_resize: signed(25 downto 0);
  signal c_40_38_0_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_resize: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_resize: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_resize: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
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
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 42
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_42);
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
  -- output node 4 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_46);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[31], [31], [31]]
  inst_adder_node_1: entity work.adder_node
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
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[31], [2], [31]]
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_1_False_resize <= resize(c_2, 21);
  c_3_2_1_False_shift <= shift_left(c_3_2_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "0" => c_3 <= c_3_1_0_False_shift;
        when others => c_3 <= c_3_2_1_False_shift;
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
  -- node of type 'add_sub' in stage 3 with id 5 and associated fundamentals [[122], [10], [126]]
  with config_select_3 select c_5_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_5_sub_sel,
      x_i => c_3,
      y_i => c_4,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 6 and associated fundamentals [[54], [70], [54]]
  with config_select_2 select c_6_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 16,
      w_o => 23,
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
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[54], [70], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[122], [70], [54]]
  c_8_7_0_False_resize <= c_7;
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  c_8_5_0_False_resize <= c_5;
  c_8_5_0_False_shift <= shift_left(c_8_5_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_0_False_shift;
        when others => c_8 <= c_8_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 9 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 12 and associated fundamentals [[91], [101], [85]]
  with config_select_5 select c_12_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_12: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 21,
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
      x_i => c_8,
      y_i => c_11,
      z_o => c_12_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_12_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[108], [70], [31]]
  c_13_6_1_False_resize <= c_6;
  c_13_6_1_False_shift <= shift_left(c_13_6_1_False_resize, 1);
  c_13_9_0_False_resize <= resize(c_9, 23);
  c_13_9_0_False_shift <= shift_left(c_13_9_0_False_resize, 0);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  with config_select_3 select c_13_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_6_1_False_shift;
        when "01" => c_13 <= c_13_9_0_False_shift;
        when others => c_13 <= c_13_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[4], [1], [2]]
  c_14_0_0_False_resize <= resize(c_0, 18);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_2_False_resize <= resize(c_0, 18);
  c_14_0_2_False_shift <= shift_left(c_14_0_2_False_resize, 2);
  c_14_0_1_False_resize <= resize(c_0, 18);
  c_14_0_1_False_shift <= shift_left(c_14_0_1_False_resize, 1);
  with config_select_1 select c_14_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "00" => c_14 <= c_14_0_0_False_shift;
        when "01" => c_14 <= c_14_0_2_False_shift;
        when others => c_14 <= c_14_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[4], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[4], [1], [2]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 17 and associated fundamentals [[436], [281], [122]]
  with config_select_4 select c_17_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
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
      sub_i => c_17_sub_sel,
      x_i => c_13,
      y_i => c_16,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[31], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[91], [496], [496]]
  c_19_12_0_False_resize <= resize(c_12, 25);
  c_19_12_0_False_shift <= shift_left(c_19_12_0_False_resize, 0);
  c_19_18_4_False_resize <= resize(c_18, 25);
  c_19_18_4_False_shift <= shift_left(c_19_18_4_False_resize, 4);
  with config_select_6 select c_19_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_12_0_False_shift;
        when others => c_19 <= c_19_18_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[54], [70], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[54], [70], [54]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[364], [70], [340]]
  c_22_12_2_False_resize <= resize(c_12, 25);
  c_22_12_2_False_shift <= shift_left(c_22_12_2_False_resize, 2);
  c_22_21_0_False_resize <= resize(c_21, 25);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_12_2_False_shift;
        when others => c_22 <= c_22_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 23 and associated fundamentals [[455], [566], [156]]
  with config_select_7 select c_23_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_23_sub_sel,
      x_i => c_19,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[128], [70], [488]]
  c_26_25_7_False_resize <= resize(c_25, 25);
  c_26_25_7_False_shift <= shift_left(c_26_25_7_False_resize, 7);
  c_26_20_0_False_resize <= resize(c_20, 25);
  c_26_20_0_False_shift <= shift_left(c_26_20_0_False_resize, 0);
  c_26_17_2_False_resize <= c_17;
  c_26_17_2_False_shift <= shift_left(c_26_17_2_False_resize, 2);
  with config_select_5 select c_26_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_25_7_False_shift;
        when "01" => c_26 <= c_26_20_0_False_shift;
        when others => c_26 <= c_26_17_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[436], [281], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 28 and associated fundamentals [[564], [211], [610]]
  with config_select_6 select c_28_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 25,
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
      sub_i => c_28_sub_sel,
      x_i => c_27,
      y_i => c_26,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[216], [31], [31]]
  c_29_9_0_False_resize <= resize(c_9, 24);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  c_29_6_2_False_resize <= resize(c_6, 24);
  c_29_6_2_False_shift <= shift_left(c_29_6_2_False_resize, 2);
  with config_select_3 select c_29_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_9_0_False_shift;
        when others => c_29 <= c_29_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[216], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[216], [31], [31]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 32 and associated fundamentals [[955], [225], [209]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 2,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_31,
      y_i => c_12,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 33 and associated fundamentals [[963], [461], [329]]
  with config_select_6 select c_33_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_33: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
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
      sub_i => c_33_sub_sel,
      x_i => c_27,
      y_i => c_12,
      z_o => c_33_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_33_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 34 and associated fundamentals [[122], [10], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[122], [10], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[122], [10], [126]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[963], [20], [252]]
  c_37_36_1_False_resize <= resize(c_36, 26);
  c_37_36_1_False_shift <= shift_left(c_37_36_1_False_resize, 1);
  c_37_33_0_False_resize <= c_33;
  c_37_33_0_False_shift <= shift_left(c_37_33_0_False_resize, 0);
  with config_select_7 select c_37_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_36_1_False_shift;
        when others => c_37 <= c_37_33_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 38 and associated fundamentals [[91], [101], [85]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_12 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 39 and associated fundamentals [[955], [808], [209]]
  c_39_38_3_False_resize <= resize(c_38, 26);
  c_39_38_3_False_shift <= shift_left(c_39_38_3_False_resize, 3);
  c_39_32_0_False_resize <= c_32;
  c_39_32_0_False_shift <= shift_left(c_39_32_0_False_resize, 0);
  with config_select_7 select c_39_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_3_False_shift;
        when others => c_39 <= c_39_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 40 and associated fundamentals [[91], [922], [658]]
  c_40_33_1_False_resize <= c_33;
  c_40_33_1_False_shift <= shift_left(c_40_33_1_False_resize, 1);
  c_40_38_0_False_resize <= resize(c_38, 26);
  c_40_38_0_False_shift <= shift_left(c_40_38_0_False_resize, 0);
  with config_select_7 select c_40_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_33_1_False_shift;
        when others => c_40 <= c_40_38_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 41 and associated fundamentals [[963], [20], [252]]
  c_41_resize <= c_37;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'output' in stage 7 with id 42 and associated fundamentals [[955], [808], [209]]
  c_42_resize <= c_39;
  c_42 <= shift_left(c_42_resize, 0);
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[564], [211], [610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_28 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 44 and associated fundamentals [[564], [211], [610]]
  c_44_resize <= c_43;
  c_44 <= shift_left(c_44_resize, 0);
  -- node of type 'output' in stage 7 with id 45 and associated fundamentals [[91], [922], [658]]
  c_45_resize <= c_40;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'output' in stage 7 with id 46 and associated fundamentals [[455], [566], [156]]
  c_46_resize <= c_23;
  c_46 <= shift_left(c_46_resize, 0);
end architecture;
