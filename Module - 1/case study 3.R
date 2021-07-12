setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer<- read.csv("Customer_churn.csv", stringsAsFactors = T)
View(customer)

# 1. Do these operations with the head() function: 
# a. Get the first 4 records from 'PhoneService' column 
# b. Get the first 8 records from 'Contract' column 

# A
a <- head(customer$PhoneService,4)
a <- as.data.frame(a)
View(a)

# B
b <- head(customer$Contract,8)
b <- as.data.frame(b)
View(b)


# 2. Do these operations with the tail() function: 
# a. Get the last record of 'TotalCharges' column 
# b. Get the last 5 records of 'tenure' column 

# A
a2 <- head(customer$TotalCharges,1)
a2 <- as.data.frame(a2)
View(a2)


# B
b2 <- head(customer$tenure,5)
b2 <- as.data.frame(b2)
View(b2)


# 3. Find the average, minimum, maximum & range from the 'tenure' column 

mean(customer$tenure)
min(customer$tenure)
max(customer$tenure)
range(customer$tenure)


# 4. Get 10 random values from the 'TotalCharges' column using sample() 

sample(customer$TotalCharges,10)

# 5. Find the count of different levels in 'PaymentMethod' & 'Contract' columns using table() 

table(customer$PaymentMethod,customer$Contract)
