fin <- read.csv(file.choose())
fin


fin$Country = factor(fin$country,
                     levels = c ('France', 'Spain', 'Germany'),
                     labels = c (1,2,3))
                                           
fin$Purchased = factor(fin$Purchased,
                       levels = c ('No', 'Yes'),
                       labels =  c (0,1))


fin

install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(fin$Purchased, SplitRatio = 0.8)
fin
training_set = subset(fin,split == TRUE)
training_set = subset(fin,split == FALSE)