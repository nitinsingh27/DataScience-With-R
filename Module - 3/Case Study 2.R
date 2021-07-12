setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

library(ggplot2)

# 1. Build a bar-plot for the 'PhoneService' column 
# a. Assign the fill color to be 'pink'
# b. Assign the boundary color to be 'peru'

ggplot(data = customer , aes(x = PhoneService)) + geom_bar(fill = "pink", col = "Peru")


# 2. Build a bar-plot for the 'InternetService' column 
# a. Assign 'InternetService' to the fill aesthetic 
# b. Assign 'Contract' to the fill aesthetic 
# c. Change the position of bars to 'identity'
ggplot(data = customer,aes(x = InternetService,fill = Contract)) + geom_bar(position = "identity")


# 3. Build a bar-plot for 'TechSupport' column 
# a. Assign 'Churn' to the fill aesthetic 

ggplot(data = customer,aes(TechSupport,fill = Churn)) + geom_bar()


