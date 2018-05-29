df =read.csv("CustomerData1.csv")

df$CustomerID = NULL
sum(is.na(df))

apply(df, 2, function(x){sum(is.na(x))})

# impute NA's
library(DMwR)
# Use KNN imputation
df_imputed = knnImputation(df,k=5,meth = "median")

sum(is.na(df_imputed))

str(df_imputed)

df_imputed$City = as.factor(df_imputed$City)

set.seed(123)
train_row_index = sample(1:(nrow(df_imputed)),0.7*(nrow(df_imputed)))
train = df_imputed[train_row_index,]
test = df_imputed[-train_row_index,]

library(rpart)
rpart_model<-rpart(Revenue~.,data=train,method="anova") 

# Plot the tree 

plot(rpart_model,main="Regression Tree for Revenue",margin=0.35,uniform=TRUE)
text(rpart_model,use.n=T )

#Predict the Revenue for train and test datasets using the model generated

#	predict the values 
predCartTrain=predict(rpart_model,newdata=train, type="vector") 
predCartTest=predict(rpart_model, newdata=test, type="vector") 


regr.eval(test[,"Revenue"], predCartTest, train.y = train[,"Revenue"])

#	excluding nmse and nmae error metrics ( onlymae,mse,rmse, mape error metrics) 
regr.eval(train[,"Revenue"], predCartTrain) 

regr.eval(test[,"Revenue"], predCartTest) 

# Check the rules obtained from the model 
rpart_model

# Classification

Rev_bin <- function(x){
  if(x<180)
    bin <- 'low'    
  else if(x>=180 && x<350)
    bin <- 'medium'    
  else
    bin <- 'high'    
  return(bin)
}

Revenue_binned = sapply(df_imputed$Revenue,Rev_bin)

train$Revenue = sapply(train$Revenue,Rev_bin)
test$Revenue = sapply(test$Revenue,Rev_bin)

train$Revenue = as.factor(train$Revenue)
test$Revenue = as.factor(test$Revenue)

str(train)

library(C50) 

C50_model=C5.0(Revenue~.,data=train,rules=T) 

# ii.	Do the predictions on train and test datasets 

# predict the values 

preds_C50_train = predict(C50_model, train, type="class") 
preds_C50_test = predict(C50_model, test, type="class")

# iii.	Generate the confusion matrix for both train and test datasets 

# Confusion matrix 

confmat_C50_train = table(train$Revenue, preds_C50_train)

confmat_C50_test  =  table(test$Revenue,  preds_C50_test)

#iv.	Compute the evaluation metric- Accuracy for train and test datasets #Accuracy computation 

accuracy_C50_train = round((sum(diag(confmat_C50_train))/sum(confmat_C50_train))* 100,2) 

accuracy_C50_test= round((sum(diag(confmat_C50_test))/sum(confmat_C50_test))*100,2) 

# v.	Importance of the attributes 

# Importance of the attributes 

C5imp(C50_model, pct=TRUE)

# e.	Rpart Model generation and understanding 

# i.	Build the model rpart on train dataset 

#	Build the classification model using rpart library(rpart) 

rpart_model2<-rpart(Revenue~.,data=train,method="class") 

# ii.	Do the predictions on train and test datasets 

#	predict the values 

preds_rpart_train=predict(rpart_model2, newdata=train, type="class") 
preds_rpart_test=predict(rpart_model2, newdata=test, type="class") 

# iii. Generate the confusion matrix for both train and test datasets

# Confusion matrix

confmat_rpart_train=table(train$Revenue,preds_rpart_train)

confmat_rpart_test=table(test$Revenue,preds_rpart_test)

# iv.	Compute the evaluation metric- Accuracy for train and test datase ts 

#	accuracy 
accuracy_rpart_train = round((sum(diag(confmat_rpart_train))/sum(confmat_C50_train))* 100,2) 

accuracy_rpart_test= round((sum(diag(confmat_rpart_test))/sum(confmat_C50_test))*100,2) 
