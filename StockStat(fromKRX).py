import numpy as np
import requests
import pandas as pd
from pykrx import stock
import time
from datetime import datetime, date, timedelta


def get_ticker_per(tdate):
    tickers = stock.get_market_ticker_list(tdate, market="ALL")
    corp = []

    for ticker in tickers:
        corp_name = stock.get_market_ticker_name(ticker)
        corp.append([ticker, corp_name])

    df = pd.DataFrame(data=corp, columns=['종목코드', '종목명'])
    # 종목코드를 인덱스로 설정
    df = df.set_index('종목코드')

    # 날짜 설정
    df['날짜'] = tdate

    df_p = stock.get_market_ohlcv_by_ticker(tdate, market="ALL")
    df = pd.merge(df, df_p, left_index=True, right_index=True)

    # 주식 정보데이터 PER, PBR 데이터 삽입 # ROE 추가
    df_f = stock.get_market_fundamental_by_ticker(tdate, market="ALL")
    df_f['ROE'] = (df_f['EPS'] / df_f['BPS']) * 100

    # 주가 정보 데이터(거래대금)
    df_c = stock.get_market_cap_by_ticker(tdate, market="ALL")
    df = pd.merge(df, df_f, left_index=True, right_index=True)
    df = pd.merge(df, df_c, left_index=True, right_index=True)

    df['PER'] = df['PER'].replace(0, np.NaN)
    df['PBR'] = df['PBR'].replace(0, np.NaN)
    df['BPS'] = df['BPS'].replace(0, np.NaN)
    df['EPS'] = df['EPS'].replace(0, np.NaN)
    df['DIV'] = df['DPS'].replace(0, np.NaN)
    df['ROE'] = df['ROE'].replace(0, np.NaN)

    df['PER_rank'] = df['PER'].rank()
    df['PBR_rank'] = df['PBR'].rank()
    df['ROE_rank'] = df['ROE'].rank()
    return df


def daterange(date1, date2):
    for n in range(int((date2 - date1).days) + 1):
        yield date1 + timedelta(n)


curY = 2021
endY = 2020

while True:
    start_dt = date(curY, 9, 20)
    end_dt = date(curY, 10, 1)
    weekdays = [5, 6]
    cnt = 0
    tmp = []
    for dt in daterange(start_dt, end_dt):
        if dt.weekday() not in weekdays:  # to print only the weekdates
            curDay = dt.strftime("%Y%m%d")
            codes = get_ticker_per(curDay)
            if (codes[['종가_x', '시가총액', '거래량_x', '거래대금_x']] == 0).all(axis=None):
                continue
            codes['종목코드'] = codes.index
            codes['종목코드'] = codes['종목코드'].apply(lambda x: 'A' + x)
            tmp.append(codes)
            cnt += 1
            print('반복횟수 : ' + str(cnt) + '  조회일 :' + curDay)
            time.sleep(0.05)

    df_final = pd.concat(tmp)
    print(df_final)
    df_final.to_csv(f'C:\\Users\\HP\\Desktop\\stock{curY}update2.csv', encoding='euc-kr')
    curY -= 1
    if curY <= endY:
        break

