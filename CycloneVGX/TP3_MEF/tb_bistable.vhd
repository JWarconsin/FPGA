library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_bistable is
end tb_bistable;

architecture tb of tb_bistable is
    -- Déclaration des signaux de test
	signal clk : std_logic := '0';
	signal rst : std_logic;
	signal x : std_logic := '0';
	signal y : std_logic;
begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.bistable port map (
        clk => clk,
		  rst => rst,
		  x => x,
		  y => y
	);

	process
	begin
		RST <= '1';
		wait for 10 ns;
		RST <= '0';
		wait;
	end process;
	
	process
	begin
		CLK <= not(CLK);
		wait for 10 ns;
	end process;
	
	process
	begin
		x <= not(x);
		wait for 50 ns;
	end process;
	
end tb ;
