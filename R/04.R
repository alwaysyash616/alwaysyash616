

myplot <- function(data,rows=1:10){
  Data <- data[rows,,drop=F]
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.01, legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}


myplot(FreeThrowAttempts/Games)
myplot(FreeThrows/FreeThrowAttempts)
myplot((Points-FreeThrows)/FieldGoals)
