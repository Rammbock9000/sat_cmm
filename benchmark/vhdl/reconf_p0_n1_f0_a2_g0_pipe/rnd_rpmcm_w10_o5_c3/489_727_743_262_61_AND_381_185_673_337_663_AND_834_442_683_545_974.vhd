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
  signal c_0: signed(15 downto 0);
  signal c_1: signed(18 downto 0);
  signal c_1_0_0_False_resize: signed(18 downto 0);
  signal c_1_0_0_False_shift: signed(18 downto 0);
  signal c_1_0_3_False_resize: signed(18 downto 0);
  signal c_1_0_3_False_shift: signed(18 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(17 downto 0);
  signal c_4_0_0_False_resize: signed(17 downto 0);
  signal c_4_0_0_False_shift: signed(17 downto 0);
  signal c_4_0_2_False_resize: signed(17 downto 0);
  signal c_4_0_2_False_shift: signed(17 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(23 downto 0);
  signal c_6_i0_resize: signed(23 downto 0);
  signal c_6_i1_resize: signed(23 downto 0);
  signal c_6_i0_shift: signed(23 downto 0);
  signal c_6_i1_shift: signed(23 downto 0);
  signal c_6_arith: signed(23 downto 0);
  signal c_6_oshift: signed(23 downto 0);
  signal c_6_sub_sel: std_logic;
  signal c_7: signed(21 downto 0);
  signal c_7_3_2_False_resize: signed(21 downto 0);
  signal c_7_3_2_False_shift: signed(21 downto 0);
  signal c_7_3_0_False_resize: signed(21 downto 0);
  signal c_7_3_0_False_shift: signed(21 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(18 downto 0);
  signal c_10: signed(25 downto 0);
  signal c_10_i0_resize: signed(25 downto 0);
  signal c_10_i1_resize: signed(25 downto 0);
  signal c_10_i0_shift: signed(25 downto 0);
  signal c_10_i1_shift: signed(25 downto 0);
  signal c_10_arith: signed(25 downto 0);
  signal c_10_oshift: signed(25 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(22 downto 0);
  signal c_11_3_0_False_resize: signed(22 downto 0);
  signal c_11_3_0_False_shift: signed(22 downto 0);
  signal c_11_3_5_False_resize: signed(22 downto 0);
  signal c_11_3_5_False_shift: signed(22 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(22 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_13_sub_sel: std_logic;
  signal c_14: signed(22 downto 0);
  signal c_14_3_4_False_resize: signed(22 downto 0);
  signal c_14_3_4_False_shift: signed(22 downto 0);
  signal c_14_3_0_False_resize: signed(22 downto 0);
  signal c_14_3_0_False_shift: signed(22 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(15 downto 0);
  signal c_16: signed(15 downto 0);
  signal c_17: signed(21 downto 0);
  signal c_18: signed(25 downto 0);
  signal c_18_16_0_False_resize: signed(25 downto 0);
  signal c_18_16_0_False_shift: signed(25 downto 0);
  signal c_18_6_4_False_resize: signed(25 downto 0);
  signal c_18_6_4_False_shift: signed(25 downto 0);
  signal c_18_17_3_False_resize: signed(25 downto 0);
  signal c_18_17_3_False_shift: signed(25 downto 0);
  signal c_18_sel: std_logic_vector(1 downto 0);
  signal c_19: signed(22 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_21: signed(21 downto 0);
  signal c_22: signed(21 downto 0);
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
  signal c_26: signed(25 downto 0);
  signal c_26_i0_resize: signed(25 downto 0);
  signal c_26_i1_resize: signed(25 downto 0);
  signal c_26_i0_shift: signed(25 downto 0);
  signal c_26_i1_shift: signed(25 downto 0);
  signal c_26_arith: signed(25 downto 0);
  signal c_26_oshift: signed(25 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(23 downto 0);
  signal c_27_15_8_False_resize: signed(23 downto 0);
  signal c_27_15_8_False_shift: signed(23 downto 0);
  signal c_27_3_0_False_resize: signed(23 downto 0);
  signal c_27_3_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_26_0_False_resize: signed(25 downto 0);
  signal c_29_26_0_False_shift: signed(25 downto 0);
  signal c_29_28_6_False_resize: signed(25 downto 0);
  signal c_29_28_6_False_shift: signed(25 downto 0);
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
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(24 downto 0);
  signal c_35_6_0_False_resize: signed(24 downto 0);
  signal c_35_6_0_False_shift: signed(24 downto 0);
  signal c_35_6_2_False_resize: signed(24 downto 0);
  signal c_35_6_2_False_shift: signed(24 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_37: signed(25 downto 0);
  signal c_37_26_0_False_resize: signed(25 downto 0);
  signal c_37_26_0_False_shift: signed(25 downto 0);
  signal c_37_36_0_False_resize: signed(25 downto 0);
  signal c_37_36_0_False_shift: signed(25 downto 0);
  signal c_37_sel: std_logic_vector(0 downto 0);
  signal c_38: signed(24 downto 0);
  signal c_39: signed(24 downto 0);
  signal c_40: signed(24 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_41_sub_sel: std_logic;
  signal c_42: signed(25 downto 0);
  signal c_42_24_3_False_resize: signed(25 downto 0);
  signal c_42_24_3_False_shift: signed(25 downto 0);
  signal c_42_10_0_False_resize: signed(25 downto 0);
  signal c_42_10_0_False_shift: signed(25 downto 0);
  signal c_42_sel: std_logic_vector(0 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_34_0_False_resize: signed(25 downto 0);
  signal c_45_34_0_False_shift: signed(25 downto 0);
  signal c_45_44_0_False_resize: signed(25 downto 0);
  signal c_45_44_0_False_shift: signed(25 downto 0);
  signal c_45_sel: std_logic_vector(0 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_50_i0_resize: signed(25 downto 0);
  signal c_50_i1_resize: signed(25 downto 0);
  signal c_50_i0_shift: signed(25 downto 0);
  signal c_50_i1_shift: signed(25 downto 0);
  signal c_50_arith: signed(25 downto 0);
  signal c_50_oshift: signed(25 downto 0);
  signal c_50_sub_sel: std_logic;
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_26_0_False_resize: signed(25 downto 0);
  signal c_52_26_0_False_shift: signed(25 downto 0);
  signal c_52_51_0_False_resize: signed(25 downto 0);
  signal c_52_51_0_False_shift: signed(25 downto 0);
  signal c_52_sel: std_logic_vector(0 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_54: signed(25 downto 0);
  signal c_55: signed(25 downto 0);
  signal c_55_resize: signed(25 downto 0);
  signal c_56: signed(25 downto 0);
  signal c_56_resize: signed(25 downto 0);
  signal c_57: signed(25 downto 0);
  signal c_58: signed(25 downto 0);
  signal c_59: signed(25 downto 0);
  signal c_59_resize: signed(25 downto 0);
  signal c_60: signed(25 downto 0);
  signal c_61: signed(25 downto 0);
  signal c_62: signed(25 downto 0);
  signal c_63: signed(25 downto 0);
  signal c_63_resize: signed(25 downto 0);
  signal c_64: signed(25 downto 0);
  signal c_65: signed(25 downto 0);
  signal c_66: signed(25 downto 0);
  signal c_66_resize: signed(25 downto 0);
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
  -- output node 0 with id 55
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_55);
    end if;
  end process;
  -- output node 1 with id 56
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_56);
    end if;
  end process;
  -- output node 2 with id 59
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_59);
    end if;
  end process;
  -- output node 3 with id 63
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_63);
    end if;
  end process;
  -- output node 4 with id 66
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_66);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[8], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 19);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_3_False_resize <= resize(c_0, 19);
  c_1_0_3_False_shift <= shift_left(c_1_0_3_False_resize, 3);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_1_sel is
        when "0" => c_1 <= c_1_0_0_False_shift;
        when others => c_1 <= c_1_0_3_False_shift;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[33], [3], [5]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 16,
      w_o => 22,
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
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[4], [4], [1]]
  c_4_0_0_False_resize <= resize(c_0, 18);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_2_False_resize <= resize(c_0, 18);
  c_4_0_2_False_shift <= shift_left(c_4_0_2_False_resize, 2);
  with config_select_1 select c_4_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_0_0_False_shift;
        when others => c_4 <= c_4_0_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[4], [4], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 6 and associated fundamentals [[161], [125], [37]]
  with config_select_3 select c_6_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 22,
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
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[33], [3], [20]]
  c_7_3_2_False_resize <= c_3;
  c_7_3_2_False_shift <= shift_left(c_7_3_2_False_resize, 2);
  c_7_3_0_False_resize <= c_3;
  c_7_3_0_False_shift <= shift_left(c_7_3_0_False_resize, 0);
  with config_select_3 select c_7_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_3_2_False_shift;
        when others => c_7 <= c_7_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[8], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 10 and associated fundamentals [[-1040], [98], [-638]]
  with config_select_4 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 1,
      s_y_i => 5,
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
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 11 and associated fundamentals [[33], [96], [5]]
  c_11_3_0_False_resize <= resize(c_3, 23);
  c_11_3_0_False_shift <= shift_left(c_11_3_0_False_resize, 0);
  c_11_3_5_False_resize <= resize(c_3, 23);
  c_11_3_5_False_shift <= shift_left(c_11_3_5_False_resize, 5);
  with config_select_3 select c_11_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_3_0_False_shift;
        when others => c_11 <= c_11_3_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[33], [96], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 13 and associated fundamentals [[-776], [-670], [-678]]
  with config_select_5 select c_13_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 26,
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
      sub_i => c_13_sub_sel,
      x_i => c_10,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[33], [48], [80]]
  c_14_3_4_False_resize <= resize(c_3, 23);
  c_14_3_4_False_shift <= shift_left(c_14_3_4_False_resize, 4);
  c_14_3_0_False_resize <= resize(c_3, 23);
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_4_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 15 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[33], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 18 and associated fundamentals [[1], [24], [592]]
  c_18_16_0_False_resize <= resize(c_16, 26);
  c_18_16_0_False_shift <= shift_left(c_18_16_0_False_resize, 0);
  c_18_6_4_False_resize <= resize(c_6, 26);
  c_18_6_4_False_shift <= shift_left(c_18_6_4_False_resize, 4);
  c_18_17_3_False_resize <= resize(c_17, 26);
  c_18_17_3_False_shift <= shift_left(c_18_17_3_False_resize, 3);
  with config_select_4 select c_18_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_18_sel is
        when "00" => c_18 <= c_18_16_0_False_shift;
        when "01" => c_18 <= c_18_6_4_False_shift;
        when others => c_18 <= c_18_17_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[33], [48], [80]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_14 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 20 and associated fundamentals [[262], [336], [-544]]
  inst_adder_node_20: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 26,
      w_o => 26,
      s_x_i => 3,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_19,
      y_i => c_18,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[33], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[33], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 23 and associated fundamentals [[-743], [-673], [-683]]
  with config_select_6 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 22,
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
      x_i => c_13,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 26 and associated fundamentals [[-261], [337], [545]]
  with config_select_6 select c_26_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 16,
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_20,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 27 and associated fundamentals [[33], [3], [256]]
  c_27_15_8_False_resize <= resize(c_15, 24);
  c_27_15_8_False_shift <= shift_left(c_27_15_8_False_resize, 8);
  c_27_3_0_False_resize <= resize(c_3, 24);
  c_27_3_0_False_shift <= shift_left(c_27_3_0_False_resize, 0);
  with config_select_3 select c_27_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_15_8_False_shift;
        when others => c_27 <= c_27_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[33], [3], [5]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_22 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[-261], [192], [545]]
  c_29_26_0_False_resize <= c_26;
  c_29_26_0_False_shift <= shift_left(c_29_26_0_False_resize, 0);
  c_29_28_6_False_resize <= resize(c_28, 26);
  c_29_28_6_False_shift <= shift_left(c_29_28_6_False_resize, 6);
  with config_select_7 select c_29_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_26_0_False_shift;
        when others => c_29 <= c_29_28_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 30 and associated fundamentals [[33], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_27 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 31 and associated fundamentals [[33], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 32 and associated fundamentals [[33], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 33 and associated fundamentals [[33], [3], [256]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 34 and associated fundamentals [[-489], [-381], [-834]]
  with config_select_8 select c_34_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 26,
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
      sub_i => c_34_sub_sel,
      x_i => c_33,
      y_i => c_29,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 35 and associated fundamentals [[161], [500], [148]]
  c_35_6_0_False_resize <= resize(c_6, 25);
  c_35_6_0_False_shift <= shift_left(c_35_6_0_False_resize, 0);
  c_35_6_2_False_resize <= resize(c_6, 25);
  c_35_6_2_False_shift <= shift_left(c_35_6_2_False_resize, 2);
  with config_select_4 select c_35_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_6_0_False_shift;
        when others => c_35 <= c_35_6_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[-776], [-670], [-678]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_13 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 37 and associated fundamentals [[-261], [337], [-678]]
  c_37_26_0_False_resize <= c_26;
  c_37_26_0_False_shift <= shift_left(c_37_26_0_False_resize, 0);
  c_37_36_0_False_resize <= c_36;
  c_37_36_0_False_shift <= shift_left(c_37_36_0_False_resize, 0);
  with config_select_7 select c_37_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_37_sel is
        when "0" => c_37 <= c_37_26_0_False_shift;
        when others => c_37 <= c_37_36_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 38 and associated fundamentals [[161], [500], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 39 and associated fundamentals [[161], [500], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 40 and associated fundamentals [[161], [500], [148]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 41 and associated fundamentals [[61], [663], [974]]
  with config_select_8 select c_41_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 26,
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
      sub_i => c_41_sub_sel,
      x_i => c_40,
      y_i => c_37,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 42 and associated fundamentals [[8], [98], [-638]]
  c_42_24_3_False_resize <= resize(c_24, 26);
  c_42_24_3_False_shift <= shift_left(c_42_24_3_False_resize, 3);
  c_42_10_0_False_resize <= c_10;
  c_42_10_0_False_shift <= shift_left(c_42_10_0_False_resize, 0);
  with config_select_5 select c_42_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_42_sel is
        when "0" => c_42 <= c_42_24_3_False_shift;
        when others => c_42 <= c_42_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[-743], [-673], [-683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[-743], [-673], [-683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 45 and associated fundamentals [[-743], [-381], [-834]]
  c_45_34_0_False_resize <= c_34;
  c_45_34_0_False_shift <= shift_left(c_45_34_0_False_resize, 0);
  c_45_44_0_False_resize <= c_44;
  c_45_44_0_False_shift <= shift_left(c_45_44_0_False_resize, 0);
  with config_select_9 select c_45_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_45_sel is
        when "0" => c_45 <= c_45_34_0_False_shift;
        when others => c_45 <= c_45_44_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 46 and associated fundamentals [[8], [98], [-638]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[8], [98], [-638]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 48 and associated fundamentals [[8], [98], [-638]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 49 and associated fundamentals [[8], [98], [-638]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 50 and associated fundamentals [[-727], [-185], [-442]]
  with config_select_10 select c_50_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_50: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
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
      sub_i => c_50_sub_sel,
      x_i => c_49,
      y_i => c_45,
      z_o => c_50_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_50_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 51 and associated fundamentals [[262], [336], [-544]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_20 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 52 and associated fundamentals [[262], [337], [545]]
  c_52_26_0_False_resize <= c_26;
  c_52_26_0_False_shift <= shift_left(c_52_26_0_False_resize, 0);
  c_52_51_0_False_resize <= c_51;
  c_52_51_0_False_shift <= shift_left(c_52_51_0_False_resize, 0);
  with config_select_7 select c_52_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_52_sel is
        when "0" => c_52 <= c_52_26_0_False_shift;
        when others => c_52 <= c_52_51_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 53 and associated fundamentals [[-489], [-381], [-834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_53 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 54 and associated fundamentals [[-489], [-381], [-834]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_53 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 55 and associated fundamentals [[489], [381], [834]]
  c_55_resize <= c_54;
  c_55 <= -shift_left(c_55_resize, 0);
  -- node of type 'output' in stage 10 with id 56 and associated fundamentals [[727], [185], [442]]
  c_56_resize <= c_50;
  c_56 <= -shift_left(c_56_resize, 0);
  -- node of type 'register' in stage 9 with id 57 and associated fundamentals [[-743], [-673], [-683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 58 and associated fundamentals [[-743], [-673], [-683]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 59 and associated fundamentals [[743], [673], [683]]
  c_59_resize <= c_58;
  c_59 <= -shift_left(c_59_resize, 0);
  -- node of type 'register' in stage 8 with id 60 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_60 <= c_52 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 61 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_61 <= c_60 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 62 and associated fundamentals [[262], [337], [545]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_62 <= c_61 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 63 and associated fundamentals [[262], [337], [545]]
  c_63_resize <= c_62;
  c_63 <= shift_left(c_63_resize, 0);
  -- node of type 'register' in stage 9 with id 64 and associated fundamentals [[61], [663], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_64 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 65 and associated fundamentals [[61], [663], [974]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_65 <= c_64 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 66 and associated fundamentals [[61], [663], [974]]
  c_66_resize <= c_65;
  c_66 <= shift_left(c_66_resize, 0);
end architecture;
