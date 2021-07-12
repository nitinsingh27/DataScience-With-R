setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)



# 1. After splitting the data frame into train and test sets, build a multiple logistic model 
# on top of the train set for the city_temperature data frame. 
# a. For this model, take AvgTemperature, Day, Month, and Year as the 
# independent variable and Region as the dependent variable. 

sample.split(customer,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train
subset(city,split_city==F) -> test

model1 <- glm(Region~AvgTemperature+Day+Month+Year, data = train, family = "binomial")


# 2. After splitting the data frame into train and test sets, build a multiple logistic model 
# on top of the train set for the Customer_Churn data frame. 
# a. For this model, take tenure, Streaming TV, Monthly Charges, and Total Charges 
# as the independent variable and Churn as dependent variable. 

sample.split(customer,SplitRatio = 0.80) -> split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

model2 <- glm(Churn~MonthlyCharges+TotalCharges+tenure+StreamingTV, data = train_customer, family = "binomial")



# 3. After splitting the data frame into train and test sets, build a multiple logistic model 
# on top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Gender, Age, and Patient_Id as independent variable and 
# DrugId as dependent variable. 

sample.split(pharma,SplitRatio = 0.75) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma

model3 <- glm(DrugID~Age+Gender+PatientID, data = train_pharma, family = "binomial")
