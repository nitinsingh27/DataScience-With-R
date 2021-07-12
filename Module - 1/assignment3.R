#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


pharma <- read.csv("Pharma.csv")


#Extract the following columns from the dataset:
# a. Age and Issues.
# b. Patient ID and Drug ID.
# c. Gender, Age, and Issues.


pharma_a <- pharma[,c("Age","Issues")]
View(pharma_a)


pharma_b <- pharma[,c("PatientID","DrugID")]
View(pharma_b)

pharma_c <- pharma[,c("Gender","Age","Issues")]
View(pharma_c)



#Extract the following rows:
# a. Row numbers 1,2,3,4, and 5
# b. Rows from 15 to 75
# c. Rows from 100-150

pharma_d <- pharma[1:5,]
View(pharma_d)


pharma_e <- pharma[15:75,]
View(pharma_e)


pharma_f <- pharma[100:150,]
View(pharma_f)





#Extract the following rows and columns:
# a. Columns (1,2,4) and rows(1 to 10)
# b. Columns (2,4,5) and rows(50 to 120)
# c. Columns (1,3,6) and rows(100 to 200)



pharma_g <- pharma[1:10,c(1,2,4)]
View(pharma_g)

pharma_h <- pharma[50:120,c(2,4,5)]
View(pharma_h)


pharma_i <- pharma[100:200,c(1,3,6)]
View(pharma_i)



