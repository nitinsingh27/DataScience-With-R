setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(randomForest)


# Tasks to be performed for Random Forest (Using only one Independent Variable): 
#   1. After building a random forest model on top of the train set for the city_temperature 
# data frame, now find the prediction values of the model1 on top of the test dataset. 
# a. Print the top 10 predictions of the model. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

randomForest(Region~AvgTemperature, data = train_city, ntree = 10) -> model_city

predict(model_city, newdata = test_city, type = "class") -> predict_city
head(predict_city,10)


# 2. After building a random forest model on top of the train set for the Customer_Churn 
# data frame, now find the prediction values of the model2 on top of the test dataset. 
# a. Print the top 10 predictions of the model. 

sample.split(customer,SplitRatio = 0.80) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

randomForest(Churn~MonthlyCharges, data = train_customer, ntree = 100) -> model_customer

predict(model_customer, newdata = test_customer, type = "class") -> predict_customer
head(predict_customer,10)



# 3. After building a random forest model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
# model3 on top of the test dataset. 
# a. Now print the top 10 predictions of the model. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

randomForest(DrugID~Age, data = train_pharma, ntree = 100) -> model_pharma

predict(model_pharma, newdata = test_pharma, type = "class") -> predict_pharma
head(predict_pharma,10)




# Tasks to be performed for Random Forest (Using Multiple Independent Variables):
#   1. After building a random forest model on top of the train set for the city_temperature 
# data frame, now find the prediction values of the model1 on top of the test dataset. 
# a. Now print the top 10 predictions of the model. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

randomForest(Region~AvgTemperature+Day+Month+Year, data = train_city, ntree = 10) -> model_city1

predict(model_city1, newdata = test_city, type = "class") -> predict_city1
head(predict_city1,10)



# 2. After building a random forest model on top of the train set for the Customer_Churn 
# data frame, now find the prediction values of the model2 on top of the test dataset. 
# a. Now print the top 10 predictions of the model. 

sample.split(customer,SplitRatio = 0.80) ->split_ustomer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

randomForest(Churn~MonthlyCharges+tenure+StreamingTV+TotalCharges, data = train_customer, ntree = 10, na.action = na.exclude) -> model_customer1

predict(model_customer1, newdata = test_customer, type = "class") -> predict_customer1
head(predict_customer1,10)




# 3. After building a random forest model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
# model3 on top of the test dataset. 
# a. Now print the top 10 predictions of the model.

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

randomForest(DrugID~Age+Gender+PatientID, data = train_pharma, ntree = 100) -> model_pharma1

predict(model_pharma1, newdata = test_pharma, type = "class") -> predict_pharma1
head(predict_pharma1,10)