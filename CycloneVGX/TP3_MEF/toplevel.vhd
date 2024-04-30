library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity toplevel is
	port (
		CLOCK_50_B6A : in std_logic;
		KEY : in std_logic_vector(3 downto 0);
		LEDG : out std_logic_vector(7 downto 0)
	);
end toplevel;


architecture behavioral of toplevel is

	signal y : std_logic;
	signal led : std_logic_vector(7 downto 0) := "00000000";

begin

	bistable : entity work.bistable port map(
		clk => CLOCK_50_B6A,
		rst => not(KEY(3)),
		x => KEY(0),
		y => y
	);
	
	process(y)
	begin
		if(y'event and y = '1') then
			led <= not(led);
			LEDG <= led;
			
		end if;
	end process;
end behavioral;