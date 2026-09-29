library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(0 downto 0);
    y_0: out std_logic_vector(25 downto 0);
    y_1: out std_logic_vector(25 downto 0);
    y_2: out std_logic_vector(25 downto 0);
    y_3: out std_logic_vector(25 downto 0);
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
  signal c_1: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(16 downto 0);
  signal c_2_0_1_False_resize: signed(16 downto 0);
  signal c_2_0_1_False_shift: signed(16 downto 0);
  signal c_2_0_0_False_resize: signed(16 downto 0);
  signal c_2_0_0_False_shift: signed(16 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(18 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(19 downto 0);
  signal c_9_8_0_False_resize: signed(19 downto 0);
  signal c_9_8_0_False_shift: signed(19 downto 0);
  signal c_9_3_0_False_resize: signed(19 downto 0);
  signal c_9_3_0_False_shift: signed(19 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(22 downto 0);
  signal c_10_i0_resize: signed(22 downto 0);
  signal c_10_i1_resize: signed(22 downto 0);
  signal c_10_i0_shift: signed(22 downto 0);
  signal c_10_i1_shift: signed(22 downto 0);
  signal c_10_arith: signed(22 downto 0);
  signal c_10_oshift: signed(22 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(22 downto 0);
  signal c_13_12_0_False_resize: signed(22 downto 0);
  signal c_13_12_0_False_shift: signed(22 downto 0);
  signal c_13_10_2_False_resize: signed(22 downto 0);
  signal c_13_10_2_False_shift: signed(22 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_16_i0_resize: signed(24 downto 0);
  signal c_16_i1_resize: signed(24 downto 0);
  signal c_16_i0_shift: signed(24 downto 0);
  signal c_16_i1_shift: signed(24 downto 0);
  signal c_16_arith: signed(24 downto 0);
  signal c_16_oshift: signed(24 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(22 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_16_2_False_resize: signed(25 downto 0);
  signal c_18_16_2_False_shift: signed(25 downto 0);
  signal c_18_17_0_False_resize: signed(25 downto 0);
  signal c_18_17_0_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(0 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_14_6_False_resize: signed(25 downto 0);
  signal c_19_14_6_False_shift: signed(25 downto 0);
  signal c_19_10_0_False_resize: signed(25 downto 0);
  signal c_19_10_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(0 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(15 downto 0);
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_29_22_0_False_resize: signed(24 downto 0);
  signal c_29_22_0_False_shift: signed(24 downto 0);
  signal c_29_28_1_False_resize: signed(24 downto 0);
  signal c_29_28_1_False_shift: signed(24 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(22 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_16_0_False_resize: signed(25 downto 0);
  signal c_32_16_0_False_shift: signed(25 downto 0);
  signal c_32_31_5_False_resize: signed(25 downto 0);
  signal c_32_31_5_False_shift: signed(25 downto 0);
  signal c_32_sel: std_logic_vector(0 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_35_i0_resize: signed(25 downto 0);
  signal c_35_i1_resize: signed(25 downto 0);
  signal c_35_i0_shift: signed(25 downto 0);
  signal c_35_i1_shift: signed(25 downto 0);
  signal c_35_arith: signed(25 downto 0);
  signal c_35_oshift: signed(25 downto 0);
  signal c_35_sub_sel: std_logic;
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_22_0_False_resize: signed(25 downto 0);
  signal c_40_22_0_False_shift: signed(25 downto 0);
  signal c_40_39_1_False_resize: signed(25 downto 0);
  signal c_40_39_1_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(22 downto 0);
  signal c_42: signed(22 downto 0);
  signal c_43: signed(22 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_i0_resize: signed(25 downto 0);
  signal c_44_i1_resize: signed(25 downto 0);
  signal c_44_i0_shift: signed(25 downto 0);
  signal c_44_i1_shift: signed(25 downto 0);
  signal c_44_arith: signed(25 downto 0);
  signal c_44_oshift: signed(25 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_45_16_0_False_resize: signed(24 downto 0);
  signal c_45_16_0_False_shift: signed(24 downto 0);
  signal c_45_17_1_False_resize: signed(24 downto 0);
  signal c_45_17_1_False_shift: signed(24 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(22 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_47_35_0_False_resize: signed(25 downto 0);
  signal c_47_35_0_False_shift: signed(25 downto 0);
  signal c_47_46_1_False_resize: signed(25 downto 0);
  signal c_47_46_1_False_shift: signed(25 downto 0);
  signal c_47_sel: std_logic_vector(0 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(24 downto 0);
  signal c_50_49_4_False_resize: signed(24 downto 0);
  signal c_50_49_4_False_shift: signed(24 downto 0);
  signal c_50_35_0_False_resize: signed(24 downto 0);
  signal c_50_35_0_False_shift: signed(24 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(24 downto 0);
  signal c_52: signed(24 downto 0);
  signal c_53: signed(24 downto 0);
  signal c_54: signed(24 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_resize: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_61_resize: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
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
  -- output node 0 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 1 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 2 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 3 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_61);
    end if;
  end process;
  -- output node 4 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_63);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[64], [1]]
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  with config_select_1 select c_1_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[1], [2]]
  c_2_0_1_False_resize <= resize(c_0, 17);
  c_2_0_1_False_shift <= shift_left(c_2_0_1_False_resize, 1);
  c_2_0_0_False_resize <= resize(c_0, 17);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_1_False_shift;
        when others => c_2 <= c_2_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[60], [9]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 17,
      w_o => 22,
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
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[8], [1]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "1",
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
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add' in stage 3 with id 6 and associated fundamentals [[92], [13]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 23,
      s_x_i => 0,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 7 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 9 and associated fundamentals [[1], [9]]
  c_9_8_0_False_resize <= resize(c_8, 20);
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_3_0_False_resize <= c_3(19 downto 0);
  c_9_3_0_False_shift <= shift_left(c_9_3_0_False_resize, 0);
  with config_select_3 select c_9_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_0_False_shift;
        when others => c_9 <= c_9_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 4 with id 10 and associated fundamentals [[93], [22]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 23,
      w_o => 23,
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
      x_i => c_9,
      y_i => c_6,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[60], [88]]
  c_13_12_0_False_resize <= resize(c_12, 23);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_10_2_False_resize <= c_10;
  c_13_10_2_False_shift <= shift_left(c_13_10_2_False_resize, 2);
  with config_select_5 select c_13_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_10_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[92], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[92], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[148], [365]]
  with config_select_6 select c_16_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      sub_i => c_16_sub_sel,
      x_i => c_13,
      y_i => c_15,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 17 and associated fundamentals [[92], [13]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_15 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 18 and associated fundamentals [[592], [13]]
  c_18_16_2_False_resize <= resize(c_16, 26);
  c_18_16_2_False_shift <= shift_left(c_18_16_2_False_resize, 2);
  c_18_17_0_False_resize <= resize(c_17, 26);
  c_18_17_0_False_shift <= shift_left(c_18_17_0_False_resize, 0);
  with config_select_7 select c_18_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "0" => c_18 <= c_18_16_2_False_shift;
        when others => c_18 <= c_18_17_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[93], [832]]
  c_19_14_6_False_resize <= resize(c_14, 26);
  c_19_14_6_False_shift <= shift_left(c_19_14_6_False_resize, 6);
  c_19_10_0_False_resize <= resize(c_10, 26);
  c_19_10_0_False_shift <= shift_left(c_19_10_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "0" => c_19 <= c_19_14_6_False_shift;
        when others => c_19 <= c_19_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[93], [832]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 21 and associated fundamentals [[93], [832]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 22 and associated fundamentals [[499], [845]]
  with config_select_8 select c_22_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_18,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 28 and associated fundamentals [[1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 29 and associated fundamentals [[499], [2]]
  c_29_22_0_False_resize <= c_22(24 downto 0);
  c_29_22_0_False_shift <= shift_left(c_29_22_0_False_resize, 0);
  c_29_28_1_False_resize <= resize(c_28, 25);
  c_29_28_1_False_shift <= shift_left(c_29_28_1_False_resize, 1);
  with config_select_9 select c_29_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_22_0_False_shift;
        when others => c_29 <= c_29_28_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[93], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[93], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 32 and associated fundamentals [[148], [704]]
  c_32_16_0_False_resize <= resize(c_16, 26);
  c_32_16_0_False_shift <= shift_left(c_32_16_0_False_resize, 0);
  c_32_31_5_False_resize <= resize(c_31, 26);
  c_32_31_5_False_shift <= shift_left(c_32_31_5_False_resize, 5);
  with config_select_7 select c_32_sel <= 
    "0" when "0",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_32_sel is
        when "0" => c_32 <= c_32_16_0_False_shift;
        when others => c_32 <= c_32_31_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[148], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 34 and associated fundamentals [[148], [704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 35 and associated fundamentals [[351], [706]]
  with config_select_10 select c_35_sub_sel <= 
    '1' when "0",
    '0' when others;
  inst_adder_node_35: entity work.adder_node
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
      sub_i => c_35_sub_sel,
      x_i => c_29,
      y_i => c_34,
      z_o => c_35_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_35_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 40 and associated fundamentals [[120], [845]]
  c_40_22_0_False_resize <= c_22;
  c_40_22_0_False_shift <= shift_left(c_40_22_0_False_resize, 0);
  c_40_39_1_False_resize <= resize(c_39, 26);
  c_40_39_1_False_shift <= shift_left(c_40_39_1_False_resize, 1);
  with config_select_9 select c_40_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_22_0_False_shift;
        when others => c_40 <= c_40_39_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[93], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[93], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[93], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'add' in stage 10 with id 44 and associated fundamentals [[213], [867]]
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
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
      x_i => c_43,
      y_i => c_40,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 45 and associated fundamentals [[184], [365]]
  c_45_16_0_False_resize <= c_16;
  c_45_16_0_False_shift <= shift_left(c_45_16_0_False_resize, 0);
  c_45_17_1_False_resize <= resize(c_17, 25);
  c_45_17_1_False_shift <= shift_left(c_45_17_1_False_resize, 1);
  with config_select_7 select c_45_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_16_0_False_shift;
        when others => c_45 <= c_45_17_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 46 and associated fundamentals [[93], [22]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 47 and associated fundamentals [[186], [706]]
  c_47_35_0_False_resize <= c_35;
  c_47_35_0_False_shift <= shift_left(c_47_35_0_False_resize, 0);
  c_47_46_1_False_resize <= resize(c_46, 26);
  c_47_46_1_False_shift <= shift_left(c_47_46_1_False_resize, 1);
  with config_select_11 select c_47_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_47_sel is
        when "0" => c_47 <= c_47_35_0_False_shift;
        when others => c_47 <= c_47_46_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[60], [9]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 50 and associated fundamentals [[351], [144]]
  c_50_49_4_False_resize <= resize(c_49, 25);
  c_50_49_4_False_shift <= shift_left(c_50_49_4_False_resize, 4);
  c_50_35_0_False_resize <= c_35(24 downto 0);
  c_50_35_0_False_shift <= shift_left(c_50_35_0_False_resize, 0);
  with config_select_11 select c_50_sel <= 
    "0" when "1",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_49_4_False_shift;
        when others => c_50 <= c_50_35_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 51 and associated fundamentals [[184], [365]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 52 and associated fundamentals [[184], [365]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[184], [365]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[184], [365]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 55 and associated fundamentals [[368], [730]]
  c_55_resize <= resize(c_54, 26);
  c_55 <= shift_left(c_55_resize, 1);
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[499], [845]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[499], [845]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 58 and associated fundamentals [[499], [845]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 59 and associated fundamentals [[499], [845]]
  c_59_resize <= c_58;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'output' in stage 11 with id 60 and associated fundamentals [[186], [706]]
  c_60_resize <= c_47;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'output' in stage 11 with id 61 and associated fundamentals [[702], [288]]
  c_61_resize <= resize(c_50, 26);
  c_61 <= shift_left(c_61_resize, 1);
  -- node of type 'register' in stage 11 with id 62 and associated fundamentals [[213], [867]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 63 and associated fundamentals [[213], [867]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
end architecture;
