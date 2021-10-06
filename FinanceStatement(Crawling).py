from builtins import print

import requests
import pandas as pd
from pykrx import stock
import time
from datetime import datetime
from tabulate import tabulate


# 종목, PER 가져오기
def get_ticker_per(date):
    tickers = stock.get_market_ticker_list(date, market='ALL')

    corp = []

    for ticker in tickers:
        corp_name = stock.get_market_ticker_name(ticker)
        corp.append([ticker, corp_name])

    df = pd.DataFrame(data=corp, columns=['종목코드', '종목명'])
    df = df.set_index('종목코드')
    return df


def get_fundamental(code):
    url = f'https://www.itooza.com/vclub/y10_page.php?ss=10&sv=10&cmp_cd={code}&mode=dy'
    fr_page = requests.get(url)
    fr_page.encoding='EUC-KR'
    fr_tables = pd.read_html(fr_page.text)
    temp2_df = fr_tables[1]
    temp1_df = fr_tables[2]
    temp_df = pd.concat([temp2_df, temp1_df], axis=1)
    temp_df = temp_df.set_index(temp_df.columns[0])
    temp_df = temp_df.loc[['주당현금흐름(CFPS)', '주가현금흐름배수(PCR)', '주가매출액배수(PSR)', '=순이익률(ROS)', '매출액 순이익률']]
    temp_df = temp_df.transpose()
    temp_df['종목코드'] = code
    temp_df['종목코드'] = temp_df['종목코드'].apply(lambda x: 'A' + x)
    temp_df['날짜'] = temp_df.index
    temp_df = temp_df.set_index(temp_df['종목코드'])
    return temp_df

def get_total(code):
    url = f'https://www.itooza.com/vclub/y10_page.php?cmp_cd={code}&mode=dy&ss=10&sv=2&lsmode=1&lkmode=1&pmode=1&exmode=1&accmode=1'
    fr_page = requests.get(url)
    fr_page.encoding='EUC-KR'
    fr_tables = pd.read_html(fr_page.text)
    temp2_df = fr_tables[1]
    temp1_df = fr_tables[2]
    temp_df = pd.concat([temp2_df, temp1_df], axis=1)
    temp_df = temp_df.set_index(temp_df.columns[0])
    temp_df = temp_df.loc[['매출액(수익)', '영업이익', '당기순이익', '*EBITDA']]
    temp_df = temp_df.transpose()
    temp_df['종목코드'] = code
    temp_df['종목코드'] = temp_df['종목코드'].apply(lambda x: 'A' + x)
    temp_df['날짜'] = temp_df.index
    temp_df = temp_df.set_index(temp_df['종목코드'])
    return temp_df

def get_cashFlow(code):
    url = f'https://www.itooza.com/vclub/y10_page.php?cmp_cd={code}&mode=dy&ss=10&sv=4&lsmode=1&lkmode=1&pmode=1&exmode=1&accmode=1'
    fr_page = requests.get(url)
    fr_page.encoding='EUC-KR'
    fr_tables = pd.read_html(fr_page.text)
    temp2_df = fr_tables[1]
    temp1_df = fr_tables[2]
    temp_df = pd.concat([temp2_df, temp1_df], axis=1)
    temp_df = temp_df.set_index(temp_df.columns[0])
    temp_df = temp_df.loc[['영업활동으로인한현금흐름','당기순이익']]
    temp_df = temp_df.transpose()
    temp_df['종목코드'] = code
    temp_df['종목코드'] = temp_df['종목코드'].apply(lambda x: 'A' + x)
    temp_df['날짜'] = temp_df.index
    temp_df = temp_df.set_index(temp_df['종목코드'])
    return temp_df

def make_magic_df(date):
    # krx 데이터 '종목코드', '종목명', 'PER' 가져오기
    codes = get_ticker_per(date)
    codes['종목코드'] = codes.index
    # codes['종목코드'] = codes['종목코드'].apply(lambda x: 'A' + x)
    # ROA를 가져와서 데이터프레임 만들기
    for num, code in enumerate(codes['종목코드']):
        try:
            if num == 0:
                total_df = get_total(code)
                fund_df = get_fundamental(code)
                flow_df = get_cashFlow(code)
            else:
                total_df = pd.concat([total_df, get_total(code)])
                fund_df = pd.concat([fund_df, get_fundamental(code)])
                flow_df = pd.concat([flow_df, get_cashFlow(code)])
            time.sleep(0.01)
            print('완')

        except:
            pass
        print(len(codes['종목코드']) - num, codes['종목명'][num])

    # 인덱스를 코드로 바꾸기
    total_df.to_csv('C:\\Users\\HP\\Desktop\\stock_total2.csv', encoding='euc-kr')
    fund_df.to_csv('C:\\Users\\HP\\Desktop\\stock_fund2.csv', encoding='euc-kr')
    flow_df.to_csv('C:\\Users\\HP\\Desktop\\stock_flow2.csv', encoding='euc-kr')


y_list = ['20210908']
make_magic_df(y_list)
