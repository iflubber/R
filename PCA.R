rm(list=ls(all=TRUE))

data<-read.csv("Survey.csv")
attach(data)
head(data)

library(factoextra)

# Remove the Observations column
new_data<-data[,-1]
head(new_data)

# extract the principal components 
# with correlation = true to use correlation matrix instead of covariance matrix 
# to nullify the units
?princomp
pca = princomp(new_data,cor = TRUE,scores = TRUE)
summary(pca)

# scree plot
fviz_eig(pca)

# loadings for the principal components
load <- loadings(pca)
load

# obtaining pca scores
pca$scores

# plotting
par(mfrow=c(1,2))

# plot of first graph
plot(pca$scores[,1],pca$scores[,2],col=c("Blue","Red"),main="Principal Component Analysis")
abline(v=0,col="green")
abline(h=0,col="green")

# plot of second graph
plot(pca$scores[,2],pca$scores[,5],col=c("Blue","Red"),main="Principal Component Analysis")
abline(v=0,col="green")
abline(h=0,col="green")
