-- 프로시저 (종합 프로시저임, 일별 데이터 반환 프로시저)
drop PROCEDURE BACK_TEST;
create or replace PROCEDURE BACK_TEST(
    P_port_num in number,
    p_user_id in varchar2
)IS
    V_START_DATE T_BACKPORT_CONDI.BACK_START_DATE%TYPE;
    V_END_DATE T_BACKPORT_CONDI.BACK_END_DATE%TYPE;
    V_now_no t_trans_stock.back_no%type := 1;
    V_end_no t_trans_stock.baCK_no%type;

BEGIN
STOCK_LOGIC(P_port_num,p_user_id);
p_transfer(P_port_num,p_user_id);
select max(back_no) into v_end_no from t_trans_stock where PORT_num = P_port_num and user_id = p_user_id;

WHILE V_NOW_NO < V_END_NO
LOOP
 --이번달
 select max(back_date) into V_START_DATE from t_trans_stock where back_no=V_now_no AND USER_ID =p_user_id AND PORT_NUM = P_port_num;
 select max(back_date) into V_END_DATE from t_trans_stock where back_no=V_now_no+1 AND USER_ID = p_user_id AND PORT_NUM=P_port_num;

insert into T_YIELD(back_no, port_num, user_id, stock_date, stock_day_fluc, kospi_day_fluc, kosdaq_day_fluc)
 select  V_NOW_NO,P_port_num, p_user_id, a.stock_date, sum(stock_fluc_rate) as stock_day_fluc, sum(kospi_fluc) as kospi_day_fluc,sum(kosdaq_fluc) as kosdaq_day_fluc from t_total_stock a, t_stock_index b
where a.stock_date between V_START_DATE+1 and V_END_DATE and a.STOCK_DATE = b.STOCK_DATE and (a.stock_code) in 
(select stock_code from t_trans_stock where port_num = P_port_num and back_no = V_NOW_NO and user_id = p_user_id and total_stock_cnt not in 0) group by a.stock_date, V_NOW_NO, P_port_num, p_user_id order by stock_date;
commit;
V_NOW_NO := V_NOW_NO + 1;

END LOOP;
update t_yield a set (a.stock_fluc, a.kospi_fluc, a.kosdaq_fluc) = (select stock_fluc,kospi_fluc,kosdaq_fluc from (select back_no, stock_date, sum(stock_day_fluc) over (order by stock_date) as stock_fluc, sum(kospi_day_fluc) over (order by stock_date) as kospi_fluc, sum(kosdaq_day_fluc) over (order by stock_date) as kosdaq_fluc from
t_yield  where port_num = P_port_num and user_id = p_user_id) b where a.stock_date = b.stock_date and a.back_no=b.back_no) where port_num = P_port_num and user_id = p_user_id;
commit;
insert into t_total_result(port_num, user_id, start_asset, final_bal, earning_rate, profit_loss, total_cagr, avg_dayfluc, avg_fluc, winning_rate)
	select P_port_num,p_user_id, start_asset,final_bal,earning_rate, (final_bal-start_asset) as profit_loss,(round(Power(final_bal/start_asset,(1/year)),3)-1)*100 as total_cagr, avg_dayfluc, avg_fluc,  (select round(sum(case when earn>0 then 1 else 0 end)/count(*)*100,1) as wining_rate
        from (select stock_code, avg(earning_rate) as earn from t_trans_stock where port_num=P_port_num and earning_rate not in 0 group by stock_code)) as winning_rate
		from (
		select max(total_bal) KEEP(DENSE_RANK FIRST ORDER BY back_date) as start_asset, max(total_bal) KEEP(DENSE_RANK FIRST ORDER BY back_date DESC) as final_bal,  max(EARNING_RATE) KEEP(DENSE_RANK FIRST ORDER BY back_date DESC) as earning_rate,   
		round((max(back_date)-min(back_date))/365,2) as year
		from t_back_result where port_num = P_port_num and user_id = p_user_id ) a , 
		(select round(avg(stock_day_fluc),2) as avg_dayfluc, round(avg(stock_fluc),2) as avg_fluc 
		from t_yield where port_num = P_port_num group by port_num) b;
        
commit;

END;
/

--종목 리스트 프로시저 

drop procedure stock_val;
CREATE OR REPLACE PROCEDURE STOCK_VAL (
    P_port_cnt in number,
    P_port_num in number,
    p_user_id in varchar2,
    P_check_date in date
)IS
    V_START_DATE T_BACKPORT_CONDI.BACK_START_DATE%TYPE;
    V_END_DATE T_BACKPORT_CONDI.BACK_END_DATE%TYPE;
    V_BACK_MARKET T_BACKPORT_CONDI.BACK_MARKET%TYPE;
    V_BACK_CARE T_BACKPORT_CONDI.BACK_CARE%TYPE;
    V_BACK_MANAGE T_BACKPORT_CONDI.BACK_MANAGE%TYPE;
    V_BACK_PREFERRED T_BACKPORT_CONDI.BACK_PREFERRED%TYPE;
    V_BACK_CASHFLOW T_BACKPORT_CONDI.BACK_CASHFLOW%TYPE;
    V_BACK_PROFIT T_BACKPORT_CONDI.BACK_PROFIT%TYPE;
    V_BACK_TRANS_AMT T_BACKPORT_CONDI.BACK_TRANS_AMT%TYPE;
    V_BACK_AMT T_BACKPORT_CONDI.BACK_AMT%TYPE;
    V_BACK_STOCK_CNT T_BACKPORT_CONDI.BACK_STOCK_CNT%TYPE;
    V_BACK_MARKET_CAP T_BACKPORT_CONDI.BACK_MARKET_CAP%TYPE;
    V_BACK_CAP T_BACKPORT_CONDI.BACK_CAP%TYPE;
    V_BACK_BUY_PRICE T_BACKPORT_CONDI.BACK_BUY_PRICE%TYPE;
    V_BACK_SELL_PRICE T_BACKPORT_CONDI.BACK_SELL_PRICE%TYPE;
    V_BACK_MIN_PRICES T_BACKPORT_CONDI.BACK_MIN_PRICES%TYPE;
    V_BACK_MIN_PRICEV T_BACKPORT_CONDI.BACK_MIN_PRICEV%TYPE;
    V_BACK_MIN_PRICE T_BACKPORT_CONDI.BACK_MIN_PRICE%TYPE;
    V_BACK_CAP_UPDOWN T_BACKPORT_CONDI.BACK_CAP_UPDOWN%TYPE;
    V_BACK_CAP_RATE T_BACKPORT_CONDI.BACK_CAP_RATE%TYPE;
    V_back_pbr T_BACKPORT_CONDI.BACK_PBR%TYPE;
    V_back_per T_BACKPORT_CONDI.BACK_PER%TYPE;
    V_back_pcr T_BACKPORT_CONDI.BACK_PCR%TYPE;
    V_back_psr T_BACKPORT_CONDI.BACK_PSR%TYPE;
    V_back_roa T_BACKPORT_CONDI.BACK_ROA%TYPE;
    V_back_roe T_BACKPORT_CONDI.BACK_ROE%TYPE;
    V_back_ros T_BACKPORT_CONDI.BACK_ROS%TYPE;
    V_back_cfps T_BACKPORT_CONDI.back_cfps%TYPE;
BEGIN
    BEGIN
    SELECT BACK_START_DATE,BACK_END_DATE,BACK_MARKET,BACK_PREFERRED,BACK_CARE,BACK_MANAGE,BACK_CASHFLOW, BACK_PROFIT, BACK_TRANS_AMT, BACK_AMT ,BACK_MARKET_CAP,BACK_CAP,
    BACK_BUY_PRICE,BACK_SELL_PRICE,BACK_MIN_PRICES , BACK_MIN_PRICEV,BACK_MIN_PRICE ,BACK_CAP_UPDOWN ,BACK_CAP_RATE ,BACK_STOCK_CNT,V_back_pbr, back_per,back_pcr, back_psr, back_roa, back_roe, back_ros , back_cfps
    INTO V_START_DATE,V_END_DATE,V_BACK_MARKET,V_BACK_PREFERRED,V_BACK_CARE,V_BACK_MANAGE,V_BACK_CASHFLOW, V_BACK_PROFIT, V_BACK_TRANS_AMT, V_BACK_AMT ,V_BACK_MARKET_CAP,V_BACK_CAP,
    V_BACK_BUY_PRICE,V_BACK_SELL_PRICE,V_BACK_MIN_PRICES , V_BACK_MIN_PRICEV,V_BACK_MIN_PRICE ,V_BACK_CAP_UPDOWN ,V_BACK_CAP_RATE , V_BACK_STOCK_CNT, V_back_pbr, V_back_per,V_back_pcr, V_back_psr, V_back_roa, V_back_roe, V_back_ros , V_back_cfps
    FROM T_BACKPORT_CONDI WHERE port_num = P_port_num AND USER_ID = p_user_id;
    commit;
    -- 불러올 날자 설정
    insert into T_TRANS_STOCK(back_no, port_num, user_id,stock_name, stock_code,back_date,stock_price)
        select P_port_cnt, P_port_num, p_user_id, stock_name, stock_code,stock_date,price from
         (select stock_name, stock_code,stock_date, (case when V_BACK_MIN_PRICEV = 'open' then p_open else p_end end) as price,
                      (case when V_back_pbr IS NOT NULL then pbr_rank else 0 end) + (case when V_back_per IS NOT NULL then per_rank else 0 end) + (case when V_back_pcr IS NOT NULL then pcr_rank else 0 end) 
                +(case when V_back_psr IS NOT NULL then PSR_RANK else 0 end) +(case when V_back_roa IS NOT NULL then ROA_RANK else 0 end) +(case when V_back_roe IS NOT NULL then ROE_RANK  else 0 end) 
                +(case when V_back_ROS IS NOT NULL then ROS_RANK else 0 end) +(case when V_back_CFPS IS NOT NULL then CFPS_RANK else 0 end) as total
                from            
        (select stock_name,stock_code,stock_date,stock_price_open as p_open, stock_price_end as p_end,stock_fund_roe roe,rank() over (order by stock_fund_roe desc) roe_rank, 
                      stock_fund_per per,rank() over (order by stock_fund_per)  per_rank, stock_fund_pbr pbr,rank() over (order by stock_fund_pbr)  pbr_rank,
                      stock_psr psr,rank() over (order by stock_psr)  psr_rank, stock_pcr pcr ,rank()over (order by stock_pcr) pcr_rank,stock_roa roa ,rank() over (order by stock_roa desc) roa_rank, 
                      stock_ros ros, rank() over (order by stock_ros desc) ros_rank, stock_cfps cfps, rank() over (order by stock_cfps desc) cfps_rank, 
                       PERCENT_RANK() OVER (ORDER BY stock_market_cap) stock_market_cap 
            from t_total_stock
                 where stock_date = P_check_date
                    and stock_market = (CASE WHEN V_BACK_MARKET = 'ALL' THEN stock_market ELSE V_BACK_MARKET END) -- 시장 검색
                    and nvl(is_delisting,0) = (case when V_BACK_MANAGE = 0 then '0' else is_delisting end)--관리종목 종목인지
                    and STOCK_KIND = (case when V_BACK_PREFERRED = 0 then '보통주' else STOCK_KIND end) --우선주 종목인지
                    and net_income > (case when V_BACK_PROFIT=1 then 0 else (select min(net_income) from T_FINANCIAL_STAT) end)  --당기순이익 양수
                    and stock_cash_flow > (case when V_BACK_CASHFLOW=1 then 0 else (select min(stock_cash_flow) from T_FINANCIAL_STAT) end) -- 현금흐름 양수
                    and ((V_BACK_AMT = 'gt' and stock_trans_amt > TO_NUMBER(V_BACK_TRANS_AMT)) OR -- 일일 거래대금 범위
                       (V_BACK_AMT = 'gte' and stock_trans_amt >= TO_NUMBER(V_BACK_TRANS_AMT)) OR
                       (V_BACK_AMT = 'lt' and stock_trans_amt < TO_NUMBER(V_BACK_TRANS_AMT)) OR
                       (V_BACK_AMT = 'lte' and stock_trans_amt <= TO_NUMBER(V_BACK_TRANS_AMT))
                    )
                    and ((V_BACK_CAP = 'gt' and stock_market_cap > TO_NUMBER(V_BACK_MARKET_CAP)) OR  --시가총액 범위
                    (V_BACK_CAP = 'gte' and stock_market_cap >= TO_NUMBER(V_BACK_MARKET_CAP)) OR
                     (V_BACK_CAP = 'lt' and stock_market_cap < TO_NUMBER(V_BACK_MARKET_CAP)) OR
                     (V_BACK_CAP = 'lte' and stock_market_cap <= TO_NUMBER(V_BACK_MARKET_CAP))
                         )
                    and ((V_BACK_MIN_PRICEV = 'open' and stock_price_open >= to_number(v_back_min_price)) OR 
                        (V_BACK_MIN_PRICEV = 'end' and stock_price_open >= to_number(v_back_min_price)))
             )
             where ((V_BACK_CAP_UPDOWN = 'asc' and stock_market_cap <=  V_BACK_CAP_RATE/100) or
             (V_BACK_CAP_UPDOWN = 'desc' and stock_market_cap >=  V_BACK_CAP_RATE/100) )
             order by total) where rownum <= V_BACK_STOCK_CNT ;
    commit;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('SQL ERROR MESSAGE: ' || SQLERRM);
   END;
END;
/


--일자별 공휴일 체크 프로시저
DROP PROCEDURE STOCK_LOGIC;
CREATE OR REPLACE PROCEDURE STOCK_LOGIC (
    P_port_num in number,
    p_user_id in varchar2
)IS
    V_START_DATE T_BACKPORT_CONDI.BACK_START_DATE%TYPE;
    V_END_DATE T_BACKPORT_CONDI.BACK_END_DATE%TYPE;
    V_REBAL_CYCLE T_BACKPORT_CONDI.BACK_REBAL_CYCLE%TYPE;
    V_INPUT_DATE DATE;
    V_CNT_RESULT NUMBER(5) := 0;
    V_YEAR VARCHAR2(10);
    V_result sys_refcursor;
    v_cnt number(5):= 1;
BEGIN
    SELECT BACK_START_DATE, BACK_END_DATE, BACK_REBAL_CYCLE INTO V_START_DATE, V_END_DATE, V_REBAL_CYCLE FROM T_BACKPORT_CONDI WHERE port_num = P_port_num and USER_ID = p_user_id;
    V_INPUT_DATE := to_date(V_START_DATE);
    WHILE V_INPUT_DATE <= V_END_DATE
    LOOP
    --법정 영업일(토,일 제외) 판단햬서 넣어주기
    V_CNT_RESULT :=0;
    IF TO_CHAR(V_INPUT_DATE,'D') = 7
    THEN V_INPUT_DATE := V_INPUT_DATE+2;
    ELSIF TO_CHAR(V_INPUT_DATE,'D') = 1
    THEN V_INPUT_DATE := V_INPUT_DATE+1;
    -- 햬당일이 공휴일인지 체크(데이터가 있는지 확인)
    END IF;
    V_YEAR := extract(YEAR FROM V_INPUT_DATE);
    WHILE V_CNT_RESULT = 0
    LOOP 
        DBMS_OUTPUT.PUT_LINE(v_year);
        IF V_YEAR = '2021'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2021 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2020'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2020 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2019'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2019 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2018'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2018 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2017'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2017 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2016'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2016 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2015'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2015 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2014'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2014 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2013'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2013 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2012'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2012 WHERE STOCK_DATE = V_INPUT_DATE;
        elsIF V_YEAR = '2011'
        then SELECT COUNT(*) INTO V_CNT_RESULT FROM t_stock2011 WHERE STOCK_DATE = V_INPUT_DATE;
        end if;
         IF V_CNT_RESULT IN (0)
          THEN V_INPUT_DATE := V_INPUT_DATE+1;
         END IF;
           DBMS_OUTPUT.PUT_LINE(V_CNT_RESULT);
    END LOOP;
    STOCK_VAL(v_cnt, P_port_num,p_user_id,to_char(V_INPUT_DATE,'yy/mm/dd'));
    DBMS_OUTPUT.PUT_LINE(V_INPUT_DATE);
    -- 다음달 첫째일 넣기
    commit;
    v_cnt := v_cnt+1;
    
    V_INPUT_DATE := ADD_MONTHS(TRUNC(V_INPUT_DATE,'MM'), V_REBAL_CYCLE );
    END LOOP;
END;
/

drop PROCEDURE p_transfer;
create or replace PROCEDURE p_transfer (
    P_port_num in number,
    p_user_id in varchar2
)IS
    V_now_no t_trans_stock.back_no%type := 1;
    V_end_no t_trans_stock.baCK_no%type;
    V_START_ASSET T_BACKPORT_CONDI.BACK_START_ASSET%TYPE;
    V_TAX_RATE T_BACKPORT_CONDI.BACK_TAX_RATE%TYPE;
    V_INVEST_RATE T_BACKPORT_CONDI.BACK_INVEST_RATE%TYPE;
    V_FEE_RATE T_BACKPORT_CONDI.BACK_FEE_RATE%TYPE;
    V_ASSET T_BACKPORT_CONDI.BACK_START_ASSET%TYPE;
    V_PER_ASSET T_BACKPORT_CONDI.BACK_START_ASSET%TYPE;
    V_STOCK_CNT T_BACKPORT_CONDI.BACK_STOCK_CNT%TYPE;
    v_now_date date;
    v_past_date date;
    v_past_deposit number;
BEGIN
    --  사용자 매수매도, 세금 비율 조건 가져오기
    SELECT (BACK_START_ASSET*BACK_INVEST_RATE)*10000, BACK_TAX_RATE,BACK_INVEST_RATE,BACK_FEE_RATE, BACK_STOCK_CNT INTO V_ASSET,V_TAX_RATE,V_INVEST_RATE,V_FEE_RATE, V_STOCK_CNT FROM T_BACKPORT_CONDI WHERE port_num = P_port_num;
    -- 한 종목당 매수 금액 선정
    V_PER_ASSET := V_ASSET / V_STOCK_CNT;
    -- 총 BACK 개수 가져오기
    select max(back_no) into v_end_no from t_trans_stock where PORT_num = P_port_num;
    -- 첫값 SETTING
    UPDATE t_trans_stock SET TRANS_KIND = '신규매수', STOCK_CNT = TRUNC(V_PER_ASSET/STOCK_PRICE), BUY_PRICE = STOCK_PRICE, BUY_DATE = BACK_DATE, EARNING_RATE = 0, SALE_price =TRUNC(V_PER_ASSET/STOCK_PRICE)*stock_price, TOTAL_STOCK_CNT=TRUNC(V_PER_ASSET/STOCK_PRICE),TOTAL_STOCK_PRICE =TRUNC(V_PER_ASSET/STOCK_PRICE)*STOCK_PRICE   WHERE BACK_NO = V_now_no AND USER_ID = p_user_id and port_num = P_port_num;

    insert into t_back_result(back_no,port_num,user_id,back_date,total_bal,total_deposit,buy_total_price,sell_total_price, TOTAL_STOCK_price,back_fee,earning_rate )
            select back_no, port_num, user_id, back_date, V_ASSET/V_INVEST_RATE, V_ASSET/V_INVEST_RATE-sum(sale_price),sum(sale_price), 0, sum(total_stock_price), trunc(sum(sale_price)*0.015/100), 0 
            from t_trans_stock where port_num = P_port_num and back_no=V_now_no and user_id = p_user_id group by back_no, port_num, user_id, back_date;

  while V_now_no < v_end_no
  LOOP 
  commit;
    -- 지난달
    select max(back_date) into v_past_date from t_trans_stock where back_no=V_now_no AND USER_ID =p_user_id AND PORT_NUM = P_port_num;
    V_now_no := V_now_no+1;
    select max(back_date) into v_now_date from t_trans_stock where back_no=V_now_no AND USER_ID = p_user_id AND PORT_NUM=P_port_num;
    
    select sum(t.stock_price_end*s.total_stock_cnt)  into V_ASSET
    from t_total_stock t, t_trans_stock s where s.port_num = P_port_num and s.user_id = p_user_id and s.back_no = V_now_no-1 and t.stock_code=s.stock_code and t.stock_date = v_now_date;
    select total_deposit into v_past_deposit from t_back_result where port_num = P_port_num and user_id = p_user_id and back_no = V_now_no-1;
    -- 현재달
    V_ASSET := (V_ASSET+v_past_deposit)*V_INVEST_RATE;
    V_PER_ASSET := trunc(V_ASSET / V_STOCK_CNT);
    
    -- 두번째값세팅부터 세팅
    --1. 첫번째 두번째 항목비교, 없는거 출력(수정완료 9/21)
    

    dbms_output.put_line(v_now_date);
   insert into T_TRANS_STOCK(back_no, port_num, user_id, stock_name, stock_code, back_date, trans_kind, stock_price, stock_cnt, buy_price, buy_date,total_stock_cnt,TOTAL_STOCK_PRICE) 
    (select V_now_no, port_num, user_id, stock_name, stock_code, v_past_date, '전량매도' , (select stock_price_end from t_total_stock where STOCK_DATE=v_now_date and stock_code = S.stock_code),total_stock_cnt,buy_price,buy_date, total_stock_cnt,0
       from T_TRANS_STOCK S where user_id=p_user_id and port_num = P_port_num and back_no =  V_now_no-1 and back_date = v_past_date and total_stock_price not in 0 and stock_code not in 
           (select a.stock_code from T_TRANS_STOCK a, T_TRANS_STOCK b 
                where a.back_no=V_now_no-1 and b.back_no=V_now_no and a.stock_code = b.stock_code and a.total_stock_price not in 0 and a.back_date = v_past_date and a.user_id=p_user_id and a.port_num = P_port_num and b.port_num = P_port_num));
    
    commit;
    --1-1) 전량매도 update
    update t_trans_stock set sell_price = stock_price, sell_date = v_now_date, earning_rate = round((stock_price-buy_price)/stock_price*100,1),  SALE_price=stock_cnt*stock_price, total_stock_cnt = total_stock_cnt-stock_cnt 
    where user_id=p_user_id and port_num = P_port_num and back_no =  V_now_no and back_date=v_past_date;                
    commit;
    --2. 종목 부분매도
UPDATE T_TRANS_STOCK B
    SET B.TRANS_KIND = '부분매도', B.STOCK_CNT = (SELECT A.TOTAL_STOCK_CNT FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT > TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num)- TRUNC(V_PER_ASSET/B.STOCK_PRICE),
    B.BUY_PRICE = (SELECT A.BUY_PRICE FROM T_TRANS_STOCK A WHERE  A.BACK_NO =V_now_no -1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT > TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and B.port_num = P_port_num and a.port_num = P_port_num), 
    B.BUY_DATE = (SELECT A.BUY_DATE FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT > TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and B.port_num = P_port_num and a.port_num = P_port_num),
    B.SELL_PRICE = B.STOCK_PRICE,
    B.SELL_DATE = B.BACK_DATE,
    B.SALE_price = ((SELECT A.TOTAL_STOCK_CNT FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT > TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num)-TRUNC(V_PER_ASSET/B.STOCK_PRICE))*B.STOCK_PRICE,
    B.TOTAL_STOCK_CNT = TRUNC(V_PER_ASSET/B.STOCK_PRICE),
    B.EARNING_RATE = ROUND((B.STOCK_PRICE/(SELECT A.STOCK_PRICE FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT > TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num)-1),1)*100,
    B.TOTAL_STOCK_PRICE = TRUNC(V_PER_ASSET/B.STOCK_PRICE)*B.STOCK_PRICE
    WHERE (BACK_NO, PORT_NUM, STOCK_CODE,BACK_DATE) IN (SELECT B.BACK_NO, B.PORT_NUM, B.STOCK_CODE, B.BACK_DATE FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT > TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num);       
commit;
    --2. 신규 종목 신규 매수 
    update T_TRANS_STOCK set trans_kind = '신규매수', stock_cnt = TRUNC(V_PER_ASSET/STOCK_PRICE), total_stock_cnt=TRUNC(V_PER_ASSET/STOCK_PRICE),BUY_PRICE = STOCK_PRICE, BUY_DATE =BACK_DATE, EARNING_RATE = 0,
    SALE_price=TRUNC(V_PER_ASSET/STOCK_PRICE)*stock_price, TOTAL_STOCK_PRICE = TRUNC(V_PER_ASSET/STOCK_PRICE)*stock_price
    where back_no = v_now_no AND USER_ID = p_user_id and port_num = P_port_num and back_date=v_now_date 
    and stock_code not in 
    (select b.stock_code from T_TRANS_STOCK a, T_TRANS_STOCK b where a.back_no=v_now_no-1 and b.back_no=v_now_no and a.stock_code = b.stock_code and a.back_date = v_past_date and b.back_date = v_now_date and b.port_num = P_port_num  and a.port_num = P_port_num) ; 
commit;

    --3. 종목 부분매수
UPDATE T_TRANS_STOCK B
    SET B.TRANS_KIND = '부분매수', B.STOCK_CNT = TRUNC(V_PER_ASSET/B.STOCK_PRICE)- (SELECT A.TOTAL_STOCK_CNT FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT < TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and B.port_num = P_port_num and a.port_num = P_port_num),
    B.BUY_PRICE = B.STOCK_PRICE, B.BUY_DATE = B.BACK_DATE, B.EARNING_RATE = 0,
    B.SALE_price = (TRUNC(V_PER_ASSET/B.STOCK_PRICE)- (SELECT A.TOTAL_STOCK_CNT FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT < TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num))*B.STOCK_PRICE,
    B.TOTAL_STOCK_CNT = TRUNC(V_PER_ASSET/B.STOCK_PRICE), B.TOTAL_STOCK_PRICE = TRUNC(V_PER_ASSET/B.STOCK_PRICE)*B.STOCK_PRICE
    WHERE (BACK_NO, PORT_NUM, STOCK_CODE,BACK_DATE) IN 
    (SELECT B.BACK_NO, B.PORT_NUM, B.STOCK_CODE, B.BACK_DATE FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE and a.total_stock_price not in 0 AND A.TOTAL_STOCK_CNT < TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num =P_port_num);

commit;

DBMS_OUTPUT.PUT_LINE(V_now_no);
-- 5. ㅇㅠㅈㅣ
update  T_TRANS_STOCK B
    SET B.TRANS_KIND = '유지',sale_price = 0, stock_cnt=0,earning_rate = 0, 
    (buy_price, buy_date,total_stock_cnt, total_stock_price) =(SELECT A.buy_price, a.buy_date, a.total_stock_cnt, a.total_stock_price FROM T_TRANS_STOCK A 
        WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT = TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num)
WHERE (BACK_NO, PORT_NUM, STOCK_CODE,BACK_DATE) IN (SELECT B.BACK_NO, B.PORT_NUM, B.STOCK_CODE, B.BACK_DATE FROM T_TRANS_STOCK A WHERE  A.BACK_NO = V_now_no-1 AND B.BACK_NO = V_now_no AND A.STOCK_CODE = B.STOCK_CODE AND A.TOTAL_STOCK_CNT = TRUNC(V_PER_ASSET/B.STOCK_PRICE) AND B.BACK_DATE = v_now_date AND B.user_id=p_user_id and a.port_num = P_port_num and B.port_num = P_port_num);
commit;
-- deposit
insert into t_back_result(back_no,port_num,user_id,buy_total_price,sell_total_price, TOTAL_STOCK_price)
        select back_no,port_num,user_id ,sum(case when trans_kind in  ('신규매수' ,'부분매수') then sale_price else 0 end),sum(case when trans_kind in  ('전량매도' ,'부분매도') then sale_price else 0 end), sum(total_stock_price) from t_trans_stock where port_num = P_port_num and back_no=V_now_no and user_id = p_user_id group by back_no,port_num,user_id;
commit;
update t_back_result set back_date = v_now_date, total_bal = (select total_deposit from t_back_result where back_no=V_now_no-1 and port_num =P_port_num and user_id=p_user_id)-buy_total_price+sell_total_price + total_stock_price,
total_deposit = (select total_deposit from t_back_result where back_no=V_now_no-1 and port_num =P_port_num and user_id=p_user_id)-buy_total_price+sell_total_price, back_fee=trunc((buy_total_price+sell_total_price)*0.0015/100),
earning_rate = trunc((((select total_deposit from t_back_result where back_no=V_now_no-1 and port_num =P_port_num and user_id=p_user_id)-buy_total_price+sell_total_price + total_stock_price)/(select total_bal from t_back_result where back_no=1 and port_num =P_port_num and user_id=p_user_id)-1)*100)
where back_no = V_now_no and port_num = P_port_num and user_id = p_user_id;
commit;

  END LOOP;
END;
/

---------------------------------------------------------------------------

--최근날짜로 종목 추천해주는 프로시저
drop PROCEDURE Select_Current_Stock;
CREATE OR REPLACE PROCEDURE Select_Current_Stock (
    P_port_num in number,
    p_user_id in varchar2,
    P_check_date in date,
    P_Stock_Cnt in number,
    O_Result_Set out SYS_REFCURSOR
)IS
    V_START_DATE T_BACKPORT_CONDI.BACK_START_DATE%TYPE;
    V_END_DATE T_BACKPORT_CONDI.BACK_END_DATE%TYPE;
    V_BACK_MARKET T_BACKPORT_CONDI.BACK_MARKET%TYPE;
    V_BACK_CARE T_BACKPORT_CONDI.BACK_CARE%TYPE;
    V_BACK_MANAGE T_BACKPORT_CONDI.BACK_MANAGE%TYPE;
    V_BACK_PREFERRED T_BACKPORT_CONDI.BACK_PREFERRED%TYPE;
    V_BACK_CASHFLOW T_BACKPORT_CONDI.BACK_CASHFLOW%TYPE;
    V_BACK_PROFIT T_BACKPORT_CONDI.BACK_PROFIT%TYPE;
    V_BACK_TRANS_AMT T_BACKPORT_CONDI.BACK_TRANS_AMT%TYPE;
    V_BACK_AMT T_BACKPORT_CONDI.BACK_AMT%TYPE;
    V_BACK_STOCK_CNT T_BACKPORT_CONDI.BACK_STOCK_CNT%TYPE;
    V_BACK_MARKET_CAP T_BACKPORT_CONDI.BACK_MARKET_CAP%TYPE;
    V_BACK_CAP T_BACKPORT_CONDI.BACK_CAP%TYPE;
    V_BACK_BUY_PRICE T_BACKPORT_CONDI.BACK_BUY_PRICE%TYPE;
    V_BACK_SELL_PRICE T_BACKPORT_CONDI.BACK_SELL_PRICE%TYPE;
    V_BACK_MIN_PRICES T_BACKPORT_CONDI.BACK_MIN_PRICES%TYPE;
    V_BACK_MIN_PRICEV T_BACKPORT_CONDI.BACK_MIN_PRICEV%TYPE;
    V_BACK_MIN_PRICE T_BACKPORT_CONDI.BACK_MIN_PRICE%TYPE;
    V_BACK_CAP_UPDOWN T_BACKPORT_CONDI.BACK_CAP_UPDOWN%TYPE;
    V_BACK_CAP_RATE T_BACKPORT_CONDI.BACK_CAP_RATE%TYPE;
    V_back_pbr T_BACKPORT_CONDI.BACK_PBR%TYPE;
    V_back_per T_BACKPORT_CONDI.BACK_PER%TYPE;
    V_back_pcr T_BACKPORT_CONDI.BACK_PCR%TYPE;
    V_back_psr T_BACKPORT_CONDI.BACK_PSR%TYPE;
    V_back_roa T_BACKPORT_CONDI.BACK_ROA%TYPE;
    V_back_roe T_BACKPORT_CONDI.BACK_ROE%TYPE;
    V_back_ros T_BACKPORT_CONDI.BACK_ROS%TYPE;
    V_back_cfps T_BACKPORT_CONDI.back_cfps%TYPE;
    V_is_null number(6);
    v_is_Date T_BACKPORT_CONDI.BACK_START_DATE%TYPE;
BEGIN
    BEGIN
    SELECT BACK_START_DATE,BACK_END_DATE,BACK_MARKET,BACK_PREFERRED,BACK_CARE,BACK_MANAGE,BACK_CASHFLOW, BACK_PROFIT, BACK_TRANS_AMT, BACK_AMT ,BACK_MARKET_CAP,BACK_CAP,
    BACK_BUY_PRICE,BACK_SELL_PRICE,BACK_MIN_PRICES , BACK_MIN_PRICEV,BACK_MIN_PRICE ,BACK_CAP_UPDOWN ,BACK_CAP_RATE ,BACK_STOCK_CNT,V_back_pbr, back_per,back_pcr, back_psr, back_roa, back_roe, back_ros , back_cfps
    INTO V_START_DATE,V_END_DATE,V_BACK_MARKET,V_BACK_PREFERRED,V_BACK_CARE,V_BACK_MANAGE,V_BACK_CASHFLOW, V_BACK_PROFIT, V_BACK_TRANS_AMT, V_BACK_AMT ,V_BACK_MARKET_CAP,V_BACK_CAP,
    V_BACK_BUY_PRICE,V_BACK_SELL_PRICE,V_BACK_MIN_PRICES , V_BACK_MIN_PRICEV,V_BACK_MIN_PRICE ,V_BACK_CAP_UPDOWN ,V_BACK_CAP_RATE , V_BACK_STOCK_CNT, V_back_pbr, V_back_per,V_back_pcr, V_back_psr, V_back_roa, V_back_roe, V_back_ros , V_back_cfps
    FROM T_BACKPORT_CONDI WHERE port_num = P_port_num AND USER_ID = p_user_id;
    commit;
    -- 불러올 날자 설정
    v_is_Date := P_check_date;
    select count(*) into V_is_null from t_total_stock where stock_date = v_is_Date and is_delisting is null;
    while(V_is_null = 0)
    loop
    v_is_Date := v_is_Date-1;
    select count(*) into V_is_null from t_total_stock where stock_date = v_is_Date and is_delisting is null;
    END loop;
    
    
    open O_Result_Set for
        select P_port_num, p_user_id, stock_name, stock_code,to_char(stock_date,'yyyy-mm-dd') stock_date,total from
         (select stock_name, stock_code,stock_date, (case when V_BACK_MIN_PRICEV = 'open' then p_open else p_end end) as price,
                      (case when V_back_pbr IS NOT NULL then pbr_rank else 0 end) + (case when V_back_per IS NOT NULL then per_rank else 0 end) + (case when V_back_pcr IS NOT NULL then pcr_rank else 0 end) 
                +(case when V_back_psr IS NOT NULL then PSR_RANK else 0 end) +(case when V_back_roa IS NOT NULL then ROA_RANK else 0 end) +(case when V_back_roe IS NOT NULL then ROE_RANK  else 0 end) 
                +(case when V_back_ROS IS NOT NULL then ROS_RANK else 0 end) +(case when V_back_CFPS IS NOT NULL then CFPS_RANK else 0 end) as total
                from            
        (select stock_name,stock_code,stock_date,stock_price_open as p_open, stock_price_end as p_end,stock_fund_roe roe,rank() over (order by stock_fund_roe desc) roe_rank, 
                      stock_fund_per per,rank() over (order by stock_fund_per)  per_rank, stock_fund_pbr pbr,rank() over (order by stock_fund_pbr)  pbr_rank,
                      stock_psr psr,rank() over (order by stock_psr)  psr_rank, stock_pcr pcr ,rank()over (order by stock_pcr) pcr_rank,stock_roa roa ,rank() over (order by stock_roa desc) roa_rank, 
                      stock_ros ros, rank() over (order by stock_ros desc) ros_rank, stock_cfps cfps, rank() over (order by stock_cfps desc) cfps_rank, 
                       PERCENT_RANK() OVER (ORDER BY stock_market_cap) stock_market_cap 
            from t_total_stock
                 where stock_date = v_is_Date
                    and stock_market = (CASE WHEN V_BACK_MARKET = 'ALL' THEN stock_market ELSE V_BACK_MARKET END) -- 시장 검색
                    and nvl(is_delisting,0) = (case when V_BACK_MANAGE = 0 then '0' else is_delisting end)--관리종목 종목인지
                    and STOCK_KIND = (case when V_BACK_PREFERRED = 0 then '보통주' else STOCK_KIND end) --우선주 종목인지
                    and net_income > (case when V_BACK_PROFIT=1 then 0 else (select min(net_income) from T_FINANCIAL_STAT) end)  --당기순이익 양수
                    and stock_cash_flow > (case when V_BACK_CASHFLOW=1 then 0 else (select min(stock_cash_flow) from T_FINANCIAL_STAT) end) -- 현금흐름 양수
                    and ((V_BACK_AMT = 'gt' and stock_trans_amt > TO_NUMBER(V_BACK_TRANS_AMT)) OR -- 일일 거래대금 범위
                       (V_BACK_AMT = 'gte' and stock_trans_amt >= TO_NUMBER(V_BACK_TRANS_AMT)) OR
                       (V_BACK_AMT = 'lt' and stock_trans_amt < TO_NUMBER(V_BACK_TRANS_AMT)) OR
                       (V_BACK_AMT = 'lte' and stock_trans_amt <= TO_NUMBER(V_BACK_TRANS_AMT))
                    )
                    and ((V_BACK_CAP = 'gt' and stock_market_cap > TO_NUMBER(V_BACK_MARKET_CAP)) OR  --시가총액 범위
                    (V_BACK_CAP = 'gte' and stock_market_cap >= TO_NUMBER(V_BACK_MARKET_CAP)) OR
                     (V_BACK_CAP = 'lt' and stock_market_cap < TO_NUMBER(V_BACK_MARKET_CAP)) OR
                     (V_BACK_CAP = 'lte' and stock_market_cap <= TO_NUMBER(V_BACK_MARKET_CAP))
                         )
                    and ((V_BACK_MIN_PRICEV = 'open' and stock_price_open >= to_number(v_back_min_price)) OR 
                        (V_BACK_MIN_PRICEV = 'end' and stock_price_open >= to_number(v_back_min_price)))
             )
             where stock_market_cap <=  V_BACK_CAP_RATE/100
             order by total) where rownum <= P_Stock_Cnt ;
    commit;
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('SQL ERROR MESSAGE: ' || SQLERRM);
   END;
END;
/