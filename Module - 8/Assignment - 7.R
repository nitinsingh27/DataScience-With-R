setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(randomForest)



# 1. After splitting the data frame into train and test sets, build a random forest model on 
# top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature as the independent variable and Region 
# as the dependent variable. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

randomForest(Region~AvgTemperature, data = train_city, ntree = 100) -> model_city



# 2. After splitting the data frame into train and test sets, build a random forest model on 
# top of the train set for the Customer_Churn data frame. 
# a. For this model, take Monthly Charges as the independent variable and Churn 
# as dependent variable. 

sample.split(customer,SplitRatio = 0.80) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

randomForest(Churn~MonthlyCharges, data = train_customer, ntree = 100) -> model_customer


# 3. After splitting the data frame into train and test sets, build a random forest model on 
# top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Age as independent variable and DrugId as dependent 
# variable. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

randomForest(DrugID~Age, data = train_pharma, ntree = 100) -> model_pharma
