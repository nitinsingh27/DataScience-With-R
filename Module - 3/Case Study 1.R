setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

View(customer)

# Two ways of removing na values from Total charges
customer$TotalCharges <- ifelse(is.na(customer$TotalCharges),0,(customer$TotalCharges))

#customer$TotalCharges <- na.omit(customer$TotalCharges)



# 1. Create a bar-plot for the 'PaymentMethod' column. 
# a. Assign the color 'burlywood4'
# b. Assign the x-axis label to be "Payment Method"
# c. Assign the title to be "Bar-Plot for Payment Method"

plot(customer$PaymentMethod,col = "burlywood4",xlab = "Payment Method", main = "Bar-Plot for Payment Method")

# 2. Create a histogram for the 'TotalCharges' column 
# a. Assign the color 'forestgreen'
# b. Assign the x-axis label to be "Total Charges"
# c. Assign the title to be "Histogram for Total Charges"

hist(customer$TotalCharges,col = "forestgreen", xlab = "Total Charges", main = "Histogram for Total Charges")


# 3. Create a density plot for the 'TotalCharges' column
# a. Assign the color 'maroon'
# b. Assign the x-axis label to be "Total Charges"
# c. Assign the title to be "Density plot for Total Charges"

plot(density(customer$TotalCharges),col = "maroon",xlab = "Total Charges",main = "Density plot for Total Charges")


                                                                                      