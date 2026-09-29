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
  signal c_1: signed(21 downto 0);
  signal c_1_0_0_False_resize: signed(21 downto 0);
  signal c_1_0_0_False_shift: signed(21 downto 0);
  signal c_1_0_6_False_resize: signed(21 downto 0);
  signal c_1_0_6_False_shift: signed(21 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(24 downto 0);
  signal c_3_i0_resize: signed(24 downto 0);
  signal c_3_i1_resize: signed(24 downto 0);
  signal c_3_i0_shift: signed(24 downto 0);
  signal c_3_i1_shift: signed(24 downto 0);
  signal c_3_arith: signed(24 downto 0);
  signal c_3_oshift: signed(24 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(18 downto 0);
  signal c_4_0_0_False_resize: signed(18 downto 0);
  signal c_4_0_0_False_shift: signed(18 downto 0);
  signal c_4_0_3_False_resize: signed(18 downto 0);
  signal c_4_0_3_False_shift: signed(18 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(15 downto 0);
  signal c_6: signed(17 downto 0);
  signal c_6_3_0_False_resize: signed(17 downto 0);
  signal c_6_3_0_False_shift: signed(17 downto 0);
  signal c_6_5_0_False_resize: signed(17 downto 0);
  signal c_6_5_0_False_shift: signed(17 downto 0);
  signal c_6_sel: std_logic_vector(0 downto 0);
  signal c_7: signed(18 downto 0);
  signal c_8: signed(18 downto 0);
  signal c_9: signed(21 downto 0);
  signal c_9_i0_resize: signed(21 downto 0);
  signal c_9_i1_resize: signed(21 downto 0);
  signal c_9_i0_shift: signed(21 downto 0);
  signal c_9_i1_shift: signed(21 downto 0);
  signal c_9_arith: signed(21 downto 0);
  signal c_9_oshift: signed(21 downto 0);
  signal c_9_sub_sel: std_logic;
  signal c_10: signed(15 downto 0);
  signal c_11: signed(15 downto 0);
  signal c_12: signed(21 downto 0);
  signal c_12_11_6_False_resize: signed(21 downto 0);
  signal c_12_11_6_False_shift: signed(21 downto 0);
  signal c_12_9_0_False_resize: signed(21 downto 0);
  signal c_12_9_0_False_shift: signed(21 downto 0);
  signal c_12_sel: std_logic_vector(0 downto 0);
  signal c_13: signed(19 downto 0);
  signal c_13_11_2_False_resize: signed(19 downto 0);
  signal c_13_11_2_False_shift: signed(19 downto 0);
  signal c_13_9_1_False_resize: signed(19 downto 0);
  signal c_13_9_1_False_shift: signed(19 downto 0);
  signal c_13_11_0_False_resize: signed(19 downto 0);
  signal c_13_11_0_False_shift: signed(19 downto 0);
  signal c_13_sel: std_logic_vector(1 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_i0_resize: signed(21 downto 0);
  signal c_14_i1_resize: signed(21 downto 0);
  signal c_14_i0_shift: signed(21 downto 0);
  signal c_14_i1_shift: signed(21 downto 0);
  signal c_14_arith: signed(21 downto 0);
  signal c_14_oshift: signed(21 downto 0);
  signal c_14_sub_sel: std_logic;
  signal c_15: signed(24 downto 0);
  signal c_16: signed(24 downto 0);
  signal c_17: signed(24 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_19: signed(25 downto 0);
  signal c_19_18_1_False_resize: signed(25 downto 0);
  signal c_19_18_1_False_shift: signed(25 downto 0);
  signal c_19_18_0_False_resize: signed(25 downto 0);
  signal c_19_18_0_False_shift: signed(25 downto 0);
  signal c_19_14_2_False_resize: signed(25 downto 0);
  signal c_19_14_2_False_shift: signed(25 downto 0);
  signal c_19_sel: std_logic_vector(1 downto 0);
  signal c_20: signed(22 downto 0);
  signal c_20_11_5_False_resize: signed(22 downto 0);
  signal c_20_11_5_False_shift: signed(22 downto 0);
  signal c_20_9_1_False_resize: signed(22 downto 0);
  signal c_20_9_1_False_shift: signed(22 downto 0);
  signal c_20_16_0_False_resize: signed(22 downto 0);
  signal c_20_16_0_False_shift: signed(22 downto 0);
  signal c_20_sel: std_logic_vector(1 downto 0);
  signal c_21: signed(22 downto 0);
  signal c_22: signed(22 downto 0);
  signal c_23: signed(24 downto 0);
  signal c_23_i0_resize: signed(24 downto 0);
  signal c_23_i1_resize: signed(24 downto 0);
  signal c_23_i0_shift: signed(24 downto 0);
  signal c_23_i1_shift: signed(24 downto 0);
  signal c_23_arith: signed(24 downto 0);
  signal c_23_oshift: signed(24 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(15 downto 0);
  signal c_25: signed(15 downto 0);
  signal c_26: signed(15 downto 0);
  signal c_27: signed(15 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_29: signed(24 downto 0);
  signal c_30: signed(21 downto 0);
  signal c_31: signed(21 downto 0);
  signal c_32: signed(21 downto 0);
  signal c_33: signed(21 downto 0);
  signal c_34: signed(24 downto 0);
  signal c_34_29_7_False_resize: signed(24 downto 0);
  signal c_34_29_7_False_shift: signed(24 downto 0);
  signal c_34_27_6_False_resize: signed(24 downto 0);
  signal c_34_27_6_False_shift: signed(24 downto 0);
  signal c_34_33_3_False_resize: signed(24 downto 0);
  signal c_34_33_3_False_shift: signed(24 downto 0);
  signal c_34_23_0_False_resize: signed(24 downto 0);
  signal c_34_23_0_False_shift: signed(24 downto 0);
  signal c_34_sel: std_logic_vector(1 downto 0);
  signal c_35: signed(21 downto 0);
  signal c_35_14_0_False_resize: signed(21 downto 0);
  signal c_35_14_0_False_shift: signed(21 downto 0);
  signal c_35_31_0_False_resize: signed(21 downto 0);
  signal c_35_31_0_False_shift: signed(21 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(21 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(25 downto 0);
  signal c_38_i0_resize: signed(25 downto 0);
  signal c_38_i1_resize: signed(25 downto 0);
  signal c_38_i0_shift: signed(25 downto 0);
  signal c_38_i1_shift: signed(25 downto 0);
  signal c_38_arith: signed(25 downto 0);
  signal c_38_oshift: signed(25 downto 0);
  signal c_38_sub_sel: std_logic;
  signal c_39: signed(19 downto 0);
  signal c_39_9_0_False_resize: signed(19 downto 0);
  signal c_39_9_0_False_shift: signed(19 downto 0);
  signal c_39_11_0_False_resize: signed(19 downto 0);
  signal c_39_11_0_False_shift: signed(19 downto 0);
  signal c_39_sel: std_logic_vector(0 downto 0);
  signal c_40: signed(19 downto 0);
  signal c_41: signed(25 downto 0);
  signal c_41_i0_resize: signed(25 downto 0);
  signal c_41_i1_resize: signed(25 downto 0);
  signal c_41_i0_shift: signed(25 downto 0);
  signal c_41_i1_shift: signed(25 downto 0);
  signal c_41_arith: signed(25 downto 0);
  signal c_41_oshift: signed(25 downto 0);
  signal c_42: signed(25 downto 0);
  signal c_43: signed(25 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_45_resize: signed(25 downto 0);
  signal c_46: signed(24 downto 0);
  signal c_47: signed(24 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
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
  -- output node 0 with id 45
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_45);
    end if;
  end process;
  -- output node 1 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 2 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_49);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[64], [1], [1], [1]]
  c_1_0_0_False_resize <= resize(c_0, 22);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_6_False_resize <= resize(c_0, 22);
  c_1_0_6_False_shift <= shift_left(c_1_0_6_False_resize, 6);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "0" when "10",
    "0" when "11",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[257], [3], [5], [3]]
  with config_select_2 select c_3_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 16,
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
      sub_i => c_3_sub_sel,
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 4 and associated fundamentals [[1], [1], [1], [8]]
  c_4_0_0_False_resize <= resize(c_0, 19);
  c_4_0_0_False_shift <= shift_left(c_4_0_0_False_resize, 0);
  c_4_0_3_False_resize <= resize(c_0, 19);
  c_4_0_3_False_shift <= shift_left(c_4_0_3_False_resize, 3);
  with config_select_1 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
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
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 6 and associated fundamentals [[1], [1], [1], [3]]
  c_6_3_0_False_resize <= c_3(17 downto 0);
  c_6_3_0_False_shift <= shift_left(c_6_3_0_False_resize, 0);
  c_6_5_0_False_resize <= resize(c_5, 18);
  c_6_5_0_False_shift <= shift_left(c_6_5_0_False_resize, 0);
  with config_select_3 select c_6_sel <= 
    "0" when "11",
    "1" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_6_sel is
        when "0" => c_6 <= c_6_3_0_False_shift;
        when others => c_6 <= c_6_5_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1], [8]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 9 and associated fundamentals [[7], [9], [9], [61]]
  with config_select_4 select c_9_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 18,
      w_o => 22,
      s_x_i => 3,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_9_sub_sel,
      x_i => c_8,
      y_i => c_6,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_5 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 11 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_10 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 12 and associated fundamentals [[64], [64], [9], [61]]
  c_12_11_6_False_resize <= resize(c_11, 22);
  c_12_11_6_False_shift <= shift_left(c_12_11_6_False_resize, 6);
  c_12_9_0_False_resize <= c_9;
  c_12_9_0_False_shift <= shift_left(c_12_9_0_False_resize, 0);
  with config_select_5 select c_12_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_12_sel is
        when "0" => c_12 <= c_12_11_6_False_shift;
        when others => c_12 <= c_12_9_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 13 and associated fundamentals [[14], [4], [1], [4]]
  c_13_11_2_False_resize <= resize(c_11, 20);
  c_13_11_2_False_shift <= shift_left(c_13_11_2_False_resize, 2);
  c_13_9_1_False_resize <= c_9(19 downto 0);
  c_13_9_1_False_shift <= shift_left(c_13_9_1_False_resize, 1);
  c_13_11_0_False_resize <= resize(c_11, 20);
  c_13_11_0_False_shift <= shift_left(c_13_11_0_False_resize, 0);
  with config_select_5 select c_13_sel <= 
    "00" when "11",
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "00" => c_13 <= c_13_11_2_False_shift;
        when "01" => c_13 <= c_13_9_1_False_shift;
        when others => c_13 <= c_13_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 14 and associated fundamentals [[50], [60], [10], [57]]
  with config_select_6 select c_14_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when "10",
    '1' when others;
  inst_adder_node_14: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
      w_o => 22,
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
      sub_i => c_14_sub_sel,
      x_i => c_12,
      y_i => c_13,
      z_o => c_14_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_14_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 15 and associated fundamentals [[257], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 16 and associated fundamentals [[257], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 17 and associated fundamentals [[257], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 18 and associated fundamentals [[257], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 19 and associated fundamentals [[514], [240], [10], [3]]
  c_19_18_1_False_resize <= resize(c_18, 26);
  c_19_18_1_False_shift <= shift_left(c_19_18_1_False_resize, 1);
  c_19_18_0_False_resize <= resize(c_18, 26);
  c_19_18_0_False_shift <= shift_left(c_19_18_0_False_resize, 0);
  c_19_14_2_False_resize <= resize(c_14, 26);
  c_19_14_2_False_shift <= shift_left(c_19_14_2_False_resize, 2);
  with config_select_7 select c_19_sel <= 
    "00" when "00",
    "00" when "10",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_19_sel is
        when "00" => c_19 <= c_19_18_1_False_shift;
        when "01" => c_19 <= c_19_18_0_False_shift;
        when others => c_19 <= c_19_14_2_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 20 and associated fundamentals [[14], [3], [32], [122]]
  c_20_11_5_False_resize <= resize(c_11, 23);
  c_20_11_5_False_shift <= shift_left(c_20_11_5_False_resize, 5);
  c_20_9_1_False_resize <= resize(c_9, 23);
  c_20_9_1_False_shift <= shift_left(c_20_9_1_False_resize, 1);
  c_20_16_0_False_resize <= c_16(22 downto 0);
  c_20_16_0_False_shift <= shift_left(c_20_16_0_False_resize, 0);
  with config_select_5 select c_20_sel <= 
    "00" when "10",
    "01" when "00",
    "01" when "11",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "00" => c_20 <= c_20_11_5_False_shift;
        when "01" => c_20 <= c_20_9_1_False_shift;
        when others => c_20 <= c_20_16_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[14], [3], [32], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 22 and associated fundamentals [[14], [3], [32], [122]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 23 and associated fundamentals [[486], [246], [74], [247]]
  with config_select_8 select c_23_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when "10",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
      w_o => 25,
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
      sub_i => c_23_sub_sel,
      x_i => c_19,
      y_i => c_22,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 24 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 25 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 26 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 27 and associated fundamentals [[1], [1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 28 and associated fundamentals [[257], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 29 and associated fundamentals [[257], [3], [5], [3]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 30 and associated fundamentals [[7], [9], [9], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 31 and associated fundamentals [[7], [9], [9], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 32 and associated fundamentals [[7], [9], [9], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 33 and associated fundamentals [[7], [9], [9], [61]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 34 and associated fundamentals [[486], [64], [72], [384]]
  c_34_29_7_False_resize <= c_29;
  c_34_29_7_False_shift <= shift_left(c_34_29_7_False_resize, 7);
  c_34_27_6_False_resize <= resize(c_27, 25);
  c_34_27_6_False_shift <= shift_left(c_34_27_6_False_resize, 6);
  c_34_33_3_False_resize <= resize(c_33, 25);
  c_34_33_3_False_shift <= shift_left(c_34_33_3_False_resize, 3);
  c_34_23_0_False_resize <= c_23;
  c_34_23_0_False_shift <= shift_left(c_34_23_0_False_resize, 0);
  with config_select_9 select c_34_sel <= 
    "00" when "11",
    "01" when "01",
    "10" when "10",
    "11" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_34_sel is
        when "00" => c_34 <= c_34_29_7_False_shift;
        when "01" => c_34 <= c_34_27_6_False_shift;
        when "10" => c_34 <= c_34_33_3_False_shift;
        when others => c_34 <= c_34_23_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 35 and associated fundamentals [[7], [60], [9], [57]]
  c_35_14_0_False_resize <= c_14;
  c_35_14_0_False_shift <= shift_left(c_35_14_0_False_resize, 0);
  c_35_31_0_False_resize <= c_31;
  c_35_31_0_False_shift <= shift_left(c_35_31_0_False_resize, 0);
  with config_select_7 select c_35_sel <= 
    "0" when "11",
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_14_0_False_shift;
        when others => c_35 <= c_35_31_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[7], [60], [9], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 37 and associated fundamentals [[7], [60], [9], [57]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 38 and associated fundamentals [[965], [188], [135], [711]]
  with config_select_10 select c_38_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when "10",
    '1' when others;
  inst_adder_node_38: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 22,
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
      sub_i => c_38_sub_sel,
      x_i => c_34,
      y_i => c_37,
      z_o => c_38_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_38_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 39 and associated fundamentals [[7], [9], [9], [1]]
  c_39_9_0_False_resize <= c_9(19 downto 0);
  c_39_9_0_False_shift <= shift_left(c_39_9_0_False_resize, 0);
  c_39_11_0_False_resize <= resize(c_11, 20);
  c_39_11_0_False_shift <= shift_left(c_39_11_0_False_resize, 0);
  with config_select_5 select c_39_sel <= 
    "0" when "00",
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_39_sel is
        when "0" => c_39 <= c_39_9_0_False_shift;
        when others => c_39 <= c_39_11_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[7], [9], [9], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 7 with id 41 and associated fundamentals [[793], [951], [151], [911]]
  inst_adder_node_41: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 20,
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
      x_i => c_14,
      y_i => c_40,
      z_o => c_41_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_41_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 42 and associated fundamentals [[793], [951], [151], [911]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 43 and associated fundamentals [[793], [951], [151], [911]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 44 and associated fundamentals [[793], [951], [151], [911]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 45 and associated fundamentals [[793], [951], [151], [911]]
  c_45_resize <= c_44;
  c_45 <= shift_left(c_45_resize, 0);
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[486], [246], [74], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_23 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 47 and associated fundamentals [[486], [246], [74], [247]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_46 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 48 and associated fundamentals [[972], [492], [148], [494]]
  c_48_resize <= resize(c_47, 26);
  c_48 <= shift_left(c_48_resize, 1);
  -- node of type 'output' in stage 10 with id 49 and associated fundamentals [[965], [188], [135], [711]]
  c_49_resize <= c_38;
  c_49 <= shift_left(c_49_resize, 0);
end architecture;
