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
  signal c_1: signed(20 downto 0);
  signal c_1_i0_resize: signed(20 downto 0);
  signal c_1_i1_resize: signed(20 downto 0);
  signal c_1_i0_shift: signed(20 downto 0);
  signal c_1_i1_shift: signed(20 downto 0);
  signal c_1_arith: signed(20 downto 0);
  signal c_1_oshift: signed(20 downto 0);
  signal c_1_sub_sel: std_logic;
  signal c_2: signed(15 downto 0);
  signal c_3: signed(20 downto 0);
  signal c_3_1_0_False_resize: signed(20 downto 0);
  signal c_3_1_0_False_shift: signed(20 downto 0);
  signal c_3_2_2_False_resize: signed(20 downto 0);
  signal c_3_2_2_False_shift: signed(20 downto 0);
  signal c_3_1_1_False_resize: signed(20 downto 0);
  signal c_3_1_1_False_shift: signed(20 downto 0);
  signal c_3_sel: std_logic_vector(1 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_0_0_False_resize: signed(19 downto 0);
  signal c_4_0_0_False_shift: signed(19 downto 0);
  signal c_4_0_4_False_resize: signed(19 downto 0);
  signal c_4_0_4_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_6: signed(21 downto 0);
  signal c_6_i0_resize: signed(21 downto 0);
  signal c_6_i1_resize: signed(21 downto 0);
  signal c_6_i0_shift: signed(21 downto 0);
  signal c_6_i1_shift: signed(21 downto 0);
  signal c_6_arith: signed(21 downto 0);
  signal c_6_oshift: signed(21 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(20 downto 0);
  signal c_8: signed(20 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_8_0_False_resize: signed(20 downto 0);
  signal c_9_8_0_False_shift: signed(20 downto 0);
  signal c_9_6_0_False_resize: signed(20 downto 0);
  signal c_9_6_0_False_shift: signed(20 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(21 downto 0);
  signal c_10_1_1_False_resize: signed(21 downto 0);
  signal c_10_1_1_False_shift: signed(21 downto 0);
  signal c_10_2_0_False_resize: signed(21 downto 0);
  signal c_10_2_0_False_shift: signed(21 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(21 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_i0_resize: signed(23 downto 0);
  signal c_13_i1_resize: signed(23 downto 0);
  signal c_13_i0_shift: signed(23 downto 0);
  signal c_13_i1_shift: signed(23 downto 0);
  signal c_13_arith: signed(23 downto 0);
  signal c_13_oshift: signed(23 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(18 downto 0);
  signal c_14_0_0_False_resize: signed(18 downto 0);
  signal c_14_0_0_False_shift: signed(18 downto 0);
  signal c_14_0_3_False_resize: signed(18 downto 0);
  signal c_14_0_3_False_shift: signed(18 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(21 downto 0);
  signal c_15_6_0_False_resize: signed(21 downto 0);
  signal c_15_6_0_False_shift: signed(21 downto 0);
  signal c_15_8_0_False_resize: signed(21 downto 0);
  signal c_15_8_0_False_shift: signed(21 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(18 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_i0_resize: signed(25 downto 0);
  signal c_19_i1_resize: signed(25 downto 0);
  signal c_19_i0_shift: signed(25 downto 0);
  signal c_19_i1_shift: signed(25 downto 0);
  signal c_19_arith: signed(25 downto 0);
  signal c_19_oshift: signed(25 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(21 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_13_0_False_resize: signed(23 downto 0);
  signal c_22_13_0_False_shift: signed(23 downto 0);
  signal c_22_21_0_False_resize: signed(23 downto 0);
  signal c_22_21_0_False_shift: signed(23 downto 0);
  signal c_22_sel: std_logic_vector(0 downto 0);
  signal c_23: signed(23 downto 0);
  signal c_24: signed(24 downto 0);
  signal c_24_i0_resize: signed(24 downto 0);
  signal c_24_i1_resize: signed(24 downto 0);
  signal c_24_i0_shift: signed(24 downto 0);
  signal c_24_i1_shift: signed(24 downto 0);
  signal c_24_arith: signed(24 downto 0);
  signal c_24_oshift: signed(24 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_6_2_False_resize: signed(23 downto 0);
  signal c_25_6_2_False_shift: signed(23 downto 0);
  signal c_25_6_0_False_resize: signed(23 downto 0);
  signal c_25_6_0_False_shift: signed(23 downto 0);
  signal c_25_sel: std_logic_vector(0 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_27_i0_resize: signed(25 downto 0);
  signal c_27_i1_resize: signed(25 downto 0);
  signal c_27_i0_shift: signed(25 downto 0);
  signal c_27_i1_shift: signed(25 downto 0);
  signal c_27_arith: signed(25 downto 0);
  signal c_27_oshift: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_29: signed(28 downto 0);
  signal c_29_27_3_False_resize: signed(28 downto 0);
  signal c_29_27_3_False_shift: signed(28 downto 0);
  signal c_29_28_0_False_resize: signed(28 downto 0);
  signal c_29_28_0_False_shift: signed(28 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(24 downto 0);
  signal c_30_13_1_False_resize: signed(24 downto 0);
  signal c_30_13_1_False_shift: signed(24 downto 0);
  signal c_30_13_0_False_resize: signed(24 downto 0);
  signal c_30_13_0_False_shift: signed(24 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_32: signed(25 downto 0);
  signal c_32_i0_resize: signed(25 downto 0);
  signal c_32_i1_resize: signed(25 downto 0);
  signal c_32_i0_shift: signed(25 downto 0);
  signal c_32_i1_shift: signed(25 downto 0);
  signal c_32_arith: signed(25 downto 0);
  signal c_32_oshift: signed(25 downto 0);
  signal c_33: signed(25 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_33_0_False_resize: signed(25 downto 0);
  signal c_34_33_0_False_shift: signed(25 downto 0);
  signal c_34_24_0_False_resize: signed(25 downto 0);
  signal c_34_24_0_False_shift: signed(25 downto 0);
  signal c_34_24_4_False_resize: signed(25 downto 0);
  signal c_34_24_4_False_shift: signed(25 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(15 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(15 downto 0);
  signal c_40: signed(25 downto 0);
  signal c_40_39_1_False_resize: signed(25 downto 0);
  signal c_40_39_1_False_shift: signed(25 downto 0);
  signal c_40_27_2_False_resize: signed(25 downto 0);
  signal c_40_27_2_False_shift: signed(25 downto 0);
  signal c_40_23_0_False_resize: signed(25 downto 0);
  signal c_40_23_0_False_shift: signed(25 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_42_i0_resize: signed(25 downto 0);
  signal c_42_i1_resize: signed(25 downto 0);
  signal c_42_i0_shift: signed(25 downto 0);
  signal c_42_i1_shift: signed(25 downto 0);
  signal c_42_arith: signed(25 downto 0);
  signal c_42_oshift: signed(25 downto 0);
  signal c_42_sub_sel: std_logic;
  signal c_43: signed(25 downto 0);
  signal c_43_27_0_False_resize: signed(25 downto 0);
  signal c_43_27_0_False_shift: signed(25 downto 0);
  signal c_43_28_0_False_resize: signed(25 downto 0);
  signal c_43_28_0_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(24 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_44_0_False_resize: signed(25 downto 0);
  signal c_45_44_0_False_shift: signed(25 downto 0);
  signal c_45_32_0_False_resize: signed(25 downto 0);
  signal c_45_32_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(21 downto 0);
  signal c_47: signed(21 downto 0);
  signal c_48: signed(21 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_48_1_False_resize: signed(25 downto 0);
  signal c_51_48_1_False_shift: signed(25 downto 0);
  signal c_51_50_0_False_resize: signed(25 downto 0);
  signal c_51_50_0_False_shift: signed(25 downto 0);
  signal c_51_32_0_False_resize: signed(25 downto 0);
  signal c_51_32_0_False_shift: signed(25 downto 0);
  signal c_51_sel: std_logic_vector(1 downto 0);
  signal c_52: signed(20 downto 0);
  signal c_53: signed(20 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_54_53_1_False_resize: signed(25 downto 0);
  signal c_54_53_1_False_shift: signed(25 downto 0);
  signal c_54_13_1_False_resize: signed(25 downto 0);
  signal c_54_13_1_False_shift: signed(25 downto 0);
  signal c_54_19_0_False_resize: signed(25 downto 0);
  signal c_54_19_0_False_shift: signed(25 downto 0);
  signal c_54_sel: std_logic_vector(1 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_57_resize: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_58_resize: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_resize: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_64_resize: signed(25 downto 0);
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
  -- output node 0 with id 57
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_57);
    end if;
  end process;
  -- output node 1 with id 58
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_58);
    end if;
  end process;
  -- output node 2 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 3 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 4 with id 64
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_64);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[17], [15], [17]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_1: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 16,
      w_o => 21,
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
      sub_i => c_1_sub_sel,
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
  -- node of type 'mux' in stage 2 with id 3 and associated fundamentals [[17], [30], [4]]
  c_3_1_0_False_resize <= c_1;
  c_3_1_0_False_shift <= shift_left(c_3_1_0_False_resize, 0);
  c_3_2_2_False_resize <= resize(c_2, 21);
  c_3_2_2_False_shift <= shift_left(c_3_2_2_False_resize, 2);
  c_3_1_1_False_resize <= c_1;
  c_3_1_1_False_shift <= shift_left(c_3_1_1_False_resize, 1);
  with config_select_2 select c_3_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_3_sel is
        when "00" => c_3 <= c_3_1_0_False_shift;
        when "01" => c_3 <= c_3_2_2_False_shift;
        when others => c_3 <= c_3_1_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[16], [1], [1]]
  c_4_0_0_False_resize <= resize(c_0, 20);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_4_False_resize <= resize(c_0, 20);
  c_4_0_4_False_shift <= shift_left(c_4_0_4_False_resize, 4);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[16], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[50], [59], [7]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 20,
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
      sub_i => c_6_sub_sel,
      x_i => c_3,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 9 and associated fundamentals [[17], [15], [7]]
  c_9_8_0_False_resize <= c_8;
  c_9_8_0_False_shift <= shift_left(c_9_8_0_False_resize, 0);
  c_9_6_0_False_resize <= c_6(20 downto 0);
  c_9_6_0_False_shift <= shift_left(c_9_6_0_False_resize, 0);
  with config_select_4 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_8_0_False_shift;
        when others => c_9 <= c_9_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 10 and associated fundamentals [[1], [30], [34]]
  c_10_1_1_False_resize <= resize(c_1, 22);
  c_10_1_1_False_shift <= shift_left(c_10_1_1_False_resize, 1);
  c_10_2_0_False_resize <= resize(c_2, 22);
  c_10_2_0_False_shift <= shift_left(c_10_2_0_False_resize, 0);
  with config_select_2 select c_10_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_1_1_False_shift;
        when others => c_10 <= c_10_2_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[1], [30], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[1], [30], [34]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[13], [135], [143]]
  with config_select_5 select c_13_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 22,
      w_o => 24,
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
      sub_i => c_13_sub_sel,
      x_i => c_9,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 14 and associated fundamentals [[8], [1], [8]]
  c_14_0_0_False_resize <= resize(c_0, 19);
  c_14_0_0_False_shift <= shift_left(c_14_0_0_False_resize, 0);
  c_14_0_3_False_resize <= resize(c_0, 19);
  c_14_0_3_False_shift <= shift_left(c_14_0_3_False_resize, 3);
  with config_select_1 select c_14_sel <= 
    "0" when "01",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_0_0_False_shift;
        when others => c_14 <= c_14_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 15 and associated fundamentals [[50], [59], [17]]
  c_15_6_0_False_resize <= c_6;
  c_15_6_0_False_shift <= shift_left(c_15_6_0_False_resize, 0);
  c_15_8_0_False_resize <= resize(c_8, 22);
  c_15_8_0_False_shift <= shift_left(c_15_8_0_False_resize, 0);
  with config_select_4 select c_15_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_6_0_False_shift;
        when others => c_15 <= c_15_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 16 and associated fundamentals [[8], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[8], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[8], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[974], [187], [1007]]
  with config_select_5 select c_19_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 7,
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
      y_i => c_15,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[50], [59], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_6 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 21 and associated fundamentals [[50], [59], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 22 and associated fundamentals [[13], [59], [143]]
  c_22_13_0_False_resize <= c_13;
  c_22_13_0_False_shift <= shift_left(c_22_13_0_False_resize, 0);
  c_22_21_0_False_resize <= resize(c_21, 24);
  c_22_21_0_False_shift <= shift_left(c_22_21_0_False_resize, 0);
  with config_select_6 select c_22_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_22_sel is
        when "0" => c_22 <= c_22_13_0_False_shift;
        when others => c_22 <= c_22_21_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 23 and associated fundamentals [[13], [135], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 24 and associated fundamentals [[39], [329], [429]]
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_23,
      y_i => c_22,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 25 and associated fundamentals [[200], [236], [7]]
  c_25_6_2_False_resize <= resize(c_6, 24);
  c_25_6_2_False_shift <= shift_left(c_25_6_2_False_resize, 2);
  c_25_6_0_False_resize <= resize(c_6, 24);
  c_25_6_0_False_shift <= shift_left(c_25_6_0_False_resize, 0);
  with config_select_4 select c_25_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_25_sel is
        when "0" => c_25 <= c_25_6_2_False_shift;
        when others => c_25 <= c_25_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[200], [236], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 27 and associated fundamentals [[413], [607], [157]]
  inst_adder_node_27: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_26,
      y_i => c_13,
      z_o => c_27_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_27_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[974], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[974], [4856], [1256]]
  c_29_27_3_False_resize <= resize(c_27, 29);
  c_29_27_3_False_shift <= shift_left(c_29_27_3_False_resize, 3);
  c_29_28_0_False_resize <= resize(c_28, 29);
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_7 select c_29_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_27_3_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 30 and associated fundamentals [[26], [270], [143]]
  c_30_13_1_False_resize <= resize(c_13, 25);
  c_30_13_1_False_shift <= shift_left(c_30_13_1_False_resize, 1);
  c_30_13_0_False_resize <= resize(c_13, 25);
  c_30_13_0_False_shift <= shift_left(c_30_13_0_False_resize, 0);
  with config_select_6 select c_30_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_13_1_False_shift;
        when others => c_30 <= c_30_13_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 31 and associated fundamentals [[26], [270], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 32 and associated fundamentals [[870], [3776], [684]]
  inst_adder_node_32: entity work.adder_node
    generic map (
      w_x_i => 29,
      w_y_i => 25,
      w_o => 26,
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
      x_i => c_29,
      y_i => c_31,
      z_o => c_32_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_32_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[974], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 34 and associated fundamentals [[624], [329], [1007]]
  c_34_33_0_False_resize <= c_33;
  c_34_33_0_False_shift <= shift_left(c_34_33_0_False_resize, 0);
  c_34_24_0_False_resize <= resize(c_24, 26);
  c_34_24_0_False_shift <= shift_left(c_34_24_0_False_resize, 0);
  c_34_24_4_False_resize <= resize(c_24, 26);
  c_34_24_4_False_shift <= shift_left(c_34_24_4_False_resize, 4);
  with config_select_8 select c_34_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_33_0_False_shift;
        when "01" => c_34 <= c_34_24_0_False_shift;
        when others => c_34 <= c_34_24_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 36 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 37 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 40 and associated fundamentals [[13], [2], [628]]
  c_40_39_1_False_resize <= resize(c_39, 26);
  c_40_39_1_False_shift <= shift_left(c_40_39_1_False_resize, 1);
  c_40_27_2_False_resize <= c_27;
  c_40_27_2_False_shift <= shift_left(c_40_27_2_False_resize, 2);
  c_40_23_0_False_resize <= resize(c_23, 26);
  c_40_23_0_False_shift <= shift_left(c_40_23_0_False_resize, 0);
  with config_select_7 select c_40_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_39_1_False_shift;
        when "01" => c_40 <= c_40_27_2_False_shift;
        when others => c_40 <= c_40_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[13], [2], [628]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_40 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 42 and associated fundamentals [[637], [327], [379]]
  with config_select_9 select c_42_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_42: entity work.adder_node
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
      sub_i => c_42_sub_sel,
      x_i => c_34,
      y_i => c_41,
      z_o => c_42_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_42_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[413], [187], [1007]]
  c_43_27_0_False_resize <= c_27;
  c_43_27_0_False_shift <= shift_left(c_43_27_0_False_resize, 0);
  c_43_28_0_False_resize <= c_28;
  c_43_28_0_False_shift <= shift_left(c_43_28_0_False_resize, 0);
  with config_select_7 select c_43_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_27_0_False_shift;
        when others => c_43 <= c_43_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[39], [329], [429]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_24 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[870], [329], [429]]
  c_45_44_0_False_resize <= resize(c_44, 26);
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  c_45_32_0_False_resize <= c_32;
  c_45_32_0_False_shift <= shift_left(c_45_32_0_False_resize, 0);
  with config_select_9 select c_45_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_44_0_False_shift;
        when others => c_45 <= c_45_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[50], [59], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_21 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[50], [59], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[50], [59], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[413], [607], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[413], [607], [157]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 51 and associated fundamentals [[100], [607], [684]]
  c_51_48_1_False_resize <= resize(c_48, 26);
  c_51_48_1_False_shift <= shift_left(c_51_48_1_False_resize, 1);
  c_51_50_0_False_resize <= c_50;
  c_51_50_0_False_shift <= shift_left(c_51_50_0_False_resize, 0);
  c_51_32_0_False_resize <= c_32;
  c_51_32_0_False_shift <= shift_left(c_51_32_0_False_resize, 0);
  with config_select_9 select c_51_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_51_sel is
        when "00" => c_51 <= c_51_48_1_False_shift;
        when "01" => c_51 <= c_51_50_0_False_shift;
        when others => c_51 <= c_51_32_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 52 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 53 and associated fundamentals [[17], [15], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_52 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 54 and associated fundamentals [[974], [30], [286]]
  c_54_53_1_False_resize <= resize(c_53, 26);
  c_54_53_1_False_shift <= shift_left(c_54_53_1_False_resize, 1);
  c_54_13_1_False_resize <= resize(c_13, 26);
  c_54_13_1_False_shift <= shift_left(c_54_13_1_False_resize, 1);
  c_54_19_0_False_resize <= c_19;
  c_54_19_0_False_shift <= shift_left(c_54_19_0_False_resize, 0);
  with config_select_6 select c_54_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_54_sel is
        when "00" => c_54 <= c_54_53_1_False_shift;
        when "01" => c_54 <= c_54_13_1_False_shift;
        when others => c_54 <= c_54_19_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 55 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 56 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_55 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 57 and associated fundamentals [[413], [187], [1007]]
  c_57_resize <= c_56;
  c_57 <= shift_left(c_57_resize, 0);
  -- node of type 'output' in stage 9 with id 58 and associated fundamentals [[870], [329], [429]]
  c_58_resize <= c_45;
  c_58 <= shift_left(c_58_resize, 0);
  -- node of type 'output' in stage 9 with id 59 and associated fundamentals [[100], [607], [684]]
  c_59_resize <= c_51;
  c_59 <= shift_left(c_59_resize, 0);
  -- node of type 'output' in stage 9 with id 60 and associated fundamentals [[637], [327], [379]]
  c_60_resize <= c_42;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'register' in stage 7 with id 61 and associated fundamentals [[974], [30], [286]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_54 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 62 and associated fundamentals [[974], [30], [286]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 63 and associated fundamentals [[974], [30], [286]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 64 and associated fundamentals [[974], [30], [286]]
  c_64_resize <= c_63;
  c_64 <= shift_left(c_64_resize, 0);
end architecture;
