## One way ANOVA
mydata=read.csv("insured.csv")
attach(mydata)
mydata
model<-lm(Insurance~Group)
?lm
?anova
anova(model)
## Checking for assumptions
boxplot(Insurance~Group,xlab="Company",ylab="Insurance")
qqnorm(Insurance)
qqline(Insurance,col="Green")

## Two way ANOVA
mydata=read.csv("ANOVA.csv")
attach(mydata)
model1<-lm(Dirt~Detergent)
anova(model1)
model2<-lm(Dirt~Temperature)
anova(model2)
model3<-lm(Dirt~Detergent+Temperature)
anova(model3)
model4<-lm(Dirt~Detergent+Temperature+Detergent*Temperature)
anova(model4)
## p<0.05 - reject null hypothesis
interaction.plot(Temperature,Detergent,Dirt,main="Interaction between Detergent and Temperature",col=c("Orange","Blue"))

## One way ANOVA
mydata=read.csv("SampleAnova.csv")
attach(mydata)
mydata
model1<-lm(buying_behavior~discount.)
anova(model1)
## p>0.05 - failed to reject null hypothesis
boxplot(buying_behavior~discount.,xlab="discount %",ylab="chance of buying")
qqnorm(buying_behavior)
qqline(buying_behavior,col="Green")
