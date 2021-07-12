setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

placement <- read.csv("Placement.csv",stringsAsFactors = T)

View(placement)



# Create a plot to understand the distribution of degree_t column. 

plot(placement$degree_t)


# 2. Create a plot to understand the distribution of hsc_s column. 

plot(placement$hsc_s)


# 3. Create a plot for specialization column and give a heading as 'Specialization of  Candidate'. 

plot(placement$specialisation, main = "Specialization of  Candidate")



# 4. Create a plot using ssc_b, give it a color of 'aquamarine4', and give a heading as 'Type of Board'. 

plot(placement$ssc_b, col = "aquamarine4", main = "Type of Board")
