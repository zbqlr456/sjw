import io
import sys
import requests
from bs4 import BeautifulSoup

sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8');

# .row > .origin > .text 히라가나
# .row > .origin > .pronumciation 한자
# .row > .mean_list > .mean_item > .mean 뜻
# https://ja.dict.naver.com/#/jlpt/list?level=1&part=noun&page=1
# level 1 ~ 5
# page 1 ~ 끝까지 
# allClass = 전체, noun = 명사, verb = 대명사, adjective = 동사, adverb = 조사, 
# measurement = 형용사, phrases = 접사, conjunction = 부사, numeral = 감동사, pronoun = 형용동사, interjection = 기타
# page는 .amount / 10 으로 해야할 듯

clist = ['noun', 'verb', 'adjective', 'adverb', 'measurement', 'phrases', 'conjunction', 'numeral', 'pronoun', 'interjection']

for level in range(1, 6, 1):
    response = requests.get("https://ja.dict.naver.com/#/jlpt/list?level={level}&part=noun&page=1") # 네이버 서버에 대화 시작
    html = response.text
    soup = BeautifulSoup(html, 'html.parser') # html 번역선생님으로 soup 만듦
    words= soup.select('.row') # class 값이 ~~인 놈 한개 찾아냄
    for word in words:
        print(word.text.strip()) # 그 놈의 text만 출력, 양쪽 공백 제거