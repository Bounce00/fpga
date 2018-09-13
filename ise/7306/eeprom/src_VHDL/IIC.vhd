LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY IIC IS
	PORT(
			CLK			:IN STD_LOGIC;						--50M时钟
			PST_IN		:IN STD_LOGIC;
			SDA			:INOUT STD_LOGIC;					--串行输入数据
			CLK1M		:OUT STD_LOGIC;
			SCL			:OUT STD_LOGIC;						--ICC配置时钟
			EEPROM_A	:OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			ADD_OUT		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);	--IIC读回地址
			DATA_out	:out STD_LOGIC_VECTOR(7 DOWNTO 0);	--IIC读回数据
			END_ROW		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)	--IIC操作完成标志
			);
END IIC;

ARCHITECTURE iic_arc OF IIC IS

--*********************************************************************
--读写时序模块接口例化
--*********************************************************************

COMPONENT RD_WR
	PORT(
			CLK			:IN STD_LOGIC;	--100K时钟信号
			reset		:IN STD_LOGIC;
			PST_IN		:IN STD_LOGIC;
			WR			:OUT STD_LOGIC;	--写复位信号
			RD 			:OUT STD_LOGIC;	--读复位信号
			RDOWR		:OUT STD_LOGIC;	--读写标志
			ADD			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			DATA_IN		:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END COMPONENT;
--***********************************************************************
--IIC数据接收模块例化
--***********************************************************************

COMPONENT	IICRD
	PORT(
			CLK50M		:IN STD_LOGIC;	--50M时钟
			CLK			:IN STD_LOGIC;	--100M时钟信号
			reset		:IN STD_LOGIC;	--复位信号
			SDA_IN		:IN STD_LOGIC;	--串行输入数据
			adata		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);	--接收数据完成信息
			RD			:OUT STD_LOGIC;
			SCL			:OUT STD_LOGIC;	--ICC配置时钟
			SDA_OUT		:OUT STD_LOGIC;	--串行输出数据
			end_rd		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);	--接收数据完成信息
			rdata		:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	--接收数据	
		);
END COMPONENT;

--************************************************************************
--IIC数据发送模块例化
--************************************************************************
COMPONENT IICWR
	PORT(
			CLK50M		:IN STD_LOGIC;			--50M时钟
			CLK 		:IN STD_LOGIC;			--100K时钟信号
			reset		:IN STD_LOGIC;			--写复位信号
			SDA_IN		:IN STD_LOGIC;			--串行输入数据 
			adata 		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);	--地址
			tdata		:IN STD_LOGIC_VECTOR(7 DOWNTO 0);	--检测输入数据
			end_wr		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);	--发送数据完成信息
			RD			:OUT STD_LOGIC;
			SCL 		:OUT STD_LOGIC;						--IIC配置时钟
			SDA_OUT		:OUT STD_LOGIC						--串行输出数据
			);
END COMPONENT;

COMPONENT MMCM
PORT
	(--Clock in ports
		CLK_IN1			:IN STD_LOGIC;
		--Clock out ports
		CLK_OUT1		:OUT STD_LOGIC;
		CLK_OUT2		:OUT STD_LOGIC;
		--status and control signals
		LOCKED			:OUT STD_LOGIC
	);
END COMPONENT;
SIGNAL   SD_SEL		:STD_LOGIC;
SIGNAL	WR				:STD_LOGIC;
SIGNAL	RD 				:STD_LOGIC;
SIGNAL	RDOWR			:STD_LOGIC;
SIGNAL	ENDW			:STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	RDW				:STD_LOGIC;
SIGNAL	SCLW			:STD_LOGIC;
SIGNAL	SDA_OUTW		:STD_LOGIC;
SIGNAL	SDA_IN 			:STD_LOGIC;
SIGNAL	RDR				:STD_LOGIC;
SIGNAL	SCLR			:STD_LOGIC;
SIGNAL	SDA_OUTR 		:STD_LOGIC;
SIGNAL	ENDR			:STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	RD_SEL			:STD_LOGIC;
SIGNAL	SDA_OUT			:STD_LOGIC;
SIGNAL	ADD 			:STD_LOGIC_VECTOR(15 DOWNTO 0);--地址
SIGNAL	DATA_EN			:STD_LOGIC_VECTOR(15 DOWNTO 0);--数据使能
SIGNAL	DATA_IN			:STD_LOGIC_VECTOR(7 DOWNTO 0);--检测输入数据
SIGNAL	ADD_IIC_JC		:STD_LOGIC_VECTOR(7 DOWNTO 0);--地址
SIGNAL	EN_IIC_JC		:STD_LOGIC_VECTOR(15 DOWNTO 0);--数据使能
SIGNAL	DATA_IIC_JC		:STD_LOGIC_VECTOR(7 DOWNTO 0);--检测输入数据

SIGNAL	CLK100K			:STD_LOGIC;
SIGNAL	CLK50M			:STD_LOGIC;
SIGNAL	LOCKED			:STD_LOGIC;
BEGIN
ADD_OUT					<=				ADD;
EEPROM_A				<=				(others=>'0');
--my_mmcm					:				MMCM
--	port map
--		(
--			--clock in ports
--			CLK_IN1		=>				CLK,
--			--clock out ports
--			CLK_OUT1	=>				CLK50M,
--			CLK_OUT2	=>				CLK1M,
--			--status and control signals
--			LOCKED		=>locked
--		);

generate_100KHz_clock	:				PROCESS(locked,CLK50M)
VARIABLE	counter			:				INTEGER	RANGE 0 TO 500;
BEGIN
if locked				=				'0'	then
	counter				:=				0;
	CLK100K				<=				'0'	;
elsif rising_edge (CLK50M)	then	
	if 	counter			=				499	then 
		counter			:=				0;
		CLK100K			<=				'1';
	else
		counter			:=				counter	+	1;
		CLK100K			<=				'0';
	end if;
end if;
END PROCESS;

--**********************************************************************
--读写时序模块接口映射
--**********************************************************************
--
--RD_WR_U	:RD_WR
--PORT MAP (
--			clk			=>				CLK100K,	
--			reset			=>				locked,
--			RST_IN		=>				RST_IN,
--			WR				=>				WR,
--			RD				=>				RD,
--			RDOWR			=>				RDOWR,
--			ADD			=>				ADD,
--			DATA_IN		=>				DATA_IN
--			);

--*************************************************************************
--IIC数据发送模块接口映射
--************************************************************************
--
--IICWR_U:IICWR
--PORT MAP(
--			CLK50M		=>				CLK50M,	--50M时钟
--			CLK			=>				CLK100K,	--100K时钟信号
--			reset		=>				WR,			--写复位信号
--			SDA_IN		=>				SDA_IN,		--串行输入数据
--			adata		=>				ADD,		--地址
--			tdata		=>				DATA_IN,	--检测输入数据
--			end_wr		=>				ENDW,		--发送数据完成信息
--			RD			=>				RDW,		
--			SCL			=>				SCLW,		--ICC配置时钟
--			SDA_OUT		=>				SDA_OUTW	--串行输出数据
--			
--		);

--************************************************************************
--IIC数据接收模块接口映射
--*************************************************************************
--
--IICRD_U	:IICRD
--PORT MAP(
--			CLK50M		=>CLK50M,		--50M时钟
--			CLK			=>CLK100K,		--100K时钟信号
--			reset		=>RD,			--读复位信号
--			SDA_IN		=>SDA_IN,		--串行输入数据
--			adata		=>ADD,			--地址
--			RD			=>RDR,			--IN OUT panduan
--			SCL			=>SCLR,			--ICC配置时钟
--			SDA_OUT		=>SDA_OUTR,		--串行输出数据
--			end_rd		=>ENDR,			--接收数据完成信息
--			rdata		=>DATA_out		--接收数据
--		);

PROCESS(SCLR,SCLW,RDOWR)
BEGIN
	IF	(RDOWR='1')	THEN
		SCL<=SCLR;
	ELSE
		SCL<=SCLW;
	END	IF;
END PROCESS;

PROCESS(SCLR,SCLW,RDOWR)
BEGIN
	IF	(RDOWR='1')	THEN
		SCL<=SCLR;
	ELSE 
		SCL<=SCLW;
	END IF ;
END PROCESS ;

PROCESS (SDA_OUTR , SDA_OUTW ,RDOWR)
BEGIN
	IF (RDOWR = '1') THEN
		SDA_OUT <=SDA_OUTR;
	ELSE 
		SDA_OUT <=SDA_OUTW;
	END IF;
END PROCESS;

PROCESS(ENDR,ENDW,RDOWR)
BEGIN
	IF (RDOWR='1')	THEN
		END_ROW<=ENDR;
	ELSE
		END_ROW<=ENDW;
	END IF;
END PROCESS;

PROCESS(RDR,RDW,RDOWR)
BEGIN
	IF (RDOWR='1')	THEN
		END_ROW <=ENDR;
	ELSE
		END_ROW<=ENDW;
	END IF ;
END PROCESS;

--****************************************************************
--串行数据接口输入输出控制
--****************************************************************

PROCESS(SD_SEL,SDA,SDA_OUT)
BEGIN	
	IF	(SD_SEL='1')	THEN	
		SDA		<=	'Z';
		SDA_IN 	<=	SDA;
	ELSE
		SDA		<=	SDA_OUT;
		SDA_IN	<=	'Z';
	END IF ;
END PROCESS;

END iic_arc;




































			
