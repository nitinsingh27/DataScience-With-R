setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")

placement <- read.csv("Placement.csv")
View(placement)


# 1. Calculate the number higher secondary students who are from "Central" 
# board. 

a = 0
i = 1

while (i <= nrow(placement)) {
  if(placement$hsc_b[i]=="Central")
  {
    a = a + 1
  }
  i = i + 1
}
a


# 2. Calculate the number of students who are from Science stream and 
# secured percentage greater than 75.

b = 0
i = 1

while (i <= nrow(placement)) {
  if(placement$hsc_s[i]=="Science" & placement$hsc_p[i] >= 75)
  {
    b = b + 1
  }
  i = i + 1
}
b



# 3. Calculate the number of customers from customer churn dataset as per 
# following condition: 
#   (i). The customer should be a senior citizen who is having a contract of 
# 'One year' for 'Fiber optic' there as internet service. 
# (ii). The customer is not a senior citizen who is having a contract of 'Two 
# year' and total charges is less than 7000. 
# (iii). The customers whose monthly charges are greater than 6500.




# A

c = 0
i = 1
while (i <= nrow(placement)) {
  if(customer$SeniorCitizen[i] == 1 & customer$Contract[i] == "One year" & customer$InternetService[i] == "Fiber optic")
  {
    c = c + 1
  }
  i = i + 1
}
c


#B 

d = 0
i = 1
while (i <= nrow(placement)) {
  if(customer$SeniorCitizen[i] == 0 & customer$Contract[i] == "Two year" & customer$TotalCharges[i] <= 7000)
  {
    d = d + 1
  }
  i = i + 1
}
d

#C

e = 0
i = 1
while (i <= nrow(placement)) {
  if(customer$TotalCharges[i] >= 6500)
  {
    e = e + 1
  }
  i = i + 1
}
e





