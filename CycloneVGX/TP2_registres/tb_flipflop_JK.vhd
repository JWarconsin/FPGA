library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_flipflop_JK is
end tb_flipflop_JK;

architecture tb of tb_flipflop_JK is
    -- Déclaration des signaux de test
	signal J, K, Q, Qn: std_logic;
	signal CLK : std_logic := '0';
	

begin

	UUT : entity work.flipflop_JK port map (
        J => J,
		  K => K,
		  CLK => CLK,
		  Q => Q,
		  Qn => Qn
	);

	proc_clock : process
	begin
		CLK <= not(CLK);
		wait for 50ns;
	end process;
	
	stimuli1 : process
		begin
		J <= '0';
		K <= '0';
		wait for 50ns;
		J <= '0';
		K <= '1';
		wait for 50ns;
		J <= '1';
		K <= '0';
		wait for 50ns;
		J <= '1';
		K <= '1';
		wait for 50ns;
		
	end process;
end tb ;
