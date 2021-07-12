setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
placement <- read.csv("Placement.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)


library(caTools)


# 1. After splitting the data frame into train and test sets, build a simple linear model on 
# top of the train set for the city_temperature data frame.
# a. For this model, take Country, Region, City, and AvgTemperature as the 
# independent variable and Month as the dependent variable. 
# b. Check the Adjusted R squared value and F statistics.

sample.split(city,SplitRatio = 0.005) -> split_city
subset(city,split_city==T) -> train
subset(city,split_city==F) -> test
lm(Month~Country+Region+City+AvgTemperature, data = train) ->model

summary(model)


# 2. After splitting the data frame into train and test sets, build a simple linear model on 
# top of the train set for the Placement_Data_Full_Class data frame. 
# a. For this model, take degree_p, mba_p, and status as the independent variable 
# and etest_p as dependent variable. 
# b. Check the Adjusted R squared value and F statistics.

sample.split(placement,SplitRatio = 0.70) -> split_placement
subset(placement,split_placement==T) -> train_P
subset(placement,split_placement==F) -> test_P
lm(etest_p~degree_p+mba_p+status, data = train_P) ->model_p

summary(model_p)

# 3. After splitting the data frame into train and test sets, build a simple linear model on 
# top of the train set for the Pharmacovigilance_audit_Data data frame. 
# a. For this model, take Issues, DrugId, and Gender as independent variable and 
# Age as dependent variable.
# b. Check the Adjusted R squared value and F statistics.

sample.split(pharma,SplitRatio = 0.60) -> split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma
lm(Age~Issues+DrugID+Gender, data = train_pharma) -> model_pharma

summary(model_pharma)
