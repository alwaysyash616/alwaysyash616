#load our data.sets
getwd()
data <- read.csv("P2-Section5-Homework-Data.csv")
data

#splitting our data.frames
data1960 <- data[data$Year==1960,]
data2013 <- data[data$Year==2013,]
data1960$Year <-NULL
data2013$Year <-NULL

#Life Expectancy data frames for 1960 and 2013
add1960 <- data.frame(
  Code=Country_Code,
  Life.Exp=Life_Expectancy_At_Birth_1960
)
add2013 <- data.frame(
  Code=Country_Code,
  Life.Exp=Life_Expectancy_At_Birth_2013
)

#merging
merged1960 <- merge(data1960, add1960, by.x="Country.Code", by.y = "Code")
merged2013 <- merge(data2013, add2013, by.x="Country.Code", by.y = "Code")

#Visualization
library(ggplot2)
qplot(data = merged1960, x=Fertility.Rate, y=Life.Exp,
      color=Region, size=I(4), alpha=I(0.6))
qplot(data = merged2013, x=Fertility.Rate, y=Life.Exp,
      color=Region, size=I(4), alpha=I(0.6))