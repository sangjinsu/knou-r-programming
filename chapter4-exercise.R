for (i in 0:5) {
  if(i<=2) print(rep(i+1, 5-i*2))
  if(i>=3) print(rep(i+1, i*2-5))
}

i <- 0
while (i <= 5) {
  if(i<=2) print(rep(i+1, 5-i*2))
  if(i>=3) print(rep(i+1, i*2-5))
  i <- i+1
}


i <- 0
repeat {
  if(i<=2) print(rep(i+1, 5-i*2))
  if(i>=3) print(rep(i+1, i*2-5))
  i <- i+1
  if(i>5)break
}
