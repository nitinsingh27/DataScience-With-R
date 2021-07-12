setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


pharma <- read.csv("Pharma.csv")


# Extract some random set of values using sample function. 
# a. Select five random values from LocationID. 
# b. Extract 25 random values from age column. 
# c. Extract 15 random from PatientID. 
# d. Extract 10 random values from Issues column. 


sample(pharma$LocationID,5)
sample(pharma$Age,25)
sample(pharma$PatientID,15)
sample(pharma$Issues,10)
