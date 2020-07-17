#여러페이지 모든 평점 가져오기 
library(rvest)

txt <- c()
for (x in 1:5) {
  base_url <- "https://movie.daum.net/moviedb/grade?movieId=125372&type=netizen&page="
  url <- paste0(base_url, x)
  print(x)
  
  movieSrc <- read_html(url)
  tagTemp <- html_nodes(movieSrc, ".desc_review")
  movieText <- html_text(tagTemp)
  print(movieText)
  
  txt <- c(txt, movieText)
}

print(txt)

writeLines(txt, "result.txt")