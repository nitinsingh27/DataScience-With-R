setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

pharma <- read.csv("Pharma.csv",stringsAsFactors = T)
View(customer)
View(pharma)

library(ggplot2)


# 1. Create a histogram for 'Age' column using pharmacovigilance dataset:
# a. Set number of bins to 100. 
# b. Assign as color 'azure' to the histogram.
# c. Assign a color 'white' to the 'fill' attribute in geom_histogram function.

ggplot(data = pharma,aes(Age,col = "azure")) + geom_histogram(bins = 100, fill = "white")



# 2. Create a histogram for 'Patient ID' using pharmacovigilance dataset:
# a. Assign a color 'wheat3' to the plot.
# b. Set number of bins to 50. 
# c. Assign a color 'black' to the 'fill' attribute in geom_histogram function.

ggplot(data = pharma,aes(x = PatientID, col = "wheat3")) + geom_histogram(bins = 50,fill = "black")


# 3. Create a histogram using customer churn dataset: 
# a. Assign 'MonthlyCharges' column to the x-axis. 
# b. Set the number of bins to 80. 
# c. Assign a color 'violet' to the bars.
# d. Assign a color 'white' to the 'fill' attribute in geom_histogram function.

ggplot(data = customer,aes(x = MonthlyCharges, col = "violet")) + geom_histogram(bins = 80,fill = "white")


# 4. Create a histogram using customer churn data: 
# a. Assign 'tenure' column to the x-axis. 
# b. Set the number of bins to 50. 
# c. Assign a color 'white' to the bars.
# d. Assign a color 'black' to the 'fill' attribute in geom_histogram function.


ggplot(data = customer,aes(x = tenure, col = "white")) + geom_histogram(bins = 50,fill = "black")
