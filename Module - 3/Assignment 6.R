setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

pharma <- read.csv("Pharma.csv",stringsAsFactors = T)

View(pharma)

library(ggplot2)

# 1. Build a bar-plot: 
#   a. Assign 'LocationID'column to x-axis. 
# b. Assign 'Issues' to the fill attribute.
# c. Set title to 'Location ID Plot'

ggplot(data = pharma, aes(x = LocationID, fill = Issues)) + geom_bar() + ggtitle("Location ID Plot")

# 2. Build a bar-plot for the 'DrugID' column:
#   a. Assign the fill color to be 'orange'
# b. Assign the boundary color to be 'peru'
# c. Set title to 'Drug ID Plot'

ggplot(data = pharma, aes(x = DrugID)) + geom_bar(fill = "Orange",col = "peru")  + ggtitle("Drug ID Plot")



# 3. Build a bar-plot for the 'Gender' column assigned to x-axis and then: 
#   a. Assign 'DrugID' to the fill aesthetic
# b. Assign 'Issues' to the fill aesthetic
# c. Change the position of bars to 'identity'
# d. Set title to 'Gender Plot

ggplot(data = pharma,aes(Gender, fill = DrugID)) + geom_bar(position = "identity") + ggtitle("Gender Plot")

ggplot(data = pharma,aes(Gender, fill = Issues)) + geom_bar(position = "identity") +ggtitle("Gender Plot")
