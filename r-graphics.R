# 단변수 범주형 자료 

library(MASS)
head(Cars93)

# barplot
# pie 

# 연속형 단변수 자료 
# hist

library(vcd)
summary(Arthritis)
head(Arthritis)
with(Arthritis, plot(density(Age)))

# 확률 밀도 함수
with(Cars93, hist(MPG.highway, xlab='MPG in HighWay', main='MPG in HighWay', probability=T))
with(Cars93, lines(density(MPG.highway), col='red', lwd=2))

# Quantile-Quantile Q-Q 그림 
# 자료의 특정 분포를 가정했을 때 얻은 백분위수 값과 샘플 백분위수 값을 x-y 축에 도시하여 y=x 직선상에 자료가 위치하고 있으면 자료가 가정한 특정 분포를 따른다고 해석
with(Cars93, qqnorm(Turn.circle, main='Q-Q'))
with(Cars93, qqline(Turn.circle, col='orange', lwd=2))

# 연속형 단변수와 범주형 단변수 자료의 표현 
# boxplot 상자 그림 
boxplot(Min.Price~AirBags, data=Cars93)
# ggplot2 실제 자료의 데이터 값까지 확인할 수 있다는 장점이 있음 
library(ggplot2)
#yarrr 패키지를 설치하여 Pirate 그림으로 구현 
library(yarrr)
# pirateplot 

spine(Improved~Age, data = Arthritis, breaks=3)
with(Arthritis, spine(Improved~Age, breaks = quantile(Age)))

# 조건부 밀도 함수 그림 
cdplot(Improved~Age, data=Arthritis)
# rug 함수를 사용하여 연속형 변수의 값이 특정 구간에 얼마나 많이 분포하는지 표현 
with(Arthritis, rug(jitter(Age), col = 'white', quiet=T))

# 연속형 이변수 변수들에 대한 자료의 표현 
## pch(plot character)
## abline 회귀직선 추가
## lines 직선 추가

# 다변수 자료의 요약
# vcd 패키지를 활용한 모자이크 그림
art <- xtabs(~Treatment+Improved, data=Arthritis, subset=Sex=="Female")
mosaic(art)
# 다중 산점도 
data1 <- subset(Cars93, select=c(Min.Price, Price, Max.Price, MPG.city, MPG.highway))
pairs(data1)
# 그룹별 산점도(ggplot2 패키지 qplot 함수를 이용)
qplot(Wheelbase, Width, data=Cars93, shape=Type, color=Type, facets = Origin~AirBags)
# 나무 지도 그림 
# vColor 에 대응되는 변수가 연속현 변수이기 때문에 type="value" 로 지정. 만약 번주형 변수라면 type="categorical"로 지정 
library(treemap)
data(GNI2014)
treemap(GNI2014, index=c("continent", "iso3"), vSize="population", vColor="GNI", type="value")
# 풍선 그림 
# label=TRUE 라는 옵션을 선택하면 풍선 그림에 실제 값 표시 
library(graphics)
