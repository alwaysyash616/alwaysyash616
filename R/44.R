

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



#-------------------------------------------------------------Exploring Data
stats
nrow(stats)
#Imported 195 rows
ncol(stats)
head(stats, n=10)
tail(stats, n=8)
str(stats)      #str()  structure
#runif() - random variables distributed uniformly (r unif) like rnorm()
summary(stats)

