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
  signal c_0: signed(17 downto 0);
  signal c_1: signed(17 downto 0);
  signal c_2: signed(22 downto 0);
  signal c_2_1_0_False_resize: signed(22 downto 0);
  signal c_2_1_0_False_shift: signed(22 downto 0);
  signal c_2_1_1_False_resize: signed(22 downto 0);
  signal c_2_1_1_False_shift: signed(22 downto 0);
  signal c_2_0_5_False_resize: signed(22 downto 0);
  signal c_2_0_5_False_shift: signed(22 downto 0);
  signal c_2_sel: std_logic_vector(1 downto 0);
  signal c_3: signed(17 downto 0);
  signal c_4: signed(23 downto 0);
  signal c_4_i0_resize: signed(23 downto 0);
  signal c_4_i1_resize: signed(23 downto 0);
  signal c_4_i0_shift: signed(23 downto 0);
  signal c_4_i1_shift: signed(23 downto 0);
  signal c_4_arith: signed(23 downto 0);
  signal c_4_oshift: signed(23 downto 0);
  signal c_5: signed(17 downto 0);
  signal c_6: signed(24 downto 0);
  signal c_6_i0_resize: signed(24 downto 0);
  signal c_6_i1_resize: signed(24 downto 0);
  signal c_6_i0_shift: signed(24 downto 0);
  signal c_6_i1_shift: signed(24 downto 0);
  signal c_6_arith: signed(24 downto 0);
  signal c_6_oshift: signed(24 downto 0);
  signal c_7: signed(17 downto 0);
  signal c_7_0_0_False_resize: signed(17 downto 0);
  signal c_7_0_0_False_shift: signed(17 downto 0);
  signal c_7_1_0_False_resize: signed(17 downto 0);
  signal c_7_1_0_False_shift: signed(17 downto 0);
  signal c_7_sel: std_logic_vector(0 downto 0);
  signal c_8: signed(17 downto 0);
  signal c_9: signed(20 downto 0);
  signal c_9_i0_resize: signed(20 downto 0);
  signal c_9_i1_resize: signed(20 downto 0);
  signal c_9_i0_shift: signed(20 downto 0);
  signal c_9_i1_shift: signed(20 downto 0);
  signal c_9_arith: signed(20 downto 0);
  signal c_9_oshift: signed(20 downto 0);
  signal c_10: signed(20 downto 0);
  signal c_11: signed(25 downto 0);
  signal c_11_10_5_False_resize: signed(25 downto 0);
  signal c_11_10_5_False_shift: signed(25 downto 0);
  signal c_11_6_0_False_resize: signed(25 downto 0);
  signal c_11_6_0_False_shift: signed(25 downto 0);
  signal c_11_sel: std_logic_vector(0 downto 0);
  signal c_12: signed(17 downto 0);
  signal c_13: signed(23 downto 0);
  signal c_13_12_0_False_resize: signed(23 downto 0);
  signal c_13_12_0_False_shift: signed(23 downto 0);
  signal c_13_9_3_False_resize: signed(23 downto 0);
  signal c_13_9_3_False_shift: signed(23 downto 0);
  signal c_13_sel: std_logic_vector(0 downto 0);
  signal c_14: signed(23 downto 0);
  signal c_15: signed(25 downto 0);
  signal c_15_i0_resize: signed(25 downto 0);
  signal c_15_i1_resize: signed(25 downto 0);
  signal c_15_i0_shift: signed(25 downto 0);
  signal c_15_i1_shift: signed(25 downto 0);
  signal c_15_arith: signed(25 downto 0);
  signal c_15_oshift: signed(25 downto 0);
  signal c_15_sub_sel: std_logic;
  signal c_16: signed(17 downto 0);
  signal c_17: signed(31 downto 0);
  signal c_17_16_0_False_resize: signed(31 downto 0);
  signal c_17_16_0_False_shift: signed(31 downto 0);
  signal c_17_6_8_False_resize: signed(31 downto 0);
  signal c_17_6_8_False_shift: signed(31 downto 0);
  signal c_17_sel: std_logic_vector(0 downto 0);
  signal c_18: signed(24 downto 0);
  signal c_19: signed(31 downto 0);
  signal c_19_i0_resize: signed(31 downto 0);
  signal c_19_i1_resize: signed(31 downto 0);
  signal c_19_i0_shift: signed(31 downto 0);
  signal c_19_i1_shift: signed(31 downto 0);
  signal c_19_arith: signed(31 downto 0);
  signal c_19_oshift: signed(31 downto 0);
  signal c_19_sub_sel: std_logic;
  signal c_20: signed(25 downto 0);
  signal c_20_12_0_False_resize: signed(25 downto 0);
  signal c_20_12_0_False_shift: signed(25 downto 0);
  signal c_20_9_5_False_resize: signed(25 downto 0);
  signal c_20_9_5_False_shift: signed(25 downto 0);
  signal c_20_sel: std_logic_vector(0 downto 0);
  signal c_21: signed(25 downto 0);
  signal c_22: signed(25 downto 0);
  signal c_23: signed(26 downto 0);
  signal c_23_i0_resize: signed(26 downto 0);
  signal c_23_i1_resize: signed(26 downto 0);
  signal c_23_i0_shift: signed(26 downto 0);
  signal c_23_i1_shift: signed(26 downto 0);
  signal c_23_arith: signed(26 downto 0);
  signal c_23_oshift: signed(26 downto 0);
  signal c_23_sub_sel: std_logic;
  signal c_24: signed(17 downto 0);
  signal c_25: signed(17 downto 0);
  signal c_26: signed(17 downto 0);
  signal c_27: signed(17 downto 0);
  signal c_28: signed(24 downto 0);
  signal c_28_23_0_False_resize: signed(24 downto 0);
  signal c_28_23_0_False_shift: signed(24 downto 0);
  signal c_28_27_6_False_resize: signed(24 downto 0);
  signal c_28_27_6_False_shift: signed(24 downto 0);
  signal c_28_sel: std_logic_vector(0 downto 0);
  signal c_29: signed(29 downto 0);
  signal c_29_23_0_False_resize: signed(29 downto 0);
  signal c_29_23_0_False_shift: signed(29 downto 0);
  signal c_29_23_3_False_resize: signed(29 downto 0);
  signal c_29_23_3_False_shift: signed(29 downto 0);
  signal c_29_sel: std_logic_vector(0 downto 0);
  signal c_30: signed(31 downto 0);
  signal c_30_i0_resize: signed(31 downto 0);
  signal c_30_i1_resize: signed(31 downto 0);
  signal c_30_i0_shift: signed(31 downto 0);
  signal c_30_i1_shift: signed(31 downto 0);
  signal c_30_arith: signed(31 downto 0);
  signal c_30_oshift: signed(31 downto 0);
  signal c_30_sub_sel: std_logic;
  signal c_31: signed(23 downto 0);
  signal c_32: signed(23 downto 0);
  signal c_33: signed(23 downto 0);
  signal c_34: signed(23 downto 0);
  signal c_35: signed(23 downto 0);
  signal c_36: signed(23 downto 0);
  signal c_37: signed(31 downto 0);
  signal c_38: signed(31 downto 0);
  signal c_39: signed(31 downto 0);
  signal c_40: signed(31 downto 0);
  signal c_40_36_8_False_resize: signed(31 downto 0);
  signal c_40_36_8_False_shift: signed(31 downto 0);
  signal c_40_39_3_False_resize: signed(31 downto 0);
  signal c_40_39_3_False_shift: signed(31 downto 0);
  signal c_40_30_0_False_resize: signed(31 downto 0);
  signal c_40_30_0_False_shift: signed(31 downto 0);
  signal c_40_sel: std_logic_vector(1 downto 0);
  signal c_41: signed(20 downto 0);
  signal c_42: signed(20 downto 0);
  signal c_43: signed(31 downto 0);
  signal c_43_19_0_False_resize: signed(31 downto 0);
  signal c_43_19_0_False_shift: signed(31 downto 0);
  signal c_43_42_11_False_resize: signed(31 downto 0);
  signal c_43_42_11_False_shift: signed(31 downto 0);
  signal c_43_sel: std_logic_vector(0 downto 0);
  signal c_44: signed(31 downto 0);
  signal c_45: signed(31 downto 0);
  signal c_46: signed(31 downto 0);
  signal c_47: signed(31 downto 0);
  signal c_47_i0_resize: signed(31 downto 0);
  signal c_47_i1_resize: signed(31 downto 0);
  signal c_47_i0_shift: signed(31 downto 0);
  signal c_47_i1_shift: signed(31 downto 0);
  signal c_47_arith: signed(31 downto 0);
  signal c_47_oshift: signed(31 downto 0);
  signal c_47_sub_sel: std_logic;
  signal c_48: signed(31 downto 0);
  signal c_49: signed(31 downto 0);
  signal c_50: signed(31 downto 0);
  signal c_50_resize: signed(31 downto 0);
  signal c_51: signed(31 downto 0);
  signal c_51_resize: signed(31 downto 0);
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
  -- output node 0 with id 50
  process(clk)
  begin
    if rising_edge(clk) then
      y_0 <= std_logic_vector(c_50(31 downto 2));
    end if;
  end process;
  -- output node 1 with id 51
  process(clk)
  begin
    if rising_edge(clk) then
      y_1 <= std_logic_vector(c_51(31 downto 2));
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 2 and associated fundamentals [[0, 4], [128, 0], [0, 8]]
  c_2_1_0_False_resize <= resize(c_1, 23);
  c_2_1_0_False_shift <= shift_left(c_2_1_0_False_resize, 0);
  c_2_1_1_False_resize <= resize(c_1, 23);
  c_2_1_1_False_shift <= shift_left(c_2_1_1_False_resize, 1);
  c_2_0_5_False_resize <= resize(c_0, 23);
  c_2_0_5_False_shift <= shift_left(c_2_0_5_False_resize, 5);
  with config_select_1 select c_2_sel <= 
    "00" when "00",
    "01" when "10",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_2_sel is
        when "00" => c_2 <= c_2_1_0_False_shift;
        when "01" => c_2 <= c_2_1_1_False_shift;
        when others => c_2 <= c_2_0_5_False_shift;
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
  -- node of type 'sub' in stage 2 with id 4 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  inst_adder_node_4: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 23,
      w_o => 24,
      s_x_i => 5,
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
      y_i => c_2,
      z_o => c_4_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_4 <= c_4_oshift(23 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 5 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_5 <= c_3 & "";
    end if;
  end process;
  -- node of type 'sub' in stage 3 with id 6 and associated fundamentals [[0, -184], [256, -192], [0, -176]]
  inst_adder_node_6: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 24,
      w_o => 25,
      s_x_i => 4,
      s_y_i => 1,
      s_o => 0,
      copy_sign_x_i => False,
      copy_sign_y_i => False,
      is_reconf => False,
      is_double_add_sub => False,
      sub => True
    )
    port map (
      x_i => c_5,
      y_i => c_4,
      z_o => c_6_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_6 <= c_6_oshift(24 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 1 with id 7 and associated fundamentals [[4, 0], [0, 4], [4, 0]]
  c_7_0_0_False_resize <= c_0;
  c_7_0_0_False_shift <= shift_left(c_7_0_0_False_resize, 0);
  c_7_1_0_False_resize <= c_1;
  c_7_1_0_False_shift <= shift_left(c_7_1_0_False_resize, 0);
  with config_select_1 select c_7_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_7_sel is
        when "0" => c_7 <= c_7_0_0_False_shift;
        when others => c_7 <= c_7_1_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 1 with id 8 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_8 <= c_0 & "";
    end if;
  end process;
  -- node of type 'add' in stage 2 with id 9 and associated fundamentals [[20, 0], [4, 16], [20, 0]]
  inst_adder_node_9: entity work.adder_node
    generic map (
      w_x_i => 18,
      w_y_i => 18,
      w_o => 21,
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
      x_i => c_8,
      y_i => c_7,
      z_o => c_9_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_9 <= c_9_oshift(20 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 10 and associated fundamentals [[20, 0], [4, 16], [20, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_10 <= c_9 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 11 and associated fundamentals [[640, 0], [128, 512], [0, -176]]
  c_11_10_5_False_resize <= resize(c_10, 26);
  c_11_10_5_False_shift <= shift_left(c_11_10_5_False_resize, 5);
  c_11_6_0_False_resize <= resize(c_6, 26);
  c_11_6_0_False_shift <= shift_left(c_11_6_0_False_resize, 0);
  with config_select_4 select c_11_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_11_sel is
        when "0" => c_11 <= c_11_10_5_False_shift;
        when others => c_11 <= c_11_6_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 2 with id 12 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_12 <= c_8 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 13 and associated fundamentals [[4, 0], [4, 0], [160, 0]]
  c_13_12_0_False_resize <= resize(c_12, 24);
  c_13_12_0_False_shift <= shift_left(c_13_12_0_False_resize, 0);
  c_13_9_3_False_resize <= resize(c_9, 24);
  c_13_9_3_False_shift <= shift_left(c_13_9_3_False_resize, 3);
  with config_select_3 select c_13_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_13_sel is
        when "0" => c_13 <= c_13_12_0_False_shift;
        when others => c_13 <= c_13_9_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 14 and associated fundamentals [[4, 0], [4, 0], [160, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_14 <= c_13 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 15 and associated fundamentals [[644, 0], [124, 512], [160, -176]]
  with config_select_5 select c_15_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_15: entity work.adder_node
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
      sub_i => c_15_sub_sel,
      x_i => c_11,
      y_i => c_14,
      z_o => c_15_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_15 <= c_15_oshift(25 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 16 and associated fundamentals [[0, 4], [0, 4], [0, 4]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_16 <= c_5 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 4 with id 17 and associated fundamentals [[0, 4], [0, 4], [0, -45056]]
  c_17_16_0_False_resize <= resize(c_16, 32);
  c_17_16_0_False_shift <= shift_left(c_17_16_0_False_resize, 0);
  c_17_6_8_False_resize <= resize(c_6, 32);
  c_17_6_8_False_shift <= shift_left(c_17_6_8_False_resize, 8);
  with config_select_4 select c_17_sel <= 
    "0" when "00",
    "0" when "01",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_17_sel is
        when "0" => c_17 <= c_17_16_0_False_shift;
        when others => c_17 <= c_17_6_8_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 18 and associated fundamentals [[0, -184], [256, -192], [0, -176]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_18 <= c_6 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 5 with id 19 and associated fundamentals [[0, -364], [512, -388], [0, -45408]]
  with config_select_5 select c_19_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_19: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 32,
      w_o => 32,
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
      sub_i => c_19_sub_sel,
      x_i => c_18,
      y_i => c_17,
      z_o => c_19_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_19 <= c_19_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'mux' in stage 3 with id 20 and associated fundamentals [[4, 0], [128, 512], [4, 0]]
  c_20_12_0_False_resize <= resize(c_12, 26);
  c_20_12_0_False_shift <= shift_left(c_20_12_0_False_resize, 0);
  c_20_9_5_False_resize <= resize(c_9, 26);
  c_20_9_5_False_shift <= shift_left(c_20_9_5_False_resize, 5);
  with config_select_3 select c_20_sel <= 
    "0" when "00",
    "0" when "10",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_20_sel is
        when "0" => c_20 <= c_20_12_0_False_shift;
        when others => c_20 <= c_20_9_5_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 21 and associated fundamentals [[4, 0], [128, 512], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_21 <= c_20 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 22 and associated fundamentals [[4, 0], [128, 512], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_22 <= c_21 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 6 with id 23 and associated fundamentals [[660, 0], [388, 1536], [176, -176]]
  with config_select_6 select c_23_sub_sel <= 
    '0' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_23: entity work.adder_node
    generic map (
      w_x_i => 26,
      w_y_i => 26,
      w_o => 27,
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
      sub_i => c_23_sub_sel,
      x_i => c_22,
      y_i => c_15,
      z_o => c_23_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_23 <= c_23_oshift(26 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 24 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_24 <= c_12 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 25 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_25 <= c_24 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 26 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_26 <= c_25 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 27 and associated fundamentals [[4, 0], [4, 0], [4, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_27 <= c_26 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 28 and associated fundamentals [[256, 0], [256, 0], [176, -176]]
  c_28_23_0_False_resize <= c_23(24 downto 0);
  c_28_23_0_False_shift <= shift_left(c_28_23_0_False_resize, 0);
  c_28_27_6_False_resize <= resize(c_27, 25);
  c_28_27_6_False_shift <= shift_left(c_28_27_6_False_resize, 6);
  with config_select_7 select c_28_sel <= 
    "0" when "10",
    "1" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_28_sel is
        when "0" => c_28 <= c_28_23_0_False_shift;
        when others => c_28 <= c_28_27_6_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'mux' in stage 7 with id 29 and associated fundamentals [[660, 0], [3104, 12288], [176, -176]]
  c_29_23_0_False_resize <= resize(c_23, 30);
  c_29_23_0_False_shift <= shift_left(c_29_23_0_False_resize, 0);
  c_29_23_3_False_resize <= resize(c_23, 30);
  c_29_23_3_False_shift <= shift_left(c_29_23_3_False_resize, 3);
  with config_select_7 select c_29_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_29_sel is
        when "0" => c_29 <= c_29_23_0_False_shift;
        when others => c_29 <= c_29_23_3_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'add_sub' in stage 8 with id 30 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  with config_select_8 select c_30_sub_sel <= 
    '1' when "00",
    '1' when "01",
    '0' when others;
  inst_adder_node_30: entity work.adder_node
    generic map (
      w_x_i => 25,
      w_y_i => 30,
      w_o => 32,
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
      sub_i => c_30_sub_sel,
      x_i => c_28,
      y_i => c_29,
      z_o => c_30_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_30 <= c_30_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 3 with id 31 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_31 <= c_4 & "";
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 32 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_32 <= c_31 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 33 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_33 <= c_32 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 34 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_34 <= c_33 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 35 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_35 <= c_34 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 36 and associated fundamentals [[0, 124], [-128, 128], [0, 120]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_36 <= c_35 & "";
    end if;
  end process;
  -- node of type 'register' in stage 6 with id 37 and associated fundamentals [[0, -364], [512, -388], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_37 <= c_19 & "";
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 38 and associated fundamentals [[0, -364], [512, -388], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_38 <= c_37 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 39 and associated fundamentals [[0, -364], [512, -388], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_39 <= c_38 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 9 with id 40 and associated fundamentals [[0, 31744], [4096, -3104], [22704, -22704]]
  c_40_36_8_False_resize <= resize(c_36, 32);
  c_40_36_8_False_shift <= shift_left(c_40_36_8_False_resize, 8);
  c_40_39_3_False_resize <= c_39;
  c_40_39_3_False_shift <= shift_left(c_40_39_3_False_resize, 3);
  c_40_30_0_False_resize <= c_30;
  c_40_30_0_False_shift <= shift_left(c_40_30_0_False_resize, 0);
  with config_select_9 select c_40_sel <= 
    "00" when "00",
    "01" when "01",
    "10" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_40_sel is
        when "00" => c_40 <= c_40_36_8_False_shift;
        when "01" => c_40 <= c_40_39_3_False_shift;
        when others => c_40 <= c_40_30_0_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 4 with id 41 and associated fundamentals [[20, 0], [4, 16], [20, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_41 <= c_10 & "";
    end if;
  end process;
  -- node of type 'register' in stage 5 with id 42 and associated fundamentals [[20, 0], [4, 16], [20, 0]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_42 <= c_41 & "";
    end if;
  end process;
  -- node of type 'mux' in stage 6 with id 43 and associated fundamentals [[0, -364], [8192, 32768], [0, -45408]]
  c_43_19_0_False_resize <= c_19;
  c_43_19_0_False_shift <= shift_left(c_43_19_0_False_resize, 0);
  c_43_42_11_False_resize <= resize(c_42, 32);
  c_43_42_11_False_shift <= shift_left(c_43_42_11_False_resize, 11);
  with config_select_6 select c_43_sel <= 
    "0" when "10",
    "0" when "00",
    "1" when others;
  process(clk)
  begin
    if rising_edge(clk) then
      case c_43_sel is
        when "0" => c_43 <= c_43_19_0_False_shift;
        when others => c_43 <= c_43_42_11_False_shift;
      end case;
    end if;
  end process;
  -- node of type 'register' in stage 7 with id 44 and associated fundamentals [[0, -364], [8192, 32768], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_44 <= c_43 & "";
    end if;
  end process;
  -- node of type 'register' in stage 8 with id 45 and associated fundamentals [[0, -364], [8192, 32768], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_45 <= c_44 & "";
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 46 and associated fundamentals [[0, -364], [8192, 32768], [0, -45408]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_46 <= c_45 & "";
    end if;
  end process;
  -- node of type 'add_sub' in stage 10 with id 47 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  with config_select_10 select c_47_sub_sel <= 
    '1' when "00",
    '0' when "01",
    '1' when others;
  inst_adder_node_47: entity work.adder_node
    generic map (
      w_x_i => 32,
      w_y_i => 32,
      w_o => 32,
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
      sub_i => c_47_sub_sel,
      x_i => c_40,
      y_i => c_46,
      z_o => c_47_oshift
    );
  process(clk)
  begin
    if rising_edge(clk) then
      c_47 <= c_47_oshift(31 downto 0);
    end if;
  end process;
  -- node of type 'register' in stage 9 with id 48 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_48 <= c_30 & "";
    end if;
  end process;
  -- node of type 'register' in stage 10 with id 49 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  process(clk)
  begin
    if rising_edge(clk) then
      c_49 <= c_48 & "";
    end if;
  end process;
  -- node of type 'output' in stage 10 with id 50 and associated fundamentals [[32108, 0], [29664, -12288], [22704, -22704]]
  c_50_resize <= c_49;
  c_50 <= shift_left(c_50_resize, 0);
  -- node of type 'output' in stage 10 with id 51 and associated fundamentals [[0, 32108], [12288, 29664], [22704, 22704]]
  c_51_resize <= c_47;
  c_51 <= shift_left(c_51_resize, 0);
end architecture;
