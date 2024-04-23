library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- DECLARATION D'UNE ENTITE
entity tb_full_adder_4b is
end tb_full_adder_4b;

architecture tb of tb_full_adder_4b is
    -- Déclaration des signaux de test
	  signal Cout : std_logic;
	  signal S : std_logic_vector(3 downto 0);
	  signal test : std_logic_vector (8 downto 0) := "000000000";
	  
	

begin
    -- Instanciation de l'entité testée, récupérée dans la librairie work
    -- On appelle cette instance UUT (Unit Under Test)
	UUT : entity work.full_adder_4b port map (
        A => test(3 downto 0),
        B => test(7 downto 4),
        Cin => test(8),
		  Cout => Cout,
        S => S
	);

	-- Description des stimuli
	-- A placer dans des *process*, car ce sont des instructions séquentielles
	-- (Plusieurs process concurrents peuvent être décrits)
	stimuli1 : process
		begin

		   wait for 50ns; -- Délai avant le prochain stimulus
						test <= test+"1";
						

	end process;
end tb ;
