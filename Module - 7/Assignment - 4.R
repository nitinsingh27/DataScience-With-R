setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

#install.packages("tree")
#install.packages("rpart","rpart.plot")
library(rpart)
library(rpart.plot)
library(caTools)
library(tree)



# 1. After splitting the data frame into train and test sets, build a decision tree model on 
# top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature as the independent variable and Region as the dependent variable. 

sample.split(city,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train_city
subset(city,split_city==F) -> test_city

tree(Region~AvgTemperature, data = train_city) -> model_city
plot(model_city)
text(model_city)


# 2. After splitting the data frame into train and test sets, build a decision tree model on 
# top of the train set for the Customer_Churn data frame. 
# a. For this model, take Monthly Charges as the independent variable and Churn 
# as dependent variable. 

sample.split(customer,SplitRatio = 0.80) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

tree(Churn~MonthlyCharges, data = train_customer) -> model_customer

plot(model_customer)
text(model_customer)


# 3. After splitting the data frame into train and test sets, build a decision tree model on 
# top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Age as independent variable and DrugId as dependent 
# variable. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

rpart(DrugID~Age, data = train_pharma) -> model_pharma
rpart.plot(model_pharma, box.palette = 'red')

