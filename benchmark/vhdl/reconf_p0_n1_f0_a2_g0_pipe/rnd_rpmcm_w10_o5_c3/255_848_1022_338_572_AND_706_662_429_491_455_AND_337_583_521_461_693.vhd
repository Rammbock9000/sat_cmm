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
    y_3: out std_logic_vector(24 downto 0);
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
  signal c_1: signed(19 downto 0);
  signal c_1_i0_resize: signed(19 downto 0);
  signal c_1_i1_resize: signed(19 downto 0);
  signal c_1_i0_shift: signed(19 downto 0);
  signal c_1_i1_shift: signed(19 downto 0);
  signal c_1_arith: signed(19 downto 0);
  signal c_1_oshift: signed(19 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_2_6_False_resize: signed(21 downto 0);
  signal c_3_2_6_False_shift: signed(21 downto 0);
  signal c_3_1_0_False_resize: signed(21 downto 0);
  signal c_3_1_0_False_shift: signed(21 downto 0);
  signal c_3_2_0_False_resize: signed(21 downto 0);
  signal c_3_2_0_False_shift: signed(21 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_i0_resize: signed(21 downto 0);
  signal c_5_i1_resize: signed(21 downto 0);
  signal c_5_i0_shift: signed(21 downto 0);
  signal c_5_i1_shift: signed(21 downto 0);
  signal c_5_arith: signed(21 downto 0);
  signal c_5_oshift: signed(21 downto 0);
  signal c_6: signed(19 downto 0);
  signal c_7: signed(19 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_8_5_3_False_resize: signed(20 downto 0);
  signal c_8_5_3_False_shift: signed(20 downto 0);
  signal c_8_7_0_False_resize: signed(20 downto 0);
  signal c_8_7_0_False_shift: signed(20 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_10: signed(24 downto 0);
  signal c_10_i0_resize: signed(24 downto 0);
  signal c_10_i1_resize: signed(24 downto 0);
  signal c_10_i0_shift: signed(24 downto 0);
  signal c_10_i1_shift: signed(24 downto 0);
  signal c_10_arith: signed(24 downto 0);
  signal c_10_oshift: signed(24 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_5_0_False_resize: signed(22 downto 0);
  signal c_11_5_0_False_shift: signed(22 downto 0);
  signal c_11_5_1_False_resize: signed(22 downto 0);
  signal c_11_5_1_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(15 downto 0);
  signal c_13: signed(15 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_14_i0_resize: signed(22 downto 0);
  signal c_14_i1_resize: signed(22 downto 0);
  signal c_14_i0_shift: signed(22 downto 0);
  signal c_14_i1_shift: signed(22 downto 0);
  signal c_14_arith: signed(22 downto 0);
  signal c_14_oshift: signed(22 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(19 downto 0);
  signal c_15_12_2_False_resize: signed(19 downto 0);
  signal c_15_12_2_False_shift: signed(19 downto 0);
  signal c_15_5_0_False_resize: signed(19 downto 0);
  signal c_15_5_0_False_shift: signed(19 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(21 downto 0);
  signal c_18: signed(21 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_16_2_False_resize: signed(25 downto 0);
  signal c_19_16_2_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(24 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(24 downto 0);
  signal c_22_18_1_False_resize: signed(24 downto 0);
  signal c_22_18_1_False_shift: signed(24 downto 0);
  signal c_22_16_0_False_resize: signed(24 downto 0);
  signal c_22_16_0_False_shift: signed(24 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_1_5_False_resize: signed(24 downto 0);
  signal c_23_1_5_False_shift: signed(24 downto 0);
  signal c_23_1_0_False_resize: signed(24 downto 0);
  signal c_23_1_0_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(24 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_i0_resize: signed(25 downto 0);
  signal c_28_i1_resize: signed(25 downto 0);
  signal c_28_i0_shift: signed(25 downto 0);
  signal c_28_i1_shift: signed(25 downto 0);
  signal c_28_arith: signed(25 downto 0);
  signal c_28_oshift: signed(25 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(21 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(25 downto 0);
  signal c_31_28_0_False_resize: signed(25 downto 0);
  signal c_31_28_0_False_shift: signed(25 downto 0);
  signal c_31_30_4_False_resize: signed(25 downto 0);
  signal c_31_30_4_False_shift: signed(25 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_32_14_2_False_resize: signed(22 downto 0);
  signal c_32_14_2_False_shift: signed(22 downto 0);
  signal c_32_14_0_False_resize: signed(22 downto 0);
  signal c_32_14_0_False_shift: signed(22 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(23 downto 0);
  signal c_36_16_0_False_resize: signed(23 downto 0);
  signal c_36_16_0_False_shift: signed(23 downto 0);
  signal c_36_18_4_False_resize: signed(23 downto 0);
  signal c_36_18_4_False_shift: signed(23 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_i0_resize: signed(25 downto 0);
  signal c_37_i1_resize: signed(25 downto 0);
  signal c_37_i0_shift: signed(25 downto 0);
  signal c_37_i1_shift: signed(25 downto 0);
  signal c_37_arith: signed(25 downto 0);
  signal c_37_oshift: signed(25 downto 0);
  signal c_37_sub_sel: std_logic;
  signal c_38: signed(19 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_39_10_0_False_resize: signed(24 downto 0);
  signal c_39_10_0_False_shift: signed(24 downto 0);
  signal c_39_38_5_False_resize: signed(24 downto 0);
  signal c_39_38_5_False_shift: signed(24 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(22 downto 0);
  signal c_41: signed(24 downto 0);
  signal c_41_i0_resize: signed(24 downto 0);
  signal c_41_i1_resize: signed(24 downto 0);
  signal c_41_i0_shift: signed(24 downto 0);
  signal c_41_i1_shift: signed(24 downto 0);
  signal c_41_arith: signed(24 downto 0);
  signal c_41_oshift: signed(24 downto 0);
  signal c_42: signed(24 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_28_0_False_resize: signed(25 downto 0);
  signal c_44_28_0_False_shift: signed(25 downto 0);
  signal c_44_43_0_False_resize: signed(25 downto 0);
  signal c_44_43_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_37_0_False_resize: signed(25 downto 0);
  signal c_45_37_0_False_shift: signed(25 downto 0);
  signal c_45_43_2_False_resize: signed(25 downto 0);
  signal c_45_43_2_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_resize: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_54_resize: signed(24 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
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
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
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
  -- output node 4 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_56);
    end if;
  end process;
  -- node of type 'sub' in stage 1 with id 1 and associated fundamentals [[15], [15], [15]]
  inst_adder_node_1: entity work.adder_node
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
      z_o => c_1_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= c_1_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[64], [1], [15]]
  c_3_2_6_False_resize <= resize(c_2, 22);
  c_3_2_6_False_shift <= shift_left(c_3_2_6_False_resize, 6);
  c_3_1_0_False_resize <= resize(c_1, 22);
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_0_False_resize <= resize(c_2, 22);
  c_3_2_0_False_shift <= shift_left(c_3_2_0_False_resize, 0);
  with config_select_2 select c_3_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_2_6_False_shift;
        when "01" => c_3 <= c_3_1_0_False_shift;
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
  -- node of type 'sub' in stage 3 with id 5 and associated fundamentals [[-60], [3], [-11]]
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 22,
      s_x_i => 2,
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
      y_i => c_3,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[15], [24], [15]]
  c_8_5_3_False_resize <= c_5(20 downto 0);
  c_8_5_3_False_shift <= shift_left(c_8_5_3_False_resize, 3);
  c_8_7_0_False_resize <= resize(c_7, 21);
  c_8_7_0_False_shift <= shift_left(c_8_7_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_5_3_False_shift;
        when others => c_8 <= c_8_7_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[450], [432], [510]]
  with config_select_5 select c_10_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 21,
      w_o => 25,
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
      sub_i => c_10_sub_sel,
      x_i => c_9,
      y_i => c_8,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[-120], [3], [-11]]
  c_11_5_0_False_resize <= resize(c_5, 23);
  c_11_5_0_False_shift <= shift_left(c_11_5_0_False_resize, 0);
  c_11_5_1_False_resize <= resize(c_5, 23);
  c_11_5_1_False_shift <= shift_left(c_11_5_1_False_resize, 1);
  with config_select_4 select c_11_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_5_0_False_shift;
        when others => c_11 <= c_11_5_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 14 and associated fundamentals [[-112], [11], [-19]]
  with config_select_5 select c_14_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
      w_o => 23,
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
      sub_i => c_14_sub_sel,
      x_i => c_11,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[4], [4], [-11]]
  c_15_12_2_False_resize <= resize(c_12, 20);
  c_15_12_2_False_shift <= shift_left(c_15_12_2_False_resize, 2);
  c_15_5_0_False_resize <= c_5(19 downto 0);
  c_15_5_0_False_shift <= shift_left(c_15_5_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_12_2_False_shift;
        when others => c_15 <= c_15_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 16 and associated fundamentals [[143], [-113], [-337]]
  with config_select_5 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 5,
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
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[-60], [3], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 18 and associated fundamentals [[-60], [3], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 19 and associated fundamentals [[572], [3], [-11]]
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_16_2_False_resize <= resize(c_16, 26);
  c_19_16_2_False_shift <= shift_left(c_19_16_2_False_resize, 2);
  with config_select_6 select c_19_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_18_0_False_shift;
        when others => c_19 <= c_19_16_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[450], [432], [510]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 21 and associated fundamentals [[1022], [429], [521]]
  with config_select_7 select c_21_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_21_sub_sel,
      x_i => c_20,
      y_i => c_19,
      z_o => c_21_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_21_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[-120], [-113], [-337]]
  c_22_18_1_False_resize <= resize(c_18, 25);
  c_22_18_1_False_shift <= shift_left(c_22_18_1_False_resize, 1);
  c_22_16_0_False_resize <= c_16;
  c_22_16_0_False_shift <= shift_left(c_22_16_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_18_1_False_shift;
        when others => c_22 <= c_22_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 23 and associated fundamentals [[15], [480], [15]]
  c_23_1_5_False_resize <= resize(c_1, 25);
  c_23_1_5_False_shift <= shift_left(c_23_1_5_False_resize, 5);
  c_23_1_0_False_resize <= resize(c_1, 25);
  c_23_1_0_False_shift <= shift_left(c_23_1_0_False_resize, 0);
  with config_select_2 select c_23_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_1_5_False_shift;
        when others => c_23 <= c_23_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[15], [480], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[15], [480], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[15], [480], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[15], [480], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 28 and associated fundamentals [[-255], [-706], [-659]]
  with config_select_7 select c_28_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_28: entity work.adder_node
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
      sub_i => c_28_sub_sel,
      x_i => c_22,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 29 and associated fundamentals [[-60], [3], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[-60], [3], [-11]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 31 and associated fundamentals [[-960], [-706], [-659]]
  c_31_28_0_False_resize <= c_28;
  c_31_28_0_False_shift <= shift_left(c_31_28_0_False_resize, 0);
  c_31_30_4_False_resize <= resize(c_30, 26);
  c_31_30_4_False_shift <= shift_left(c_31_30_4_False_resize, 4);
  with config_select_8 select c_31_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_28_0_False_shift;
        when others => c_31 <= c_31_30_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 32 and associated fundamentals [[-112], [44], [-76]]
  c_32_14_2_False_resize <= c_14;
  c_32_14_2_False_shift <= shift_left(c_32_14_2_False_resize, 2);
  c_32_14_0_False_resize <= c_14;
  c_32_14_0_False_shift <= shift_left(c_32_14_0_False_resize, 0);
  with config_select_6 select c_32_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_14_2_False_shift;
        when others => c_32 <= c_32_14_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[-112], [44], [-76]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 34 and associated fundamentals [[-112], [44], [-76]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 35 and associated fundamentals [[-848], [-662], [-583]]
  with config_select_9 select c_35_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_35: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_35_sub_sel,
      x_i => c_31,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 36 and associated fundamentals [[143], [-113], [-176]]
  c_36_16_0_False_resize <= c_16(23 downto 0);
  c_36_16_0_False_shift <= shift_left(c_36_16_0_False_resize, 0);
  c_36_18_4_False_resize <= resize(c_18, 24);
  c_36_18_4_False_shift <= shift_left(c_36_18_4_False_resize, 4);
  with config_select_6 select c_36_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_16_0_False_shift;
        when others => c_36 <= c_36_18_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 37 and associated fundamentals [[512], [455], [693]]
  with config_select_7 select c_37_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_37: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
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
      sub_i => c_37_sub_sel,
      x_i => c_29,
      y_i => c_36,
      z_o => c_37_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_37_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[15], [15], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 39 and associated fundamentals [[450], [480], [480]]
  c_39_10_0_False_resize <= c_10;
  c_39_10_0_False_shift <= shift_left(c_39_10_0_False_resize, 0);
  c_39_38_5_False_resize <= resize(c_38, 25);
  c_39_38_5_False_shift <= shift_left(c_39_38_5_False_resize, 5);
  with config_select_6 select c_39_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_10_0_False_shift;
        when others => c_39 <= c_39_38_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[-112], [11], [-19]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 41 and associated fundamentals [[338], [491], [461]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 23,
      w_o => 25,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_39,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[143], [-113], [-337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[143], [-113], [-337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 44 and associated fundamentals [[-255], [-706], [-337]]
  c_44_28_0_False_resize <= c_28;
  c_44_28_0_False_shift <= shift_left(c_44_28_0_False_resize, 0);
  c_44_43_0_False_resize <= resize(c_43, 26);
  c_44_43_0_False_shift <= shift_left(c_44_43_0_False_resize, 0);
  with config_select_8 select c_44_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_28_0_False_shift;
        when others => c_44 <= c_44_43_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 45 and associated fundamentals [[572], [455], [693]]
  c_45_37_0_False_resize <= c_37;
  c_45_37_0_False_shift <= shift_left(c_45_37_0_False_resize, 0);
  c_45_43_2_False_resize <= resize(c_43, 26);
  c_45_43_2_False_shift <= shift_left(c_45_43_2_False_resize, 2);
  with config_select_8 select c_45_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_37_0_False_shift;
        when others => c_45 <= c_45_43_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[-255], [-706], [-337]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 47 and associated fundamentals [[255], [706], [337]]
  c_47_resize <= c_46;
  c_47 <= -shift_left(c_47_resize, 0);
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[848], [662], [583]]
  c_48_resize <= c_35;
  c_48 <= -shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[1022], [429], [521]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[1022], [429], [521]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[338], [491], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[338], [491], [461]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 54 and associated fundamentals [[338], [491], [461]]
  c_54_resize <= c_53;
  c_54 <= shift_left(c_54_resize, 0);
  -- node of type 'register' in stage 9 with id 55 and associated fundamentals [[572], [455], [693]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_45 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 56 and associated fundamentals [[572], [455], [693]]
  c_56_resize <= c_55;
  c_56 <= shift_left(c_56_resize, 0);
end architecture;
