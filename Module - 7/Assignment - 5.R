setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(tree)



# 1. After building the decision tree model on top of the train set for the city_temperature data frame, now find 
# the prediction values of the model1 on top of the test dataset. 
# a. Plot the model with the help of plot(). 
# b. Print the top 10 data from the predicted values. 
# c. Now based on the actual and the predicted values, calculate the confusion matrix for the model. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

tree(Region~AvgTemperature, data = train_city) -> model_city
plot(model_city)
text(model_city)
predict(model_city, newdata = test_city, type = "class") -> predict_city
head(predict_city,10)

table(test_city$Region, predict_city)



# 2. After building the decision tree model on top of the train set for the Customer_Churn data frame, now find 
# the prediction values of the model1 on top of the test dataset. 
# a. Plot the model with the help of plot(). 
# b. Print the top 10 data from the predicted values. 
# c. Now based on the actual and the predicted values, calculate the confusion matrix for the model. 

sample.split(customer,SplitRatio = 0.80) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

tree(Churn~MonthlyCharges, data = train_customer) -> model_customer
plot(model_customer)
text(model_customer)
predict(model_customer, newdata = test_customer, type = "class") -> predict_customer
head(predict_customer,10)

table(test_customer$Churn, predict_customer)


# 3. After building the decision tree model on top of the train set for the Pharmacovigilance_audit_Data data 
# frame, now find the prediction values of the model1 on top of the test dataset. 
# a. Plot the model with the help of plot(). 
# b. Print the top 10 data from the predicted values. 
# c. Now based on the actual and the predicted values, calculate the confusion matrix for the model. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

tree(DrugID~Age, data = train_pharma) -> model_pharma
plot(model_pharma)
text(model_pharma)
predict(model_pharma, newdata = test_pharma, type = "class") -> predict_pharma
head(predict_pharma,10)

table(test_pharma$DrugID, predict_pharma)
