setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

library(ggplot2)





# 1. Build a bar-plot: 
# a. Assign 'etest_p' column to x-axis 
# b. Assign 'specialisation'column to x-axis 
# c. Assign 'workex' to the fill attribute 

ggplot(data = placement, aes(x = etest_p, fill = workex)) + geom_bar()
ggplot(data = placement,aes(x = specialisation, fill = workex)) + geom_bar()


# 2. Build a bar-plot for the 'degree_t' column: 
#   a. Assign the fill color to be 'orange'
# b. Assign the boundary color to be 'peru'

ggplot(data = placement, aes(x = degree_t)) + geom_bar( fill = "orange", col = "peru")


# 3. Build a bar-plot for the 'hsc_s' column assigned to x-axis and then: 
#   a. Assign 'hsc_b' to the fill aesthetic 
# b. Assign 'degree_t' to the fill aesthetic 
# c. Change the position of bars to 'identity'

ggplot(data = placement,aes(x = hsc_s, fill = hsc_b )) + geom_bar()

ggplot(data = placement,aes(x = hsc_s, fill = degree_t )) + geom_bar(position = "identity")
                                                                     