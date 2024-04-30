library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- DECLARATION D'UNE ENTITE
entity tb_shift_register_universal8 is
end tb_shift_register_universal8;

architecture tb of tb_shift_register_universal8 is
    -- Déclaration des signaux de test
	signal SSR, SSL, SETn, RSTn, SOR, SOL : std_logic;
	signal CLK : std_logic := '0';
	signal Qo, Pi, Reg : std_logic_vector (7 downto 0);
	signal SEL : std_logic_vector (2 downto 0);

begin
	UUT : entity work.shift_register_universal8 port map (
        SSR => SSR,
		  SSL => SSL,
		  Pi => Pi,
		  SEL => SEL,
		  SETn => SETn,
		  RSTn => RSTn,
		  SOR => SOR,
		  SOL => SOL,
		  Qo => Qo,
		  CLK => CLK
	);

	proc_clock : process
	begin
		CLK <= not(CLK);
		wait for 50ns;
	end process;
	
	stimuli1 : process
		begin
		Pi <= "11110000";
		
		SEL <="001";
		SETn <='0';
		RSTn <='0';
		SSR <='0';
		wait for 60ns;
		-- test de la mise à 0 de la bascule (RST)
		SEL <="001";
		SETn <='1';
		RSTn <='0';
	   SSR <='0';
		wait for 60ns;
		-- test de la mise à 1 de la bascule (set)
		SEL <= "001";
		SETn <='0';
		RSTn <='1';
	   SSR <='1';
		wait for 60ns;
		--Fonctionnement normal
		SEL <="001";
		SETn <='1';
		RSTn <='1';
	   SSR <='0';
		wait for 200ns;
		
		SEL <="010";
		SETn <='0';
		RSTn <='0';
		SSL <='0';
		wait for 60ns;
		-- test de la mise à 0 de la bascule (RST)
		SEL <="010";
		SETn <='1';
		RSTn <='0';
	   SSL<='0';
		wait for 60ns;
		-- test de la mise à 1 de la bascule (set)
		SEL <= "010";
		SETn <='0';
		RSTn <='1';
	   SSL <='1';
		wait for 60ns;
		--Fonctionnement normal
		SEL <="010";
		SETn <='1';
		RSTn <='1';
	   SSL <='0';
		wait for 200ns;
		
		--Parralel input
		SEL <="111";
		Reg <= Pi;
		wait for 60ns;
		
			
		--Rotate right 
		SEL <= "101";
		wait for 80ns;
		
		--hold
		SEL <= "000";
		Reg <= Reg;
		wait for 100ns;
		
		--Rotate left
		SEL <= "110";
		wait for 80ns;
	
	--Fonctionnement normal
		SEL <="001";
		SETn <='1';
		RSTn <='1';
	   SSR <='0';
		wait for 200ns;
		
		
	end process;
end tb ;