setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")


View(customer)

library(dplyr)

# 1. Add a column named 'Age' and assign a random value in customer churn dataset 
# that lies within a range using sample() function based in the following conditions: 
# a. If the customer is a senior citizen (SeniorCitizen==1), then the age assigned 
# to the customer lies between 56 and 100. 
# b. If the customer is not a senior citizen (SeniorCitizen==0), then the age 
# assigned to the customers lies between 16:55 


mutate(customer,
       Age = ifelse(SeniorCitizen == 0,
                    sample(x = 16:55),
                    sample(x = 56:100)
                    )
       
      ) -> customer
View(customer)



# 2. Create a column named 'Customer_Category' based on the following condition:
# a. The customers whose monthly charges are less than 45 will be named as 
# 'Low Paying' customers.
# b. The customers whose monthly charges are less than '90' will be named as 
# 'Medium Paying' customers.
# c. The customers whose monthly charges are greater than '90' will be named 
# as 'High Paying' customers.

mutate(customer,
       Customer_Category = ifelse(
         MonthlyCharges < 45,
         "Low Paying Customer",
         ifelse(
           MonthlyCharges < 90,
           " Medium Paying Customer",
           "High Paying Customer"
         )
       )
       
) -> customer
 View(customer)
 
 

# 3. Create a column named "Security" based on the following condition:
#   a. The customers who have opted for 'Online Security' will be marked as 
# 'Secure'.
# b. The customers who have not opted for 'Online Security' will be marked as 
# 'Not Secure'.
 
 
 mutate(customer,
        Security = ifelse(OnlineSecurity == "Yes",
                     "Secure",
                     "Not Secure"
        )
        
 ) -> customer
 
 View(customer)
 
 
 
 
 