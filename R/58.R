getwd()
setwd("/home/alwaysyash/Documents/work/R")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)
summary(movies)

#Aesthetics
library(ggplot2)

ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))

#add geometery
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) +
  geom_point()

#add color
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
  colour=Genre)) +
  geom_point()
#asthetics are things that we can see
#add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
  colour=Genre, size=BudgetMillions)) +
  geom_point()

