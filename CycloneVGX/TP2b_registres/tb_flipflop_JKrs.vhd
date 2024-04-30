library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_flipflop_JKrs is
end tb_flipflop_JKrs;

architecture tb of tb_flipflop_JKrs is
    -- Déclaration des signaux de test
	signal J, K, Q, Qn, SETn, RSTn: std_logic;
	signal CLK : std_logic := '0';
	

begin

	UUT : entity work.flipflop_JKrs port map (
        J => J,
		  K => K,
		  CLK => CLK,
		  Q => Q,
		  Qn => Qn,
		  SETn => SETn,
		  RSTn => RSTn
	);

	proc_clock : process
	begin
		CLK <= not(CLK);
		wait for 50ns;
	end process;
	
	stimuli1 : process
		begin
	--RST/SET
		-- test de la mise à 1 de la bascule (set)
		SETn <='0';
		RSTn <='1';
	   J <= '0';
		K <= '0';
		wait for 60ns;
		-- test de la mise à 0 de la bascule (RST)
		SETn <='1';
		RSTn <='0';
	   J <= '0';
		K <= '0';
		wait for 60ns;
	--Fonctionnement normal
		--Mémorisation
		SETn <='1';
		RSTn <='1';
	   J <= '0';
		K <= '0';
		wait for 200ns;
		--Mise à 1 J
		SETn <='1';
		RSTn <='1';
	   J <= '1';
		K <= '0';
		wait for 150ns;
		--Mise à 0 J
		SETn <='1';
		RSTn <='1';
	   J <= '0';
		K <= '1';
		wait for 200ns;
		--Inversion
		SETn <='1';
		RSTn <='1';
	   J <= '1';
		K <= '1';
		wait for 300ns;
				
	end process;
end tb ;
