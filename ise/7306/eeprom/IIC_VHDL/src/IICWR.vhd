LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY 	IICWR IS
	PORT(
			CLK50M			:IN STD_LOGIC;
			CLK 			:IN STD_LOGIC;							--100K????
			reset			:IN STD_LOGIC;							--?????
			SDA_IN 			:IN STD_LOGIC;							--??????
			adata			:IN STD_LOGIC_VECTOR(15 DOWNTO 0);		--地址
			tdata			:IN STD_LOGIC_VECTOR(7 DOWNTO 0);		--检测输入数据
			end_wr			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);		
			RD				:OUT STD_LOGIC;
			SCL				:OUT STD_LOGIC;							--IIC????
			SDA_OUT 		:OUT STD_LOGIC							--??????
		);
END IICWR;
ARCHITECTURE	one OF IICWR IS 

SIGNAL	rdatai				:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADD_QJ,ADD_QJ1		:STD_LOGIC_VECTOR(7 DOWNTO 0);
TYPE state IS (start,adress_qj,ack,address_low,address_high,ack1,writing,ack2,ack0,jieshu,holding);--
SIGNAL current,current_TMP1,current_TMP2	:state;
SIGNAL ack00		:STD_LOGIC;
SIGNAL ADATA_DELAYE,ADATA_DELAYE1,ADATA_TMP1,ADATA_TMP2	:	STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
	
	ADD_QJ <="10100000";
	ADD_QJ1<="10100001";
	
--***********************************************************************************
--IIC?数据发送
--**********************************************************************************

PROCESS(CLK50M,reset)
VARIABLE count 		:	INTEGER	RANGE 0 TO 40 :=0;
VARIABLE cnt 		:	INTEGER RANGE 0 TO 8  :=8;
BEGIN	
	IF reset ='1' THEN
		SDA_OUT <='1';
		SCL<='1';
		current<=start;
		cnt:=8;
		count:=0;
		RD<='0';
	ELSIF (CLK50M'EVENT AND CLK50M = '1') THEN
		IF (CLK ='1') THEN
		CASE current IS 
			WHEN start =>count:=count+1;					--起始
				CASE count IS 
					WHEN 1=>SDA_OUT <='1';
					WHEN 2=>SCL		<='1';
					WHEN 3=>SDA_OUT <='0';
					WHEN 4=>SCL		<='0';
					WHEN 10=>count:=0;current<= adress_qj;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN adress_qj=>count:=count+1;				--	器件地址
				CASE count IS 
					WHEN 1=>SDA_OUT <=ADD_QJ(cnt-1);
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>cnt :=cnt-1;count:=0;
						IF cnt =0 THEN 
							cnt :=8; current <=ACK; RD<='1';
						ELSE 
							current<=adress_qj; RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK=>count:=count+1;						--应答
				CASE count IS 
					WHEN 1=>
						IF SDA_IN ='0'THEN
							current<=ACK;count:=1;
						ELSE
							current<=ACK;count:=0;
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current <=address_low;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE ;
			WHEN address_low=>count:=count+1;				--起始地址
				CASE count IS 
					WHEN 1=>SDA_OUT<=adata(cnt+7);
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt =0 THEN
							cnt:=8;current<=ACK1;RD<='1';
						ELSE
							current <=address_low ; RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK1=>count:=count+1;						--应答
				CASE count IS 
					WHEN 1=>
						IF SDA_IN='0' THEN
							current<=ACK1;count:=1;
						ELSE
							current<=ACK1;count:=0;
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current <=address_high;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN address_high =>count :=count+1;				--起始地址
				CASE count IS 
					WHEN 1=>SDA_OUT <=adata(cnt-1);
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt=0 THEN	
							cnt:=8;current<=ACK0;RD<='1';
						ELSE
							current<=address_high;RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK0=>count:=count+1;							--应答
				CASE count IS 
					WHEN 1=>
						IF SDA_IN ='0'	THEN 
							current<=ACK0;count:=1;
						ELSE
							current<=ACK0;count:=0;
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current<=writing;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN writing=>count:=count+1;						--写数据
				CASE count IS	
					WHEN 1=>SDA_OUT <=tdata(cnt-1);
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt=0 THEN	
							cnt:=8;current<=ACK2;RD<='1';
						ELSE
							current <=writing;RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK2=>count:=count+1;							--应答
				CASE count IS
					WHEN 1=>
						IF SDA_IN='0' THEN	
							current<=ACK2;count:=1;
						ELSE 
							current<=ACK2;count:=0;
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current<=jieshu;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN jieshu=>count:=count+1;							--结束
				CASE count IS 
					WHEN 1=>SDA_OUT<='0';
					WHEN 2=>SCL<='1';
					WHEN 3=>SDA_OUT<='1';
					WHEN 4=>SCL<='1';count:=0;current<=holding;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN OTHERS=>NULL;
			END CASE;
		END IF ;
		END IF ;
END PROCESS;

PROCESS(CLK50M)
BEGIN
	IF (CLK50M'EVENT AND CLK50M	=	'1')	THEN
		IF (CLK	=	'1')	THEN
			ADATA_TMP1<=ADATA;
			ADATA_TMP2<=ADATA_TMP1;
		END IF;
	END IF ;
END PROCESS;

PROCESS(CLK50M,current)
BEGIN
	IF (CLK50M'EVENT AND CLK50M='1')	THEN
		IF (CLK='1')	THEN 
			current_TMP1<=current;
			current_TMP2<=current_TMP1;
		END IF ;
	END IF ;
END PROCESS;

PROCESS(CLK50M)
BEGIN
	IF (CLK50M'EVENT AND CLK50M = '1') THEN
		IF (CLK='1') THEN
			IF ADATA_TMP2/=ADATA THEN 
				end_wr<=X"0000";
			ELSIF current=holding AND current_TMP2=jieshu THEN	
				end_wr<=X"EB90";
			END IF ;
		END IF ;
	END IF ;
END PROCESS;

END ARCHITECTURE;


					
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
							
				
					
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
