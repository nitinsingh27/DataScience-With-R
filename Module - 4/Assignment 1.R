setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("customer_churn.csv")

placement <- read.csv("Placement.csv")

pharma <- read.csv("Pharma.csv")

# 1. Calculate the IQR (Interquartile Range) for the following columns of the placement 
# dataset: 
# a. hsc_p 
# b. ssc_p 
# c. degree_p 
# d. mba_p 
# e. etest_p 

IQR(placement$hsc_p)
IQR(placement$ssc_p)
IQR(placement$degree_p)
IQR(placement$mba_p)
IQR(placement$etest_p)


# 2. Calculate the IQR (Interquartile Range) for the following columns of the customer 
# churn dataset: 
# a. TotalCharges 
# b. MonthlyCharges 
# c. Tenure 

IQR(customer$TotalCharges,na.rm = T)
IQR(customer$MonthlyCharges)
IQR(customer$tenure)


# 3. Calculate the IQR (Interquartile Range) for the following columns of the 
# pharmacovigilance dataset: 
# a. Age 
# b. PatientID

IQR(pharma$Age)
IQR(pharma$PatientID)
