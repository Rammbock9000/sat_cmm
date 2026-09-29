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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_0_2_False_resize: signed(18 downto 0);
  signal c_1_0_2_False_shift: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(1 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_8_0_False_resize: signed(20 downto 0);
  signal c_9_8_0_False_shift: signed(20 downto 0);
  signal c_9_3_3_False_resize: signed(20 downto 0);
  signal c_9_3_3_False_shift: signed(20 downto 0);
  signal c_9_3_0_False_resize: signed(20 downto 0);
  signal c_9_3_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(1 downto 0);
  signal c_10: signed(19 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(15 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_12_6_False_resize: signed(23 downto 0);
  signal c_13_12_6_False_shift: signed(23 downto 0);
  signal c_13_6_0_False_resize: signed(23 downto 0);
  signal c_13_6_0_False_shift: signed(23 downto 0);
  signal c_13_12_7_False_resize: signed(23 downto 0);
  signal c_13_12_7_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(19 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_15_11_0_False_resize: signed(22 downto 0);
  signal c_15_11_0_False_shift: signed(22 downto 0);
  signal c_15_14_3_False_resize: signed(22 downto 0);
  signal c_15_14_3_False_shift: signed(22 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(23 downto 0);
  signal c_17: signed(23 downto 0);
  signal c_17_i0_resize: signed(23 downto 0);
  signal c_17_i1_resize: signed(23 downto 0);
  signal c_17_i0_shift: signed(23 downto 0);
  signal c_17_i1_shift: signed(23 downto 0);
  signal c_17_arith: signed(23 downto 0);
  signal c_17_oshift: signed(23 downto 0);
  signal c_17_sub_sel: std_logic;
  signal c_18: signed(22 downto 0);
  signal c_18_3_4_False_resize: signed(22 downto 0);
  signal c_18_3_4_False_shift: signed(22 downto 0);
  signal c_18_8_0_False_resize: signed(22 downto 0);
  signal c_18_8_0_False_shift: signed(22 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(23 downto 0);
  signal c_20: signed(23 downto 0);
  signal c_20_11_1_False_resize: signed(23 downto 0);
  signal c_20_11_1_False_shift: signed(23 downto 0);
  signal c_20_19_0_False_resize: signed(23 downto 0);
  signal c_20_19_0_False_shift: signed(23 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_23_i0_resize: signed(23 downto 0);
  signal c_23_i1_resize: signed(23 downto 0);
  signal c_23_i0_shift: signed(23 downto 0);
  signal c_23_i1_shift: signed(23 downto 0);
  signal c_23_arith: signed(23 downto 0);
  signal c_23_oshift: signed(23 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(19 downto 0);
  signal c_25: signed(19 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_26_25_4_False_resize: signed(23 downto 0);
  signal c_26_25_4_False_shift: signed(23 downto 0);
  signal c_26_17_0_False_resize: signed(23 downto 0);
  signal c_26_17_0_False_shift: signed(23 downto 0);
  signal c_26_17_1_False_resize: signed(23 downto 0);
  signal c_26_17_1_False_shift: signed(23 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(21 downto 0);
  signal c_27_3_2_False_resize: signed(21 downto 0);
  signal c_27_3_2_False_shift: signed(21 downto 0);
  signal c_27_8_0_False_resize: signed(21 downto 0);
  signal c_27_8_0_False_shift: signed(21 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_32_i0_resize: signed(23 downto 0);
  signal c_32_i1_resize: signed(23 downto 0);
  signal c_32_i0_shift: signed(23 downto 0);
  signal c_32_i1_shift: signed(23 downto 0);
  signal c_32_arith: signed(23 downto 0);
  signal c_32_oshift: signed(23 downto 0);
  signal c_32_sub_sel: std_logic;
  signal c_33: signed(23 downto 0);
  signal c_33_23_1_False_resize: signed(23 downto 0);
  signal c_33_23_1_False_shift: signed(23 downto 0);
  signal c_33_17_0_False_resize: signed(23 downto 0);
  signal c_33_17_0_False_shift: signed(23 downto 0);
  signal c_33_sel: std_logic_vector(0 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(22 downto 0);
  signal c_37: signed(22 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_37_0_False_resize: signed(23 downto 0);
  signal c_38_37_0_False_shift: signed(23 downto 0);
  signal c_38_32_0_False_resize: signed(23 downto 0);
  signal c_38_32_0_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_39_32_0_False_resize: signed(23 downto 0);
  signal c_39_32_0_False_shift: signed(23 downto 0);
  signal c_39_37_1_False_resize: signed(23 downto 0);
  signal c_39_37_1_False_shift: signed(23 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_42_41_2_False_resize: signed(23 downto 0);
  signal c_42_41_2_False_shift: signed(23 downto 0);
  signal c_42_23_0_False_resize: signed(23 downto 0);
  signal c_42_23_0_False_shift: signed(23 downto 0);
  signal c_42_41_0_False_resize: signed(23 downto 0);
  signal c_42_41_0_False_shift: signed(23 downto 0);
  signal c_42_sel: std_logic_vector(1 downto 0);
  signal c_43: signed(15 downto 0);
  signal c_44: signed(15 downto 0);
  signal c_45: signed(15 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_17_0_False_resize: signed(23 downto 0);
  signal c_46_17_0_False_shift: signed(23 downto 0);
  signal c_46_45_2_False_resize: signed(23 downto 0);
  signal c_46_45_2_False_shift: signed(23 downto 0);
  signal c_46_41_0_False_resize: signed(23 downto 0);
  signal c_46_41_0_False_shift: signed(23 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_50_resize: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
  signal c_52: signed(23 downto 0);
  signal c_53: signed(23 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 1 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_50);
    end if;
  end process;
  -- output node 2 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_51);
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
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [4], [8], [4]]
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  c_1_0_2_False_resize <= resize(c_0, 19);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  with config_select_1 select c_1_sel <= 
    "00" when "10",
    "01" when "11",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "00" => c_1 <= c_1_0_3_False_shift;
        when "01" => c_1 <= c_1_0_2_False_shift;
        when others => c_1 <= c_1_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [1], [2], [1]]
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "0" when "00",
    "0" when "11",
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[3], [9], [14], [7]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 17,
      w_o => 20,
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
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [8], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[35], [247], [18], [39]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when "10",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[24], [9], [14], [1]]
  c_9_8_0_False_resize <= resize(c_8, 21);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_3_3_False_resize <= resize(c_3, 21);
  c_9_3_3_False_shift <= shift_left(c_9_3_3_False_resize, 3);
  c_9_3_0_False_resize <= resize(c_3, 21);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "00" when "11",
    "01" when "00",
    "10" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "00" => c_9 <= c_9_8_0_False_shift;
        when "01" => c_9 <= c_9_3_3_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[3], [9], [14], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 11 and associated fundamentals [[93], [45], [70], [11]]
  with config_select_4 select c_11_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_11_sub_sel,
      x_i => c_9,
      y_i => c_10,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 13 and associated fundamentals [[128], [247], [64], [128]]
  c_13_12_6_False_resize <= resize(c_12, 24);
  c_13_12_6_False_shift <= shift_left(c_13_12_6_False_resize, 6);
  c_13_6_0_False_resize <= c_6;
  c_13_6_0_False_shift <= shift_left(c_13_6_0_False_resize, 0);
  c_13_12_7_False_resize <= resize(c_12, 24);
  c_13_12_7_False_shift <= shift_left(c_13_12_7_False_resize, 7);
  with config_select_4 select c_13_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_12_6_False_shift;
        when "01" => c_13 <= c_13_6_0_False_shift;
        when others => c_13 <= c_13_12_7_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[3], [9], [14], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 15 and associated fundamentals [[93], [72], [70], [11]]
  c_15_11_0_False_resize <= c_11;
  c_15_11_0_False_shift <= shift_left(c_15_11_0_False_resize, 0);
  c_15_14_3_False_resize <= resize(c_14, 23);
  c_15_14_3_False_shift <= shift_left(c_15_14_3_False_resize, 3);
  with config_select_5 select c_15_sel <= 
    "0" when "11",
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_11_0_False_shift;
        when others => c_15 <= c_15_14_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 16 and associated fundamentals [[128], [247], [64], [128]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 17 and associated fundamentals [[221], [175], [134], [117]]
  with config_select_6 select c_17_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_17: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
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
      sub_i => c_17_sub_sel,
      x_i => c_16,
      y_i => c_15,
      z_o => c_17_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_17_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 18 and associated fundamentals [[48], [1], [1], [112]]
  c_18_3_4_False_resize <= resize(c_3, 23);
  c_18_3_4_False_shift <= shift_left(c_18_3_4_False_resize, 4);
  c_18_8_0_False_resize <= resize(c_8, 23);
  c_18_8_0_False_shift <= shift_left(c_18_8_0_False_resize, 0);
  with config_select_3 select c_18_sel <= 
    "0" when "00",
    "0" when "11",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_3_4_False_shift;
        when others => c_18 <= c_18_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[35], [247], [18], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[35], [90], [140], [22]]
  c_20_11_1_False_resize <= resize(c_11, 24);
  c_20_11_1_False_shift <= shift_left(c_20_11_1_False_resize, 1);
  c_20_19_0_False_resize <= c_19;
  c_20_19_0_False_shift <= shift_left(c_20_19_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "0" when "11",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_11_1_False_shift;
        when others => c_20 <= c_20_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[48], [1], [1], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[48], [1], [1], [112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 23 and associated fundamentals [[83], [91], [141], [90]]
  with config_select_6 select c_23_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_20,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[3], [9], [14], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[3], [9], [14], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 26 and associated fundamentals [[221], [144], [224], [234]]
  c_26_25_4_False_resize <= resize(c_25, 24);
  c_26_25_4_False_shift <= shift_left(c_26_25_4_False_resize, 4);
  c_26_17_0_False_resize <= c_17;
  c_26_17_0_False_shift <= shift_left(c_26_17_0_False_resize, 0);
  c_26_17_1_False_resize <= c_17;
  c_26_17_1_False_shift <= shift_left(c_26_17_1_False_resize, 1);
  with config_select_7 select c_26_sel <= 
    "00" when "01",
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_25_4_False_shift;
        when "01" => c_26 <= c_26_17_0_False_shift;
        when others => c_26 <= c_26_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[12], [1], [56], [28]]
  c_27_3_2_False_resize <= resize(c_3, 22);
  c_27_3_2_False_shift <= shift_left(c_27_3_2_False_resize, 2);
  c_27_8_0_False_resize <= resize(c_8, 22);
  c_27_8_0_False_shift <= shift_left(c_27_8_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "10",
    "0" when "11",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_3_2_False_shift;
        when others => c_27 <= c_27_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 28 and associated fundamentals [[12], [1], [56], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 29 and associated fundamentals [[12], [1], [56], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 30 and associated fundamentals [[12], [1], [56], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[12], [1], [56], [28]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 32 and associated fundamentals [[209], [145], [168], [206]]
  with config_select_8 select c_32_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 22,
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
      sub_i => c_32_sub_sel,
      x_i => c_26,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 33 and associated fundamentals [[221], [182], [134], [180]]
  c_33_23_1_False_resize <= c_23;
  c_33_23_1_False_shift <= shift_left(c_33_23_1_False_resize, 1);
  c_33_17_0_False_resize <= c_17;
  c_33_17_0_False_shift <= shift_left(c_33_17_0_False_resize, 0);
  with config_select_7 select c_33_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_33_sel is
        when "0" => c_33 <= c_33_23_1_False_shift;
        when others => c_33 <= c_33_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 34 and associated fundamentals [[93], [45], [70], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[93], [45], [70], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 36 and associated fundamentals [[93], [45], [70], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 37 and associated fundamentals [[93], [45], [70], [11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 38 and associated fundamentals [[93], [45], [168], [206]]
  c_38_37_0_False_resize <= resize(c_37, 24);
  c_38_37_0_False_shift <= shift_left(c_38_37_0_False_resize, 0);
  c_38_32_0_False_resize <= c_32;
  c_38_32_0_False_shift <= shift_left(c_38_32_0_False_resize, 0);
  with config_select_9 select c_38_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_37_0_False_shift;
        when others => c_38 <= c_38_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 39 and associated fundamentals [[209], [145], [140], [22]]
  c_39_32_0_False_resize <= c_32;
  c_39_32_0_False_shift <= shift_left(c_39_32_0_False_resize, 0);
  c_39_37_1_False_resize <= resize(c_37, 24);
  c_39_37_1_False_shift <= shift_left(c_39_37_1_False_resize, 1);
  with config_select_9 select c_39_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_32_0_False_shift;
        when others => c_39 <= c_39_37_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 40 and associated fundamentals [[35], [247], [18], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 41 and associated fundamentals [[35], [247], [18], [39]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 42 and associated fundamentals [[83], [247], [141], [156]]
  c_42_41_2_False_resize <= c_41;
  c_42_41_2_False_shift <= shift_left(c_42_41_2_False_resize, 2);
  c_42_23_0_False_resize <= c_23;
  c_42_23_0_False_shift <= shift_left(c_42_23_0_False_resize, 0);
  c_42_41_0_False_resize <= c_41;
  c_42_41_0_False_shift <= shift_left(c_42_41_0_False_resize, 0);
  with config_select_7 select c_42_sel <= 
    "00" when "11",
    "01" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "00" => c_42 <= c_42_41_2_False_shift;
        when "01" => c_42 <= c_42_23_0_False_shift;
        when others => c_42 <= c_42_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 43 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 44 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 45 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 46 and associated fundamentals [[4], [175], [18], [117]]
  c_46_17_0_False_resize <= c_17;
  c_46_17_0_False_shift <= shift_left(c_46_17_0_False_resize, 0);
  c_46_45_2_False_resize <= resize(c_45, 24);
  c_46_45_2_False_shift <= shift_left(c_46_45_2_False_resize, 2);
  c_46_41_0_False_resize <= c_41;
  c_46_41_0_False_shift <= shift_left(c_46_41_0_False_resize, 0);
  with config_select_7 select c_46_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_17_0_False_shift;
        when "01" => c_46 <= c_46_45_2_False_shift;
        when others => c_46 <= c_46_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[221], [182], [134], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[221], [182], [134], [180]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 49 and associated fundamentals [[221], [182], [134], [180]]
  c_49_resize <= c_48;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'output' in stage 9 with id 50 and associated fundamentals [[93], [45], [168], [206]]
  c_50_resize <= c_38;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[209], [145], [140], [22]]
  c_51_resize <= c_39;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[83], [247], [141], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[83], [247], [141], [156]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 54 and associated fundamentals [[83], [247], [141], [156]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[4], [175], [18], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[4], [175], [18], [117]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 57 and associated fundamentals [[4], [175], [18], [117]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
end architecture;
