#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()



#Reading and assigning values of customer_churn in customer 
customer <- read.csv("customer_churn.csv")


#An array named array_total_charges that contains the first 10 values from the total charges column
array_total_charges <- array(customer$TotalCharges[1:10])
array_total_charges


#An array names array_monthly_charges that contains first five values from the monthly charges column.
array_monthly_charges <- array(customer$MonthlyCharges[1:5])
array_monthly_charges


#Reading and assigning values of Placement dataset in placement 
placement <- read.csv("Placement.csv")


#Create an array using placement dataset that comprises of:
#a. Data of first 15 values from salary column.
#b. Data of first five values from mba_p column.
#c. Data of first 10 values from e_test column.

array_placement <- array(c(placement$salary[1:15],placement$mba_p[1:5],placement$etest_p[1:10]))
array_placement
