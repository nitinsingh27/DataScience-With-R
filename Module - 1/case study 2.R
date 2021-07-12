setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")

# Working with arithmetic operators: 
# a. Add 5 to the fifth record of 'MonthlyCharges' column 
# b. Subtract 9.65 from the sixth record of 'MonthlyCharges' column 
# c. Multiply the 1st record of 'MonthlyCharges' column with 3 
# d. Divide the 37th record of 'MonthlyCharges' column with 3 

customer$MonthlyCharges[5] + 5 -> customer$MonthlyCharges[5]
customer$MonthlyCharges[5]

customer$MonthlyCharges[6] <- customer$MonthlyCharges[6] - 9.65
customer$MonthlyCharges[6]

customer$MonthlyCharges[1] <- customer$MonthlyCharges[1] * 3
customer$MonthlyCharges[1]

customer$MonthlyCharges[37] <- customer$MonthlyCharges[37] / 3
customer$MonthlyCharges[37]



# Working with the relational operators: 
# a. Check if the value of 'tenure' in the 1st row is greater than the value of 
# 'tenure' in the 10th row 
# b. Check if the value of 'tenure' in the 3rd row is equal to the value of 'tenure' in
# the 5th row

customer$tenure[1] > customer$tenure[10]

customer$tenure[3] == customer$tenure[5]




# Working with logical operators: 
# a. Get the count of those customers who have subscribed to both 
# "TechSupport" &"StreamingTV"
# b. Extract those customers whose 'InternetService' is either 'DSL' or 'Fiber 
# optic' & store the result in 'Internet_dsl_fiber'

a <- customer$TechSupport == "Yes" & customer$StreamingTV == "Yes"
table(a)

b <- customer$InternetService =="DSL" | customer$InternetService == "Fiber optic"
b <- subset(customer,b==T)
View(b)


