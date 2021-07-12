setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer <- read.csv("Customer_churn.csv")


View(customer)

library(dplyr)

# 1. Extract these individual columns: 
# a. Extract the 5th column & store it in 'customer_5'
# b. Extract the 15th column & store it in 'customer_15'

select(customer,5) -> customer_5
View(customer_5)

select(customer,15) -> customer_15
View(customer_15)


# 2. Extract the column numbers 3,6,9,12,15 & 18 and store the result in 'customer_3_multiple'

select(customer,seq(3,18,3)) -> customer_3_multiple
View(customer_3_multiple)

# 3. Extract all the columns from column number-10 to column number-20 and store the result in 'c_10_20'

c_10_20 <- select(customer,10:20)
View(c_10_20)

# 4. Extract all the columns which start with letter 'P' & store it in'customer_P'
customer_p <- select(customer,starts_with("P"))
View(customer_p)

# 5. Extract all the columns which end with letter 's' & store it in 'customer_s'

customer_s <- select(customer,starts_with("s"))
View(customer_s)
