LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY IIC IS
	PORT(
			CLK			:IN STD_LOGIC;						--50Mʱ��
			PST_IN		:IN STD_LOGIC;
			SDA			:INOUT STD_LOGIC;					--������������
			CLK1M		:OUT STD_LOGIC;
			SCL			:OUT STD_LOGIC;						--ICC����ʱ��
			EEPROM_A	:OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			ADD_OUT		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);	--IIC���ص�ַ
			DATA_out	:out STD_LOGIC_VECTOR(7 DOWNTO 0);	--IIC��������
			END_ROW		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0)	--IIC������ɱ�־
			);
END IIC;

ARCHITECTURE iic_arc OF IIC IS

--*********************************************************************
--��дʱ��ģ��ӿ�����
--*********************************************************************

COMPONENT RD_WR
	PORT(
			CLK			:IN STD_LOGIC;	--100Kʱ���ź�
			reset		:IN STD_LOGIC;
			PST_IN		:IN STD_LOGIC;
			WR			:OUT STD_LOGIC;	--д��λ�ź�
			RD 			:OUT STD_LOGIC;	--����λ�ź�
			RDOWR		:OUT STD_LOGIC;	--��д��־
			ADD			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			DATA_IN		:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
		);
END COMPONENT;
--***********************************************************************
--IIC���ݽ���ģ������
--***********************************************************************

COMPONENT	IICRD
	PORT(
			CLK50M		:IN STD_LOGIC;	--50Mʱ��
			CLK			:IN STD_LOGIC;	--100Mʱ���ź�
			reset		:IN STD_LOGIC;	--��λ�ź�
			SDA_IN		:IN STD_LOGIC;	--������������
			adata		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);	--�������������Ϣ
			RD			:OUT STD_LOGIC;
			SCL			:OUT STD_LOGIC;	--ICC����ʱ��
			SDA_OUT		:OUT STD_LOGIC;	--�����������
			end_rd		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);	--�������������Ϣ
			rdata		:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)	--��������	
		);
END COMPONENT;

--************************************************************************
--IIC���ݷ���ģ������
--************************************************************************
COMPONENT IICWR
	PORT(
			CLK50M		:IN STD_LOGIC;			--50Mʱ��
			CLK 		:IN STD_LOGIC;			--100Kʱ���ź�
			reset		:IN STD_LOGIC;			--д��λ�ź�
			SDA_IN		:IN STD_LOGIC;			--������������ 
			adata 		:IN STD_LOGIC_VECTOR(15 DOWNTO 0);	--��ַ
			tdata		:IN STD_LOGIC_VECTOR(7 DOWNTO 0);	--�����������
			end_wr		:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);	--�������������Ϣ
			RD			:OUT STD_LOGIC;
			SCL 		:OUT STD_LOGIC;						--IIC����ʱ��
			SDA_OUT		:OUT STD_LOGIC						--�����������
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
SIGNAL	ADD 			:STD_LOGIC_VECTOR(15 DOWNTO 0);--��ַ
SIGNAL	DATA_EN			:STD_LOGIC_VECTOR(15 DOWNTO 0);--����ʹ��
SIGNAL	DATA_IN			:STD_LOGIC_VECTOR(7 DOWNTO 0);--�����������
SIGNAL	ADD_IIC_JC		:STD_LOGIC_VECTOR(7 DOWNTO 0);--��ַ
SIGNAL	EN_IIC_JC		:STD_LOGIC_VECTOR(15 DOWNTO 0);--����ʹ��
SIGNAL	DATA_IIC_JC		:STD_LOGIC_VECTOR(7 DOWNTO 0);--�����������

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
--��дʱ��ģ��ӿ�ӳ��
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
--IIC���ݷ���ģ��ӿ�ӳ��
--************************************************************************
--
--IICWR_U:IICWR
--PORT MAP(
--			CLK50M		=>				CLK50M,	--50Mʱ��
--			CLK			=>				CLK100K,	--100Kʱ���ź�
--			reset		=>				WR,			--д��λ�ź�
--			SDA_IN		=>				SDA_IN,		--������������
--			adata		=>				ADD,		--��ַ
--			tdata		=>				DATA_IN,	--�����������
--			end_wr		=>				ENDW,		--�������������Ϣ
--			RD			=>				RDW,		
--			SCL			=>				SCLW,		--ICC����ʱ��
--			SDA_OUT		=>				SDA_OUTW	--�����������
--			
--		);

--************************************************************************
--IIC���ݽ���ģ��ӿ�ӳ��
--*************************************************************************
--
--IICRD_U	:IICRD
--PORT MAP(
--			CLK50M		=>CLK50M,		--50Mʱ��
--			CLK			=>CLK100K,		--100Kʱ���ź�
--			reset		=>RD,			--����λ�ź�
--			SDA_IN		=>SDA_IN,		--������������
--			adata		=>ADD,			--��ַ
--			RD			=>RDR,			--IN OUT panduan
--			SCL			=>SCLR,			--ICC����ʱ��
--			SDA_OUT		=>SDA_OUTR,		--�����������
--			end_rd		=>ENDR,			--�������������Ϣ
--			rdata		=>DATA_out		--��������
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
--�������ݽӿ������������
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




































			
