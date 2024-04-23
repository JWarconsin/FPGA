library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_half_adder is
end tb_half_adder;

architecture tb of tb_half_adder is
    -- Déclaration des signaux de test
	  signal A,B,S,C : std_logic;
	

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.half_adder port map (
        A => A,
        B => B,
        C => C,
        S => S
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	stimuli1 : process
		begin
			A <= '0';
			B <= '0';
		   wait for 50ns; -- Délai avant le prochain stimulus
         A <= '0';
			B <= '1';
		   wait for 50ns; -- Délai avant le prochain stimulus
			A <= '1';
			B <= '0';
		   wait for 50ns; -- Délai avant le prochain stimulus
			A <= '1';
			B <= '1';
		   wait for 50ns; -- Délai avant le prochain stimulus
		wait; -- Wait indefinitely

	end process;
end tb ;
