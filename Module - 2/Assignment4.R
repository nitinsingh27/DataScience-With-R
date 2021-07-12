setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv")
pharma <- read.csv("Pharma.csv")

library(dplyr)


# 1. Extract the following columns using placement dataset: 
# a. Extract the specialization column (12th column) and store it in s_student. 
# b. Extract the salary column (15th column) and store it in s_salary. 
# c. Extract the higher secondary percentage column (5th column) and store it in hsc_percent. 

s_student <- select(placement,12)
View(s_student)


s_salary <- select(placement,15)
View(s_salary)


hsc_percent <- select(placement,5)
View(hsc_percent)


# 2. Extract the following columns from the pharmacovigilance dataset: 
# a. Extract 1st, 3rd, and 5th column and store it in col_135.

col_135 <- select(pharma,1,3,5)
View(col_135)


# b. Extract the 2nd and 6th column and store it in col_26. 
# 3. Extract column number 1 to 5 from placement dataset.

col_26 <- select(placement,2,6)
View(col_26)


col_15 <- select(placement,1:5)
View(col_15)

