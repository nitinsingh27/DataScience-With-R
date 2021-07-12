setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")
placement <- read.csv("Placement.csv")

View(customer)

library(dplyr)


# Using customer churn dataset: 
# 1. Calculate the median of 'tenure' column and store it in med_tenure. 
# 2. Calculate the median of 'Monthly Charges' column and store it in med_MonthlyCharges. 
# 3. Calculate the median of 'Total Charges' column and store it in med_TotalCharges. 

med_tenure <- median(customer$tenure)
med_tenure

med_MonthlyCharges <- median(customer$MonthlyCharges)
med_MonthlyCharges

med_TotalCharges <- median(customer$TotalCharges, na.rm = T)
med_TotalCharges


# Using student placement dataset: 
#   1. Calculate the median of percentage scored in senior secondary exams (ssc_p) and 
# store it in med_ssc. 
# 2. Calculate the median of scores in higher secondary exams 'hsc_p' and store it in 
# med_hsc. 
# 3. Calculate the median of percentage score by students in their respective degree 
# (degree_p) and store it in med_degree. 

med_ssc <- median(placement$ssc_p)
med_ssc

med_hsc <- median(placement$hsc_p)
med_hsc

med_degree <- median(placement$degree_p)
med_degree



