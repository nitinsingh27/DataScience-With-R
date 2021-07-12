setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

library(ggplot2)


# 1. Create a histogram for 'ssc_p' column:
#   a. Assign as color 'azure' to the histogram.
# b. Set number of bins to 50. 
# c. Assign a color 'cornsilk4' to the 'fill' attribute in geom_histogram function. 
# d. Give it a title as 'SSC Percentage'

ggplot(data = placement,aes(ssc_p)) + geom_histogram(fill = "cornsilk4", col = "azure",bins = 50) + ggtitle("SSC Percentage")


# 2. Create a histogram for 'hsc_p':
#   a. Assign a color 'wheat3' to the plot.
# b. Set number of bins to 50. 
# c. Assign a color 'black' to the 'fill' attribute in geom_histogram function.
# d. Give it a title as 'HSC Percentage'

ggplot(data = placement,aes(hsc_p)) + geom_histogram(fill = "black", col = "wheat3",bins = 50) + ggtitle("HSC Percentage")


# 3. Create a histogram as per the following conditions: 
#   a. Assign 'degree_p' column to the x-axis. 
# b. Set the number of bins to 80. 
# c. Assign a color 'violet' to the bars.
# d. Assign a color 'white' to the 'fill' attribute in geom_histogram function.
# e. Give it a title as 'Degree Percentage'

ggplot(data = placement,aes(x = degree_p)) + geom_histogram(fill = "white", col = "violet",bins = 80) + ggtitle("Degree Percentage")


# 4. Create a histogram as per the following condition: 
#   a. Assign 'etest_p' column to the x-axis. 
# b. Set the number of bins to 100. 
# c. Assign a color 'white' to the bars.
# d. Assign a color 'black' to the 'fill' attribute in geom_histogram function. 
# e. Give it a title as 'E-test Percentage'

ggplot(data = placement,aes(x = etest_p)) + geom_histogram(fill = "black", col = "white",bins = 100) + ggtitle("E-test Percentage")

