setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("customer_churn.csv")

placement <- read.csv("Placement.csv")

pharma <- read.csv("Pharma.csv")



# 1. Calculate the following for the 'tenure' column of customer churn dataset:
# a. Mean 
# b. Median 
# c. Range 
# d. IQR 
# e. Variance 
# f. Standard Deviation

mean(customer$tenure)
median(customer$tenure)
range(customer$tenure)
IQR(customer$tenure)
var(customer$tenure)
sd(customer$tenure)



# 2. Calculate the following for the 'ssc_p'column of student placement dataset:
# a. Mean 
# b. Median 
# c. Range 
# d. IQR 
# e. Variance 
# f. Standard Deviation 

mean(placement$ssc_p)
median(placement$ssc_p)
range(placement$ssc_p)
IQR(placement$ssc_p)
var(placement$ssc_p)
sd(placement$ssc_p)


# 3. Calculate the following for the 'age' column of pharmacovigilance dataset: 
# a. Mean 
# b. Median 
# c. Range 
# d. IQR 
# e. Variance 
# f. Standard Deviation 

mean(pharma$Age)
median(pharma$Age)
range(pharma$Age)
IQR(pharma$Age)
var(pharma$Age)
sd(pharma$Age)
