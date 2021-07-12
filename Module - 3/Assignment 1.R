setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

#install.packages("ggplot2")
library(ggplot2)


# 1. Create the following bar-plot where: 
# a. PhoneService column is assigned to the x aesthetic. 
# b. Gender column is assigned to the x aesthetic. 
# c. InternetService is assigned to x aesthetic and MonthlyCharges to aesthetic. 
# d. MonthlyCharges is assigned to x aesthetic and SeniorCitizen to aesthetic. 
# e. TotalCharges is assigned to x aesthetic and Tenure to aesthetic. 
# f. StreamingTV is assigned to x aesthetic and SeniorCitizen to aesthetic. 
# g. Dependents is assigned to x aesthetic and Partner to aesthetic. 




ggplot(data = customer,aes(x=PhoneService)) + geom_bar()

ggplot(data = customer,aes(x=gender)) + geom_bar()

ggplot(data = customer,aes(x=InternetService, fill=MonthlyCharges), ) + geom_bar( )

ggplot(data = customer,aes(x=MonthlyCharges, fill =SeniorCitizen )) + geom_bar()

ggplot(data = customer,aes(x=TotalCharges, fill = tenure)) + geom_bar()

ggplot(data = customer,aes(x=StreamingTV, fill = SeniorCitizen)) + geom_bar( )

ggplot(data = customer,aes(x=Dependents, fil = Partner)) + geom_bar()
