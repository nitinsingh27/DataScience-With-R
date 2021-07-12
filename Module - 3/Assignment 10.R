setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

library(ggplot2)


# 1. Create a box-plot between 'etest_p' & 'workex'. Map 'etest_p' to the y-axis & 
#   'workex' to the 'x-axis'
# a. Assign it a fill color of 'wheat3'
# b. Assign it a boundary color of 'snow3'
# c. Give a title as 'E-test & Workex'

ggplot(data = placement,aes(x = workex, y = etest_p)) + geom_boxplot(fill = "wheat3", col = "snow3") + ggtitle("E-test & Workex")


# 2. Build a box-plot between 'etest_p' & 'gender'. Map 'etest_p' to the y-axis & 'gender' 
# to the 'x-axis'
# a. Assign 'degree_t' to the fill aesthetic
# b. Assign 'hsc_s' to the fill aesthetic
# c. Give a title as 'E-test & Gender'

ggplot(data = placement,aes(x = gender, y = etest_p, fill = degree_t)) + geom_boxplot() + ggtitle("E-test & Gender")

ggplot(data = placement,aes(x = gender, y = etest_p, fill = hsc_s)) + geom_boxplot()


# 3. Build a box-plot between 'etest_p' & 'specialisation'
# a. Assign 'ssc_b' to the fill aesthetic 
# b. Assign 'hsc_b' to the fill aesthetic
# c. Give a title as 'E-test & Specialization'

ggplot(data = placement,aes(x = specialisation, y = etest_p, fill = ssc_b)) + geom_boxplot() + ggtitle("E-test & specialisation")

ggplot(data = placement,aes(x = specialisation, y = etest_p, fill = hsc_b)) + geom_boxplot() + ggtitle("E-test & specialisation")
