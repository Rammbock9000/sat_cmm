library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity const_mul is
  port (
    x_0: in std_logic_vector(15 downto 0);
    x_1: in std_logic_vector(15 downto 0);
    config_select: in std_logic_vector(1 downto 0);
    y_0: out std_logic_vector(29 downto 0);
    y_1: out std_logic_vector(29 downto 0);
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
  signal config_select_14: std_logic_vector(1 downto 0);
  signal config_select_15: std_logic_vector(1 downto 0);
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(23 downto 0);
  signal c_2_1_6_False_resize: signed(23 downto 0);
  signal c_2_1_6_False_shift: signed(23 downto 0);
  signal c_2_1_0_False_resize: signed(23 downto 0);
  signal c_2_1_0_False_shift: signed(23 downto 0);
  signal c_2_sel: std_logic_vector(0 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_4_sub_sel: std_logic;
  signal c_5: signed(30 downto 0);
  signal c_5_1_13_False_resize: signed(30 downto 0);
  signal c_5_1_13_False_shift: signed(30 downto 0);
  signal c_5_1_4_False_resize: signed(30 downto 0);
  signal c_5_1_4_False_shift: signed(30 downto 0);
  signal c_5_1_0_False_resize: signed(30 downto 0);
  signal c_5_1_0_False_shift: signed(30 downto 0);
  signal c_5_sel: std_logic_vector(1 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_7: signed(27 downto 0);
  signal c_7_4_0_False_resize: signed(27 downto 0);
  signal c_7_4_0_False_shift: signed(27 downto 0);
  signal c_7_6_10_False_resize: signed(27 downto 0);
  signal c_7_6_10_False_shift: signed(27 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(30 downto 0);
  signal c_9: signed(30 downto 0);
  signal c_10: signed(30 downto 0);
  signal c_10_i0_resize: signed(30 downto 0);
  signal c_10_i1_resize: signed(30 downto 0);
  signal c_10_i0_shift: signed(30 downto 0);
  signal c_10_i1_shift: signed(30 downto 0);
  signal c_10_arith: signed(30 downto 0);
  signal c_10_oshift: signed(30 downto 0);
  signal c_11: signed(23 downto 0);
  signal c_12: signed(23 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_12_0_False_resize: signed(25 downto 0);
  signal c_13_12_0_False_shift: signed(25 downto 0);
  signal c_13_10_2_False_resize: signed(25 downto 0);
  signal c_13_10_2_False_shift: signed(25 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(30 downto 0);
  signal c_15: signed(30 downto 0);
  signal c_15_i0_resize: signed(30 downto 0);
  signal c_15_i1_resize: signed(30 downto 0);
  signal c_15_i0_shift: signed(30 downto 0);
  signal c_15_i1_shift: signed(30 downto 0);
  signal c_15_arith: signed(30 downto 0);
  signal c_15_oshift: signed(30 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(18 downto 0);
  signal c_16_0_0_False_resize: signed(18 downto 0);
  signal c_16_0_0_False_shift: signed(18 downto 0);
  signal c_16_0_1_False_resize: signed(18 downto 0);
  signal c_16_0_1_False_shift: signed(18 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(17 downto 0);
  signal c_18: signed(17 downto 0);
  signal c_19: signed(17 downto 0);
  signal c_20: signed(17 downto 0);
  signal c_21: signed(29 downto 0);
  signal c_21_20_0_False_resize: signed(29 downto 0);
  signal c_21_20_0_False_shift: signed(29 downto 0);
  signal c_21_12_10_False_resize: signed(29 downto 0);
  signal c_21_12_10_False_shift: signed(29 downto 0);
  signal c_21_10_0_False_resize: signed(29 downto 0);
  signal c_21_10_0_False_shift: signed(29 downto 0);
  signal c_21_sel: std_logic_vector(1 downto 0);
  signal c_22: signed(18 downto 0);
  signal c_23: signed(18 downto 0);
  signal c_24: signed(18 downto 0);
  signal c_25: signed(18 downto 0);
  signal c_26: signed(29 downto 0);
  signal c_26_i0_resize: signed(29 downto 0);
  signal c_26_i1_resize: signed(29 downto 0);
  signal c_26_i0_shift: signed(29 downto 0);
  signal c_26_i1_shift: signed(29 downto 0);
  signal c_26_arith: signed(29 downto 0);
  signal c_26_oshift: signed(29 downto 0);
  signal c_26_sub_sel: std_logic;
  signal c_27: signed(20 downto 0);
  signal c_27_0_0_False_resize: signed(20 downto 0);
  signal c_27_0_0_False_shift: signed(20 downto 0);
  signal c_27_0_3_False_resize: signed(20 downto 0);
  signal c_27_0_3_False_shift: signed(20 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(21 downto 0);
  signal c_28_i0_resize: signed(21 downto 0);
  signal c_28_i1_resize: signed(21 downto 0);
  signal c_28_i0_shift: signed(21 downto 0);
  signal c_28_i1_shift: signed(21 downto 0);
  signal c_28_arith: signed(21 downto 0);
  signal c_28_oshift: signed(21 downto 0);
  signal c_28_sub_sel: std_logic;
  signal c_29: signed(21 downto 0);
  signal c_29_18_4_False_resize: signed(21 downto 0);
  signal c_29_18_4_False_shift: signed(21 downto 0);
  signal c_29_28_0_False_resize: signed(21 downto 0);
  signal c_29_28_0_False_shift: signed(21 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_34_33_1_False_resize: signed(23 downto 0);
  signal c_34_33_1_False_shift: signed(23 downto 0);
  signal c_34_26_0_False_resize: signed(23 downto 0);
  signal c_34_26_0_False_shift: signed(23 downto 0);
  signal c_34_sel: std_logic_vector(0 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(25 downto 0);
  signal c_39_i0_resize: signed(25 downto 0);
  signal c_39_i1_resize: signed(25 downto 0);
  signal c_39_i0_shift: signed(25 downto 0);
  signal c_39_i1_shift: signed(25 downto 0);
  signal c_39_arith: signed(25 downto 0);
  signal c_39_oshift: signed(25 downto 0);
  signal c_40: signed(26 downto 0);
  signal c_40_39_0_False_resize: signed(26 downto 0);
  signal c_40_39_0_False_shift: signed(26 downto 0);
  signal c_40_39_2_False_resize: signed(26 downto 0);
  signal c_40_39_2_False_shift: signed(26 downto 0);
  signal c_40_sel: std_logic_vector(0 downto 0);
  signal c_41: signed(29 downto 0);
  signal c_42: signed(29 downto 0);
  signal c_43: signed(29 downto 0);
  signal c_43_42_0_False_resize: signed(29 downto 0);
  signal c_43_42_0_False_shift: signed(29 downto 0);
  signal c_43_39_0_False_resize: signed(29 downto 0);
  signal c_43_39_0_False_shift: signed(29 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(31 downto 0);
  signal c_44_i0_resize: signed(31 downto 0);
  signal c_44_i1_resize: signed(31 downto 0);
  signal c_44_i0_shift: signed(31 downto 0);
  signal c_44_i1_shift: signed(31 downto 0);
  signal c_44_arith: signed(31 downto 0);
  signal c_44_oshift: signed(31 downto 0);
  signal c_44_sub_sel: std_logic;
  signal c_45: signed(30 downto 0);
  signal c_46: signed(30 downto 0);
  signal c_47: signed(30 downto 0);
  signal c_48: signed(30 downto 0);
  signal c_49: signed(21 downto 0);
  signal c_50: signed(21 downto 0);
  signal c_51: signed(21 downto 0);
  signal c_52: signed(21 downto 0);
  signal c_53: signed(31 downto 0);
  signal c_53_44_0_False_resize: signed(31 downto 0);
  signal c_53_44_0_False_shift: signed(31 downto 0);
  signal c_53_52_6_False_resize: signed(31 downto 0);
  signal c_53_52_6_False_shift: signed(31 downto 0);
  signal c_53_48_0_False_resize: signed(31 downto 0);
  signal c_53_48_0_False_shift: signed(31 downto 0);
  signal c_53_sel: std_logic_vector(1 downto 0);
  signal c_54: signed(30 downto 0);
  signal c_55: signed(31 downto 0);
  signal c_55_i0_resize: signed(31 downto 0);
  signal c_55_i1_resize: signed(31 downto 0);
  signal c_55_i0_shift: signed(31 downto 0);
  signal c_55_i1_shift: signed(31 downto 0);
  signal c_55_arith: signed(31 downto 0);
  signal c_55_oshift: signed(31 downto 0);
  signal c_55_sub_sel: std_logic;
  signal c_56: signed(31 downto 0);
  signal c_56_55_0_False_resize: signed(31 downto 0);
  signal c_56_55_0_False_shift: signed(31 downto 0);
  signal c_56_55_2_False_resize: signed(31 downto 0);
  signal c_56_55_2_False_shift: signed(31 downto 0);
  signal c_56_sel: std_logic_vector(0 downto 0);
  signal c_57: signed(31 downto 0);
  signal c_58: signed(31 downto 0);
  signal c_59: signed(31 downto 0);
  signal c_60: signed(31 downto 0);
  signal c_60_resize: signed(31 downto 0);
  signal c_61: signed(31 downto 0);
  signal c_61_resize: signed(31 downto 0);
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
      config_select_14 <= config_select_13;
      config_select_15 <= config_select_14;
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0 & "00");
    end if;
  end process;
  -- input node 1 with id 1
  process(clk)
  begin
    if rising_edge(clk) then
      c_1 <= signed(x_1 & "00");
    end if;
  end process;
  -- output node 0 with id 60
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_60(31 downto 2));
    end if;
  end process;
  -- output node 1 with id 61
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_61(31 downto 2));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 4], [0, 4], [0, 256]]
  c_2_1_6_False_resize <= resize(c_1, 24);
  c_2_1_6_False_shift <= shift_left(c_2_1_6_False_resize, 6);
  c_2_1_0_False_resize <= resize(c_1, 24);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  with config_select_1 select c_2_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "0" => c_2 <= c_2_1_6_False_shift;
        when others => c_2 <= c_2_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 3 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_1 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 4 and associated fundamentals [[0, 20], [0, -12], [0, 240]]
  with config_select_2 select c_4_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 18,
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
      sub_i => c_4_sub_sel,
      x_i => c_2,
      y_i => c_3,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 5 and associated fundamentals [[0, 32768], [0, 4], [0, 64]]
  c_5_1_13_False_resize <= resize(c_1, 31);
  c_5_1_13_False_shift <= shift_left(c_5_1_13_False_resize, 13);
  c_5_1_4_False_resize <= resize(c_1, 31);
  c_5_1_4_False_shift <= shift_left(c_5_1_4_False_resize, 4);
  c_5_1_0_False_resize <= resize(c_1, 31);
  c_5_1_0_False_shift <= shift_left(c_5_1_0_False_resize, 0);
  with config_select_1 select c_5_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "00" => c_5 <= c_5_1_13_False_shift;
        when "01" => c_5 <= c_5_1_4_False_shift;
        when others => c_5 <= c_5_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 6 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_3 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 7 and associated fundamentals [[0, 20], [0, 4096], [0, 240]]
  c_7_4_0_False_resize <= resize(c_4, 28);
  c_7_4_0_False_shift <= shift_left(c_7_4_0_False_resize, 0);
  c_7_6_10_False_resize <= resize(c_6, 28);
  c_7_6_10_False_shift <= shift_left(c_7_6_10_False_resize, 10);
  with config_select_3 select c_7_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_4_0_False_shift;
        when others => c_7 <= c_7_6_10_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 8 and associated fundamentals [[0, 32768], [0, 4], [0, 64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 9 and associated fundamentals [[0, 32768], [0, 4], [0, 64]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 10 and associated fundamentals [[0, 32748], [0, -4092], [0, -176]]
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 31,
      w_y_i => 28,
      w_o => 31,
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
      y_i => c_7,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[0, 20], [0, -12], [0, 240]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[0, 20], [0, -12], [0, 240]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[0, 20], [0, -12], [0, -704]]
  c_13_12_0_False_resize <= resize(c_12, 26);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_10_2_False_resize <= c_10(25 downto 0);
  c_13_10_2_False_shift <= shift_left(c_13_10_2_False_resize, 2);
  with config_select_5 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
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
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[0, 32748], [0, -4092], [0, -176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_10 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 15 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  with config_select_6 select c_15_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 31,
      w_o => 31,
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
      sub_i => c_15_sub_sel,
      x_i => c_13,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(30 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[4, 0], [8, 0], [4, 0]]
  c_16_0_0_False_resize <= resize(c_0, 19);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_1_False_resize <= resize(c_0, 19);
  c_16_0_1_False_shift <= shift_left(c_16_0_1_False_resize, 1);
  with config_select_1 select c_16_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_0_0_False_shift;
        when others => c_16 <= c_16_0_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 17 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_0 & "";
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 18 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 19 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 20 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 21 and associated fundamentals [[4, 0], [0, -12288], [0, -176]]
  c_21_20_0_False_resize <= resize(c_20, 30);
  c_21_20_0_False_shift <= shift_left(c_21_20_0_False_resize, 0);
  c_21_12_10_False_resize <= resize(c_12, 30);
  c_21_12_10_False_shift <= shift_left(c_21_12_10_False_resize, 10);
  c_21_10_0_False_resize <= c_10(29 downto 0);
  c_21_10_0_False_shift <= shift_left(c_21_10_0_False_resize, 0);
  with config_select_5 select c_21_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "00" => c_21 <= c_21_20_0_False_shift;
        when "01" => c_21 <= c_21_12_10_False_shift;
        when others => c_21 <= c_21_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 22 and associated fundamentals [[4, 0], [8, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[4, 0], [8, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 24 and associated fundamentals [[4, 0], [8, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 25 and associated fundamentals [[4, 0], [8, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 26 and associated fundamentals [[20, 0], [32, 12288], [16, 176]]
  with config_select_6 select c_26_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_26: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 30,
      w_o => 30,
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
      sub_i => c_26_sub_sel,
      x_i => c_25,
      y_i => c_21,
      z_o => c_26_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_26_oshift(29 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 27 and associated fundamentals [[4, 0], [32, 0], [4, 0]]
  c_27_0_0_False_resize <= resize(c_0, 21);
  c_27_0_0_False_shift <= shift_left(c_27_0_0_False_resize, 0);
  c_27_0_3_False_resize <= resize(c_0, 21);
  c_27_0_3_False_shift <= shift_left(c_27_0_3_False_resize, 3);
  with config_select_1 select c_27_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_0_0_False_shift;
        when others => c_27 <= c_27_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 28 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  with config_select_2 select c_28_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_28: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 21,
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
      sub_i => c_28_sub_sel,
      x_i => c_17,
      y_i => c_27,
      z_o => c_28_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_28_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 29 and associated fundamentals [[64, 0], [64, 0], [12, 0]]
  c_29_18_4_False_resize <= resize(c_18, 22);
  c_29_18_4_False_shift <= shift_left(c_29_18_4_False_resize, 4);
  c_29_28_0_False_resize <= c_28;
  c_29_28_0_False_shift <= shift_left(c_29_28_0_False_resize, 0);
  with config_select_3 select c_29_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_18_4_False_shift;
        when others => c_29 <= c_29_28_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 30 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 31 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 34 and associated fundamentals [[20, 0], [96, 0], [16, 176]]
  c_34_33_1_False_resize <= resize(c_33, 24);
  c_34_33_1_False_shift <= shift_left(c_34_33_1_False_resize, 1);
  c_34_26_0_False_resize <= c_26(23 downto 0);
  c_34_26_0_False_shift <= shift_left(c_34_26_0_False_resize, 0);
  with config_select_7 select c_34_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "0" => c_34 <= c_34_33_1_False_shift;
        when others => c_34 <= c_34_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 35 and associated fundamentals [[64, 0], [64, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_29 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 36 and associated fundamentals [[64, 0], [64, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[64, 0], [64, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[64, 0], [64, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 8 with id 39 and associated fundamentals [[1004, 0], [928, 0], [176, -176]]
  inst_adder_node_39: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 24,
      w_o => 26,
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
      x_i => c_38,
      y_i => c_34,
      z_o => c_39_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_39_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 40 and associated fundamentals [[1004, 0], [928, 0], [704, -704]]
  c_40_39_0_False_resize <= resize(c_39, 27);
  c_40_39_0_False_shift <= shift_left(c_40_39_0_False_resize, 0);
  c_40_39_2_False_resize <= resize(c_39, 27);
  c_40_39_2_False_shift <= shift_left(c_40_39_2_False_resize, 2);
  with config_select_9 select c_40_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "0" => c_40 <= c_40_39_0_False_shift;
        when others => c_40 <= c_40_39_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 41 and associated fundamentals [[20, 0], [32, 12288], [16, 176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[20, 0], [32, 12288], [16, 176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 43 and associated fundamentals [[20, 0], [32, 12288], [176, -176]]
  c_43_42_0_False_resize <= c_42;
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_39_0_False_resize <= resize(c_39, 30);
  c_43_39_0_False_shift <= shift_left(c_43_39_0_False_resize, 0);
  with config_select_9 select c_43_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_42_0_False_shift;
        when others => c_43 <= c_43_39_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 44 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_10 select c_44_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_44: entity work.adder_node
    generic map (
      w_x_i => 27,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_44_sub_sel,
      x_i => c_40,
      y_i => c_43,
      z_o => c_44_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_44_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 46 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 48 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_47 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 49 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 50 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_49 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 51 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 52 and associated fundamentals [[12, 0], [48, 0], [12, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_52 <= c_51 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 11 with id 53 and associated fundamentals [[0, -32108], [3072, 0], [22704, -22704]]
  c_53_44_0_False_resize <= c_44;
  c_53_44_0_False_shift <= shift_left(c_53_44_0_False_resize, 0);
  c_53_52_6_False_resize <= resize(c_52, 32);
  c_53_52_6_False_shift <= shift_left(c_53_52_6_False_resize, 6);
  c_53_48_0_False_resize <= resize(c_48, 32);
  c_53_48_0_False_shift <= shift_left(c_53_48_0_False_resize, 0);
  with config_select_11 select c_53_sel <= 
    "00" when "10",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_53_sel is
        when "00" => c_53 <= c_53_44_0_False_shift;
        when "01" => c_53 <= c_53_52_6_False_shift;
        when others => c_53 <= c_53_48_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 54 and associated fundamentals [[0, -32108], [0, 3708], [0, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_54 <= c_48 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 12 with id 55 and associated fundamentals [[0, 32108], [3072, 7416], [22704, 22704]]
  with config_select_12 select c_55_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_55: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 31,
      w_o => 32,
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
      sub_i => c_55_sub_sel,
      x_i => c_53,
      y_i => c_54,
      z_o => c_55_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_55 <= c_55_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 13 with id 56 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_56_55_0_False_resize <= c_55;
  c_56_55_0_False_shift <= shift_left(c_56_55_0_False_resize, 0);
  c_56_55_2_False_resize <= c_55;
  c_56_55_2_False_shift <= shift_left(c_56_55_2_False_resize, 2);
  with config_select_13 select c_56_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_56_sel is
        when "0" => c_56 <= c_56_55_0_False_shift;
        when others => c_56 <= c_56_55_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 11 with id 57 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_57 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 12 with id 58 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_58 <= c_57 & "";
    end if;
  end process;
  -- node of type 'register' in stage 13 with id 59 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_59 <= c_58 & "";
    end if;
  end process;
  -- node of type 'output' in stage 13 with id 60 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_60_resize <= c_59;
  c_60 <= shift_left(c_60_resize, 0);
  -- node of type 'output' in stage 13 with id 61 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_61_resize <= c_56;
  c_61 <= shift_left(c_61_resize, 0);
end architecture;
