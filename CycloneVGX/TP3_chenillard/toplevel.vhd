library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity toplevel is
    port (
        CLOCK_50_B6A : in std_logic;
        KEY : in std_logic_vector(3 downto 0);
        LEDR : out std_logic_vector(9 downto 0)
    );
end toplevel;


architecture behavioral of toplevel is

    signal clk : std_logic;
    signal N : std_logic_vector(4 downto 0) := "10111";

begin

    divider : entity work.clock_divider port map(
        CLKin => CLOCK_50_B6A,
        RST => not(KEY(0)),
        N => N,
        CLKout => clk
    );
    chenillard : entity work.chenillard port map (
        CLK => clk,
        RST => not(KEY(0)),
        CHEN => LEDR
    );

end behavioral;