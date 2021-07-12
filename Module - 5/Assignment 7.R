setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
placement <- read.csv("Placement.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

library(ggplot2)

# After building the simple linear model on top of the train set for the city_temperature 
# data frame, now do the following tasks: 
# a. Create a scatter plot with the help of ggplot2 package and plot Month on the yaxis and AvgTemperature on the x-axis of the graph. 
# b. Now plot the regression line on the scatter plot.

ggplot(data = city, aes(x = AvgTemperature, y = Month)) + geom_point() + geom_smooth(method = "lm")



# 2. After building the simple linear model on top of the train set for the 
# Placement_Data_Full_Class data frame, now perform the following tasks: 
# a. Create a scatter plot with the help of ggplot2 package and plot etest_p on the yaxis and status on the x-axis of the graph. 
# b. Now plot the regression line on the scatter plot. 

ggplot(data = placement, aes(x = status, y = etest_p)) + geom_point() + geom_smooth(method = "lm")



# 3. After building the simple linear model on top of the train set for the 
# Pharmacovigilance_audit_Data data frame, now perform the following tasks: 
# a. Create a scatter plot with the help of ggplot2 package and plot Age on the yaxis and DrugID on the x-axis of the graph. 
# b. Now plot the regression line on the scatter plot.

ggplot(data = pharma, aes(x = DrugID, y = Age)) + geom_point() + geom_smooth(method = "lm")
