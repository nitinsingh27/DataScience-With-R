setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv")

# 1. Extract the last few values of the following columns from the pharmacovigilance 
# dataset: 
# a. Ssc_p 
# b. Hsc_p 
# c. Degree_p 
# d. Etest_p 
# e. Mba_p 
# f. Salary

tail(placement$ssc_p,5)
tail(placement$hsc_p,5)
tail(placement$degree_p,5)
tail(placement$etest_p,5)
tail(placement$mba_p,5)
tail(placement$salary,5)

# 2. Check an add 12000 to the last 8 values of the salary column. 

tail(placement$salary,8) -> a
a <- a + 12000
a


# 3. Check and increase the mba_p score by 10 for the last few values. 

tail(placement$mba_p,5) -> b
b <- b + 10
b
