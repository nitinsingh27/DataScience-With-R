#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


#Reading and assigning values of customer_churn in customer 
customer <- read.csv("customer_churn.csv")

#reading 1 record of monthly charges in customer_churn table
customer$MonthlyCharges[1]

#adding 5 to the 1 record of monthly charges
customer$MonthlyCharges[1] <- customer$MonthlyCharges[1] + 5


customer$MonthlyCharges[5]
#adding 5 to the 1 record of monthly charges
customer$MonthlyCharges[5] <- customer$MonthlyCharges[5] + 22


customer$TotalCharges[4]
#subtracting 40.75 from the 4 record of total charges
customer$TotalCharges[4] <- customer$TotalCharges[4] - 40.75


customer$TotalCharges[2]
#subtracting 100 from the 2 record of total charges
customer$TotalCharges[2] <- customer$TotalCharges[2] - 100


customer$MonthlyCharges[25]
#subtracting 4.6 from the 25 record of monthly charges and dividing it by 5
customer$MonthlyCharges[25] <- (customer$MonthlyCharges[5] - 4.6)/5



customer$TotalCharges[5]
#Adding 5.3 to the 5 record of total charges and multiplying it by 2
customer$TotalCharges[5] <- (customer$TotalCharges[5] + 5.3)*2



customer$MonthlyCharges[12]
#multiplying 5 to the 12 record of monthly charges
customer$MonthlyCharges[12] <- customer$MonthlyCharges[12] * 5
