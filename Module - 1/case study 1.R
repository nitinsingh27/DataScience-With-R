setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


customer <- read.csv("Customer_churn.csv", stringsAsFactors= T)


# 1. Extract these individual columns with the '$' symbol: 
# a. Extract 'InternetService' column and store it in'customer_internet_service'
# b. Extract 'PaperlessBilling' column and store it in'customer_Paperless_Billing'
# c. Extract 'StreamingTV' column and store it in'customer_Streaming_TV'

# A 
customer_internet <- customer$InternetService
as.data.frame(customer_internet)->customer_internet
View(customer_internet) 


# B 
customer_billing <- customer$PaperlessBilling
as.data.frame(customer_billing) -> customer_billing
View(customer_billing)


# C
customer_streaming <- customer$StreamingTV
as.data.frame(customer_streaming) -> customer_streaming
View(customer_streaming)



# Extract the 3rd, 6th and 9th columns from the 'customer_churn' data.frame & store it
# in'customer_random_columns'

customer_random_columns <- customer[,c(3,6,9)]
View(customer_random_columns)


# Extract all the columns from column number-10 to column-number 20 and store 
# the result in'customer_10_20'

customer_10_20 <- customer[,10:20]
View(customer_10_20)



#Extract only these row numbers: 65, 765, 3726 & 7000 and store the result in
# 'customer_random_rows'

customer_random_rows <- customer[c(65,765,3726),]
View(customer_random_rows)



# Extract all the rows starting from row number-655 to row number-6550 & store the 
# result in'customer_continuous_rows'

customer_rows <- customer[655:6550,]
View(customer_rows)


# Extract row numbers- 10, 100 & 1000 & column numbers- 5, 10, 15 & store the 
# result in'customer_random_data'


customer_random_data <- customer[c(10,100,1000),c(5,10,15)]
View(customer_random_data)





