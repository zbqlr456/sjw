import io
import sys
import time
import pandas as pd
from selenium import webdriver
from selenium.webdriver.common.by import By

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

# .row > .origin > .text 히라가나
# .row > .origin > .pronunciation 한자
# .row > .mean_list > .mean_item > .mean 뜻
# https://ja.dict.naver.com/#/jlpt/list?level=1&part=noun&page=1
# level 1 ~ 5
# page 1 ~ 끝까지 
# allClass = 전체, noun = 명사, verb = 대명사, adjective = 동사, adverb = 조사, 
# measurement = 형용사, phrases = 접사, conjunction = 부사, numeral = 감동사, pronoun = 형용동사, interjection = 기타
# amount는 해당 class의 전체 단어의 수
# page는 .amount / 10 으로 해야할 듯

driver = webdriver.Chrome()
clist = ['noun', 'verb', 'adjective', 'adverb', 'measurement', 'phrases', 'conjunction', 'numeral', 'pronoun', 'interjection']

data = []

for level in range(1, 6):
    for word_class in clist:
        url = f'https://ja.dict.naver.com/#/jlpt/list?level={level}&part={word_class}&page=1'
        driver.get(url)
        time.sleep(2)
        amount = driver.find_element(By.CLASS_NAME, 'amount').text
        page_num = int(int(amount.replace(',','').replace('건','')) / 10 + 2)

        for page in range(1, page_num):
            url = f'https://ja.dict.naver.com/#/jlpt/list?level={level}&part={word_class}&page={page}'
            driver.get(url)
            time.sleep(3)

            words = driver.find_elements(By.CLASS_NAME, 'row')
            for word in words:

                row = word.text.split('\n') # \n 을 기준으로 3개로 나눔.
                chinese = ''
                japanese = ''
                korean = ''
                if '[' in row[0]:
                    parts = row[0].split('[')
                    japanese = parts[0].strip()
                    chinese = parts[1].replace(']','').strip()
                else:
                    japanese = row[0].strip()
                korean = row[2][3:]
                    
                print(chinese)
                print(japanese)
                print(korean)

                # あつりょく [圧力] --> [이 있으면 [] 안의 문자는 한자, [의 이전 문자들은 히라가나. [이 없으면 전부다 히라가나, 한자는 x
                # 듣기 --> 
                # 명사 압력 --> 명사 이후의 문자열 그대로 뜻.
                print('-----------------------------------')
                # data.append(word.text)


# df = pd.DataFrame(data, colums = ['Word'])
# df.to_excel('words.xlsx', index = False, engine = 'openpyxl')

# driver.quit()