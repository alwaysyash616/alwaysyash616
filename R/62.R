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

#----------------------overriding Asthetics

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             color=Genre, size=BudgetMillions))

#add geom layer
q + geom_point()

#overriding aes
#ex1
q + geom_point(aes(size=CriticRating))

#ex2
q + geom_point(aes(color=BudgetMillions))

#q remains the same
q + geom_point()

#ex3
q + geom_point(aes(x=BudgetMillions)) +
  xlab("BudgetMillions $$$")

#ex4
q + geom_line() + geom_point()
#reduce line size
q + geom_line(size=1) + geom_point()

#----------------------Mapping vs Setting
r <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))
r + geom_point()

#Add Color
#1. Mapping (what we have done so far)
r + geom_point(aes(color=Genre))

#2. Setting:
r + geom_point(color="DarkGreen")
#ERROR
If we will try to set color using this, this will be an error.


#1. Mapping
r + geom_point(aes(size=BudgetMillions))
#2. Setting
r + geom_point(size=10)
#ERROR:
r + geom_point(aes(size=10))
#R is looking for a category at size value

