library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_shift_register_SISO8 is
end tb_shift_register_SISO8;

architecture tb of tb_shift_register_SISO8 is
    -- Déclaration des signaux de test
	signal Si, SETn, RSTn, So : std_logic;
	signal CLK : std_logic := '0';

begin
	UUT : entity work.shift_register_SISO8 port map (
        Si => Si,
		  SETn => SETn,
		  RSTn => RSTn,
		  So => So,
		  CLK => CLK
	);

	proc_clock : process
	begin
		CLK <= not(CLK);
		wait for 50ns;
	end process;
	
	stimuli1 : process
		begin
			-- test de la mise à 0 de la bascule (RST)
		SETn <='1';
		RSTn <='0';
	   Si <='0';
		wait for 60ns;
			--RST/SET
		-- test de la mise à 1 de la bascule (set)
		SETn <='0';
		RSTn <='1';
	   Si <='1';
		wait for 60ns;
	--Fonctionnement normal
		SETn <='1';
		RSTn <='1';
	   Si <='0';
		wait for 200ns;
		
	end process;
end tb ;
