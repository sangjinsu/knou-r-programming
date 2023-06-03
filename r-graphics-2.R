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
