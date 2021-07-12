setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)

library(ggplot2)


# 1. Build a bar-plot for the 'specialisation' column. Give it a fill color of 'skyblue'
# a. Give the panel a background color of 'cornsilk4'.
# b. Give the plot a background color of 'lightgreen'.

ggplot(data = placement,aes(specialisation)) + geom_bar() + 
  theme(panel.background = element_rect(fill = "cornsilk4"),plot.background = element_rect(fill = "lightgreen"))




# 2. Build a scatter-plot between 'hsc_p' & 'ssc_p'. Map 'hsc_p' on the y-axis & 'ssc_p' on 
# the x-axis. Assign a color of 'lightgreen' to the points.
# a. Add a title to the plot 'HSC Percent vs SSC Percent.
# b. Give the panel a background color of 'skyblue'.
# c. Give the plot a background color of 'beige'.
# d. Center align the title. 

ggplot(data = placement, aes(y = hsc_p, x = ssc_p)) + geom_point(col = "lightgreen") + labs(title = "HSC Percent vs SSC Percent") + 
  theme(panel.background = element_rect(fill = "skyblue"), plot.background = element_rect(fill = "beige"), plot.title = element_text(hjust = 0.5))
