Library ieee;
use ieee.std_logic_1164.all;
-- JK flip flop (rising edge-triggered)
--
-- Symbol : Characteristic table :
--
-- +---------+   +---+---++----+-----+
-- |         |   | J | K || Q+ | Qn+ |
-- -- J    Q--   +---+---++----+-----+
-- -->CLK    |   | 0 | 0 || Q  | Qn  |
-- -- K   Q*--   +---+---++----+-----+
-- |         |   | 0 | 1 || 0  | 1   |
-- +---------+   +---+---++----+-----+
-- 			     | 1 | 0 || 1  | 0   |
-- 				  +---+---++----+-----+
--					  | 1 | 1 || /Q | /Qn |
--				     +---+---++----+-----+
--
entity flipflop_JK is
		port (
			-- Inputs
			J : in std_logic; -- Data input
			K : in std_logic;
			CLK : in std_logic; -- Clock (rising-edge triggered)
			-- Outputs
			Q : out std_logic; -- Flip flop output
			Qn : out std_logic -- Flip flop complemented output
			);
end flipflop_JK;



architecture behavioral of flipflop_JK is
signal JK : std_logic_vector (1 downto 0);
signal Qs : std_logic;

begin
	JK(1) <= J;
	JK(0) <= K;
	
	process(CLK)
	begin
		if (CLK'event and CLK = '1') then 
		case JK is 
			when"00" => 
				Qs <= Qs;
			when"01" =>
				Qs <= '0';
		   when"10" => 
				Qs <= '1';
			when"11" => 
				Qs <= not(Qs);
			when others =>
				Qs <= Qs;
				
		end case;
		end if;
	end process;
			Q <= Qs;
			Qn <= not(Qs);
end behavioral;