setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")
placement <- read.csv("Placement.csv")

View(customer)

install.packages("sqldf")
library(sqldf)

# 1. Select the 'OnlineBackup' column from the customer_churn dataframe & store the result in 
# 'customer_onine_backup' 

sqldf("select OnlineBackup from customer") -> customer_onine_backup
View(customer_onine_backup)

# 2. Select the 'StreamingTV', 'StreamingMovies' & 'Contract' columns and store the result in 
# 'customer_streaming_contract' 

sqldf("select StreamingTV, StreamingMovies, Contract from customer") -> customer_streaming_contract
View(customer_streaming_contract)


# 3. Select all the customers whose payment method is 'mailed check' and store the result in 
# 'customer_mail' 

sqldf("select * from customer where PaymentMethod = 'Mailed check'") -> customer_mail
View(customer_mail)


# 4. Select all the Female customers whose tenure is of 1 month & Payment Method is 'mailed 
# check' and store the result in 'customer_random_selection

customer_random_selection <- sqldf("select * from customer where gender = 'Female' and tenure == 1 and PaymentMethod = 'Mailed check' ")
View(customer_random_selection)
