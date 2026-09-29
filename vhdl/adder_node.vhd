library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity add_sub is 
    generic (W: integer);
    port (
        a_i : in signed(W-1 downto 0);
        b_i : in signed(W-1 downto 0);
        sub_i : in std_logic;
        s_o : out signed(W-1 downto 0)
    );
end add_sub;
architecture add_sub of add_sub is
    signal sub_i_vec: signed(W-1 downto 0);
    signal b_xor : signed(W-1 downto 0);
begin
    sub_i_vec <= (others => sub_i);
    b_xor <= b_i xor sub_i_vec;
    s_o <= signed(unsigned(a_i) + unsigned(b_xor) + unsigned(sub_i_vec(0 downto 0)));
end architecture;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity double_add_sub is 
    generic (W: integer);
    port (
        a_i : in signed(W-1 downto 0);
        b_i : in signed(W-1 downto 0);
        sub_a_i : in std_logic;
        sub_b_i : in std_logic;
        s_o : out signed(W-1 downto 0)
    );
end double_add_sub;
architecture double_add_sub of double_add_sub is
    signal sub_a_i_vec: signed(W-1 downto 0);
    signal sub_b_i_vec: signed(W-1 downto 0);
    signal a_xor : signed(W-1 downto 0);
    signal b_xor : signed(W-1 downto 0);
begin
    sub_a_i_vec <= (others => sub_a_i);
    sub_b_i_vec <= (others => sub_b_i);
    a_xor <= a_i xor sub_a_i_vec;
    b_xor <= b_i xor sub_b_i_vec;
    s_o <= signed(unsigned(a_xor) + unsigned(b_xor) + unsigned(sub_a_i_vec(0 downto 0) or sub_b_i_vec(0 downto 0)));
end architecture;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity adder_node is
    generic (
        w_x_i : integer;
        w_y_i : integer;
        w_o : integer;
        s_x_i : integer;
        s_y_i : integer;
        s_o : integer;
        copy_sign_x_i : boolean := false;
        copy_sign_y_i : boolean := false;
        is_reconf : boolean := false;
        is_double_add_sub : boolean := false;
        sub : boolean
    );
    port (
        sub_i : in std_logic := '0';  -- only used in reconf mode if is_double_add_sub=false
        sub_a_i : in std_logic := '0';  -- only used in reconf mode if is_double_add_sub=true
        sub_b_i : in std_logic := '0';  -- only used in reconf mode if is_double_add_sub=true
        x_i : in signed(w_x_i-1 downto 0);
        y_i : in signed(w_y_i-1 downto 0);
        z_o : out signed(w_o-1 downto 0)
    );
end adder_node;

architecture adder_node of adder_node is

impure function get_result_width(s_x: integer; s_y: integer) return integer is
    variable w_temp : integer;
begin
    if s_x + w_x_i >= s_y + w_y_i then
        w_temp := s_x + w_x_i;
    else
        w_temp := s_y + w_y_i;
    end if;
    if s_o > 0 then
        w_temp := w_temp + s_o;
    end if;
    if w_temp >= w_o then
        return w_temp;
    else
        return w_o;
    end if;
end function;

constant result_width : integer := get_result_width(s_x_i, s_y_i);

signal x_ext : signed(result_width-1 downto 0);
signal y_ext : signed(result_width-1 downto 0);

signal x_shifted : signed(result_width-1 downto 0);
signal y_shifted : signed(result_width-1 downto 0);

signal z_res : signed(result_width-1 downto 0);
signal z_sign_copy : signed(result_width-1 downto 0);
signal z_shifted : signed(result_width-1 downto 0);

begin
    -- resize inputs
    x_ext <= resize(x_i, result_width);
    y_ext <= resize(y_i, result_width);
    
    -- shift x
    gen_shift_x : if s_x_i > 0 generate
        x_shifted <= shift_left(x_ext, s_x_i);
    end generate;
    gen_no_shift_x : if s_x_i = 0 generate
        x_shifted <= x_ext;
    end generate;
    
    -- shift y
    gen_shift_y : if s_y_i > 0 generate
        y_shifted <= shift_left(y_ext, s_y_i);
    end generate;
    gen_no_shift_y : if s_y_i = 0 generate
        y_shifted <= y_ext;
    end generate;

    -- calc output
    gen_sub : if sub = true and is_reconf = false generate
        z_res <= x_shifted - y_shifted;
    end generate;
    gen_add : if sub = false and is_reconf = false generate
        z_res <= x_shifted + y_shifted;
    end generate;
    gen_add_sub : if is_reconf = true and is_double_add_sub = false generate
        inst_add_sub: entity work.add_sub
            generic map (W => result_width)
            port map (
                a_i => x_shifted,
                b_i => y_shifted,
                sub_i => sub_i,
                s_o => z_res
            );
    end generate;
    gen_double_add_sub : if is_reconf = true and is_double_add_sub = true generate
        inst_double_add_sub: entity work.double_add_sub
            generic map (W => result_width)
            port map (
                a_i => x_shifted,
                b_i => y_shifted,
                sub_a_i => sub_a_i,
                sub_b_i => sub_b_i,
                s_o => z_res
            );
    end generate;
    
    -- handle sign
    gen_sign_copy_x : if copy_sign_x_i generate
        z_o(w_o-1) <= x_i(w_x_i-1);
    end generate;
    gen_sign_copy_y : if copy_sign_y_i generate
        z_o(w_o-1) <= y_i(w_y_i-1);
    end generate;
    gen_no_sign_copy : if not (copy_sign_x_i or copy_sign_y_i) generate
        -- z_o(w_o-1) <= z_res(z_res'length-1);
        z_o(w_o-1) <= z_res(w_o-1+s_o);
    end generate;
    
    -- handle remaining bits depending on post-add-shift
    z_o(w_o-2 downto 0) <= z_res(w_o-2+s_o downto s_o);

end adder_node;