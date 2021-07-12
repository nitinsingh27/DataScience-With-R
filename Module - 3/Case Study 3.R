setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(ggplot2)

# 1. Build a scatter-plot between 'TotalCharges' & 'tenure'. Map 'TotalCharges' to the y-axis & 'tenure' to the 'x-axis'
# a. Assign it the color 'wheat3'
# b. Use 'col' as an aesthetic and Map 'PaymentMethod' to col 
# c. Use 'col' as an aesthetic and Map 'gender' to col 
# d. Map 'Dependents' to both 'col' & 'shape' aesthetics 

ggplot(data = customer,aes(y =TotalCharges,x = tenure )) + geom_point(col = "wheat3")

ggplot(data = customer,aes(y =TotalCharges,x = tenure, col = PaymentMethod)) + geom_point()

ggplot(data = customer,aes(y =TotalCharges,x = tenure, col = gender)) + geom_point()

ggplot(data = customer,aes(y =TotalCharges,x = tenure, col = Dependents, shape = Dependents)) + geom_point()



# 2. Build a scatter-plot between 'tenure' & 'MonthlyCharges'. Map 'tenure' to the y-axis & 'MonthlyCharges' to the 'x-axis'
# a. Assign it the color 'yellowgreen'
# b. Use 'col' as an aesthetic and Map 'InternetService' to col 
# c. Use 'col' as an aesthetic and Map 'Contract' to col 

ggplot(data = customer,aes(y =tenure,x = MonthlyCharges)) + geom_point(col = "yellowgreen")

ggplot(data = customer,aes(y =tenure,x = MonthlyCharges, col = InternetService)) + geom_point()

ggplot(data = customer,aes(y =tenure,x = MonthlyCharges, col = Contract)) + geom_point()
