setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(randomForest)


# 1. After building the decision tree model on top of the train set for the city_temperature 
# data frame and predicting values of the model1 on top of the test dataset, calculate 
# the confusion matrix. 
# a. Now based on the confusion matrix values, calculate the accuracy of the 
# model.

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

randomForest(Region~AvgTemperature, data = train_city, ntree = 10) -> model_city

predict(model_city, newdata = test_city, type = "class") -> predict_city

table(test_city$Region,predict_city)

(46601)/(46601+24228+0+22807+534)*100 ->a1

(42608)/(31289+42608+0+44323+528)*100 ->a2

(0)/(4652+493+0+15701+3)*100 ->a3

(119780)/(20062+3394+0+119780+10)*100 ->a4

(1884)/(4682+3223+0+6414+1884)*100 ->a5

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

randomForest(Churn~MonthlyCharges, data = train_customer, ntree = 100) -> model_customer

predict(model_customer, newdata = test_customer, type = "class") -> predict_customer

table(test_customer$Churn,predict_customer) ->tab2

sum(diag(tab2))/sum(tab2)

# 3. After building the decision tree model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame and predicting values of the model3 on top 
# of the test dataset, calculate the confusion matrix. 
# a. Now based on the confusion matrix values, calculate the accuracy of the 
# model. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

randomForest(DrugID~Age, data = train_pharma, ntree = 100) -> model_pharma

predict(model_pharma, newdata = test_pharma, type = "class") -> predict_pharma

table(test_pharma$DrugID,predict_pharma)

(459)/(459+1+0)*100 -> c1
(0)/(223+0+0)*100 -> c2
(0)/(51+0+0)*100 -> c3

mean(c1,c2,c3)
