

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



#----------------------------------------------------------------

