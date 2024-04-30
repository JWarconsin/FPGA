library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity toplevel is
    port (
        SW : in std_logic_vector(9 downto 0);
        KEY : in std_logic_vector(3 downto 0);
        LEDG : out std_logic_vector(7 downto 0)
    );
end toplevel;

architecture behavioral of toplevel is
    
begin
    UUT : entity work.shift_register_universal8 port map(
	 
    SSR => SW(9),
    SSL => SW(8),
	 Pi => "00000000",
    SEL => SW(2 downto 0),
    RSTn => KEY(3),
    SETn => KEY(2),
    clk => not(KEY(0)),
    SOL => open,
    SOR => open,
    Qo => LEDG(7 downto 0)
    );
	 
end behavioral;