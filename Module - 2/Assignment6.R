setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv")

View(placement)

library(dplyr)


# 1. Using summarize() function calculate the following for etest column: 
# a. Median 
# b. Variance 
# c. Standard Deviation 


summarise(placement,median_etest = median(etest_p),var_etest = var(etest_p), sd_etest = sd(etest_p))


# 2. Calculate the following for MBA percentage(mba_p) of students: 
# a. Median 
# b. Variance 
# c. Standard Deviation 

summarise(placement,median_mba = median(mba_p),var_mba = var(mba_p), sd_etest = sd(mba_p))


# 3. Calculate the median of hsc_p and group it w.r.t. 'Salary' column. 

summarise(group_by(placement,salary),median_hsc = median(hsc_p))

# 4. Calculate variance ssc_p and group it w.r.t. 'Salary' column.

summarise(group_by(placement,salary),var_ssc = var(ssc_p))

# 5. Calculate standard deviation of etest_p and group it w.r.t. 'Salary'

summarise(group_by(placement,salary),sd_etest = sd(etest_p))
