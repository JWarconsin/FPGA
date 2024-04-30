Library ieee;
use ieee.std_logic_1164.all;

entity shift_register_universal8 is
		port (
			-- Inputs
			SSR : in std_logic; 
			SSL : in std_logic;
			Pi : in std_logic_vector(7 downto 0);
			SEL : in std_logic_vector(2 downto 0);
			CLK : in std_logic; --Horloge
			SETn : in std_logic; --Preset
			RSTn : in std_logic; --Reset
			-- Outputs
			SOR : out std_logic; --Sortie du registre
			SOL : out std_logic;
			Qo  : out std_logic_vector(7 downto 0)
			);
end shift_register_universal8;


architecture behavioral of shift_register_universal8 is
signal Reg : std_logic_vector (7 downto 0);

begin
	process(CLK, SETn, RSTn)
	begin
		
		if(RSTn = '0' and SETn = '0') then
					Reg <= (others => '0');
		elsif (RSTn = '0' and SETn = '1') then
					Reg <= (others => '0');
		elsif(RSTn = '1' and SETn = '0') then
					Reg <= (others => '1');
		elsif(RSTn = '1' and SETn = '1') then 
				
			if (CLK'event and CLK = '1') then
				if(SEL = "110") then
					--Rotate left

					Reg <= Reg(6 downto 0) & Reg(7);
						
				elsif(SEL = "101") then
					--Rotate right
				
					Reg <= Reg(0) & Reg(7 downto 1);	
				
				elsif(SEL = "010") then
					--Shift left

					Reg <=  Reg(6 downto 0) & SSL;
				
				elsif(SEL = "001") then
					--Shift right
					
					Reg <= SSR & Reg(7 downto 1);
				
				elsif(SEL(1 downto 0) = "11") then
					--Parallel load
					
					Reg <= Pi;
					
				elsif(SEL(1 downto 0) = "00") then
					--Hold (Memorize)
					
					Reg <= Reg;
					
				end if;
			end if;
		end if;
	end process;
	SOL <= Reg(7);
	Qo <= Reg;
	SOR <= Reg(0);
end behavioral;