x <- c(2,0,2,3,3,5,3,6,8,3,7,2)

mean_value <- mean(x)
sd_value <- sd(x)
median_value <- median(x)
mean_value
sd_value
median_value

y <- replace(x, length(x), NA)
y

z <- rev(y)
z

mean_value <- mean(z, na.rm = TRUE)
sd_value <- sd(z, na.rm = TRUE)
median_value <- median(z, na.rm = TRUE)
mean_value
sd_value
median_value

score <- round(runif(10,50,100))
score
#  [1] 87 93 74 54 95 58 95 84 89 93


score_max <- max(score)
score_min <- min(score)
score_max # 95
score_min # 54

grade <- rep(0, 10)
grade
# [1] 0 0 0 0 0 0 0 0 0 0

grade <- ifelse(score >= 90, "A",
                ifelse(score >= 80, "B",
                       ifelse(score >= 70, "C",
                              ifelse(score >= 60, "D", "F")
                       )
                )
)
