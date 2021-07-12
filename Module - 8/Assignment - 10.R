setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(randomForest)


# 1. After splitting the data frame into train and test sets, build a random model on top of 
# the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature, Day, Month, and Year as the 
# independent variable and Region as the dependent variable. 
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
# model. 
# c. Now plot the MeanDecreaseGini with the help of varImpPlot().

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

randomForest(Region~AvgTemperature+Day+Month+Year, data = train_city, ntree = 10) -> model_city
importance(model_city)

varImpPlot(model_city, col = "blue")


# 2. After splitting the data frame into train and test sets, build a random model on top of 
# the train set for the Customer_Churn data frame. 
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
# as the independent variable and Churn as dependent variable. 
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
# model. 
# c. Now plot the MeanDecreaseGini with the help of varImpPlot().

sample.split(customer,SplitRatio = 0.80) ->split_ustomer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

randomForest(Churn~MonthlyCharges+tenure+StreamingTV+TotalCharges, data = train_customer, ntree = 10, na.action = na.exclude) -> model_customer
importance(model_customer)

varImpPlot(model_customer, col = "red")


# 3. After splitting the data frame into train and test sets, build a random model on top of 
# the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Gender, Age, and Patient_Id as independent variable and 
# DrugId as dependent variable. 
# b. With the help of the importance(), calculate the MeanDecreaseGini of the 
# model. 
# c. Now plot the MeanDecreaseGini with the help of varImpPlot().

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

randomForest(DrugID~Age+Gender+PatientID, data = train_pharma, ntree = 100) -> model_pharma
importance(model_pharma)

varImpPlot(model_pharma, col = "palegreen4")

