setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")


View(customer)

library(dplyr)


# 1. Extract 333 random records from the customer_churn dataframe & store the result in 'customer_333'

customer_333 <- sample_n(customer,333)
View(customer_333)


# 2. Extract 1000 random records from the customer_churn dataframe & store the 
# result in 'customer_1000'

customer_1000 <- sample_n(customer,1000)
View(customer_1000)


# 3. Randomly extract 23% of the records from the customer_churn dataframe & store 
# the result in 'customer_23_percent'

customer_23_percent <- sample_frac(customer,0.23)
View(customer_23_percent)


# 4. Get the count of different levels from the 'PaymentMethod' column 

count(customer,PaymentMethod)

# 5. Get the count of different levels from the 'Churn' column 

count(customer,Churn)
