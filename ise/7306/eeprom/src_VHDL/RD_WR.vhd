library	IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RD_WR IS
	PORT(
			CLK			:	IN STD_LOGIC;
			reset			:	IN STD_LOGIC;
			RST_IN		:	IN STD_LOGIC;
			WR				:	OUT STD_LOGIC;
			RD				:	OUT STD_LOGIC;
			RDOWR			:	OUT STD_LOGIC;
			ADD			:	OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			DATA_IN 		:	OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END RD_WR;

architecture Bechavioral of RD_WR is

begin
ADD		<=	x"0000";
DATA_IN	<=	X"5A";
process(clk,reset)
variable	counter	:	integer	range	0	to 	2000;
begin
	if reset = '0' or RST_IN = '0' then
		counter := 0;
		WR	<=	'0';
		RD 	<=	'0';
		RDOWR	<=	'0';
	elsif rising_edge (clk) then
	
		if counter	>=	1999 then	
			counter :=2000;
		else
			counter :=counter + 1;
		end if ;
		
		if counter >=1 and counter <=10 then
			WR<=	'1';
		elsif counter >=11 and counter <=1000 then
			WR<=	'0';
		elsif counter >=1001 and counter <=1001 then
			RD<=	'1';
		else
			RD<=	'0';
		end if ;
		
		if counter <=1000 then
			RDOWR<=	'0';
		else 
			RDOWR<=	'1';
		end if ;
	
	end if ;
end process;

end Bechavioral;

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		