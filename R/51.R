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

#Building Data-Frames / Creating Data-Frames
mydf <- data.frame(
  Countries_2012_Dataset,
  Codes_2012_Dataset,
  Regions_2012_Dataset
)
head(mydf)
#changing names of columns OR variables
colnames(mydf) <- c("Country","Code","Region")
head(mydf)
rm(mydf)
#Another way to create data frame
mydf <- data.frame(
  Country=Countries_2012_Dataset,
  Code=Codes_2012_Dataset,
  Region=Regions_2012_Dataset
)
head(mydf)
tail(mydf)
summary(mydf)

#-----------------------------Merging Data-Frames
head(stats)
head(mydf)
merged <- merge(stats, mydf, by.x="Country.Code", by.y="Code")
head(merged)

merged$Country <- NULL
head(merged)
str(merged)
tail(merged)

library("ggplot2")
qplot(data=merged, x=Internet.users, y=Birth.rate,
      color=Region, size=I(4))