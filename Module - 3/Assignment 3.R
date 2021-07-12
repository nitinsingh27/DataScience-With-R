setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

library(ggplot2)


# 1. Create the following bar-plot where: 
# a. 'Gender' is assigned to x-axis, 'ssc_p' to y-axis, and map 'ssc_b' with col 
# aesthetic. 

ggplot(data = placement,aes(y = ssc_p, x = gender, col = ssc_b))  + geom_point()

# b. 'ssc_b' is assigned to x-axis, 'hsc_s' to y-axis, and map 'degree_t' with col 
# aesthetic. 

ggplot(data = placement,aes(y = hsc_s, x = ssc_b, col = degree_t))  + geom_point()


# c. 'Status' is assigned to x-axis, salary to y-axis, and map 'specialisation' with 
# col aesthetic. 

ggplot(data = placement,aes(y = salary, x = status, col = specialisation))  + geom_point()

# d. 'Degree_t' is assigned to x-axis, 'etest_p' to y-axis, and map 'workex' with col 
# aesthetic. 

ggplot(data = placement,aes( x = etest_p,y = degree_t, col = workex))  + geom_point()

# e. 'Hsc_s' is assigned to x-axis, 'hsc_b' to y-axis, and map gender with col 
# aesthetic. 

ggplot(data = placement,aes(y = hsc_b, x = hsc_s, col = gender))  + geom_point()

# f. 'Hsc_s' is assigned to x-axis, 'etest_p' to y-axis, and map 'degree_t' with col 
# aesthetic.

ggplot(data = placement,aes(y = etest_p, x = hsc_s, col = degree_t))  + geom_point()


