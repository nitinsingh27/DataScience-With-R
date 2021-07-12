setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv")

# Tasks to be performed:
# 1. Check the first five values of the following columns using the head function: 
# a. Sl_no 
# b. Gender 
# c. Ssc_p 
# d. Ssc_b 
# e. Hsc_p 
# f. Degree_p 
# g. Degree_t 
# h. Etest_p 
# i. Specialization 
# j. Mba_p 
# k. Salary

head(placement$sl_no,5)
head(placement$gender,5)
head(placement$ssc_p,5)
head(placement$ssc_b,5)
head(placement$hsc_p,5)
head(placement$degree_p,5)
head(placement$degree_t,5)
head(placement$etest_p,5)
head(placement$specialisation,5)
head(placement$mba_p,5)
head(placement$salary,5)

# . Add 5000 to the first six data of the salary column. 

placement$salary[1:6] <- head(placement$salary[1:6] + 5000)
placement$salary[1:6]


# 3. Add 7.5 to the first 10 values of e_test column. 

placement$etest_p[1:10] <- placement$etest_p[1:10] + 7.5 
placement$etest_p[1:10]

# 4. Reduce the mba_p score by 5 for the first three values.

placement$mba_p[1:3] <- placement$mba_p[1:3] - 5
placement$mba_p[1:3]

