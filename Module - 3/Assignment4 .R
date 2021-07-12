setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(customer)

library(ggplot2)


# 1. Build a histogram for the 'TotalCharges' column. Map 'gender' onto fill aesthetic.
# a. Facet the plot w.r.t 'gender' column

ggplot(data = customer,aes(TotalCharges, fill = gender)) + geom_histogram() + facet_grid("gender")



# 2. Build a box-plot between 'tenure' & 'InternetService'. Map 'tenure' on the y-axis & 
#   'InternetService' on the x-axis. Map 'Contract' to the fill aesthetic
# a. Facet the plot w.r.t 'Contract' column


ggplot(data = customer,aes(y = tenure, x = InternetService, fill = Contract)) + geom_boxplot() + facet_grid("Contract")


# 3. Build a scatter-plot between 'etest_p' & 'mba_p'. Map 'etest_p' on the y-axis & 
#   'mba_p' on the x-axis. Map 'degree_t' onto col aesthetic 
# a. Facet the plot w.r.t 'degree_t' column

ggplot(data = placement,aes(y = etest_p, x = mba_p, col = degree_t)) + geom_point() + facet_grid("degree_t")
