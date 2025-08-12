?read.csv()

#Method 1 : Select the File Manually
fin <- read.csv(file.choose())
fin

#Method 2: Set WD and Read Data
getwd()
#Windows:
setwd("C:/Users/ece-lab/Documents")
fin[!complete.cases(fin),]

fin$Salary==NA

is.na(fin$Salary)
fin[is.na(fin$Salary),]

fin_backup<-fin
fin[!complete.cases(fin),]
fin[is.na(fin$Salary),]
fin[!is.na(fin$Salary),]
fin<-fin[!is.na(fin$Salary),]
fin
fin[!complete.cases(fin),]

med_age_retail <- median(fin[,"Country"],na.rm=TRUE)
med_age_retail

fin[is.na(fin$Salary) & fin$Country=="Retail",]
fin[is.na(fin$Salary) & fin$Country=="Retail","Purchased"]<-med_age_retail

fin[3,]
med_age_retail <- median(fin[,"Country"],na.rm=TRUE)
med_age_retail
fin[is.na(fin$Salary) & fin$Country=="Retail",]
fin[is.na(fin$Salary) & fin$Country=="Retail","Purchased"]<-med_age_retail

fin[5,]
fin[!complete.cases(fin),]



