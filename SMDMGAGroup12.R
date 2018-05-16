## Problem 1
data<-read.csv("K2_Cold_Storage_Temp_Data.csv")
## Find mean cold storage temperature for Winter season
meanWinterTemp<-mean(subset(data,Season=='Winter')$Temperature)
meanWinterTemp
## Find mean cold storage temperature for Summer season
meanSummerTemp<-mean(subset(data,Season=='Summer')$Temperature)
meanSummerTemp
## Find mean cold storage temperature for Rainy season
meanRainyTemp<-mean(subset(data,Season=='Rainy')$Temperature)
meanRainyTemp
## Find overall mean temperature for the full year
meanOverallTemp<-mean(data$Temperature)
meanOverallTemp
## 5-point summary
summary(data$Temperature)
## Find Standard Deviation for the full year
stdDev<-sd(data$Temperature)
stdDev
## The Normal Distribution - density plot
y<-dnorm(data$Temperature,meanOverallTemp,stdDev)
plot(data$Temperature,y)
## The Normal Distribution - distribution plot
y<-pnorm(data$Temperature,meanOverallTemp,stdDev)
plot(data$Temperature,y)
## What is the probability of temperature having fallen below 2 degrees
p_below2<-pnorm(2,meanOverallTemp,stdDev)
p_below2
## What is the probability of temperature having gone above 4 degrees
p_above4<-pnorm(4,meanOverallTemp,stdDev,lower.tail = F)
p_above4
## What will be the penalty for the AMC Company - for temperature outside 2-4 degrees?
p_below2+p_above4
## Penalty = 10%

## Problem 2
data<-read.csv("K2_Cold_Storage_Mar2018.csv")

# State the Hypothesis, do the calculation using t test and give your inference
# Right tail test
# H0: mu <= mu0
# H1: mu > mu0
t.test.right <- function(data, mu0, alpha)
{
  print(paste0("H0: mu <= ",mu0))
  print(paste0("H1: mu > ",mu0))
  t.stat <- (mean(data) - mu0) / (sqrt(var(data) / length(data)))
  dof <- length(data) - 1
  t.critical <- qt(1-alpha, df= dof) 
  p.value <- 1 - pt(t.stat, df= dof)
  
  if(t.stat >= t.critical)
  {
    print("Reject H0: Corrective actions needed")
  }
  else
  {
    print("Accept H0: No corrective actions needed")
  }
  print(paste0('T statistic: ',t.stat))
  print(paste0('T critical value: ',t.critical))
  print(paste0('P value: ',p.value))
  print("#####################")
  
  return(t.stat)
}

t.test.right(data$Temperature, 3.9, 0.1)