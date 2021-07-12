setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(tree)


# 1. After building the decision tree model on top of the train set for the city_temperature 
# data frame and predicting values of the model1 on top of the test dataset, calculate 
# the confusion matrix. 
# a. Now based on the confusion matrix values, calculate the accuracy of the 
# model. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

tree(Region~AvgTemperature, data = train_city) -> model_city

predict(model_city, newdata = test_city, type = "class") -> predict_city

table(test_city$Region, predict_city)

(37138)/(37138+25270+0+31762+0)*100 ->a1

(41945)/(24197+41945+0+52606+0)*100 ->a2

(0)/(2565+506+0+17777+0)*100 ->a3

(127983)/(12787+2477+0+127983+0)*100 ->a4

(0)/(3352+5186+0+7665+0)*100 ->a5

mean(a1,a2,a3,a4,a5) ->acc1

acc1



# 2. After building the decision tree model on top of the train set for the Customer_Churn 
# data frame and predicting values of the model2 on top of the test dataset, calculate 
# the confusion matrix. 
# a. Now based on the confusion matrix values, calculate the accuracy of the 
# model. 

sample.split(customer,SplitRatio = 0.80) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

tree(Churn~MonthlyCharges, data = train_customer) -> model_customer

predict(model_customer, newdata = test_customer, type = "class") -> predict_customer

table(test_customer$Churn, predict_customer) -> tab2

sum(diag(tab2))/sum(tab2)


# 3. After building the decision tree model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame and predicting values of the model3 on top 
# of the test dataset, calculate the confusion matrix. 
# a. Now based on the confusion matrix values, calculate the accuracy of the 
# model. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

tree(DrugID~Age, data = train_pharma) -> model_pharma

predict(model_pharma, newdata = test_pharma, type = "class") -> predict_pharma

table(test_pharma$DrugID, predict_pharma) -> tab3

(459)/(459+0+0)*100 -> c1
(0)/(229+0+0)*100 -> c2
(0)/(46+0+0)*100 -> c3

mean(c1,c2,c3)


