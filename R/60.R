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

#add geometry
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
#>>>> This is #1 (we will improve it)

#---------------------Plotting with Layers

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre, size=BudgetMillions))
#point
p + geom_point()

#line
p + geom_line()

#multiple layers
p + geom_line() + geom_point()
