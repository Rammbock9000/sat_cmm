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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(17 downto 0);
  signal c_2_0_0_False_resize: signed(17 downto 0);
  signal c_2_0_0_False_shift: signed(17 downto 0);
  signal c_2_0_2_False_resize: signed(17 downto 0);
  signal c_2_0_2_False_shift: signed(17 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(19 downto 0);
  signal c_3_i0_resize: signed(19 downto 0);
  signal c_3_i1_resize: signed(19 downto 0);
  signal c_3_i0_shift: signed(19 downto 0);
  signal c_3_i1_shift: signed(19 downto 0);
  signal c_3_arith: signed(19 downto 0);
  signal c_3_oshift: signed(19 downto 0);
  signal c_4: signed(25 downto 0);
  signal c_4_3_6_False_resize: signed(25 downto 0);
  signal c_4_3_6_False_shift: signed(25 downto 0);
  signal c_4_3_0_False_resize: signed(25 downto 0);
  signal c_4_3_0_False_shift: signed(25 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(22 downto 0);
  signal c_5_0_7_False_resize: signed(22 downto 0);
  signal c_5_0_7_False_shift: signed(22 downto 0);
  signal c_5_0_6_False_resize: signed(22 downto 0);
  signal c_5_0_6_False_shift: signed(22 downto 0);
  signal c_5_0_0_False_resize: signed(22 downto 0);
  signal c_5_0_0_False_shift: signed(22 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_7: signed(22 downto 0);
  signal c_8: signed(25 downto 0);
  signal c_8_i0_resize: signed(25 downto 0);
  signal c_8_i1_resize: signed(25 downto 0);
  signal c_8_i0_shift: signed(25 downto 0);
  signal c_8_i1_shift: signed(25 downto 0);
  signal c_8_arith: signed(25 downto 0);
  signal c_8_oshift: signed(25 downto 0);
  signal c_9: signed(25 downto 0);
  signal c_9_8_2_False_resize: signed(25 downto 0);
  signal c_9_8_2_False_shift: signed(25 downto 0);
  signal c_9_8_0_False_resize: signed(25 downto 0);
  signal c_9_8_0_False_shift: signed(25 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(17 downto 0);
  signal c_12_11_2_False_resize: signed(17 downto 0);
  signal c_12_11_2_False_shift: signed(17 downto 0);
  signal c_12_3_0_False_resize: signed(17 downto 0);
  signal c_12_3_0_False_shift: signed(17 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(17 downto 0);
  signal c_14: signed(17 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_16: signed(26 downto 0);
  signal c_16_8_3_False_resize: signed(26 downto 0);
  signal c_16_8_3_False_shift: signed(26 downto 0);
  signal c_16_8_0_False_resize: signed(26 downto 0);
  signal c_16_8_0_False_shift: signed(26 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(23 downto 0);
  signal c_21_20_4_False_resize: signed(23 downto 0);
  signal c_21_20_4_False_shift: signed(23 downto 0);
  signal c_21_15_0_False_resize: signed(23 downto 0);
  signal c_21_15_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(26 downto 0);
  signal c_23: signed(26 downto 0);
  signal c_24: signed(25 downto 0);
  signal c_24_i0_resize: signed(25 downto 0);
  signal c_24_i1_resize: signed(25 downto 0);
  signal c_24_i0_shift: signed(25 downto 0);
  signal c_24_i1_shift: signed(25 downto 0);
  signal c_24_arith: signed(25 downto 0);
  signal c_24_oshift: signed(25 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(15 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_15_0_False_resize: signed(23 downto 0);
  signal c_29_15_0_False_shift: signed(23 downto 0);
  signal c_29_28_0_False_resize: signed(23 downto 0);
  signal c_29_28_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(19 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(22 downto 0);
  signal c_34_24_2_False_resize: signed(22 downto 0);
  signal c_34_24_2_False_shift: signed(22 downto 0);
  signal c_34_33_5_False_resize: signed(22 downto 0);
  signal c_34_33_5_False_shift: signed(22 downto 0);
  signal c_34_31_0_False_resize: signed(22 downto 0);
  signal c_34_31_0_False_shift: signed(22 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(25 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_i0_resize: signed(25 downto 0);
  signal c_40_i1_resize: signed(25 downto 0);
  signal c_40_i0_shift: signed(25 downto 0);
  signal c_40_i1_shift: signed(25 downto 0);
  signal c_40_arith: signed(25 downto 0);
  signal c_40_oshift: signed(25 downto 0);
  signal c_40_sub_sel: std_logic;
  signal c_41: signed(23 downto 0);
  signal c_41_26_4_False_resize: signed(23 downto 0);
  signal c_41_26_4_False_shift: signed(23 downto 0);
  signal c_41_8_0_False_resize: signed(23 downto 0);
  signal c_41_8_0_False_shift: signed(23 downto 0);
  signal c_41_26_5_False_resize: signed(23 downto 0);
  signal c_41_26_5_False_shift: signed(23 downto 0);
  signal c_41_sel: std_logic_vector(1 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(24 downto 0);
  signal c_45_i0_resize: signed(24 downto 0);
  signal c_45_i1_resize: signed(24 downto 0);
  signal c_45_i0_shift: signed(24 downto 0);
  signal c_45_i1_shift: signed(24 downto 0);
  signal c_45_arith: signed(24 downto 0);
  signal c_45_oshift: signed(24 downto 0);
  signal c_45_sub_sel: std_logic;
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_49_0_False_resize: signed(25 downto 0);
  signal c_50_49_0_False_shift: signed(25 downto 0);
  signal c_50_40_1_False_resize: signed(25 downto 0);
  signal c_50_40_1_False_shift: signed(25 downto 0);
  signal c_50_sel: std_logic_vector(0 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_47_0_False_resize: signed(25 downto 0);
  signal c_51_47_0_False_shift: signed(25 downto 0);
  signal c_51_24_0_False_resize: signed(25 downto 0);
  signal c_51_24_0_False_shift: signed(25 downto 0);
  signal c_51_sel: std_logic_vector(0 downto 0);
  signal c_52: signed(19 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_52_3_False_resize: signed(25 downto 0);
  signal c_53_52_3_False_shift: signed(25 downto 0);
  signal c_53_24_0_False_resize: signed(25 downto 0);
  signal c_53_24_0_False_shift: signed(25 downto 0);
  signal c_53_52_6_False_resize: signed(25 downto 0);
  signal c_53_52_6_False_shift: signed(25 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(23 downto 0);
  signal c_57: signed(23 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_55_3_False_resize: signed(25 downto 0);
  signal c_58_55_3_False_shift: signed(25 downto 0);
  signal c_58_40_0_False_resize: signed(25 downto 0);
  signal c_58_40_0_False_shift: signed(25 downto 0);
  signal c_58_57_2_False_resize: signed(25 downto 0);
  signal c_58_57_2_False_shift: signed(25 downto 0);
  signal c_58_sel: std_logic_vector(1 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_62_resize: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_resize: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
  signal c_67: signed(24 downto 0);
  signal c_68: signed(24 downto 0);
  signal c_69: signed(24 downto 0);
  signal c_69_resize: signed(24 downto 0);
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
  -- output node 0 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 1 with id 62
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_62);
    end if;
  end process;
  -- output node 2 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 3 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_66);
    end if;
  end process;
  -- output node 4 with id 69
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_69);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "00",
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
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[4], [1], [4]]
  c_2_0_0_False_resize <= resize(c_0, 18);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_2_False_resize <= resize(c_0, 18);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_0_0_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[-15], [-3], [-12]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 20,
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
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[-15], [-3], [-768]]
  c_4_3_6_False_resize <= resize(c_3, 26);
  c_4_3_6_False_shift <= shift_left(c_4_3_6_False_resize, 6);
  c_4_3_0_False_resize <= resize(c_3, 26);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_6_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[128], [64], [1]]
  c_5_0_7_False_resize <= resize(c_0, 23);
  c_5_0_7_False_shift <= shift_left(c_5_0_7_False_resize, 7);
  c_5_0_6_False_resize <= resize(c_0, 23);
  c_5_0_6_False_shift <= shift_left(c_5_0_6_False_resize, 6);
  c_5_0_0_False_resize <= resize(c_0, 23);
  c_5_0_0_False_shift <= shift_left(c_5_0_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_0_7_False_shift;
        when "01" => c_5 <= c_5_0_6_False_shift;
        when others => c_5 <= c_5_0_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[128], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[128], [64], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_6 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 8 and associated fundamentals [[-143], [-67], [-769]]
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 26,
      s_x_i => 0,
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
      y_i => c_7,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 9 and associated fundamentals [[-143], [-268], [-769]]
  c_9_8_2_False_resize <= c_8;
  c_9_8_2_False_shift <= shift_left(c_9_8_2_False_resize, 2);
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  with config_select_5 select c_9_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_2_False_shift;
        when others => c_9 <= c_9_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 10 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 11 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 12 and associated fundamentals [[4], [-3], [4]]
  c_12_11_2_False_resize <= resize(c_11, 18);
  c_12_11_2_False_shift <= shift_left(c_12_11_2_False_resize, 2);
  c_12_3_0_False_resize <= c_3(17 downto 0);
  c_12_3_0_False_shift <= shift_left(c_12_3_0_False_resize, 0);
  with config_select_3 select c_12_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_11_2_False_shift;
        when others => c_12 <= c_12_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 13 and associated fundamentals [[4], [-3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[4], [-3], [4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 15 and associated fundamentals [[-147], [-265], [-773]]
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 18,
      w_o => 26,
      s_x_i => 0,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_9,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 16 and associated fundamentals [[-1144], [-67], [-769]]
  c_16_8_3_False_resize <= resize(c_8, 27);
  c_16_8_3_False_shift <= shift_left(c_16_8_3_False_resize, 3);
  c_16_8_0_False_resize <= resize(c_8, 27);
  c_16_8_0_False_shift <= shift_left(c_16_8_0_False_resize, 0);
  with config_select_5 select c_16_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_8_3_False_shift;
        when others => c_16 <= c_16_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[-15], [-3], [-12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[-15], [-3], [-12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 19 and associated fundamentals [[-15], [-3], [-12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 20 and associated fundamentals [[-15], [-3], [-12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 21 and associated fundamentals [[-147], [-48], [-192]]
  c_21_20_4_False_resize <= resize(c_20, 24);
  c_21_20_4_False_shift <= shift_left(c_21_20_4_False_resize, 4);
  c_21_15_0_False_resize <= c_15(23 downto 0);
  c_21_15_0_False_shift <= shift_left(c_21_15_0_False_resize, 0);
  with config_select_7 select c_21_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_20_4_False_shift;
        when others => c_21 <= c_21_15_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 22 and associated fundamentals [[-1144], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 23 and associated fundamentals [[-1144], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 24 and associated fundamentals [[-997], [-19], [-961]]
  with config_select_8 select c_24_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 24,
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
      sub_i => c_24_sub_sel,
      x_i => c_23,
      y_i => c_21,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 27 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_27 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[-147], [1], [1]]
  c_29_15_0_False_resize <= c_15(23 downto 0);
  c_29_15_0_False_shift <= shift_left(c_29_15_0_False_resize, 0);
  c_29_28_0_False_resize <= resize(c_28, 24);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_15_0_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 30 and associated fundamentals [[-15], [-3], [-12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add' in stage 8 with id 31 and associated fundamentals [[-177], [-5], [-23]]
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
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
      x_i => c_29,
      y_i => c_30,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[32], [-76], [-23]]
  c_34_24_2_False_resize <= c_24(22 downto 0);
  c_34_24_2_False_shift <= shift_left(c_34_24_2_False_resize, 2);
  c_34_33_5_False_resize <= resize(c_33, 23);
  c_34_33_5_False_shift <= shift_left(c_34_33_5_False_resize, 5);
  c_34_31_0_False_resize <= c_31(22 downto 0);
  c_34_31_0_False_shift <= shift_left(c_34_31_0_False_resize, 0);
  with config_select_9 select c_34_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_24_2_False_shift;
        when "01" => c_34 <= c_34_33_5_False_shift;
        when others => c_34 <= c_34_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 35 and associated fundamentals [[-143], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[-143], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[-143], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 38 and associated fundamentals [[-143], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 39 and associated fundamentals [[-143], [-67], [-769]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 40 and associated fundamentals [[-15], [-371], [-677]]
  with config_select_10 select c_40_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_40: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      sub_i => c_40_sub_sel,
      x_i => c_39,
      y_i => c_34,
      z_o => c_40_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_40_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 41 and associated fundamentals [[-143], [32], [16]]
  c_41_26_4_False_resize <= resize(c_26, 24);
  c_41_26_4_False_shift <= shift_left(c_41_26_4_False_resize, 4);
  c_41_8_0_False_resize <= c_8(23 downto 0);
  c_41_8_0_False_shift <= shift_left(c_41_8_0_False_resize, 0);
  c_41_26_5_False_resize <= resize(c_26, 24);
  c_41_26_5_False_shift <= shift_left(c_41_26_5_False_resize, 5);
  with config_select_5 select c_41_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_41_sel is
        when "00" => c_41 <= c_41_26_4_False_shift;
        when "01" => c_41 <= c_41_8_0_False_shift;
        when others => c_41 <= c_41_26_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[-143], [32], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[-143], [32], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[-143], [32], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 45 and associated fundamentals [[395], [123], [41]]
  with config_select_9 select c_45_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_45: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
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
      sub_i => c_45_sub_sel,
      x_i => c_31,
      y_i => c_44,
      z_o => c_45_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_45_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 46 and associated fundamentals [[-147], [-265], [-773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 47 and associated fundamentals [[-147], [-265], [-773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[-147], [-265], [-773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[-147], [-265], [-773]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 50 and associated fundamentals [[-30], [-742], [-773]]
  c_50_49_0_False_resize <= c_49;
  c_50_49_0_False_shift <= shift_left(c_50_49_0_False_resize, 0);
  c_50_40_1_False_resize <= c_40;
  c_50_40_1_False_shift <= shift_left(c_50_40_1_False_resize, 1);
  with config_select_11 select c_50_sel <= 
    "0" when "10",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_50_sel is
        when "0" => c_50 <= c_50_49_0_False_shift;
        when others => c_50 <= c_50_40_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 51 and associated fundamentals [[-147], [-265], [-961]]
  c_51_47_0_False_resize <= c_47;
  c_51_47_0_False_shift <= shift_left(c_51_47_0_False_resize, 0);
  c_51_24_0_False_resize <= c_24;
  c_51_24_0_False_shift <= shift_left(c_51_24_0_False_resize, 0);
  with config_select_9 select c_51_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "0" => c_51 <= c_51_47_0_False_shift;
        when others => c_51 <= c_51_24_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 52 and associated fundamentals [[-15], [-3], [-12]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_30 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 53 and associated fundamentals [[-997], [-24], [-768]]
  c_53_52_3_False_resize <= resize(c_52, 26);
  c_53_52_3_False_shift <= shift_left(c_53_52_3_False_resize, 3);
  c_53_24_0_False_resize <= c_24;
  c_53_24_0_False_shift <= shift_left(c_53_24_0_False_resize, 0);
  c_53_52_6_False_resize <= resize(c_52, 26);
  c_53_52_6_False_shift <= shift_left(c_53_52_6_False_resize, 6);
  with config_select_9 select c_53_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_52_3_False_shift;
        when "01" => c_53 <= c_53_24_0_False_shift;
        when others => c_53 <= c_53_52_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 54 and associated fundamentals [[-997], [-19], [-961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 55 and associated fundamentals [[-997], [-19], [-961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[-177], [-5], [-23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 57 and associated fundamentals [[-177], [-5], [-23]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 58 and associated fundamentals [[-708], [-152], [-677]]
  c_58_55_3_False_resize <= c_55;
  c_58_55_3_False_shift <= shift_left(c_58_55_3_False_resize, 3);
  c_58_40_0_False_resize <= c_40;
  c_58_40_0_False_shift <= shift_left(c_58_40_0_False_resize, 0);
  c_58_57_2_False_resize <= resize(c_57, 26);
  c_58_57_2_False_shift <= shift_left(c_58_57_2_False_resize, 2);
  with config_select_11 select c_58_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_58_sel is
        when "00" => c_58 <= c_58_55_3_False_shift;
        when "01" => c_58 <= c_58_40_0_False_shift;
        when others => c_58 <= c_58_57_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 59 and associated fundamentals [[30], [742], [773]]
  c_59_resize <= c_50;
  c_59 <= -shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 10 with id 60 and associated fundamentals [[-147], [-265], [-961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_51 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 61 and associated fundamentals [[-147], [-265], [-961]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 62 and associated fundamentals [[147], [265], [961]]
  c_62_resize <= c_61;
  c_62 <= -shift_left(c_62_resize, 0);
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[-997], [-24], [-768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_53 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[-997], [-24], [-768]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 65 and associated fundamentals [[997], [24], [768]]
  c_65_resize <= c_64;
  c_65 <= -shift_left(c_65_resize, 0);
  -- node of type 'output' in stage 11 with id 66 and associated fundamentals [[708], [152], [677]]
  c_66_resize <= c_58;
  c_66 <= -shift_left(c_66_resize, 0);
  -- node of type 'register' in stage 10 with id 67 and associated fundamentals [[395], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 68 and associated fundamentals [[395], [123], [41]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 69 and associated fundamentals [[395], [123], [41]]
  c_69_resize <= c_68;
  c_69 <= shift_left(c_69_resize, 0);
end architecture;
