data = read.csv("fl.csv",1)
attach(data)
data

# compute the eigen vector and eigen value
ev <- eigen(data)
ev

eigenvalues = ev$values
eigenvalues
eigenvector = ev$vectors
eigenvector

# factor loading = sqrt(eigenvalues) * eigen vector
factor_loading = sqrt(eigenvalues) * eigenvector
factor_loading

# communality is the sum of the squares of the factor loadings
square_fl = factor_loading*factor_loading
square_fl
C1 = square_fl[1,1]+square_fl[1,2]+square_fl[1,3]
C2 = square_fl[2,1]+square_fl[2,2]+square_fl[2,3]
C3 = square_fl[3,1]+square_fl[3,2]+square_fl[3,3]
Communality = cbind(C1,C2,C3)
Communality

# ================================================================
rm(list=ls(all=TRUE))
data = read.csv("Survey.csv",1)
attach(data)

library(psych)
# Bartlett test
test = cortest.bartlett(data,n=329,diag=TRUE)
test
if(test$p.value < 0.05)
{
  print("variables are correlated")
}else
{
  print("variables are not correlated")
}

# KMO test
kmotest = KMO(data)
kmotest
if(kmotest$MSA >=0.5)
{
  print("Sampling is adequate")
} else {
  print("Sampling is not adequate")
}

#===========================================================
rm(list=ls(all=TRUE))

library(factoextra)
library(psych)

data = read.csv("risk.csv",1)
attach(data)
new_data = data[,-1]
new_data

# KMO test - check if factor analysis can be performed
kmotest = KMO(new_data)
kmotest
if(kmotest$MSA >=0.5)
{
  print("Sampling is adequate")
} else {
  print("Sampling is not adequate")
}

# extract the principal components
pca = princomp(new_data,cor = TRUE,scores = FALSE)
summary(pca)

# scree plot
fviz_eig(pca)

# factor analysis with 6 factors
fa6 = factanal(new_data,factors = 6,rotation = "varimax")
fa6
# 6 factors not meeting the FA criteria

# factor analysis with 3 factors without rotation
fa3 = factanal(new_data,factors = 3)
fa3
# p-value is too low and hence the 3 factors are not explaining the data

fa4 = factanal(new_data,factors = 4)
fa4

# factor analysis with 4 factors with rotation
fa4 = factanal(new_data,factors = 4,rotation = "varimax")
fa4

fa5 = factanal(new_data,factors = 5)
fa5
# 5 factors not meeting the FA criteria