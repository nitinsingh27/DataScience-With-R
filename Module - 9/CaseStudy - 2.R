setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(dplyr)

# 1. Building the k-means clustering algorithm: 
#   a. Start off by extracting the 'MonthlyCharges', 'tenure' & 'TotalCharges' columns 
# from the 'customer_churn' data.frame. Store the result in 'customer_features' 
# b. Remove any 'NA' values from 'customer_features' if present 
# c. Build the kmeans algorithm on top of 'customer_features'. Here, the number of 
# clusters should be 3 
# d. Bind the clustering vector to 'customer_features'. 
# e. Extract observations belonging to individual clusters

customer_features <- customer %>% select("tenure","MonthlyCharges","TotalCharges")

customer_features <- na.omit(customer_features)

head(customer_features)

kmeans(customer_features$tenure,3) -> k_tenure
data.frame(tenure=customer_features$tenure,clusters=k_tenure$cluster) -> tenure_group
tenure_group %>% filter(clusters==1) -> tenure_group_1
tenure_group %>% filter(clusters==2) -> tenure_group_2
tenure_group %>% filter(clusters==3) -> tenure_group_3


kmeans(customer_features$MonthlyCharges,3) -> k_months
data.frame(months=customer_features$MonthlyCharges,clusters=k_months$cluster) -> months_group
months_group %>% filter(clusters==1) -> months_group_1
months_group %>% filter(clusters==2) -> months_group_2
months_group %>% filter(clusters==3) -> months_group_3


kmeans(customer_features$TotalCharges,3) -> k_charges
data.frame(totalcharges=customer_features$TotalCharges,clusters=k_charges$cluster) -> charges_group 
charges_group %>% filter(clusters==1) -> charges_group_1
charges_group %>% filter(clusters==2) -> charges_group_2
charges_group %>% filter(clusters==3) -> charges_group_3
