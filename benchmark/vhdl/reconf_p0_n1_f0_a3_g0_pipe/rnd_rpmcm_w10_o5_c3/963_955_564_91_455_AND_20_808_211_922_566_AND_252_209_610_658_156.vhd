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
  signal config_select_10: std_logic_vector(1 downto 0);
  signal config_select_11: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_1_i0_resize: signed(17 downto 0);
  signal c_1_i1_resize: signed(17 downto 0);
  signal c_1_i0_shift: signed(17 downto 0);
  signal c_1_i1_shift: signed(17 downto 0);
  signal c_1_arith: signed(17 downto 0);
  signal c_1_oshift: signed(17 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(22 downto 0);
  signal c_4_i0_resize: signed(22 downto 0);
  signal c_4_i1_resize: signed(22 downto 0);
  signal c_4_i0_shift: signed(22 downto 0);
  signal c_4_i1_shift: signed(22 downto 0);
  signal c_4_arith: signed(22 downto 0);
  signal c_4_oshift: signed(22 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_i0_resize: signed(19 downto 0);
  signal c_5_i1_resize: signed(19 downto 0);
  signal c_5_i0_shift: signed(19 downto 0);
  signal c_5_i1_shift: signed(19 downto 0);
  signal c_5_arith: signed(19 downto 0);
  signal c_5_oshift: signed(19 downto 0);
  signal c_5_sub_sel: std_logic;
  signal c_6: signed(17 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_8: signed(22 downto 0);
  signal c_8_7_5_False_resize: signed(22 downto 0);
  signal c_8_7_5_False_shift: signed(22 downto 0);
  signal c_8_4_0_False_resize: signed(22 downto 0);
  signal c_8_4_0_False_shift: signed(22 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(17 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(19 downto 0);
  signal c_11_2_4_False_resize: signed(19 downto 0);
  signal c_11_2_4_False_shift: signed(19 downto 0);
  signal c_11_1_0_False_resize: signed(19 downto 0);
  signal c_11_1_0_False_shift: signed(19 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(19 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_15: signed(22 downto 0);
  signal c_16: signed(25 downto 0);
  signal c_16_i0_resize: signed(25 downto 0);
  signal c_16_i1_resize: signed(25 downto 0);
  signal c_16_i0_shift: signed(25 downto 0);
  signal c_16_i1_shift: signed(25 downto 0);
  signal c_16_arith: signed(25 downto 0);
  signal c_16_oshift: signed(25 downto 0);
  signal c_16_sub_sel: std_logic;
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(24 downto 0);
  signal c_19_i0_resize: signed(24 downto 0);
  signal c_19_i1_resize: signed(24 downto 0);
  signal c_19_i0_shift: signed(24 downto 0);
  signal c_19_i1_shift: signed(24 downto 0);
  signal c_19_arith: signed(24 downto 0);
  signal c_19_oshift: signed(24 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(19 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_20_6_False_resize: signed(25 downto 0);
  signal c_21_20_6_False_shift: signed(25 downto 0);
  signal c_21_19_0_False_resize: signed(25 downto 0);
  signal c_21_19_0_False_shift: signed(25 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(15 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_22_9_False_resize: signed(24 downto 0);
  signal c_23_22_9_False_shift: signed(24 downto 0);
  signal c_23_6_0_False_resize: signed(24 downto 0);
  signal c_23_6_0_False_shift: signed(24 downto 0);
  signal c_23_3_2_False_resize: signed(24 downto 0);
  signal c_23_3_2_False_shift: signed(24 downto 0);
  signal c_23_sel: std_logic_vector(1 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_25: signed(24 downto 0);
  signal c_26: signed(24 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(22 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_27_0_False_resize: signed(24 downto 0);
  signal c_30_27_0_False_shift: signed(24 downto 0);
  signal c_30_29_2_False_resize: signed(24 downto 0);
  signal c_30_29_2_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(22 downto 0);
  signal c_31_4_0_False_resize: signed(22 downto 0);
  signal c_31_4_0_False_shift: signed(22 downto 0);
  signal c_31_17_5_False_resize: signed(22 downto 0);
  signal c_31_17_5_False_shift: signed(22 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(22 downto 0);
  signal c_33: signed(22 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_35: signed(22 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_i0_resize: signed(25 downto 0);
  signal c_36_i1_resize: signed(25 downto 0);
  signal c_36_i0_shift: signed(25 downto 0);
  signal c_36_i1_shift: signed(25 downto 0);
  signal c_36_arith: signed(25 downto 0);
  signal c_36_oshift: signed(25 downto 0);
  signal c_36_sub_sel: std_logic;
  signal c_37: signed(19 downto 0);
  signal c_38: signed(19 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_38_2_False_resize: signed(25 downto 0);
  signal c_39_38_2_False_shift: signed(25 downto 0);
  signal c_39_27_0_False_resize: signed(25 downto 0);
  signal c_39_27_0_False_shift: signed(25 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_16_0_False_resize: signed(25 downto 0);
  signal c_43_16_0_False_shift: signed(25 downto 0);
  signal c_43_42_0_False_resize: signed(25 downto 0);
  signal c_43_42_0_False_shift: signed(25 downto 0);
  signal c_43_40_2_False_resize: signed(25 downto 0);
  signal c_43_40_2_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_44_19_1_False_resize: signed(25 downto 0);
  signal c_44_19_1_False_shift: signed(25 downto 0);
  signal c_44_41_0_False_resize: signed(25 downto 0);
  signal c_44_41_0_False_shift: signed(25 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_27_1_False_resize: signed(25 downto 0);
  signal c_46_27_1_False_shift: signed(25 downto 0);
  signal c_46_45_1_False_resize: signed(25 downto 0);
  signal c_46_45_1_False_shift: signed(25 downto 0);
  signal c_46_29_0_False_resize: signed(25 downto 0);
  signal c_46_29_0_False_shift: signed(25 downto 0);
  signal c_46_sel: std_logic_vector(1 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_resize: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
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
  -- output node 0 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 1 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_51);
    end if;
  end process;
  -- output node 2 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 3 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 4 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_58);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[3], [1], [1]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[13], [15], [15]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 18,
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
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 4 and associated fundamentals [[91], [105], [105]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 20,
      w_o => 23,
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
      x_i => c_3,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 5 and associated fundamentals [[15], [5], [3]]
  with config_select_2 select c_5_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_5: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
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
      sub_i => c_5_sub_sel,
      x_i => c_1,
      y_i => c_1,
      z_o => c_5_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_5_oshift(19 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[3], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[3], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 8 and associated fundamentals [[96], [105], [32]]
  c_8_7_5_False_resize <= resize(c_7, 23);
  c_8_7_5_False_shift <= shift_left(c_8_7_5_False_resize, 5);
  c_8_4_0_False_resize <= c_4;
  c_8_4_0_False_shift <= shift_left(c_8_4_0_False_resize, 0);
  with config_select_4 select c_8_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_7_5_False_shift;
        when others => c_8 <= c_8_4_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[3], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[216], [202], [56]]
  with config_select_5 select c_10_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 18,
      w_o => 24,
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
      sub_i => c_10_sub_sel,
      x_i => c_8,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 11 and associated fundamentals [[16], [1], [1]]
  c_11_2_4_False_resize <= resize(c_2, 20);
  c_11_2_4_False_shift <= shift_left(c_11_2_4_False_resize, 4);
  c_11_1_0_False_resize <= resize(c_1, 20);
  c_11_1_0_False_shift <= shift_left(c_11_1_0_False_resize, 0);
  with config_select_2 select c_11_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_2_4_False_shift;
        when others => c_11 <= c_11_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 12 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 13 and associated fundamentals [[198], [211], [209]]
  with config_select_4 select c_13_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
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
      sub_i => c_13_sub_sel,
      x_i => c_4,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[91], [105], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 15 and associated fundamentals [[91], [105], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_14 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 16 and associated fundamentals [[955], [-703], [329]]
  with config_select_6 select c_16_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_16: entity work.adder_node
    generic map (
      w_x_i => 23,
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
      sub_i => c_16_sub_sel,
      x_i => c_15,
      y_i => c_10,
      z_o => c_16_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_16_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[15], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[15], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[282], [-51], [305]]
  with config_select_5 select c_19_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 20,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_13,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[15], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_18 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 21 and associated fundamentals [[960], [-51], [192]]
  c_21_20_6_False_resize <= resize(c_20, 26);
  c_21_20_6_False_shift <= shift_left(c_21_20_6_False_resize, 6);
  c_21_19_0_False_resize <= resize(c_19, 26);
  c_21_19_0_False_shift <= shift_left(c_21_19_0_False_resize, 0);
  with config_select_6 select c_21_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_6_False_shift;
        when others => c_21 <= c_21_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 22 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 23 and associated fundamentals [[3], [512], [60]]
  c_23_22_9_False_resize <= resize(c_22, 25);
  c_23_22_9_False_shift <= shift_left(c_23_22_9_False_resize, 9);
  c_23_6_0_False_resize <= resize(c_6, 25);
  c_23_6_0_False_shift <= shift_left(c_23_6_0_False_resize, 0);
  c_23_3_2_False_resize <= resize(c_3, 25);
  c_23_3_2_False_shift <= shift_left(c_23_3_2_False_resize, 2);
  with config_select_3 select c_23_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "00" => c_23 <= c_23_22_9_False_shift;
        when "01" => c_23 <= c_23_6_0_False_shift;
        when others => c_23 <= c_23_3_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[3], [512], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[3], [512], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 26 and associated fundamentals [[3], [512], [60]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 27 and associated fundamentals [[963], [461], [252]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 25,
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
      x_i => c_21,
      y_i => c_26,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[91], [105], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[91], [105], [105]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 30 and associated fundamentals [[364], [461], [252]]
  c_30_27_0_False_resize <= c_27(24 downto 0);
  c_30_27_0_False_shift <= shift_left(c_30_27_0_False_resize, 0);
  c_30_29_2_False_resize <= resize(c_29, 25);
  c_30_29_2_False_shift <= shift_left(c_30_29_2_False_resize, 2);
  with config_select_8 select c_30_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_27_0_False_shift;
        when others => c_30 <= c_30_29_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 31 and associated fundamentals [[91], [105], [96]]
  c_31_4_0_False_resize <= c_4;
  c_31_4_0_False_shift <= shift_left(c_31_4_0_False_resize, 0);
  c_31_17_5_False_resize <= resize(c_17, 23);
  c_31_17_5_False_shift <= shift_left(c_31_17_5_False_resize, 5);
  with config_select_4 select c_31_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_4_0_False_shift;
        when others => c_31 <= c_31_17_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[91], [105], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[91], [105], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[91], [105], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 35 and associated fundamentals [[91], [105], [96]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 36 and associated fundamentals [[455], [566], [156]]
  with config_select_9 select c_36_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_36: entity work.adder_node
    generic map (
      w_x_i => 25,
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
      sub_i => c_36_sub_sel,
      x_i => c_30,
      y_i => c_35,
      z_o => c_36_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_36_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[15], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[15], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 39 and associated fundamentals [[963], [20], [252]]
  c_39_38_2_False_resize <= resize(c_38, 26);
  c_39_38_2_False_shift <= shift_left(c_39_38_2_False_resize, 2);
  c_39_27_0_False_resize <= c_27;
  c_39_27_0_False_shift <= shift_left(c_39_27_0_False_resize, 0);
  with config_select_8 select c_39_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_38_2_False_shift;
        when others => c_39 <= c_39_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[216], [202], [56]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 41 and associated fundamentals [[198], [211], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[198], [211], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[955], [808], [209]]
  c_43_16_0_False_resize <= c_16;
  c_43_16_0_False_shift <= shift_left(c_43_16_0_False_resize, 0);
  c_43_42_0_False_resize <= resize(c_42, 26);
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_40_2_False_resize <= resize(c_40, 26);
  c_43_40_2_False_shift <= shift_left(c_43_40_2_False_resize, 2);
  with config_select_7 select c_43_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_16_0_False_shift;
        when "01" => c_43 <= c_43_42_0_False_shift;
        when others => c_43 <= c_43_40_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 44 and associated fundamentals [[564], [211], [610]]
  c_44_19_1_False_resize <= resize(c_19, 26);
  c_44_19_1_False_shift <= shift_left(c_44_19_1_False_resize, 1);
  c_44_41_0_False_resize <= resize(c_41, 26);
  c_44_41_0_False_shift <= shift_left(c_44_41_0_False_resize, 0);
  with config_select_6 select c_44_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_19_1_False_shift;
        when others => c_44 <= c_44_41_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[955], [-703], [329]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_16 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 46 and associated fundamentals [[91], [922], [658]]
  c_46_27_1_False_resize <= c_27;
  c_46_27_1_False_shift <= shift_left(c_46_27_1_False_resize, 1);
  c_46_45_1_False_resize <= c_45;
  c_46_45_1_False_shift <= shift_left(c_46_45_1_False_resize, 1);
  c_46_29_0_False_resize <= resize(c_29, 26);
  c_46_29_0_False_shift <= shift_left(c_46_29_0_False_resize, 0);
  with config_select_8 select c_46_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_46_sel is
        when "00" => c_46 <= c_46_27_1_False_shift;
        when "01" => c_46 <= c_46_45_1_False_shift;
        when others => c_46 <= c_46_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[963], [20], [252]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[963], [20], [252]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'register' in stage 8 with id 49 and associated fundamentals [[955], [808], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[955], [808], [209]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[955], [808], [209]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
  -- node of type 'register' in stage 7 with id 52 and associated fundamentals [[564], [211], [610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 53 and associated fundamentals [[564], [211], [610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[564], [211], [610]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 55 and associated fundamentals [[564], [211], [610]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[91], [922], [658]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 57 and associated fundamentals [[91], [922], [658]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 9 with id 58 and associated fundamentals [[455], [566], [156]]
  c_58_resize <= c_36;
  c_58 <= shift_left(c_58_resize, 0);
end architecture;
