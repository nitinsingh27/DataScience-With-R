setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv")

View(placement)

library(dplyr)



# 1. Extract the data of students who studied Science (hsc_s) from Central board (hsc_b) 
# and secured more than 70 percent (hsc_p) and store it in s_science. 

s_science <- filter(placement,hsc_s == "Science" & hsc_b == "Central" & hsc_p > 70)
View(s_science)


# 2. Extract the data of students who are pursuing a degree in Commerce & Management 
# (degree_t) and specialization is Mkt&Fin and store it in d_commerce. 

d_commerce <- filter(placement,degree_t == "Comm&Mgmt" & specialisation == "Mkt&Fin")
View(d_commerce)


# 3. Extract the data of students whose score in MBA (mba_p) is greater than 75 with 
# etest score greater than 70. 

student <- filter(placement,mba_p > 75 & etest_p > 70)
View(student)


# 4. Extract the data of students with specialization as Mkt&F in with etest score greater 
# than 90. 

s <- filter(placement,specialisation == "Mkt&Fin" & etest_p > 90)
View(s)


# 5. Extract the data of students who are either from Commerce or Science stream. 

stream <- filter(placement,hsc_s == "Science" | hsc_s == "Commerce")
View(stream)