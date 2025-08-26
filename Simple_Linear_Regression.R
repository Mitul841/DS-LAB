setwd("C:\\Users\\ece-lab\\Desktop\\E0223005_R_Studio")
getwd()

n<-read.csv("Salary_Data.csv")

install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(n$Salary, SplitRatio = 2/3)
n
training_set = subset(n,split == TRUE)
test_set = subset(n,split == FALSE)

regressor = lm(formula = Salary~YearsExperience,data = training_set)

y_pred = predict(regressor,newdata = test_set)
y_pred

install.packages('ggplot2')
library(ggplot2)
ggplot() + 
  geom_point(aes(x = test_set$YearsExperience,y=test_set$Salary),
             color = 'red') + 
  geom_line(aes(x = training_set$YearsExperience,y = predict(regressor,newdata = training_set)),
            color = 'blue') + 
  ggtitle('Salary vs Experience (Training-set)')+
  xlab('Years Of Experience') + 
  ylab('Salary')
