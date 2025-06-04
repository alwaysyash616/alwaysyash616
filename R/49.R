stats <- read.csv(file.choose())
# Introduction to qplot
?qplot
#install.packages("ggplot2")
library("ggplot2")
?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3))
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), 
      color=I("blue"))
# both American and British English
# color() OR colour() works in R
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")

#-----------------Visualizing what we need
qplot(data=stats, x=Internet.users, y=Birth.rate)
qplot(data=stats, x=Internet.users, y=Birth.rate,
      size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate,
      colour=I("red"), size=I(4))
qplot(data=stats, x=Internet.users, y=Birth.rate,
      colour=Income.Group, size=I(5))
