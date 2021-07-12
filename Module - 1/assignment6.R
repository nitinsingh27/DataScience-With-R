#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")

placement <- read.csv("Placement.csv")
View(placement)

# Using for loop, calculate the number of students from the placement dataset 
# according to the following conditions: 
# a) Students who are placed. 
# b) Students who are from Science stream. 
# c) Students who are from Commerce stream.

#A 
a = 0
for (i in 1:nrow(placement)) 
  {
  if(placement$status[i]=="Placed")
  {
    a = a + 1  
  }
}
a


#B

b = 0
for (i in 1:nrow(placement)) 
  {
  if(placement$hsc_s[i] == "Science") 
  {
    b = b + 1
  }
}
b

# c

c = 0
for (i in 1:nrow(placement)) 
{
  if(placement$hsc_s[i] == "Commerce") 
  {
    c = c + 1
  }
}
c


# 2. Using for loop, calculate the number of students from the placement dataset who 
# score more than 80.0 in higher secondary exams (hsc_p). 

d = 0
for (i in 1:nrow(placement)) 
{
  if(placement$hsc_p[i] > 80) 
  {
    d = d + 1
  }
}
d


# 3. Calculate the number of students who scored more than 75% in MBA (mba_p) 
# and got placed from campus placement drives. 

e = 0
for (i in 1:nrow(placement)) 
{
  if(placement$mba_p[i] > 75 & placement$status[i] =="Placed") 
  {
    e = e + 1
  }
}
e


# 4. . Calculate the number of senior citizens from customer churn dataset who are using internet service as 'DSL'.

f = 0
for (i in 1:nrow(customer)) 
{
  if(customer$SeniorCitizen[i] == 1 & customer$InternetService[i] =="DSL") 
  {
    f = f + 1
  }
}
f
