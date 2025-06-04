#R-specific programming loop

x <- rnorm(5)
x

# R specific programming loop
for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# conventional programming loop
for(j in 1:5){
print(x[j])
}

#--------------------------------------------2nd Part for Today

N <- 10000000 
a <- rnorm(N)
b <- rnorm(N)

#Vectorised approach
c <- a * b

#De-vectorised approach
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}


















