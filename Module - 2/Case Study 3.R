setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")


View(customer)

library(dplyr)


# 1. Get the median, variance & standard deviation for the 'tenure' column 

summarise(customer,median_tenure = median(tenure),var_tenure = var(tenure),sd_tenure = sd(tenure))


# 2. Get the median, variance & standard deviation for the 'MonthlyCharges' column 
 
summarise(customer,median_MonthlyCharges = median(MonthlyCharges),var_MonthlyCharges = var(MonthlyCharges),sd_MonthlyCharges = sd(MonthlyCharges))


# 3. Get the standard deviation of 'tenure' & group it w.r.t 'PaymentMethod' column 

summarise(group_by(customer,PaymentMethod),sd_tenure = sd(tenure))


  
# 4. Get the median of 'MonthlyCharges' & group it w.r.t 'Contract' column 

summarise(group_by(customer,Contract),median_MonthlyCharges = median(MonthlyCharges))



# 5. Get the variance of 'TotalCharges' & group it w.r.t 'InternetService' column

summarise(group_by(customer,InternetService),var_TotalCharges = var(TotalCharges,na.rm = T))
