setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(dplyr)


# 1. Load the Customer_Churn using the pandas package. 
# a. Start off by extracting the 'MonthlyCharges', 'tenure' & 'TotalCharges' columns 
# from the 'customer_churn' data frame. Store the result in 'customer_features'
# b. Remove any 'NA' values from 'customer_features'.
# c. Build the kmeans algorithm on top of 'customer_features'. For the model, the 
# number of clusters should be 3.

customer_features <- customer %>% select("tenure","MonthlyCharges","TotalCharges")

View(customer_features)

customer_features <- na.omit(customer_features)

kmeans(customer_features$MonthlyCharges,3) -> k_months
data.frame(months=customer_features$MonthlyCharges,clusters=k_months$cluster) -> months_group

kmeans(customer_features$tenure,3) -> k_tenure
data.frame(tenure=customer_features$tenure,clusters=k_tenure$cluster) -> tenure_group

kmeans(customer_features$TotalCharges,3) -> k_charges
data.frame(totalcharges=customer_features$TotalCharges,clusters=k_charges$cluster) -> charges_group
