?read.csv()

#Method 1 : Select the File Manually
stats <- read.csv(file.choose())
stats

#Method 2: Set WD and Read Data
getwd()
#Windows:
setwd("C://Users//ece-lab//Documents")


#-------------------------------- Exploring Data
stats
nrow(stats)
ncol(stats)
head(stats, n=10)
tail(stats, n=8)
str(stats) 
summary(stats)

#--------------------------- Using the $ sign
stats
head(stats)
stats[3,3]
stats[3, "Profit"]
stats$R.D.Spend
stats$R.D.Spend[2]
stats[,"R.D.Spend"]
levels(stats$profit)

