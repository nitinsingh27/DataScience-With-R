setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(ggplot2)


# 1. Build a histogram for the 'tenure' column 
# a. Assign the fill color to be 'mediumspringgreen'
# b. Assign the boundary color to be 'azure'
# c. Change the number of bins to be 100

ggplot(data = customer,aes(x=tenure, col = "azure")) + geom_histogram( bins = 100, fill = "mediumspringgreen")


# 2. Build histogram for the 'MonthlyCharges' column 
# a. Assign 'PaymentMethod' to the fill aesthetic 
# b. Assign 'OnlineBackup' to the fill aesthetic 

ggplot(data = customer,aes(x = MonthlyCharges, fill = PaymentMethod,fill = OnlineBackup)) + geom_histogram()


# 3. Build histogram for the 'TotalCharges' column 
# a. Assign 'gender' to the fill aesthetic 
# b. Assign 'InternetService' to the fill aesthetic 

ggplot(data = customer,aes(x = TotalCharges,fill = gender, fill = InternetService)) + geom_histogram()
