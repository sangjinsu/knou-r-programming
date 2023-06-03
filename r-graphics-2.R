# R 그래픽스 2 
# 상관도 그림 
library(corrr)
library(magrittr)
# magrittr 패키지 설치시 파이프 연산자를 이용하면 간소화할 수 있음
mtcars %>% head 
mtcars %>% tan %>% cos %>% sin %>% head %>% round(2)

mtcars %>% correlate() %>% fashion()
mtcars %>% correlate() %>% rplot()
mtcars %>% correlate() %>% network_plot(min_cor=.3)

# 변수 군집 그림 
library(Hmisc)

# 레이더 차트 
# 레이더 차트 작성을 위한 데이터 가공 
install.packages('doBy')
library('doBy')
mean_by_Type2 <- summaryBy(MPG.highway + RPM + Horsepower + Weight + Length + Price~Type, data=Cars93, FUN=c(mean))
# 6개 각 변수의 최댓값 최소값을 구하기 위해 apply 함수를 이용하는 함수 작성

# 육각 레이더 차트 fmsb 패키지 사용 

# 상자그림 고밀도 산점도 
# ggplot 의 stat_bin2d 함수를 사용 
# scale_fill_gradientn 사용하여 색 지정 
# smoothed density 방법 사용법 - smoothScatter

# 단계구분도 
# maps, maptools 패키지 사용 

# 네트워크 그림 igraph 패키지 사용 
library(igraph)
split.screen(figs=c(1,2))
screen(1)
g1 <- graph(edges = c(1,2,2,3,3,1), n=3, directed = F)
screen(2)
g1 <- graph(edges = c(1,2,2,3,3,1), n=3, directed = T)
plot(g1)
# isolates 는 분리된 vertex 를 미리 지정

