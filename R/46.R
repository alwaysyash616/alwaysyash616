

?read.csv()

#Method 1: Select the file Manually
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and Read Data from there
getwd()
#Windows:
setwd("C:\\Users\\YASHKUSHWAHA\\Documents\\work\\R")
#Linux:
setwd("/home/alwaysyash/Documents/work/R")
getwd()
rm(stats)
stats <- read.csv("P2-Demographic-Data.csv")
stats



#---------------------------------------------------------Exploring Data
stats
nrow(stats)
#Imported 195 rows
ncol(stats)
head(stats, n=10)
tail(stats, n=8)
str(stats)      #str()  structure
#runif() - random variables distributed uniformly (r unif) like rnorm()
summary(stats)

#----------------------------------------------------------Using the $ sign
stats
head(stats)
stats[3, 3]
stats[3, "Birth.rate"]
stats$Internet.users
stats$Internet.users[2]
stats[,"Internet.users"]
levels(stats$Income.Group)    #R did't recognised this column elements as a factor


#----------------------------------------------------Basic Operations with a DF
#subsetting
stats[1:10,]
stats[3:9,]
stats[c(4,100),]
#Remember how the [] were
stats[1,]
is.data.frame(stats[1,])
stats[,1]
is.data.frame(stats[,1])
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])
#multiply columns, mathematical operations
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users
#adding a column
head(stats)
stats$mycalc <- stats$Birth.rate * stats$Internet.users
stats
#test of knowledge
stats$xyz <- 1:4
stats$xyz <- 1:5        #recycling of vectors
head(stats, 12)
#remove a column
head(stats)
stats$mycalc <- NULL
stats$xyz <- NULL
head(stats)
