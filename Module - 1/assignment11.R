#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


pharma = read.csv("Pharma.csv")
View(pharma)


#Extract a subset of pharmacovigilance data of all the female patients whose age is less than 25 with issues of unclear dose.

a <- pharma$Gender == "F" & pharma$Age < 25 & pharma$Issues == "unclear dose"
a <- subset(pharma,a==T)
View(a)


#Extract the records of all the male patients whose age is less than 25 and medication data is not available. 

b <- pharma$Gender == "M" & pharma$Age < 25 & pharma$Issues == "Medication history documenting error"
b <- subset(pharma, b==T)
View(b)


#Fetch the records of children whose age equals to 8 whose documentation of medication history is not available. 

c <- pharma$Age == 8 & pharma$Issues == "Medication history documenting error"
c <- subset(pharma,c==T)
View(c)



#Extract all the records of female children of age>5 having an unclear dose. 

d <- pharma$Gender == "F" & pharma$Age >5 & pharma$Issues == "unclear dose"
d <- subset(pharma,d==T)
View(d)


#Extract the records of male patients of age equals to 35 with an unclear route of transmission

e <- pharma$Gender =="M" & pharma$Age == 35 & pharma$Issues == "unclear dose"
e <- subset(pharma,e==T)
View(e)



