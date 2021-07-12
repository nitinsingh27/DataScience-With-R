setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

# 1. Create a plot using plot() function for hsc_s column, assign a color 'orange', and 
# label x-axis as 'Higher Secondary Subjects'.

plot(placement$hsc_s,col = "orange", xlab = "Higher Secondary Subjects")


# 2. Create a plot using plot() function for 'degree_t' column: 
#   a. Assign a color 'palegreen4'
# b. Label x-axis as 'Percentage in Graduation'
# c. Label y-axis as 'Number of Students'

plot(placement$degree_t,col = "palegreen", xlab = "Percentage in Graduation", ylab = "Number of Students")



# 3. Create a plot using plot() function for 'specialisation' column: 
#   . Assign a color 'wheat3'
# a. Label x-axis as 'Specialization Field'
# b. Label y-axis as 'Number of Students'
# c. Give a heading using 'main' attribute as 'Distribution of Specialization'


plot(placement$specialisation,col = "wheat3", xlab = "Specialization Field", ylab = "Number of Students", main = "Distribution of Specialization")
