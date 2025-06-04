#load data
getwd()
setwd("/home/alwaysyash/Documents/work/R")
getwd()

data <- read.csv("P2-Section5-Homework-Data.csv")
data
head(data)
tail(data)
str(data)
summary(data)

#insight into the next section:
data$Year
temp <- factor(data$Year)
temp
levels(temp)

#filter the data frame
data$Year==1960
data1960 <- data[data$Year==1960,]
data1960
data2013 <- data[data$Year==2013,]
data2013

#check for number of rows
nrow(data1960)      #187 rows
nrow(data2013)      #187 rows. Equal Split

#create the additional dataframes
add1960 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_1960)

add2013 <- data.frame(Code=Country_Code, Life.Exp=Life_Expectancy_At_Birth_2013)

#check summaries
summary(add1960)
head(add1960)
summary(add2013)

#merge the pairs of dataframes
head(data1960)
head(add1960)
merged1960 <- merge(data1960, add1960, by.x="Country.Code", by.y="Code")
merged2013 <- merge(data2013, add2013, by.x="Country.Code", by.y="Code")

#Check the new structures
str(merged1960)
str(merged2013)
merged1960$Year <- NULL
merged2013$Year <- NULL

#Visualization time
library(ggplot2)

#Visualize the merged1960 dataset
head(merged1960)
qplot(data=merged1960, x=Fertility.Rate,
      y=Life.Exp, colour=Region,
      size=I(5), alpha=I(0.6),
      main="Life Expectency vs Fertility")
qplot(data=merged2013, x=Fertility.Rate,
      y=Life.Exp, colour=Region,
      size=I(5), alpha=I(0.6),
      main="Life Expectency vs Fertility")
