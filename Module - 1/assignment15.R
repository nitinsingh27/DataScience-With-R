setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


customer <- read.csv("Customer_churn.csv")

#  Check the categories of various columns given below using table function and extract the data of male customers who are senior citizens with partners internet service as DSL along with services such as phone services enabled : 
# a. Gender 
# b. Senior Citizen 
# c. Partner 
# d. Columns 
# e. Dependents 
# f. Phone Service 
# g. Multiple Lines 
# h. Internet Service 
# i. Online Security 
# j. Online Backup 
# k. Contract 
# l. Payment Method 


table(customer$gender)
table(customer$SeniorCitizen)
table(customer$Partner)
table(customer$Dependents)
table(customer$PhoneService)
table(customer$MultipleLines)
table(customer$InternetService)
table(customer$OnlineSecurity)
table(customer$OnlineBackup)
table(customer$Contract)
table(customer$PaymentMethod)
