arr <- array(1:24, c(3,3,2))
arr
array(1:6)
arr <- array(1:12, c(2,3,2))
arr[,,-1]
arr

a <- 1:10
b <- 11:15
klist <- list(vec1=a, vec2=b, descrip='example')
klist
mode(klist)
names(klist)
klist

klist['vec1']
klist$vec2
klist[[1]]
klist[[4]]
klist[[3]] = NULL
klist

char1 <- rep(LETTERS[1:3], c(2,2,1))
num1 <- rep(1:3, c(2,2,1))
test1 <- data.frame(char1, num1)
test1

# cbind 옆으로 합치기 
# rbind 아래로 합치기 
# merge 병, 공통된 부분 추출 
