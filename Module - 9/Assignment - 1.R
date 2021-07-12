setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(dplyr)


# . Build the kmeans algorithm on top of 'customer_features'. For the model, the 
# number of clusters should be 3. 
# b. Calculate the clustering vector values for the monthly charges column form 
# the customer_features. 
# c. Bind the monthly charges column to the clustering vector and store that data 
# in month_group. 
# d. Convert the month_group matrix into a data frame. 
# e. Separate all the 3 clusters with their values.

customer_features <- customer %>% select("tenure","MonthlyCharges","TotalCharges")

View(customer_features)

customer_features <- na.omit(customer_features)

kmeans(customer_features$MonthlyCharges,3) -> k_months
data.frame(months=customer_features$MonthlyCharges,clusters=k_months$cluster) -> months_group
months_group %>% filter(clusters==1) -> months_group_1
months_group %>% filter(clusters==2) -> months_group_2
months_group %>% filter(clusters==3) -> months_group_3
