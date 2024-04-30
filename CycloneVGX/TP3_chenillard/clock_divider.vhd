library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

-- DESCRIPTION DES ENTREES/SORTIES DE L'ENTITY
entity clock_divider is
	port (
		CLKin, RST : in std_logic;
		N : in std_logic_vector(4 downto 0);
		CLKout : out std_logic
	);
end clock_divider;


architecture behavioral of clock_divider is

	signal compteur : std_logic_vector(23 downto 0);
	signal clko : std_logic;

begin
	process(CLKin, RST)
	begin
		if (RST = '1') then
			compteur <= "000000000000000000000000";
			clko <= '0';
		else
			if(CLKin'event and CLKin = '1') then
				compteur <= compteur + '1';
				case N is
					when "00000" =>
						if(compteur(0) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00001" =>
						if(compteur(1) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00010" =>
						if(compteur(2) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00011" =>
						if(compteur(3) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00100" =>
						if(compteur(4) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00101" =>
						if(compteur(5) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00110" =>
						if(compteur(6) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "00111" =>
						if(compteur(7) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01000" =>
						if(compteur(8) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01001" =>
						if(compteur(9) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01010" =>
						if(compteur(10) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01011" =>
						if(compteur(11) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01100" =>
						if(compteur(12) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01101" =>
						if(compteur(13) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01110" =>
						if(compteur(14) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "01111" =>
						if(compteur(15) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10000" =>
						if(compteur(16) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10001" =>
						if(compteur(17) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10010" =>
						if(compteur(18) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10011" =>
						if(compteur(19) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10100" =>
						if(compteur(20) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10101" =>
						if(compteur(21) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10110" =>
						if(compteur(22) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when "10111" =>
						if(compteur(23) = '1') then
							compteur <= "000000000000000000000000";
							clko <= not(clko);
						end if;
					when others =>
						compteur <= "000000000000000000000000";
						clko <= clko;
				end case;
			end if;
		end if;
	end process;
	CLKout <= clko;
end behavioral;