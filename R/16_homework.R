n <- 10000000
count <- 0L
for(i in rnorm(n)){
  if(i >= -1 & i <=1){
    count <- count + 1
  }
}
result <- (count/n)*100
print(result)