install.packages('rpart')
??rpart
data(package='rpart')

data("faithful")
help("faithful")
dim(faithful)
summary(faithful)
plot(faithful)


help("glmnet")
??glmet


x <- c(1,2,3,4,5)
y <- c(10, 20, 30, 40, 50)
dat <- cbind(x, y)

w1 <- scan()

dat3 <- data.frame()
dat3=edit(dat3)

sink('iris.txt')
summary(iris)

data()
data(iris)
iris

# seed 설정
set.seed(8372)

# 시행 횟수 설정
n1 <- 12
n2 <- 120
n3 <- 1200
n4 <- 12000

# 주사위 던지기 시행
rolls1 <- sample(1:6, n1, replace=TRUE)
rolls2 <- sample(1:6, n2, replace=TRUE)
rolls3 <- sample(1:6, n3, replace=TRUE)
rolls4 <- sample(1:6, n4, replace=TRUE)

# 레이아웃 설정
layout(matrix(1:4, 2, 2))

# 히스토그램 출력
hist(rolls1, breaks=seq(0.5,6.5,by=1), main="12")
hist(rolls2, breaks=seq(0.5,6.5,by=1), main="120")
hist(rolls3, breaks=seq(0.5,6.5,by=1), main="1200")
hist(rolls4, breaks=seq(0.5,6.5,by=1), main="12000")

