LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY IICRD IS 
	PORT (
			CLK50M			:IN STD_LOGIC;							--50M时钟
			CLK 				:IN STD_LOGIC;							--100K时钟信号
			reset				:IN STD_LOGIC;							--写复位信号
			SDA_IN 			:IN STD_LOGIC;							--串行输入数据
			adata				:IN STD_LOGIC_VECTOR(15 DOWNTO 0);		--地址	
			RD					:OUT STD_LOGIC;
			SCL				:OUT STD_LOGIC;							--IIC配置时钟
			SDA_OUT 			:OUT STD_LOGIC;							--串行输出数据
			end_rd			:OUT STD_LOGIC_VECTOR(15 DOWNTO 0);		--接收数据完成信息
			rdata 			:OUT STD_LOGIC_VECTOR(7 DOWNTO 0)		--接收数据
			);
			END IICRD;

ARCHITECTURE one OF IICRD IS 

SIGNAL rdatai				:STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADD_QJ,ADD_QJ1		:STD_LOGIC_VECTOR(7 DOWNTO 0);
TYPE state IS (start,adress_qj,ACK,ack0,address_low,address_high,ack1,start1,adress_qj1,ACK2,reading,jieshu,holding,ACK3);
SIGNAL current,current_TMP1,current_TMP2	:state;
SIGNAL ack00				:STD_LOGIC;
SIGNAL ADATA_DELAYE,ADATA_DELAYE1,ADATA_TMP1,ADATA_TMP2	:STD_LOGIC_VECTOR(15 DOWNTO 0);


BEGIN

	ADD_QJ	<="10100000";
	ADD_QJ1	<="10100001";
	
--**********************************************************************************************
--IIC数据接收
--***************************************************************************************
PROCESS(CLK50M,reset)
VARIABLE count				:INTEGER RANGE 0 TO 40:=0;
VARIABLE cnt				:INTEGER RANGE 0 TO 8:=8;
VARIABLE ct					:INTEGER RANGE 0 TO 8:=8;
BEGIN
	IF reset ='1' THEN
		SDA_OUT	 			<='1';
		SCL					<='1';
		rdatai				<="00000000";
		current				<=start;
		cnt					:=8;
		count					:=0;
		RD						<='0';
	ELSIF (CLK50M'EVENT AND CLK50M = '1')	THEN 
		IF (CLK='1') THEN
		CASE current IS 
			WHEN start =>count :=count +1;
				CASE count IS 
					WHEN 1=>SDA_OUT<='1';
					WHEN 2=>SCL<='1';
					WHEN 3=>SDA_OUT <='0';
					WHEN 4=>SCL<='0';
					WHEN 10=>count:=0;current<=adress_qj;ct:=0;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN adress_qj=>count:=count+1;
				CASE count IS 
					WHEN 1=>SDA_OUT<=ADD_QJ(cnt-1);
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt=0 THEN
							cnt :=8;current<=ACK;RD<='1';
						ELSE
							current<=adress_qj;RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK=>count:=count+1;ct:=ct+1;
				CASE	count 	IS
					WHEN 1=>
						IF SDA_IN ='0' THEN	
							current<=ACK;count:=1;
						ELSIF cnt<4 then
							current<=ACK;count:=0;
						ELSE
							current<=start;count:=0;RD<='0';
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current<=address_low;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN address_low=>count:=count+1;
				CASE count IS 
					WHEN 1=>SDA_OUT <=adata(cnt+7);
					WHEN 2=>SCL		<='1';
					WHEN 3=>SCL		<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt=0 THEN
							cnt :=8;current<=ACK1;RD<='1';
						ELSE
							current<=address_low;RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK1=>count:=count+1;
				CASE count IS 
					WHEN 1=>
						IF SDA_IN ='0' THEN
							current<=ACK1;count:=1;
						ELSE
							current<=ACK1;count:=0;
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current<=address_high;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN address_high=>count:=count+1;
				CASE count IS 
					WHEN 1=>SDA_OUT <=adata(cnt-1);
					WHEN 2=>SCL		<='1';
					WHEN 3=>SCL 	<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt=0 THEN
							cnt :=8;current<=ack0;RD<='1';
						ELSE
							current<=address_high;RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ack0=>count :=count+1;
				CASE count IS 
					WHEN 1=>
						IF SDA_IN='0' THEN 
							current<=ack0;count :=1;
						ELSE
							current<=ack0;count	:=0;
						END IF ;
					WHEN 2=>SCL	<='1';
					WHEN 3=>SCL	<='0';
					WHEN 4=>current<=start1;count:=0;RD<='0';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN start1=>count:=count+1;
				CASE	count IS 
					WHEN 1=>SDA_OUT <='1';
					WHEN 2=>SCL<='1';
					WHEN 3=>SDA_OUT <='0';
					WHEN 4=>SCL<='0';
					WHEN 5=>current<=adress_qj1;count:=0;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN adress_qj1=>count:=count+1;
				CASE count IS 
					WHEN 1=>SDA_OUT<=ADD_QJ1(cnt-1);
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>cnt:=cnt-1;count:=0;
						IF cnt=0 THEN 
							cnt:=8;current<=ACK2;RD<='1';
						ELSE	
							current<=adress_qj1;RD<='0';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK2=>count :=count +1;
				CASE count IS 
					WHEN 1=>
						IF SDA_IN='0'	THEN
							current<=ACK2;count:=1;
						ELSE
							current <=ACK2;count:=0;
						END IF ;
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>current<=reading;count:=0;RD<='1';
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN reading=>count:=count+1;
				CASE count IS 
					WHEN 1=>SDA_OUT<='1';
					WHEN 2=>SCL	<='1';
					WHEN 3=>rdatai(cnt-1)<=SDA_IN;
					WHEN 4=>SCL<='0';
					WHEN 5=>cnt:=cnt-1;count :=0;
						IF cnt=0 THEN
							cnt:=8;current<=ACK3;RD<='0';
						ELSE
							current<=reading;RD<='1';
						END IF ;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN ACK3=>count:=count +1;
				CASE count IS 
					WHEN 1=>SDA_OUT<='1';
					WHEN 2=>SCL<='1';
					WHEN 3=>SCL<='0';
					WHEN 4=>rdata<=rdatai;current<=jieshu;count:=0;
					WHEN OTHERS=>NULL;
				END CASE;
			WHEN jieshu =>count:=count+1;
				CASE count IS 
					WHEN 1=>SDA_OUT <='0';
					WHEN 2=>SCL<='1';
					WHEN 3=>SDA_OUT <='1';
					WHEN 4=>SCL<='1';count:=0;current<=holding;
					WHEN OTHERS =>NULL;
				END CASE;
			WHEN OTHERS=>NULL;
			END CASE;
			END IF ;
		END IF ;
END PROCESS;

PROCESS(CLK50M)
BEGIN
	IF (CLK50M'EVENT AND CLK50M	=	'1')	THEN
		IF (CLK='1')	THEN
			ADATA_TMP1<=ADATA;
			ADATA_TMP2<=ADATA_TMP1;
		END IF ;
	END IF ;
END PROCESS;

PROCESS(CLK50M)
BEGIN
	IF (CLK50M'EVENT AND CLK50M='1')	THEN
		IF (CLK='1')	THEN
			current_TMP1<=current;
			current_TMP2<=current_TMP1;
		END IF ;
	END IF ;
END PROCESS;

PROCESS (CLK50M)
BEGIN
	IF (CLK50M'EVENT AND CLK50M='1') THEN
		IF (CLK='1') THEN
			IF ADATA_TMP2<=ADATA THEN
				end_rd<=X"0000";
			ELSIF current=holding AND current_TMP2=jieshu THEN
				end_rd<=X"19BE";
			END IF ;
		END IF ;
	END IF;
END PROCESS;

END ARCHITECTURE;

	
			

							
							
					
					
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			