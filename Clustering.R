rm(list=ls(all=TRUE))

# To specify seeds
set.seed(8953)

# Taking iris data
data <- iris
head(data)

# Drop class labels (Species)
data$Species <- NULL
head(data)
dim(data)

# Running kmeans 
clus <- kmeans(data, 3)
clus

clus$cluster

table(clus$cluster)
clus$size

# Understand scale function 
x <- matrix(1:10, ncol = 2)
x
scale(x, scale = FALSE)
rm(x)

# Calculation of cluster centers
x = split(data, clus$cluster)
x
class(x)
class(x[[1]])
sapply(x, function(x) scale(x, scale = FALSE)) 
rm(x)

clus$centers

# Calculation of betweenss
clus$cluster
clus$centers
x = clus$centers[clus$cluster,]
x
scale(x, scale = FALSE)
scale(x, scale = FALSE)^2
sum(scale(x, scale = FALSE)^2)
rm(x)
clus$betweenss

# Calculation of withinss
x = split(data, clus$cluster)
sapply(x, function(x) sum(scale(x, scale = FALSE)^2)) 
rm(x)

clus$withinss

# Calculation of total withinss
sum(clus$withinss)
clus$tot.withinss

# Calculation of totalss
clus$tot.withinss +  clus$betweenss
clus$totss

# Check clustering result against class labels (Species)
table(clus$clus, iris$Species)

# Observation
#   Class "setosa" can be easily separated from the other clusters
#   Classes "versicolor" and "virginica" are to a small degree overlapped with each other.

plot(data[c("Sepal.Length", "Sepal.Width")], col = clus$cluster)

library(car)
library(rgl)
scatter3d(x=iris$Sepal.Length,y=iris$Sepal.Width,z=iris$Petal.Length,groups=as.factor(clus$cluster),grid=FALSE,surface=FALSE)
scatter3d(x=iris$Sepal.Length,y=iris$Sepal.Width,z=iris$Petal.Length,groups=as.factor(clus$cluster),grid=FALSE,surface=TRUE)

points(clus$centers[, c("Sepal.Length", "Sepal.Width")],
       col = 1:3, pch = 8, cex = 2) # plot cluster centers
rm(clus)


# Identifying right number of clusters
tot.wss <- 0
for (i in 1:15) {
  tot.wss[i] <- kmeans(data,centers=i)$tot.withinss
}

plot(1:15, tot.wss, 
     type="b", 
     xlab="Number of Clusters",
     ylab="Total within groups sum of squares") 
rm(i, tot.wss)
# Cluster may vary based on the where inition cluster center are picked 
# So, re-run the above code multiple time with different set.seed and find the right K


# K-Means Cluster Analysis

set.seed(1234)
clus <- kmeans(data, 3) # 3 cluster solution

# get cluster means

# append cluster numbers
data <- data.frame(data, "Cluster" = clus$cluster) 
head(data)

rm(data, clus)

#########################################################################################################

# Removing all the variables from the workspace
rm(list = ls(all.names = T))
# Attching the data
attach(mtcars)
MyData <- mtcars
str(MyData)
# Checking for the NA values
sum(is.na(MyData))

# Loading the required packages
library(DMwR)
library(vegan)

# Normalizing the data
MyData <- decostand(MyData,method = "range")
# Calculating the distance bases on "euclidean" distance
d <- dist(MyData,method = "euclidean")
d
# Clustering the data based on hirearichal clustering
fit <- hclust(d, method = "complete")
# Plot dendogram
plot(fit)
# Limiting the cluster to 5
groups <- cutree(fit,k=5)
groups
# Viewing the 5 cluster highlighted in red
rect.hclust(fit,k=5,border = "red")

# Clustering the data using k-means and consider 5 clusters
fit <- kmeans(MyData,centers = 5)
# Calculating the sum of withiness of the error for all the clusters
sum(fit$withinss)

# K-means:  Determine number of clusters

wss <- 0
for (i in 1:15) {
  wss[i] <- sum(kmeans(MyData,centers=i)$withinss)
}

# Plot the cluster number and withinness error
plot(1:15, wss, 
     type="b", 
     xlab="Number of Clusters",
     ylab="Within groups sum of squares") 

##################################################
# Reading the data
setwd("C:/Users/gmanish/Downloads/GreatLearning_dataMining/Clustering_kmeans_Hierarchical_Spectral_PCA_SVD_DBSCAN/")
CerealsData<- read.csv('Cereals.csv',header = T)
summary(CerealsData)

# Ignoring the dependent attribute
CerealsDt <- as.matrix(CerealsData[,-c(1)])
rownames(CerealsDt) <- CerealsData$name

# Cheking for number or NA values in data
sum(is.na(CerealsDt))
# library(DMwR)
CerealsDt <- knnImputation(CerealsDt,k = 5)
sum(is.na(CerealsDt))
# Scale the attributes
CerealsDt <- decostand(CerealsDt,method = "range")

# Calculate the euclidean distance
d <- dist(CerealsDt,method = "euclidean")
d

# Hierarchical Clustering
fit <- hclust(d, method = "complete")
# display dendogram
plot(fit)
# Cut the tree to 5 custers
groups <- cutree(fit,k=5)
groups
# draw dendogram with red borders around the 5 clusters
rect.hclust(fit,k=5,border = "red")
# Custering the data using K-means, creating 5 clusters
fit <- kmeans(CerealsDt,centers = 5)
# Getting the withiness of the error of all the clusters
sum(fit$withinss)
fit$centers
fit$cluster

# K-means:  Determine number of clusters

wss <- 0
for (i in 1:15) {
  wss[i] <- sum(kmeans(MyData,centers=i)$withinss)
}

# Plot the cluster number and withinness error
plot(1:15, wss, 
     type="b", 
     xlab="Number of Clusters",
     ylab="Within groups sum of squares") 

##################################################
	 
rm(list=ls(all=TRUE))
sample(1:10,10,replace=T)
#Import customer data
data<-read.csv("CustomerData-Aggregated.csv",header=T)
head(data)
# Checking for the NA values
sum(is.na(data))

#Drop the class label
data2<-data[,-c(1)]
head(data2)

#Clustering the customers using 'k-means' algorithm
wss <- 0
for (i in 1:15) {
  set.seed(12345)
  wss[i] <- sum(kmeans(data2,centers=i)$withinss)
}
plot(1:15, wss, type="b", xlab="Number of Clusters",
     ylab="Within groups sum of squares")

set.seed(12345)
clus<-kmeans(data2,5, iter.max = 100)
table(clus$cluster)
clus$centers
clus
