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
  signal c_1: signed(17 downto 0);
  signal c_1_0_0_False_resize: signed(17 downto 0);
  signal c_1_0_0_False_shift: signed(17 downto 0);
  signal c_1_0_2_False_resize: signed(17 downto 0);
  signal c_1_0_2_False_shift: signed(17 downto 0);
  signal c_1_sel: std_logic_vector(0 downto 0);
  signal c_2: signed(15 downto 0);
  signal c_3: signed(18 downto 0);
  signal c_3_i0_resize: signed(18 downto 0);
  signal c_3_i1_resize: signed(18 downto 0);
  signal c_3_i0_shift: signed(18 downto 0);
  signal c_3_i1_shift: signed(18 downto 0);
  signal c_3_arith: signed(18 downto 0);
  signal c_3_oshift: signed(18 downto 0);
  signal c_4: signed(19 downto 0);
  signal c_4_3_1_False_resize: signed(19 downto 0);
  signal c_4_3_1_False_shift: signed(19 downto 0);
  signal c_4_3_0_False_resize: signed(19 downto 0);
  signal c_4_3_0_False_shift: signed(19 downto 0);
  signal c_4_sel: std_logic_vector(0 downto 0);
  signal c_5: signed(19 downto 0);
  signal c_5_3_1_False_resize: signed(19 downto 0);
  signal c_5_3_1_False_shift: signed(19 downto 0);
  signal c_5_3_0_False_resize: signed(19 downto 0);
  signal c_5_3_0_False_shift: signed(19 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(22 downto 0);
  signal c_6_i0_resize: signed(22 downto 0);
  signal c_6_i1_resize: signed(22 downto 0);
  signal c_6_i0_shift: signed(22 downto 0);
  signal c_6_i1_shift: signed(22 downto 0);
  signal c_6_arith: signed(22 downto 0);
  signal c_6_oshift: signed(22 downto 0);
  signal c_7: signed(15 downto 0);
  signal c_8: signed(15 downto 0);
  signal c_9: signed(15 downto 0);
  signal c_10: signed(23 downto 0);
  signal c_10_i0_resize: signed(23 downto 0);
  signal c_10_i1_resize: signed(23 downto 0);
  signal c_10_i0_shift: signed(23 downto 0);
  signal c_10_i1_shift: signed(23 downto 0);
  signal c_10_arith: signed(23 downto 0);
  signal c_10_oshift: signed(23 downto 0);
  signal c_10_sub_sel: std_logic;
  signal c_11: signed(18 downto 0);
  signal c_12: signed(18 downto 0);
  signal c_13: signed(18 downto 0);
  signal c_14: signed(22 downto 0);
  signal c_15: signed(23 downto 0);
  signal c_15_14_4_False_resize: signed(23 downto 0);
  signal c_15_14_4_False_shift: signed(23 downto 0);
  signal c_15_13_0_False_resize: signed(23 downto 0);
  signal c_15_13_0_False_shift: signed(23 downto 0);
  signal c_15_10_0_False_resize: signed(23 downto 0);
  signal c_15_10_0_False_shift: signed(23 downto 0);
  signal c_15_sel: std_logic_vector(1 downto 0);
  signal c_16: signed(19 downto 0);
  signal c_16_0_0_False_resize: signed(19 downto 0);
  signal c_16_0_0_False_shift: signed(19 downto 0);
  signal c_16_0_4_False_resize: signed(19 downto 0);
  signal c_16_0_4_False_shift: signed(19 downto 0);
  signal c_16_sel: std_logic_vector(0 downto 0);
  signal c_17: signed(19 downto 0);
  signal c_18: signed(19 downto 0);
  signal c_19: signed(19 downto 0);
  signal c_20: signed(19 downto 0);
  signal c_21: signed(19 downto 0);
  signal c_22: signed(23 downto 0);
  signal c_22_i0_resize: signed(23 downto 0);
  signal c_22_i1_resize: signed(23 downto 0);
  signal c_22_i0_shift: signed(23 downto 0);
  signal c_22_i1_shift: signed(23 downto 0);
  signal c_22_arith: signed(23 downto 0);
  signal c_22_oshift: signed(23 downto 0);
  signal c_22_sub_sel: std_logic;
  signal c_23: signed(22 downto 0);
  signal c_23_14_0_False_resize: signed(22 downto 0);
  signal c_23_14_0_False_shift: signed(22 downto 0);
  signal c_23_10_0_False_resize: signed(22 downto 0);
  signal c_23_10_0_False_shift: signed(22 downto 0);
  signal c_23_sel: std_logic_vector(0 downto 0);
  signal c_24: signed(22 downto 0);
  signal c_24_13_2_False_resize: signed(22 downto 0);
  signal c_24_13_2_False_shift: signed(22 downto 0);
  signal c_24_10_0_False_resize: signed(22 downto 0);
  signal c_24_10_0_False_shift: signed(22 downto 0);
  signal c_24_sel: std_logic_vector(0 downto 0);
  signal c_25: signed(23 downto 0);
  signal c_25_i0_resize: signed(23 downto 0);
  signal c_25_i1_resize: signed(23 downto 0);
  signal c_25_i0_shift: signed(23 downto 0);
  signal c_25_i1_shift: signed(23 downto 0);
  signal c_25_arith: signed(23 downto 0);
  signal c_25_oshift: signed(23 downto 0);
  signal c_26: signed(20 downto 0);
  signal c_26_12_2_False_resize: signed(20 downto 0);
  signal c_26_12_2_False_shift: signed(20 downto 0);
  signal c_26_9_0_False_resize: signed(20 downto 0);
  signal c_26_9_0_False_shift: signed(20 downto 0);
  signal c_26_6_1_False_resize: signed(20 downto 0);
  signal c_26_6_1_False_shift: signed(20 downto 0);
  signal c_26_sel: std_logic_vector(1 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_22_1_False_resize: signed(23 downto 0);
  signal c_27_22_1_False_shift: signed(23 downto 0);
  signal c_27_25_0_False_resize: signed(23 downto 0);
  signal c_27_25_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(20 downto 0);
  signal c_29: signed(20 downto 0);
  signal c_30: signed(20 downto 0);
  signal c_31: signed(23 downto 0);
  signal c_31_i0_resize: signed(23 downto 0);
  signal c_31_i1_resize: signed(23 downto 0);
  signal c_31_i0_shift: signed(23 downto 0);
  signal c_31_i1_shift: signed(23 downto 0);
  signal c_31_arith: signed(23 downto 0);
  signal c_31_oshift: signed(23 downto 0);
  signal c_31_sub_sel: std_logic;
  signal c_32: signed(15 downto 0);
  signal c_33: signed(15 downto 0);
  signal c_34: signed(15 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_35_25_0_False_resize: signed(23 downto 0);
  signal c_35_25_0_False_shift: signed(23 downto 0);
  signal c_35_34_0_False_resize: signed(23 downto 0);
  signal c_35_34_0_False_shift: signed(23 downto 0);
  signal c_35_sel: std_logic_vector(0 downto 0);
  signal c_36: signed(18 downto 0);
  signal c_37: signed(18 downto 0);
  signal c_38: signed(23 downto 0);
  signal c_38_25_0_False_resize: signed(23 downto 0);
  signal c_38_25_0_False_shift: signed(23 downto 0);
  signal c_38_37_3_False_resize: signed(23 downto 0);
  signal c_38_37_3_False_shift: signed(23 downto 0);
  signal c_38_sel: std_logic_vector(0 downto 0);
  signal c_39: signed(23 downto 0);
  signal c_40: signed(23 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_41_resize: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(23 downto 0);
  signal c_44: signed(23 downto 0);
  signal c_45: signed(23 downto 0);
  signal c_46: signed(23 downto 0);
  signal c_46_resize: signed(23 downto 0);
  signal c_47: signed(23 downto 0);
  signal c_48: signed(23 downto 0);
  signal c_48_resize: signed(23 downto 0);
  signal c_49: signed(23 downto 0);
  signal c_49_resize: signed(23 downto 0);
  signal c_50: signed(23 downto 0);
  signal c_51: signed(23 downto 0);
  signal c_51_resize: signed(23 downto 0);
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
  -- output node 0 with id 41
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_41);
    end if;
  end process;
  -- output node 1 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_46);
    end if;
  end process;
  -- output node 2 with id 48
  process(clk)
  begin
    if rising_edge(clk) then
      y_2 <= std_logic_vector(c_48);
    end if;
  end process;
  -- output node 3 with id 49
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_49);
    end if;
  end process;
  -- output node 4 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_51);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 1 and associated fundamentals [[4], [1], [4]]
  c_1_0_0_False_resize <= resize(c_0, 18);
  c_1_0_0_False_shift <= shift_left(c_1_0_0_False_resize, 0);
  c_1_0_2_False_resize <= resize(c_0, 18);
  c_1_0_2_False_shift <= shift_left(c_1_0_2_False_resize, 2);
  with config_select_1 select c_1_sel <= 
    "0" when "01",
    "1" when "00",
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
  -- node of type 'register' in stage 1 with id 2 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_2 <= c_0 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 2 with id 3 and associated fundamentals [[7], [1], [7]]
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 16,
      w_o => 19,
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
      x_i => c_1,
      y_i => c_2,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(18 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 4 and associated fundamentals [[7], [2], [14]]
  c_4_3_1_False_resize <= resize(c_3, 20);
  c_4_3_1_False_shift <= shift_left(c_4_3_1_False_resize, 1);
  c_4_3_0_False_resize <= resize(c_3, 20);
  c_4_3_0_False_shift <= shift_left(c_4_3_0_False_resize, 0);
  with config_select_3 select c_4_sel <= 
    "0" when "01",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_4_sel is
        when "0" => c_4 <= c_4_3_1_False_shift;
        when others => c_4 <= c_4_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[7], [1], [14]]
  c_5_3_1_False_resize <= resize(c_3, 20);
  c_5_3_1_False_shift <= shift_left(c_5_3_1_False_resize, 1);
  c_5_3_0_False_resize <= resize(c_3, 20);
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_3_1_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'sub' in stage 4 with id 6 and associated fundamentals [[49], [15], [98]]
  inst_adder_node_6: entity work.adder_node
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
      x_i => c_4,
      y_i => c_5,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 7 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_2 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 8 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_7 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 9 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 10 and associated fundamentals [[97], [31], [197]]
  with config_select_5 select c_10_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '0' when others;
  inst_adder_node_10: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 16,
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
      sub_i => c_10_sub_sel,
      x_i => c_6,
      y_i => c_9,
      z_o => c_10_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_10_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 11 and associated fundamentals [[7], [1], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[7], [1], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 13 and associated fundamentals [[7], [1], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 14 and associated fundamentals [[49], [15], [98]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_6 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 15 and associated fundamentals [[7], [240], [197]]
  c_15_14_4_False_resize <= resize(c_14, 24);
  c_15_14_4_False_shift <= shift_left(c_15_14_4_False_resize, 4);
  c_15_13_0_False_resize <= resize(c_13, 24);
  c_15_13_0_False_shift <= shift_left(c_15_13_0_False_resize, 0);
  c_15_10_0_False_resize <= c_10;
  c_15_10_0_False_shift <= shift_left(c_15_10_0_False_resize, 0);
  with config_select_6 select c_15_sel <= 
    "00" when "01",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "00" => c_15 <= c_15_14_4_False_shift;
        when "01" => c_15 <= c_15_13_0_False_shift;
        when others => c_15 <= c_15_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 16 and associated fundamentals [[1], [1], [16]]
  c_16_0_0_False_resize <= resize(c_0, 20);
  c_16_0_0_False_shift <= shift_left(c_16_0_0_False_resize, 0);
  c_16_0_4_False_resize <= resize(c_0, 20);
  c_16_0_4_False_shift <= shift_left(c_16_0_4_False_resize, 4);
  with config_select_1 select c_16_sel <= 
    "0" when "01",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_16_sel is
        when "0" => c_16 <= c_16_0_0_False_shift;
        when others => c_16 <= c_16_0_4_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 17 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 18 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_17 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 19 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_18 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 20 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 21 and associated fundamentals [[1], [1], [16]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 7 with id 22 and associated fundamentals [[9], [242], [165]]
  with config_select_7 select c_22_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_22: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 20,
      w_o => 24,
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
      sub_i => c_22_sub_sel,
      x_i => c_15,
      y_i => c_21,
      z_o => c_22_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_22_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 23 and associated fundamentals [[49], [31], [98]]
  c_23_14_0_False_resize <= c_14;
  c_23_14_0_False_shift <= shift_left(c_23_14_0_False_resize, 0);
  c_23_10_0_False_resize <= c_10(22 downto 0);
  c_23_10_0_False_shift <= shift_left(c_23_10_0_False_resize, 0);
  with config_select_6 select c_23_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_23_sel is
        when "0" => c_23 <= c_23_14_0_False_shift;
        when others => c_23 <= c_23_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 24 and associated fundamentals [[97], [31], [28]]
  c_24_13_2_False_resize <= resize(c_13, 23);
  c_24_13_2_False_shift <= shift_left(c_24_13_2_False_resize, 2);
  c_24_10_0_False_resize <= c_10(22 downto 0);
  c_24_10_0_False_shift <= shift_left(c_24_10_0_False_resize, 0);
  with config_select_6 select c_24_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_24_sel is
        when "0" => c_24 <= c_24_13_2_False_shift;
        when others => c_24 <= c_24_10_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add' in stage 7 with id 25 and associated fundamentals [[243], [93], [154]]
  inst_adder_node_25: entity work.adder_node
    generic map (
      w_x_i => 23,
      w_y_i => 23,
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
      x_i => c_23,
      y_i => c_24,
      z_o => c_25_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_25_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 26 and associated fundamentals [[28], [30], [1]]
  c_26_12_2_False_resize <= resize(c_12, 21);
  c_26_12_2_False_shift <= shift_left(c_26_12_2_False_resize, 2);
  c_26_9_0_False_resize <= resize(c_9, 21);
  c_26_9_0_False_shift <= shift_left(c_26_9_0_False_resize, 0);
  c_26_6_1_False_resize <= c_6(20 downto 0);
  c_26_6_1_False_shift <= shift_left(c_26_6_1_False_resize, 1);
  with config_select_5 select c_26_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_26_sel is
        when "00" => c_26 <= c_26_12_2_False_shift;
        when "01" => c_26 <= c_26_9_0_False_shift;
        when others => c_26 <= c_26_6_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 27 and associated fundamentals [[18], [93], [154]]
  c_27_22_1_False_resize <= c_22;
  c_27_22_1_False_shift <= shift_left(c_27_22_1_False_resize, 1);
  c_27_25_0_False_resize <= c_25;
  c_27_25_0_False_shift <= shift_left(c_27_25_0_False_resize, 0);
  with config_select_8 select c_27_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_22_1_False_shift;
        when others => c_27 <= c_27_25_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 28 and associated fundamentals [[28], [30], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 29 and associated fundamentals [[28], [30], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_28 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 30 and associated fundamentals [[28], [30], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_29 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 9 with id 31 and associated fundamentals [[206], [147], [162]]
  with config_select_9 select c_31_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_31: entity work.adder_node
    generic map (
      w_x_i => 21,
      w_y_i => 24,
      w_o => 24,
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
      sub_i => c_31_sub_sel,
      x_i => c_30,
      y_i => c_27,
      z_o => c_31_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_31_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 32 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_9 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 33 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 34 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 35 and associated fundamentals [[243], [93], [1]]
  c_35_25_0_False_resize <= c_25;
  c_35_25_0_False_shift <= shift_left(c_35_25_0_False_resize, 0);
  c_35_34_0_False_resize <= resize(c_34, 24);
  c_35_34_0_False_shift <= shift_left(c_35_34_0_False_resize, 0);
  with config_select_8 select c_35_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_35_sel is
        when "0" => c_35 <= c_35_25_0_False_shift;
        when others => c_35 <= c_35_34_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 36 and associated fundamentals [[7], [1], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 37 and associated fundamentals [[7], [1], [7]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_36 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 8 with id 38 and associated fundamentals [[56], [8], [154]]
  c_38_25_0_False_resize <= c_25;
  c_38_25_0_False_shift <= shift_left(c_38_25_0_False_resize, 0);
  c_38_37_3_False_resize <= resize(c_37, 24);
  c_38_37_3_False_shift <= shift_left(c_38_37_3_False_resize, 3);
  with config_select_8 select c_38_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_38_sel is
        when "0" => c_38 <= c_38_25_0_False_shift;
        when others => c_38 <= c_38_37_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[9], [242], [165]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_22 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 40 and associated fundamentals [[9], [242], [165]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 41 and associated fundamentals [[9], [242], [165]]
  c_41_resize <= c_40;
  c_41 <= shift_left(c_41_resize, 0);
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[97], [31], [197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 43 and associated fundamentals [[97], [31], [197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_43 <= c_42 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 44 and associated fundamentals [[97], [31], [197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 45 and associated fundamentals [[97], [31], [197]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 46 and associated fundamentals [[97], [31], [197]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'register' in stage 9 with id 47 and associated fundamentals [[243], [93], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_35 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 48 and associated fundamentals [[243], [93], [1]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 9 with id 49 and associated fundamentals [[206], [147], [162]]
  c_49_resize <= c_31;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'register' in stage 9 with id 50 and associated fundamentals [[56], [8], [154]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_38 & "";
    end if;
  end process;
  -- node of type 'output' in stage 9 with id 51 and associated fundamentals [[56], [8], [154]]
  c_51_resize <= c_50;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;
