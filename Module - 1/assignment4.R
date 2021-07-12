#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


#Reading and assigning values of customer_churn in customer 
customer <- read.csv("customer_churn.csv")



#Reading and assigning values of Placement dataset in placement 
placement <- read.csv("Placement.csv")


#Reading and assigning values of pharma dataset in pharma
pharma <- read.csv("Pharma.csv")




#Calculate the mean of the following columns from customer churn dataset:
# a. Tenure
# b. Monthly Charges
# c. Total Charges

mean(customer$tenure)
mean(customer$MonthlyCharges)
mean(customer$TotalCharges,na.rm = T)






#Calculate the mean of the following columns from the placement dataset:
#a. Ssc_p
#b. Hsc_p
#c. Degree_p
#d. Etest_p
#e. Mba_p
#f. Salary



mean(placement$ssc_p)
mean(placement$hsc_p)
mean(placement$degree_p)
mean(placement$etest_p)
mean(placement$mba_p)
mean(placement$salary,na.rm = T)
