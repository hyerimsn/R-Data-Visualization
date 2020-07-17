#rvest - 웹페이지로부터 데이터를 수집할 때 사용하는 패키지
install.packages("rvest")
library(rvest)

#다음 랭킹 뉴스 URL
url <- "https://news.daum.net/ranking/popular/"

#read_html : 웹페이지(url)의 html을 header와 body로 읽어옴
#다음 랭킹 뉴스페이지의 html을 R로 가져옴
daumSrc <- read_html(url, encoding='UTF-8')

#html_nodes : 읽어온 html에서 필요한 태그만 추출
rankNewsTagTemp <- html_nodes(daumSrc, ".tit_thumb")
rankNewsTagTemp
rankNewsTagTemp <- html_nodes(rankNewsTagTemp, ".link_txt")
rankNewsTagTemp

#html_text : 텍스트 부분만 추출
rankNewsTagTemp <- html_text(rankNewsTagTemp)
print(rankNewsTagTemp)

