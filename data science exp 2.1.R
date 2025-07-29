# Conditional Statements 
rm(answer)
n<-rnorm(1)
if(n>1){
  print(n)
  answer<-"The Random Number is greater that 1"
  print("The Random Number is greater that 1")
}else if (n>=-1){
  print(n)
  answer<-"The Random number is between -1 & 1"
  print("The Random number is between -1 & 1")
}else{
  print(n)
  answer<-"The Random number is less than 1"
  print("The Random number is less than 1")
}