#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


placement = read.csv("Placement.csv", stringsAsFactors = T)
View(placement)
#------------------------Problem 1----------------------------
#1. Extract the data of the students who are: 
# a. Having SSC score greater than or equal to 65. 
# b. Having HSC score greater than 80. 
# c. Earning more than 200000. 

# A

ssc = placement$ssc_p >= 65

subset(placement,ssc==T) -> ssc
View(ssc)

#B

hsc <- placement$hsc_s > 80
hsc <- subset(placement,hsc == T)
View(hsc)


# C 

salary <- placement$salary >200000
salary <- subset(placement,salary == T)
View(salary)


#----------------------------------Problem 2---------------------------

#Extract the data of the students who are: 
#a. Placed and earning salary less than 250000. 
#b. From commerce and management having earning salary less than 600000. 
#c. From Science stream with etest score greater than 90. 

# A
a <- placement$status =="Placed" & placement$salary < 250000
a <- subset(placement, a== T)
View(a)

# B
b <- placement$degree_t == "Comm&Mgmt" & placement$salary < 600000
b <- subset(placement, b== T)
View(b)


# C

c <- placement$hsc_s == "Science" & placement$etest_p >90
c <- subset(placement,c==T)
View(c)





#------------------------Problem 3------------------------------

#Extract the data of the students who are: 
#a. From Central board studying Arts. 
#b. From Sci&Tech with e_test score equals to 75. 
#c. Placed with a salary of 450000.

# A
a3 <- placement$hsc_b == "Central" & placement$hsc_s =="Arts"
a3 <- subset(placement,a3==T)
View(a3)


# B
b3 <- placement$etest_p == 75 & placement$degree_t == "Sci&Tech"
b3 <- subset(placement,b3==T)
View(b3)


# C
c3 <- placement$status =="Placed" & placement$salary == 450000
c3 <- subset(placement,c3==T)
View(c3)

