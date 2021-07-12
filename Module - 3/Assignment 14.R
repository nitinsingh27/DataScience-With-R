setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

pharma <- read.csv("Pharma.csv",stringsAsFactors = T)

View(pharma)

install.packages("plotly")

library(plotly)


# 1. Build a histogram for the 'Age' column.
# a. Color should be determined by 'Issues' column
# b. Color should be determined by 'Gender' column

plot_ly(data = pharma, x = ~Age , color = ~Issues, type = "histogram")
plot_ly(data = pharma, x = ~Age , color = ~Gender, type = "histogram")


# 2. Create a scatter plot between 'Age' & 'Gender' as per the following condition: 
#   a. Map 'Age' on the y-axis 
# b. Map 'Gender' on the 'x-axis'
# c. Color should be determined by 'Issues' column

plot_ly(data = pharma, y = ~Age, x = ~Gender , color = ~Issues, type = "scatter")




# 3. Create a box-plot between 'DrugID' & 'Age'.
# a. Map 'DrugID' on the x-axis 
# b. Map 'Age' on the y-axis 
# c. Color should be determined by 'Gender' column 

plot_ly(data = pharma, y = ~Age, x = ~DrugID , color = ~Gender, type = "box")
