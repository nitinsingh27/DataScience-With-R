setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()
customer = read.csv("Customer_churn.csv")
View(customer)

#--------------------------------------Problem 1--------------------------------------------
#Extract the data of customers as per the following conditions: 
#a. People who are senior citizen of gender female. 
#b. Female customers who are not having partner. 
#c. Customers using 'DSL' as their internet service with no online security.
#d. Customers using 'Fiber optics' as internet service with no online backup.
#e. Senior citizens using payment method as electronic check.

# A
a <- customer$SeniorCitizen == 1 & customer$gender == "Female"
a <- subset(customer,a==T)
View(a)

# B
b <- customer$Partner == "No" & customer$gender == "Female"
b <- subset(customer,b==T)
View(b)

# C
c <- customer$InternetService == "DSL" & customer$OnlineSecurity == "No"
c <- subset(customer,c==T)
View(c)

# D
d <- customer$InternetService == "Fiber optic" & customer$OnlineBackup == "No"
d<- subset(customer,d==T)
View(d)

# E
e <- customer$SeniorCitizen == 1 & customer$PaymentMethod =="Electronic check"
e <- subset(customer,e==T)
View(e)


#-----------------------------Problem 2----------------------------------------------------
#Extract the data of customers who are: 
#a. Using payment method as mailed check and having a contract of one year 
#b. Having services such as online security, online backup, device protection, and tech support enabled 
#c. Not senior citizens having tenure of 72 months. 

#A
a2 <- customer$PaymentMethod =="Electronic check" & customer$Contract == "One year"
a2 <- subset(customer,a2==T)
View(a2)

# B
b2 <- customer$OnlineSecurity == "Yes" & customer$OnlineBackup =="Yes" & customer$DeviceProtection =="Yes" & customer$TechSupport == "Yes"
b2 <- subset(customer,b2==T)
View(b2)

# C
c2 <- customer$SeniorCitizen == 0 & customer$tenure == 72
c2 <- subset(customer,c2==T)
View(c2)



#----------------------------------------------------Problem 3------------------------------------------------
#Check the customers data where the customer's are:
# a. Either using bank transfer or credit card as their payment method. 
# b. Having phone service or multiple lines enabled. 
# c. Either having payment method as mailed check or electronic check. 
# d. Either using fiber optic or having no internet service. 


# A
a3<- customer$PaymentMethod =="Bank transfer (automatic)" | customer$PaymentMethod =="Credit card (automatic)"
a3 <- subset(customer,a3==T)
View(a3)


#B
b3 <- customer$PhoneService =="Yes" | customer$MultipleLines == "Yes"
b3 <- subset(customer,b3==T)
View(b3)

#C
c3 <- customer$PaymentMethod =="Mailed check" | customer$PaymentMethod =="Electronic check"
c3 <- subset(customer,c3==T)
View(c3)

#D
d3 <- customer$InternetService == "Fiber optic" | customer$InternetService == "No"
d3 <- subset(customer,d3==T)
View(d3)


       