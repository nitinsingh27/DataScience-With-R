setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")
placement <- read.csv("Placement.csv")
pharma <- read.csv("Pharma.csv")
temperature <- read.csv("city_temperature.csv")

#------------------------------------------Problem 1--------------------------------------
# Find the structure of customer churn dataset using str() function and perform the following operations: 
#a. Convert the data type of internet service column from vector to character. 
#b. Convert the data type of partner column from vector to character. 
#c. Convert the data type of total charges column from num to int. 

str(customer)

# A
customer$InternetService <- as.character(customer$InternetService)
class(customer$InternetService)

# B
customer$Partner <- as.character(customer$Partner)

# C
customer$TotalCharges <- as.character(customer$TotalCharges)


#-----------------------------Problem 2------------------------------------------------------------
# Find the structure of the placement data. 

str(placement)


#-----------------------------Problem 3------------------------------------------------------------
# Find the structure of the pharmacovigilance data. 

str(pharma)


#-----------------------------Problem 4------------------------------------------------------------
# Find the structure of city temperature dataset. 

str(temperature)