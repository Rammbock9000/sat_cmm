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
  signal c_3: signed(21 downto 0);
  signal c_3_i0_resize: signed(21 downto 0);
  signal c_3_i1_resize: signed(21 downto 0);
  signal c_3_i0_shift: signed(21 downto 0);
  signal c_3_i1_shift: signed(21 downto 0);
  signal c_3_arith: signed(21 downto 0);
  signal c_3_oshift: signed(21 downto 0);
  signal c_3_sub_sel: std_logic;
  signal c_4: signed(15 downto 0);
  signal c_5: signed(21 downto 0);
  signal c_5_4_0_False_resize: signed(21 downto 0);
  signal c_5_4_0_False_shift: signed(21 downto 0);
  signal c_5_3_0_False_resize: signed(21 downto 0);
  signal c_5_3_0_False_shift: signed(21 downto 0);
  signal c_5_sel: std_logic_vector(0 downto 0);
  signal c_6: signed(15 downto 0);
  signal c_7: signed(25 downto 0);
  signal c_7_i0_resize: signed(25 downto 0);
  signal c_7_i1_resize: signed(25 downto 0);
  signal c_7_i0_shift: signed(25 downto 0);
  signal c_7_i1_shift: signed(25 downto 0);
  signal c_7_arith: signed(25 downto 0);
  signal c_7_oshift: signed(25 downto 0);
  signal c_7_sub_sel: std_logic;
  signal c_8: signed(18 downto 0);
  signal c_8_0_0_False_resize: signed(18 downto 0);
  signal c_8_0_0_False_shift: signed(18 downto 0);
  signal c_8_0_3_False_resize: signed(18 downto 0);
  signal c_8_0_3_False_shift: signed(18 downto 0);
  signal c_8_sel: std_logic_vector(0 downto 0);
  signal c_9: signed(22 downto 0);
  signal c_9_1_0_False_resize: signed(22 downto 0);
  signal c_9_1_0_False_shift: signed(22 downto 0);
  signal c_9_1_3_False_resize: signed(22 downto 0);
  signal c_9_1_3_False_shift: signed(22 downto 0);
  signal c_9_sel: std_logic_vector(0 downto 0);
  signal c_10: signed(18 downto 0);
  signal c_11: signed(22 downto 0);
  signal c_11_i0_resize: signed(22 downto 0);
  signal c_11_i1_resize: signed(22 downto 0);
  signal c_11_i0_shift: signed(22 downto 0);
  signal c_11_i1_shift: signed(22 downto 0);
  signal c_11_arith: signed(22 downto 0);
  signal c_11_oshift: signed(22 downto 0);
  signal c_11_sub_sel: std_logic;
  signal c_12: signed(22 downto 0);
  signal c_13: signed(25 downto 0);
  signal c_13_i0_resize: signed(25 downto 0);
  signal c_13_i1_resize: signed(25 downto 0);
  signal c_13_i0_shift: signed(25 downto 0);
  signal c_13_i1_shift: signed(25 downto 0);
  signal c_13_arith: signed(25 downto 0);
  signal c_13_oshift: signed(25 downto 0);
  signal c_14: signed(21 downto 0);
  signal c_14_3_1_False_resize: signed(21 downto 0);
  signal c_14_3_1_False_shift: signed(21 downto 0);
  signal c_14_3_0_False_resize: signed(21 downto 0);
  signal c_14_3_0_False_shift: signed(21 downto 0);
  signal c_14_sel: std_logic_vector(0 downto 0);
  signal c_15: signed(18 downto 0);
  signal c_15_0_0_False_resize: signed(18 downto 0);
  signal c_15_0_0_False_shift: signed(18 downto 0);
  signal c_15_0_3_False_resize: signed(18 downto 0);
  signal c_15_0_3_False_shift: signed(18 downto 0);
  signal c_15_sel: std_logic_vector(0 downto 0);
  signal c_16: signed(18 downto 0);
  signal c_17: signed(18 downto 0);
  signal c_18: signed(23 downto 0);
  signal c_18_i0_resize: signed(23 downto 0);
  signal c_18_i1_resize: signed(23 downto 0);
  signal c_18_i0_shift: signed(23 downto 0);
  signal c_18_i1_shift: signed(23 downto 0);
  signal c_18_arith: signed(23 downto 0);
  signal c_18_oshift: signed(23 downto 0);
  signal c_18_sub_sel: std_logic;
  signal c_19: signed(23 downto 0);
  signal c_19_i0_resize: signed(23 downto 0);
  signal c_19_i1_resize: signed(23 downto 0);
  signal c_19_i0_shift: signed(23 downto 0);
  signal c_19_i1_shift: signed(23 downto 0);
  signal c_19_arith: signed(23 downto 0);
  signal c_19_oshift: signed(23 downto 0);
  signal c_20: signed(25 downto 0);
  signal c_20_i0_resize: signed(25 downto 0);
  signal c_20_i1_resize: signed(25 downto 0);
  signal c_20_i0_shift: signed(25 downto 0);
  signal c_20_i1_shift: signed(25 downto 0);
  signal c_20_arith: signed(25 downto 0);
  signal c_20_oshift: signed(25 downto 0);
  signal c_20_sub_sel: std_logic;
  signal c_21: signed(23 downto 0);
  signal c_21_3_2_False_resize: signed(23 downto 0);
  signal c_21_3_2_False_shift: signed(23 downto 0);
  signal c_21_3_0_False_resize: signed(23 downto 0);
  signal c_21_3_0_False_shift: signed(23 downto 0);
  signal c_21_sel: std_logic_vector(0 downto 0);
  signal c_22: signed(20 downto 0);
  signal c_23: signed(20 downto 0);
  signal c_24: signed(23 downto 0);
  signal c_24_i0_resize: signed(23 downto 0);
  signal c_24_i1_resize: signed(23 downto 0);
  signal c_24_i0_shift: signed(23 downto 0);
  signal c_24_i1_shift: signed(23 downto 0);
  signal c_24_arith: signed(23 downto 0);
  signal c_24_oshift: signed(23 downto 0);
  signal c_24_sub_sel: std_logic;
  signal c_25: signed(23 downto 0);
  signal c_26: signed(23 downto 0);
  signal c_27: signed(23 downto 0);
  signal c_27_24_0_False_resize: signed(23 downto 0);
  signal c_27_24_0_False_shift: signed(23 downto 0);
  signal c_27_26_0_False_resize: signed(23 downto 0);
  signal c_27_26_0_False_shift: signed(23 downto 0);
  signal c_27_sel: std_logic_vector(0 downto 0);
  signal c_28: signed(22 downto 0);
  signal c_29: signed(25 downto 0);
  signal c_29_i0_resize: signed(25 downto 0);
  signal c_29_i1_resize: signed(25 downto 0);
  signal c_29_i0_shift: signed(25 downto 0);
  signal c_29_i1_shift: signed(25 downto 0);
  signal c_29_arith: signed(25 downto 0);
  signal c_29_oshift: signed(25 downto 0);
  signal c_30: signed(25 downto 0);
  signal c_30_26_2_False_resize: signed(25 downto 0);
  signal c_30_26_2_False_shift: signed(25 downto 0);
  signal c_30_18_0_False_resize: signed(25 downto 0);
  signal c_30_18_0_False_shift: signed(25 downto 0);
  signal c_30_sel: std_logic_vector(0 downto 0);
  signal c_31: signed(24 downto 0);
  signal c_31_19_0_False_resize: signed(24 downto 0);
  signal c_31_19_0_False_shift: signed(24 downto 0);
  signal c_31_19_1_False_resize: signed(24 downto 0);
  signal c_31_19_1_False_shift: signed(24 downto 0);
  signal c_31_sel: std_logic_vector(0 downto 0);
  signal c_32: signed(24 downto 0);
  signal c_33: signed(24 downto 0);
  signal c_34: signed(25 downto 0);
  signal c_34_i0_resize: signed(25 downto 0);
  signal c_34_i1_resize: signed(25 downto 0);
  signal c_34_i0_shift: signed(25 downto 0);
  signal c_34_i1_shift: signed(25 downto 0);
  signal c_34_arith: signed(25 downto 0);
  signal c_34_oshift: signed(25 downto 0);
  signal c_34_sub_sel: std_logic;
  signal c_35: signed(22 downto 0);
  signal c_36: signed(25 downto 0);
  signal c_36_35_2_False_resize: signed(25 downto 0);
  signal c_36_35_2_False_shift: signed(25 downto 0);
  signal c_36_29_0_False_resize: signed(25 downto 0);
  signal c_36_29_0_False_shift: signed(25 downto 0);
  signal c_36_sel: std_logic_vector(0 downto 0);
  signal c_37: signed(21 downto 0);
  signal c_38: signed(21 downto 0);
  signal c_39: signed(21 downto 0);
  signal c_40: signed(21 downto 0);
  signal c_41: signed(23 downto 0);
  signal c_42: signed(23 downto 0);
  signal c_43: signed(24 downto 0);
  signal c_43_42_0_False_resize: signed(24 downto 0);
  signal c_43_42_0_False_shift: signed(24 downto 0);
  signal c_43_29_0_False_resize: signed(24 downto 0);
  signal c_43_29_0_False_shift: signed(24 downto 0);
  signal c_43_40_0_False_resize: signed(24 downto 0);
  signal c_43_40_0_False_shift: signed(24 downto 0);
  signal c_43_sel: std_logic_vector(1 downto 0);
  signal c_44: signed(25 downto 0);
  signal c_45: signed(25 downto 0);
  signal c_46: signed(25 downto 0);
  signal c_46_resize: signed(25 downto 0);
  signal c_47: signed(25 downto 0);
  signal c_48: signed(25 downto 0);
  signal c_48_resize: signed(25 downto 0);
  signal c_49: signed(25 downto 0);
  signal c_49_resize: signed(25 downto 0);
  signal c_50: signed(25 downto 0);
  signal c_51: signed(25 downto 0);
  signal c_52: signed(25 downto 0);
  signal c_52_resize: signed(25 downto 0);
  signal c_53: signed(25 downto 0);
  signal c_53_resize: signed(25 downto 0);
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
    end if;
  end process;
  -- input node 0 with id 0
  process(clk)
  begin
    if rising_edge(clk) then
      c_0 <= signed(x_0);
    end if;
  end process;
  -- output node 0 with id 46
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_46);
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
  -- output node 3 with id 52
  process(clk)
  begin
    if rising_edge(clk) then
      y_3 <= std_logic_vector(c_52);
    end if;
  end process;
  -- output node 4 with id 53
  process(clk)
  begin
    if rising_edge(clk) then
      y_4 <= std_logic_vector(c_53);
    end if;
  end process;
  -- node of type 'add_sub' in stage 1 with id 1 and associated fundamentals [[17], [17], [15]]
  with config_select_1 select c_1_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
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
  -- node of type 'add_sub' in stage 2 with id 3 and associated fundamentals [[15], [15], [47]]
  with config_select_2 select c_3_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_3: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 22,
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
      sub_i => c_3_sub_sel,
      x_i => c_2,
      y_i => c_1,
      z_o => c_3_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_3 <= c_3_oshift(21 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 4 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_2 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 5 and associated fundamentals [[1], [1], [47]]
  c_5_4_0_False_resize <= resize(c_4, 22);
  c_5_4_0_False_shift <= shift_left(c_5_4_0_False_resize, 0);
  c_5_3_0_False_resize <= c_3;
  c_5_3_0_False_shift <= shift_left(c_5_3_0_False_resize, 0);
  with config_select_3 select c_5_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_5_sel is
        when "0" => c_5 <= c_5_4_0_False_shift;
        when others => c_5 <= c_5_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 6 and associated fundamentals [[1], [1], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_4 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 7 and associated fundamentals [[513], [511], [559]]
  with config_select_4 select c_7_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_7: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 22,
      w_o => 26,
      s_x_i => 9,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_7_sub_sel,
      x_i => c_6,
      y_i => c_5,
      z_o => c_7_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_7 <= c_7_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 8 and associated fundamentals [[1], [8], [1]]
  c_8_0_0_False_resize <= resize(c_0, 19);
  c_8_0_0_False_shift <= shift_left(c_8_0_0_False_resize, 0);
  c_8_0_3_False_resize <= resize(c_0, 19);
  c_8_0_3_False_shift <= shift_left(c_8_0_3_False_resize, 3);
  with config_select_1 select c_8_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_8_sel is
        when "0" => c_8 <= c_8_0_0_False_shift;
        when others => c_8 <= c_8_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 2 with id 9 and associated fundamentals [[17], [17], [120]]
  c_9_1_0_False_resize <= resize(c_1, 23);
  c_9_1_0_False_shift <= shift_left(c_9_1_0_False_resize, 0);
  c_9_1_3_False_resize <= resize(c_1, 23);
  c_9_1_3_False_shift <= shift_left(c_9_1_3_False_resize, 3);
  with config_select_2 select c_9_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_9_sel is
        when "0" => c_9 <= c_9_1_0_False_shift;
        when others => c_9 <= c_9_1_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 10 and associated fundamentals [[1], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_8 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 3 with id 11 and associated fundamentals [[25], [81], [-112]]
  with config_select_3 select c_11_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_11: entity work.adder_node
    generic map (
      w_x_i => 19,
      w_y_i => 23,
      w_o => 23,
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
      sub_i => c_11_sub_sel,
      x_i => c_10,
      y_i => c_9,
      z_o => c_11_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_11 <= c_11_oshift(22 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 12 and associated fundamentals [[25], [81], [-112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_11 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 5 with id 13 and associated fundamentals [[413], [187], [1007]]
  inst_adder_node_13: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 23,
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
      x_i => c_7,
      y_i => c_12,
      z_o => c_13_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_13 <= c_13_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 14 and associated fundamentals [[15], [30], [47]]
  c_14_3_1_False_resize <= c_3;
  c_14_3_1_False_shift <= shift_left(c_14_3_1_False_resize, 1);
  c_14_3_0_False_resize <= c_3;
  c_14_3_0_False_shift <= shift_left(c_14_3_0_False_resize, 0);
  with config_select_3 select c_14_sel <= 
    "0" when "01",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_14_sel is
        when "0" => c_14 <= c_14_3_1_False_shift;
        when others => c_14 <= c_14_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 15 and associated fundamentals [[8], [8], [1]]
  c_15_0_0_False_resize <= resize(c_0, 19);
  c_15_0_0_False_shift <= shift_left(c_15_0_0_False_resize, 0);
  c_15_0_3_False_resize <= resize(c_0, 19);
  c_15_0_3_False_shift <= shift_left(c_15_0_3_False_resize, 3);
  with config_select_1 select c_15_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_15_sel is
        when "0" => c_15 <= c_15_0_0_False_shift;
        when others => c_15 <= c_15_0_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 16 and associated fundamentals [[8], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_15 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 17 and associated fundamentals [[8], [8], [1]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_17 <= c_16 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 18 and associated fundamentals [[124], [184], [180]]
  with config_select_4 select c_18_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_18: entity work.adder_node
    generic map (
      w_x_i => 22,
      w_y_i => 19,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 3,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_18_sub_sel,
      x_i => c_14,
      y_i => c_17,
      z_o => c_18_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_18_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 19 and associated fundamentals [[145], [145], [143]]
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 16,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 7,
      s_y_i => 0,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      x_i => c_2,
      y_i => c_1,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 20 and associated fundamentals [[637], [327], [379]]
  with config_select_5 select c_20_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '1' when others;
  inst_adder_node_20: entity work.adder_node
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
      sub_i => c_20_sub_sel,
      x_i => c_7,
      y_i => c_18,
      z_o => c_20_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_20 <= c_20_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 21 and associated fundamentals [[15], [60], [188]]
  c_21_3_2_False_resize <= resize(c_3, 24);
  c_21_3_2_False_shift <= shift_left(c_21_3_2_False_resize, 2);
  c_21_3_0_False_resize <= resize(c_3, 24);
  c_21_3_0_False_shift <= shift_left(c_21_3_0_False_resize, 0);
  with config_select_3 select c_21_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_21_sel is
        when "0" => c_21 <= c_21_3_2_False_shift;
        when others => c_21 <= c_21_3_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 22 and associated fundamentals [[17], [17], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_1 & "";
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 23 and associated fundamentals [[17], [17], [15]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_22 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 4 with id 24 and associated fundamentals [[128], [172], [812]]
  with config_select_4 select c_24_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_24: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 21,
      w_o => 24,
      s_x_i => 2,
      s_y_i => 2,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => True,
      is_double_add_sub => False,
      sub => False
    )
    port map (
      sub_i => c_24_sub_sel,
      x_i => c_21,
      y_i => c_23,
      z_o => c_24_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_24_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 25 and associated fundamentals [[145], [145], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 26 and associated fundamentals [[145], [145], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 27 and associated fundamentals [[128], [172], [143]]
  c_27_24_0_False_resize <= c_24;
  c_27_24_0_False_shift <= shift_left(c_27_24_0_False_resize, 0);
  c_27_26_0_False_resize <= c_26;
  c_27_26_0_False_shift <= shift_left(c_27_26_0_False_resize, 0);
  with config_select_5 select c_27_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_27_sel is
        when "0" => c_27 <= c_27_24_0_False_shift;
        when others => c_27 <= c_27_26_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 28 and associated fundamentals [[25], [81], [-112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_28 <= c_12 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 6 with id 29 and associated fundamentals [[487], [607], [684]]
  inst_adder_node_29: entity work.adder_node
    generic map (
      w_x_i => 24,
      w_y_i => 23,
      w_o => 26,
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
      x_i => c_27,
      y_i => c_28,
      z_o => c_29_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_29 <= c_29_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 5 with id 30 and associated fundamentals [[580], [184], [572]]
  c_30_26_2_False_resize <= resize(c_26, 26);
  c_30_26_2_False_shift <= shift_left(c_30_26_2_False_resize, 2);
  c_30_18_0_False_resize <= resize(c_18, 26);
  c_30_18_0_False_shift <= shift_left(c_30_18_0_False_resize, 0);
  with config_select_5 select c_30_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_30_sel is
        when "0" => c_30 <= c_30_26_2_False_shift;
        when others => c_30 <= c_30_18_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 31 and associated fundamentals [[290], [145], [143]]
  c_31_19_0_False_resize <= resize(c_19, 25);
  c_31_19_0_False_shift <= shift_left(c_31_19_0_False_resize, 0);
  c_31_19_1_False_resize <= resize(c_19, 25);
  c_31_19_1_False_shift <= shift_left(c_31_19_1_False_resize, 1);
  with config_select_3 select c_31_sel <= 
    "0" when "10",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_31_sel is
        when "0" => c_31 <= c_31_19_0_False_shift;
        when others => c_31 <= c_31_19_1_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[290], [145], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[290], [145], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 34 and associated fundamentals [[870], [329], [429]]
  with config_select_6 select c_34_sub_sel <= 
    '0' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_34: entity work.adder_node
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
      sub_i => c_34_sub_sel,
      x_i => c_30,
      y_i => c_33,
      z_o => c_34_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_34_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 35 and associated fundamentals [[25], [81], [-112]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_28 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 36 and associated fundamentals [[100], [607], [684]]
  c_36_35_2_False_resize <= resize(c_35, 26);
  c_36_35_2_False_shift <= shift_left(c_36_35_2_False_resize, 2);
  c_36_29_0_False_resize <= c_29;
  c_36_29_0_False_shift <= shift_left(c_36_29_0_False_resize, 0);
  with config_select_7 select c_36_sel <= 
    "0" when "00",
    "1" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_36_sel is
        when "0" => c_36 <= c_36_35_2_False_shift;
        when others => c_36 <= c_36_29_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 37 and associated fundamentals [[15], [15], [47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_3 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 38 and associated fundamentals [[15], [15], [47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 39 and associated fundamentals [[15], [15], [47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 40 and associated fundamentals [[15], [15], [47]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_40 <= c_39 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 41 and associated fundamentals [[145], [145], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_26 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 42 and associated fundamentals [[145], [145], [143]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 43 and associated fundamentals [[487], [15], [143]]
  c_43_42_0_False_resize <= resize(c_42, 25);
  c_43_42_0_False_shift <= shift_left(c_43_42_0_False_resize, 0);
  c_43_29_0_False_resize <= c_29(24 downto 0);
  c_43_29_0_False_shift <= shift_left(c_43_29_0_False_resize, 0);
  c_43_40_0_False_resize <= resize(c_40, 25);
  c_43_40_0_False_shift <= shift_left(c_43_40_0_False_resize, 0);
  with config_select_7 select c_43_sel <= 
    "00" when "10",
    "01" when "00",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "00" => c_43 <= c_43_42_0_False_shift;
        when "01" => c_43 <= c_43_29_0_False_shift;
        when others => c_43 <= c_43_40_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 44 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_13 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 45 and associated fundamentals [[413], [187], [1007]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 46 and associated fundamentals [[413], [187], [1007]]
  c_46_resize <= c_45;
  c_46 <= shift_left(c_46_resize, 0);
  -- node of type 'register' in stage 7 with id 47 and associated fundamentals [[870], [329], [429]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_34 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 48 and associated fundamentals [[870], [329], [429]]
  c_48_resize <= c_47;
  c_48 <= shift_left(c_48_resize, 0);
  -- node of type 'output' in stage 7 with id 49 and associated fundamentals [[100], [607], [684]]
  c_49_resize <= c_36;
  c_49 <= shift_left(c_49_resize, 0);
  -- node of type 'register' in stage 6 with id 50 and associated fundamentals [[637], [327], [379]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_50 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 51 and associated fundamentals [[637], [327], [379]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_51 <= c_50 & "";
    end if;
  end process;
  -- node of type 'output' in stage 7 with id 52 and associated fundamentals [[637], [327], [379]]
  c_52_resize <= c_51;
  c_52 <= shift_left(c_52_resize, 0);
  -- node of type 'output' in stage 7 with id 53 and associated fundamentals [[974], [30], [286]]
  c_53_resize <= resize(c_43, 26);
  c_53 <= shift_left(c_53_resize, 1);
end architecture;
