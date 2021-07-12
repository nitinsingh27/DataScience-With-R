setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")
placement <- read.csv("Placement.csv")
pharma <- read.csv("Pharma.csv")
temperature <- read.csv("city_temperature.csv")

#-------------------------------------Problem 1------------------------------------
#1. Calculate the range of following columns of customer churn dataset: 
# a. Tenure 
# b. Monthly Charges 
# c. Total Charges 

range(customer$tenure)
range(customer$MonthlyCharges)
range(customer$TotalCharges,na.rm = T)


#------------------------------------Problem 2----------------------------------
# 2. Calculate the range of following columns of city temperature dataset: 
# a. Day 
# b. Year 
# c. Average Temperature 

range(temperature$Day)
range(temperature$Year)
range(temperature$AvgTemperature)


#------------------------------------------Problem 3---------------------------
# 3. Calculate the range of following columns of pharmacovigilance dataset: 
# a. Age 
# b. Patient ID

range(pharma$Age)
range(pharma$PatientID)


#-------------------------------------------Problem 4----------------------------
# 4. Calculate the range of following columns of placement dataset: 
# a. Sl_no 
# b. Ssc_p 
# c. Hsc_p 
# d. Degree_p 
# e. Etest_p 
# f. Mba_p 
# g. Salary


range(placement$sl_no)
range(placement$ssc_p)
range(placement$hsc_p)
range(placement$degree_p)
range(placement$etest_p)
range(placement$mba_p)
range(placement$salary, na.rm = T)
