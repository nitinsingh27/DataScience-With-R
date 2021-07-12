setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")
placement <- read.csv("Placement.csv")

View(customer)

library(dplyr)


# Using customer churn dataset: 
# 1. Calculate the variance of 'tenure' column and store it in var_tenure. 
# 2. Calculate the variance of 'Monthly Charges' column and store it in 
# var_MonthlyCharges. 
# 3. Calculate the variance of 'Total Charges' column and store it in var_TotalCharges.

var_tenure = var(customer$tenure) 
var_tenure

var_MonthlyCharges = var(customer$MonthlyCharges)
var_MonthlyCharges

var_TotalCharges <- var(customer$TotalCharges,na.rm = T)
var_TotalCharges


# Using student's placement dataset: 
#   1. Calculate the variance of percentage scored in senior secondary exams (ssc_p) and 
# store it in var_ssc. 
# 2. Calculate the variance of scores in higher secondary exams 'hsc_p' and store it in 
# var_hsc. 
# 3. Calculate the variance of percentage score by students in their respective degree 
# (degree_p) and store it in var_degree.


var_ssc <- var(placement$ssc_p)
var_ssc

var_hsc <- var(placement$hsc_p)
var_hsc

var_degree <- var(placement$degree_p)
var_degree

