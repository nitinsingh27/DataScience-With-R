setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")
placement <- read.csv("Placement.csv")

View(customer)

library(dplyr)


# Using customer churn dataset: 
# 1. Calculate the standard deviation of 'tenure' column and store it in sd_tenure. 
# 2. Calculate the standard deviation of 'Monthly Charges' column and store it in 
# sd_MonthlyCharges. 
# 3. Calculate the standard deviation of 'Total Charges' column and store it in 
# sd_TotalCharges. 

sd_tenure <- sd(customer$tenure)
sd_tenure

sd_MonthlyCharges <- sd(customer$MonthlyCharges)
sd_MonthlyCharges

sd_TotalCharges <- sd(customer$TotalCharges, na.rm = T)
sd_TotalCharges




# Using student's placement dataset: 
#   1. Calculate the standard deviation of etest and store it in sd_etest. 
# 2. Calculate the standard deviation of salary and store it in sd_salary. 
# 3. Calculate the standard deviation of percentage score by students in MBA (mba_p) 
# and store it in sd_mba.

sd_etest <- sd(placement$etest_p)
sd_etest

sd_salary <- sd(placement$salary,na.rm = T)
sd_salary

sd_mba <- sd(placement$mba_p)
sd_mba



