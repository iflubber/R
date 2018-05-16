data<-read.csv("Regression.csv")
attach(data)
model<-lm(Weight~Height)
plot(Height,Weight,main="Best fit line",col="Green")
abline(model,col="Blue")
summary(model)

## Residuals vs Fit
res<-residuals(model)
fit<-fitted(model)
plot(res,fit)
plot(fit,res,main="Residuals vs Fit")
abline(h=0,col="Green")

## Regassumptions 1
data<-read.csv("Regassumptions 1.csv")
data
attach(data)
model=lm(groove~mileage)
plot(mileage,groove,main="Best fit line",col="Green")
abline(model,col="Red")

res=residuals(model)
fit=fitted(model)
plot(fit,res,main="Residual vs. Fit") ## residuals are following a pattern
abline(h=0,col="Green")
summary(model)$r.square ## though R-square value is high

print("No linear relationship; hence this linear model has no meaning")

## Regassumptions 2
data<-read.csv("Regassumptions 2.csv")
data
attach(data)
model=lm(alpha~pluto)
plot(pluto,alpha,main="Best fit line",col="Green")
abline(model,col="Red") ## variance is not homogeneous

res=residuals(model)
fit=fitted(model)
plot(fit,res,main="Residual vs. Fit") ## residuals 'fan out' & no homogeneity of variance
abline(h=0,col="Green")
summary(model)$r.square

print("No linear relationship; hence this linear model has no meaning")

## Regasumptions 3
data<-read.csv("Regassumptions 3.csv")
data
attach(data)
model=lm(Alcohol~Tobacco)
plot(Tobacco,Alcohol,main="Best fit line",col="Green")
abline(model,col="Red") ## has outliers

res=residuals(model)
fit=fitted(model)
plot(fit,res,main="Residual vs. Fit")
abline(h=0,col="Green")
summary(model)$r.square ## low R square value because of outliers

print("No linear relationship")

## Regasumptions 4
data<-read.csv("Regassumptions 4.csv")
data
attach(data)
model=lm(Alcohol~Tobacco)
plot(Tobacco,Alcohol,main="Best fit line",col="Green")
abline(model,col="Red") ## The outlier removed

res=residuals(model)
fit=fitted(model)
plot(fit,res,main="Residual vs. Fit") 
abline(h=0,col="Green")
summary(model)$r.square ## R square value is now high after removing outliers

print("Linear relationship: moderate")

## Data Transformation: Non-linear problem hence transform x to log(x)
data<-read.csv("Datatransformation1.csv")
data
attach(data)
model=lm(prop~time)
plot(time,prop,main="Best fit line",col="Green")
abline(model,col="Red") ## no linear relationship

res=residuals(model)
fit=fitted(model)
plot(fit,res,main="Residual vs. Fit") 
abline(h=0,col="Green")
print("non linear;can't check homogeneity of error variances")

##checking for normality of error terms
qqnorm(res)
qqline(res,col="Red")

shapiro.test(res) ##H0=residuals are normally distributed
##p-value > alpha; accept H0
##p-value < alpha; reject H0
print("Accept H0: residuals are normally distributed")

model=lm(prop~log(time))
plot(log(time),prop,main="Best fit line",col="Green")
abline(model,col="Red") ## linear relationship

print("We get linear relatioship")

## Data Transformation: Variance non-homogeneous - log(y)
data<-read.csv("Datatransformation2.csv")
data


## Data Transformation
data<-read.csv("Datatransformation3.csv")
data
