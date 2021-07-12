setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(dplyr)


# 1. Load the Customer_Churn using the pandas package. 
# a. Start off by extracting the 'MonthlyCharges', 'tenure' & 'TotalCharges' columns 
# from the 'customer_churn' data frame. Store the result in 'customer_features'
# b. Remove any 'NA' values from 'customer_features'.

customer_features <- customer %>% select("tenure","MonthlyCharges","TotalCharges")

View(customer_features)

customer_features <- na.omit(customer_features)

