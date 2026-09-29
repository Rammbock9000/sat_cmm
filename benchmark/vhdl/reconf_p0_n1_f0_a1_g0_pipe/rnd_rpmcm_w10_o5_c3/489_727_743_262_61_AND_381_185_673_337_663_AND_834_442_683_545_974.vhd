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
  signal config_select_12: std_logic_vector(1 downto 0);
  signal config_select_13: std_logic_vector(1 downto 0);
  signal c_0: signed(15 downto 0);
  signal c_1: signed(16 downto 0);
  signal c_1_0_0_False_resize: signed(16 downto 0);
  signal c_1_0_0_False_shift: signed(16 downto 0);
  signal c_1_0_1_False_resize: signed(16 downto 0);
  signal c_1_0_1_False_shift: signed(16 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(18 downto 0);
  signal c_2_0_0_False_resize: signed(18 downto 0);
  signal c_2_0_0_False_shift: signed(18 downto 0);
  signal c_2_0_3_False_resize: signed(18 downto 0);
  signal c_2_0_3_False_shift: signed(18 downto 0);
  signal c_2_0_2_False_resize: signed(18 downto 0);
  signal c_2_0_2_False_shift: signed(18 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_4: signed(15 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_5_0_False_resize: signed(23 downto 0);
  signal c_6_5_0_False_shift: signed(23 downto 0);
  signal c_6_3_5_False_resize: signed(23 downto 0);
  signal c_6_3_5_False_shift: signed(23 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(21 downto 0);
  signal c_8: signed(23 downto 0);
  signal c_8_i0_resize: signed(23 downto 0);
  signal c_8_i1_resize: signed(23 downto 0);
  signal c_8_i0_shift: signed(23 downto 0);
  signal c_8_i1_shift: signed(23 downto 0);
  signal c_8_arith: signed(23 downto 0);
  signal c_8_oshift: signed(23 downto 0);
  signal c_8_sub_sel: std_logic;
  signal c_9: signed(22 downto 0);
  signal c_9_i0_resize: signed(22 downto 0);
  signal c_9_i1_resize: signed(22 downto 0);
  signal c_9_i0_shift: signed(22 downto 0);
  signal c_9_i1_shift: signed(22 downto 0);
  signal c_9_arith: signed(22 downto 0);
  signal c_9_oshift: signed(22 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(24 downto 0);
  signal c_10_8_1_False_resize: signed(24 downto 0);
  signal c_10_8_1_False_shift: signed(24 downto 0);
  signal c_10_8_0_False_resize: signed(24 downto 0);
  signal c_10_8_0_False_shift: signed(24 downto 0);
  signal c_10_sel: std_logic_vector(0 downto 0);
  signal c_11: signed(20 downto 0);
  signal c_11_5_3_False_resize: signed(20 downto 0);
  signal c_11_5_3_False_shift: signed(20 downto 0);
  signal c_11_3_0_False_resize: signed(20 downto 0);
  signal c_11_3_0_False_shift: signed(20 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(20 downto 0);
  signal c_13: signed(20 downto 0);
  signal c_14: signed(24 downto 0);
  signal c_14_i0_resize: signed(24 downto 0);
  signal c_14_i1_resize: signed(24 downto 0);
  signal c_14_i0_shift: signed(24 downto 0);
  signal c_14_i1_shift: signed(24 downto 0);
  signal c_14_arith: signed(24 downto 0);
  signal c_14_oshift: signed(24 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(26 downto 0);
  signal c_16_15_0_False_resize: signed(26 downto 0);
  signal c_16_15_0_False_shift: signed(26 downto 0);
  signal c_16_9_4_False_resize: signed(26 downto 0);
  signal c_16_9_4_False_shift: signed(26 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(22 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_8_1_False_resize: signed(25 downto 0);
  signal c_19_8_1_False_shift: signed(25 downto 0);
  signal c_19_17_5_False_resize: signed(25 downto 0);
  signal c_19_17_5_False_shift: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(26 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_21_i0_resize: signed(25 downto 0);
  signal c_21_i1_resize: signed(25 downto 0);
  signal c_21_i0_shift: signed(25 downto 0);
  signal c_21_i1_shift: signed(25 downto 0);
  signal c_21_arith: signed(25 downto 0);
  signal c_21_oshift: signed(25 downto 0);
  signal c_21_sub_sel: std_logic;
  signal c_22: signed(25 downto 0);
  signal c_22_i0_resize: signed(25 downto 0);
  signal c_22_i1_resize: signed(25 downto 0);
  signal c_22_i0_shift: signed(25 downto 0);
  signal c_22_i1_shift: signed(25 downto 0);
  signal c_22_arith: signed(25 downto 0);
  signal c_22_oshift: signed(25 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(23 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_25: signed(25 downto 0);
  signal c_25_i0_resize: signed(25 downto 0);
  signal c_25_i1_resize: signed(25 downto 0);
  signal c_25_i0_shift: signed(25 downto 0);
  signal c_25_i1_shift: signed(25 downto 0);
  signal c_25_arith: signed(25 downto 0);
  signal c_25_oshift: signed(25 downto 0);
  signal c_25_sub_sel: std_logic;
  signal c_26: signed(24 downto 0);
  signal c_27: signed(25 downto 0);
  signal c_28: signed(25 downto 0);
  signal c_28_26_0_False_resize: signed(25 downto 0);
  signal c_28_26_0_False_shift: signed(25 downto 0);
  signal c_28_22_0_False_resize: signed(25 downto 0);
  signal c_28_22_0_False_shift: signed(25 downto 0);
  signal c_28_27_0_False_resize: signed(25 downto 0);
  signal c_28_27_0_False_shift: signed(25 downto 0);
  signal c_28_sel: std_logic_vector(1 downto 0);
  signal c_29: signed(23 downto 0);
  signal c_29_15_8_False_resize: signed(23 downto 0);
  signal c_29_15_8_False_shift: signed(23 downto 0);
  signal c_29_9_0_False_resize: signed(23 downto 0);
  signal c_29_9_0_False_shift: signed(23 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(23 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_35: signed(15 downto 0);
  signal c_36: signed(15 downto 0);
  signal c_37: signed(15 downto 0);
  signal c_38: signed(15 downto 0);
  signal c_39: signed(15 downto 0);
  signal c_40: signed(15 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_43_42_1_False_resize: signed(25 downto 0);
  signal c_43_42_1_False_shift: signed(25 downto 0);
  signal c_43_40_7_False_resize: signed(25 downto 0);
  signal c_43_40_7_False_shift: signed(25 downto 0);
  signal c_43_34_0_False_resize: signed(25 downto 0);
  signal c_43_34_0_False_shift: signed(25 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_44_9_0_False_resize: signed(23 downto 0);
  signal c_44_9_0_False_shift: signed(23 downto 0);
  signal c_44_9_2_False_resize: signed(23 downto 0);
  signal c_44_9_2_False_shift: signed(23 downto 0);
  signal c_44_sel: std_logic_vector(0 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_51_i0_resize: signed(25 downto 0);
  signal c_51_i1_resize: signed(25 downto 0);
  signal c_51_i0_shift: signed(25 downto 0);
  signal c_51_i1_shift: signed(25 downto 0);
  signal c_51_arith: signed(25 downto 0);
  signal c_51_oshift: signed(25 downto 0);
  signal c_51_sub_sel: std_logic;
  signal c_52: signed(25 downto 0);
  signal c_52_21_0_False_resize: signed(25 downto 0);
  signal c_52_21_0_False_shift: signed(25 downto 0);
  signal c_52_24_1_False_resize: signed(25 downto 0);
  signal c_52_24_1_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_60_resize: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_65_resize: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_67: signed(25 downto 0);
  signal c_68: signed(25 downto 0);
  signal c_69: signed(25 downto 0);
  signal c_70: signed(25 downto 0);
  signal c_70_resize: signed(25 downto 0);
  signal c_71: signed(25 downto 0);
  signal c_71_resize: signed(25 downto 0);
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
  -- output node 1 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_60);
    end if;
  end process;
  -- output node 2 with id 65
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_65);
    end if;
  end process;
  -- output node 3 with id 70
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_70);
    end if;
  end process;
  -- output node 4 with id 71
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_71);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[1], [2], [1]]
  c_1_0_0_False_resize <= resize(c_0, 17);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_1_False_resize <= resize(c_0, 17);
  c_1_0_1_False_shift <= shift_left(c_1_0_1_False_resize, 1);
  with config_select_1 select c_1_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[8], [1], [4]]
  c_2_0_0_False_resize <= resize(c_0, 19);
  c_2_0_0_False_shift <= shift_left(c_2_0_0_False_resize, 0);
  c_2_0_3_False_resize <= resize(c_0, 19);
  c_2_0_3_False_shift <= shift_left(c_2_0_3_False_resize, 3);
  c_2_0_2_False_resize <= resize(c_0, 19);
  c_2_0_2_False_shift <= shift_left(c_2_0_2_False_resize, 2);
  with config_select_1 select c_2_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_0_0_False_shift;
        when "01" => c_2 <= c_2_0_3_False_shift;
        when others => c_2 <= c_2_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 3 and associated fundamentals [[33], [6], [17]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 17,
      w_y_i => 19,
      w_o => 22,
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
  -- node of type 'register' in stage 1 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [192], [1]]
  c_6_5_0_False_resize <= resize(c_5, 24);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  c_6_3_5_False_resize <= resize(c_3, 24);
  c_6_3_5_False_shift <= shift_left(c_6_3_5_False_resize, 5);
  with config_select_3 select c_6_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_5_0_False_shift;
        when others => c_6 <= c_6_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 7 and associated fundamentals [[33], [6], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_3 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 8 and associated fundamentals [[131], [-168], [69]]
  with config_select_4 select c_8_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_8: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_8_sub_sel,
      x_i => c_7,
      y_i => c_6,
      z_o => c_8_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_8_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 9 and associated fundamentals [[67], [-11], [35]]
  with config_select_3 select c_9_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      sub_i => c_9_sub_sel,
      x_i => c_5,
      y_i => c_3,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 10 and associated fundamentals [[262], [-168], [69]]
  c_10_8_1_False_resize <= resize(c_8, 25);
  c_10_8_1_False_shift <= shift_left(c_10_8_1_False_resize, 1);
  c_10_8_0_False_resize <= resize(c_8, 25);
  c_10_8_0_False_shift <= shift_left(c_10_8_0_False_resize, 0);
  with config_select_5 select c_10_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_10_sel is
        when "0" => c_10 <= c_10_8_1_False_shift;
        when others => c_10 <= c_10_8_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[8], [8], [17]]
  c_11_5_3_False_resize <= resize(c_5, 21);
  c_11_5_3_False_shift <= shift_left(c_11_5_3_False_resize, 3);
  c_11_3_0_False_resize <= c_3(20 downto 0);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  with config_select_3 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_5_3_False_shift;
        when others => c_11 <= c_11_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[8], [8], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[8], [8], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'add' in stage 6 with id 14 and associated fundamentals [[278], [-152], [103]]
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 21,
      w_o => 25,
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
      x_i => c_10,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 16 and associated fundamentals [[1072], [1], [1]]
  c_16_15_0_False_resize <= resize(c_15, 27);
  c_16_15_0_False_shift <= shift_left(c_16_15_0_False_resize, 0);
  c_16_9_4_False_resize <= resize(c_9, 27);
  c_16_9_4_False_shift <= shift_left(c_16_9_4_False_resize, 4);
  with config_select_4 select c_16_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_15_0_False_shift;
        when others => c_16 <= c_16_9_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 17 and associated fundamentals [[33], [6], [17]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[67], [-11], [35]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 19 and associated fundamentals [[67], [-336], [544]]
  c_19_8_1_False_resize <= resize(c_8, 26);
  c_19_8_1_False_shift <= shift_left(c_19_8_1_False_resize, 1);
  c_19_17_5_False_resize <= resize(c_17, 26);
  c_19_17_5_False_shift <= shift_left(c_19_17_5_False_resize, 5);
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  with config_select_5 select c_19_sel <= 
    "00" when "01",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_8_1_False_shift;
        when "01" => c_19 <= c_19_17_5_False_shift;
        when others => c_19 <= c_19_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[1072], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 21 and associated fundamentals [[1005], [337], [545]]
  with config_select_6 select c_21_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_21: entity work.adder_node
    generic map (
      w_x_i => 27,
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
  -- node of type 'add_sub' in stage 7 with id 22 and associated fundamentals [[727], [185], [442]]
  with config_select_7 select c_22_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_22_sub_sel,
      x_i => c_21,
      y_i => c_14,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 23 and associated fundamentals [[131], [-168], [69]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_8 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 24 and associated fundamentals [[131], [-168], [69]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 25 and associated fundamentals [[743], [673], [683]]
  with config_select_7 select c_25_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
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
      sub_i => c_25_sub_sel,
      x_i => c_21,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[278], [-152], [103]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_14 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 27 and associated fundamentals [[1005], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_21 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 28 and associated fundamentals [[278], [185], [545]]
  c_28_26_0_False_resize <= resize(c_26, 26);
  c_28_26_0_False_shift <= shift_left(c_28_26_0_False_resize, 0);
  c_28_22_0_False_resize <= c_22;
  c_28_22_0_False_shift <= shift_left(c_28_22_0_False_resize, 0);
  c_28_27_0_False_resize <= c_27;
  c_28_27_0_False_shift <= shift_left(c_28_27_0_False_resize, 0);
  with config_select_8 select c_28_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "00" => c_28 <= c_28_26_0_False_shift;
        when "01" => c_28 <= c_28_22_0_False_shift;
        when others => c_28 <= c_28_27_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 29 and associated fundamentals [[67], [-11], [256]]
  c_29_15_8_False_resize <= resize(c_15, 24);
  c_29_15_8_False_shift <= shift_left(c_29_15_8_False_resize, 8);
  c_29_9_0_False_resize <= resize(c_9, 24);
  c_29_9_0_False_shift <= shift_left(c_29_9_0_False_resize, 0);
  with config_select_4 select c_29_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_15_8_False_shift;
        when others => c_29 <= c_29_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[67], [-11], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[67], [-11], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[67], [-11], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[67], [-11], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 9 with id 34 and associated fundamentals [[489], [381], [834]]
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 24,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_28,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 35 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 41 and associated fundamentals [[1005], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 42 and associated fundamentals [[1005], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 10 with id 43 and associated fundamentals [[128], [674], [834]]
  c_43_42_1_False_resize <= c_42;
  c_43_42_1_False_shift <= shift_left(c_43_42_1_False_resize, 1);
  c_43_40_7_False_resize <= resize(c_40, 26);
  c_43_40_7_False_shift <= shift_left(c_43_40_7_False_resize, 7);
  c_43_34_0_False_resize <= c_34;
  c_43_34_0_False_shift <= shift_left(c_43_34_0_False_resize, 0);
  with config_select_10 select c_43_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_42_1_False_shift;
        when "01" => c_43 <= c_43_40_7_False_shift;
        when others => c_43 <= c_43_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 44 and associated fundamentals [[67], [-11], [140]]
  c_44_9_0_False_resize <= resize(c_9, 24);
  c_44_9_0_False_shift <= shift_left(c_44_9_0_False_resize, 0);
  c_44_9_2_False_resize <= resize(c_9, 24);
  c_44_9_2_False_shift <= shift_left(c_44_9_2_False_resize, 2);
  with config_select_4 select c_44_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_44_sel is
        when "0" => c_44 <= c_44_9_0_False_shift;
        when others => c_44 <= c_44_9_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 45 and associated fundamentals [[67], [-11], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[67], [-11], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[67], [-11], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[67], [-11], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[67], [-11], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 50 and associated fundamentals [[67], [-11], [140]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 11 with id 51 and associated fundamentals [[61], [663], [974]]
  with config_select_11 select c_51_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_51: entity work.adder_node
    generic map (
      w_x_i => 26,
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
      sub_i => c_51_sub_sel,
      x_i => c_43,
      y_i => c_50,
      z_o => c_51_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_51_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[262], [337], [545]]
  c_52_21_0_False_resize <= c_21;
  c_52_21_0_False_shift <= shift_left(c_52_21_0_False_resize, 0);
  c_52_24_1_False_resize <= resize(c_24, 26);
  c_52_24_1_False_shift <= shift_left(c_52_24_1_False_resize, 1);
  with config_select_7 select c_52_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_21_0_False_shift;
        when others => c_52 <= c_52_24_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 53 and associated fundamentals [[489], [381], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[489], [381], [834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 55 and associated fundamentals [[489], [381], [834]]
  c_55_resize <= c_54;
  c_55 <= shift_left(c_55_resize, 0);
  -- node of type 'register' in stage 8 with id 56 and associated fundamentals [[727], [185], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_56 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[727], [185], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_56 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[727], [185], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 59 and associated fundamentals [[727], [185], [442]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 60 and associated fundamentals [[727], [185], [442]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'register' in stage 8 with id 61 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 62 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 63 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_63 <= c_62 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 64 and associated fundamentals [[743], [673], [683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_63 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 65 and associated fundamentals [[743], [673], [683]]
  c_65_resize <= c_64;
  c_65 <= shift_left(c_65_resize, 0);
  -- node of type 'register' in stage 8 with id 66 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_66 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 67 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_67 <= c_66 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 68 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_68 <= c_67 & "";
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 69 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_69 <= c_68 & "";
    end if;
  end process;
  -- node of type 'output' in stage 11 with id 70 and associated fundamentals [[262], [337], [545]]
  c_70_resize <= c_69;
  c_70 <= shift_left(c_70_resize, 0);
  -- node of type 'output' in stage 11 with id 71 and associated fundamentals [[61], [663], [974]]
  c_71_resize <= c_51;
  c_71 <= shift_left(c_71_resize, 0);
end architecture;
