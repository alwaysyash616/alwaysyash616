

install.packages("ggplot2")

?qplot()
?ggplot()
?diamonds

library(ggplot2)

qplot(data=diamonds, carat, price, colour=clarity, facets=.~clarity)
