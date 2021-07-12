setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
placement <- read.csv("Placement.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

library(caTools)


# 1. After building the multi linear model on top of the train set for the city_temperature 
# data frame, and finding the prediction values of the multimodel1 on top of the test 
# dataset. 
# a. Now combine the error that you have calculated while predicting the values to 
# the Result1 data frame. 
# b. With the help of the error, find the RMSE value of that model. 

sample.split(city,SplitRatio = 0.005) -> split_city
subset(city,split_city==T) -> train
subset(city,split_city==F) -> test
lm(Month~Country+Region+City+AvgTemperature, data = train) ->model
summary(model)

predict(model,newdata = test) -> city_predicted
cbind(Actual = test$Month, Predicted = city_predicted) -> MultiResult1
data.frame(MultiResult1) -> MultiResult1

MultiResult1$Actual - MultiResult1$Predicted -> MultiResult1$Error
View(MultiResult1)

sqrt(mean((MultiResult1$Error)^2)) -> rmse1
rmse1


# 2. After building the multi linear model on top of the train set for the 
# Placement_Data_Full_Class data frame, and finding the prediction values of the 
# multimodel2 on top of the test dataset. 
# a. Now combine the error that you have calculated while predicting the values to 
# the Result2 data frame. 
# b. With the help of the error, find the RMSE value of that model. 

sample.split(placement,SplitRatio = 0.70) -> split_placement
subset(placement,split_placement==T) -> train_P
subset(placement,split_placement==F) -> test_P
lm(etest_p~degree_p+mba_p+status, data = train_P) ->model_p
summary(model_p)

predict(model_p,newdata = test_P) -> placement_predicted
data.frame(Actual = test_P$etest_p, Predicted = placement_predicted) -> MultiResult2

MultiResult2$Actual - MultiResult2$Predicted -> MultiResult2$Error
View(MultiResult2)

sqrt(mean((MultiResult2$Error)^2)) -> rmse2
rmse2


# 3. After building the multi linear model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
# multimodel3 on top of the test dataset. 
# a. Now combine the error that you have calculated while predicting the values to 
# the Result3 data frame. 
# b. With the help of the error, find the RMSE value of that model.

sample.split(pharma,SplitRatio = 0.60) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma
lm(Age~Issues+DrugID+Gender, data = train_pharma) -> model_pharma

summary(model_pharma)

predict(model_pharma, newdata = test_pharma) -> pharma_predicted

data.frame(Actual = test_pharma$Age, Predicted = pharma_predicted) -> MultiResult3

MultiResult3$Actual - MultiResult3$Predicted -> MultiResult3$Error
View(MultiResult3)

sqrt(mean((MultiResult3$Error)^2)) -> rmse3
rmse3
