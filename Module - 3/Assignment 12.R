setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

library(ggplot2)


# 1. Create bar-plot as per the following condition: 
#   a. Assign 'degree_t' to the x-axis. 
# b. Give title of the plot as 'Degree Plot'.
# c. Assign a color 'yellowgreen'.

ggplot(data = placement,aes(x=degree_t)) + geom_bar(col = "yellowgreen",fill = "white") + labs(title = " DEGREE PLOT")

# 2. Create bar-plot as per the following condition: 
#   a. Assign 'ssc_b' to the x-axis. 
# b. Give title of the plot as 'SSC Plot'.
# c. Assign a color 'beige'.

ggplot(data = placement,aes(x=ssc_b)) + geom_bar(col = "beige", fill = "white") + labs(title = " SSC PLOT")


# 3. Create bar-plot as per the following condition: 
#   a. Assign 'hsc_b' to the x-axis. 
# b. Give title of the plot as 'HSC Plot'.
# c. Assign a color 'cornsilk4'.

ggplot(data = placement,aes(x=hsc_b)) + geom_bar(col = "cornsilk4", fill = "white") + labs(title = " DEGREE PLOT")


# 4. Create bar-plot as per the following condition: 
#   a. Assign 'specialisation' to the x-axis. 
# b. Give title of the plot as 'Specialization Plot'.
# c. Assign a color 'pink'.


ggplot(data = placement,aes(x=specialisation)) + geom_bar(col = "pink", fill = "white") + labs(title = " specialisation plot")
