setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(ModelMetrics)



# Tasks to be performed for Simple Logistic Regression:

#   1. After building a simple logistic model on top of the train set for the city_temperature 
# data frame, now find the prediction values of the model1 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
# that combined data in a new data frame named 'Result1'.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model.

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

glm(Region~AvgTemperature, data = train_city, family = "binomial") -> model_city
summary(model_city)

predict(model_city,type = "response", newdata = test_city) -> city_predicted

data.frame(Actual = test_city$Region, Predicted = city_predicted) -> result_city

range(city_predicted)

table(test_city$Region, city_predicted > 0.75) -> tab
city_accuracy = sum(diag(tab))/sum(tab)
city_accuracy


# 2. After building a simple logistic model on top of the train set for the Customer_Churn 
# data frame, now find the prediction values of the model2 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
# that combined data in a new data frame named 'Result2'.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model. 

sample.split(customer,SplitRatio = 0.80) -> split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

model2 <- glm(Churn~MonthlyCharges, data = train_customer, family = "binomial")
summary(model2)

predict(model2, newdata = test_customer, type = "response") -> customer_predicted

data.frame(Actual = test_customer$Churn, Predicted = customer_predicted) -> result2

range(customer_predicted)

table(test_customer$Churn, customer_predicted > 0.35) -> tab1
customer_accuracy = sum(diag(tab1))/sum(tab1)

customer_accuracy



# 3. After building a simple logistic model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
# model3 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
# that combined data in a new data frame named 'Result3'.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model.

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

model3 <- glm(DrugID~Age, data = train_pharma, family = "binomial")

predict(model3, newdata = test_pharma, type = "response") -> pharma_predicted

data.frame(Actual = test_pharma$DrugID, Predicted = pharma_predicted) -> result3

range(pharma_predicted)

table(test_pharma$DrugID, pharma_predicted > 0.30) -> tab2
pharma_accuracy = sum(diag(tab2))/sum(tab2)
pharma_accuracy



 
# Tasks to be performed for Multiple Logistic Regression:

#   1. After building a multiple logistic model on top of the train set for the 
# city_temperature data frame, now find the prediction values of the model1 on top of 
# the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
# that combined data in a new data frame named 'MultiResult1'.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

glm(Region~AvgTemperature+Day+Month+Year, data = train, family = "binomial") -> multi_model_city
summary(multi_model_city)

predict(multi_model_city,type = "response", newdata = test_city) -> multi_city_predicted

data.frame(Actual = test_city$Region, Predicted = multi_city_predicted) -> multi_result_city

range(multi_city_predicted)

table(test_city$Region, multi_city_predicted > 0.75) -> tab
multi_city_accuracy = sum(diag(tab))/sum(tab)
multi_city_accuracy




# 2. After building a multiple logistic model on top of the train set for the Customer_Churn 
# data frame, now find the prediction values of the model2 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
# that combined data in a new data frame named 'MultiResult2'.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model. 

sample.split(customer,SplitRatio = 0.80) -> split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

multi_model2 <- glm(Churn~MonthlyCharges+TotalCharges+tenure+StreamingTV, data = train_customer, family = "binomial")
summary(multi_model2)

predict(multi_model2, newdata = test_customer, type = "response") -> multi_customer_predicted

data.frame(Actual = test_customer$Churn, Predicted = multi_customer_predicted) -> multi_result2

range(multi_customer_predicted)

table(test_customer$Churn, multi_customer_predicted > 0.35) -> tab1
multi_customer_accuracy = sum(diag(tab1))/sum(tab1)

multi_customer_accuracy




# 3. After building a multiple logistic model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now find the prediction values of the 
# model3 on top of the test dataset. 
# a. Now combine the actual values and predicted values of the model and store 
# that combined data in a new data frame named 'MultiResult3'.
# b. Find out the errors in the predicted values. 
# c. Now calculate the confusion matrix from the actual and the predicted values. 
# d. From the confusion matrix, calculate the accuracy of the model.

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

multi_model3 <- glm(DrugID~Age+Gender+PatientID, data = train_pharma, family = "binomial")

predict(multi_model3, newdata = test_pharma, type = "response") -> multi_pharma_predicted

data.frame(Actual = test_pharma$DrugID, Predicted = multi_pharma_predicted) -> multi_result3

range(multi_pharma_predicted)

table(test_pharma$DrugID, multi_pharma_predicted > 0.30) -> tab2
multi_pharma_accuracy = sum(diag(tab2))/sum(tab2)
multi_pharma_accuracy
