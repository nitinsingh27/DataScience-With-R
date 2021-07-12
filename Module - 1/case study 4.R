setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


# Create these vectors: 
# a. A character vector named 'fruits' with these values: 'Apple', 'Guava', 'Banana',
# 'Mango'
# b. A numeric vector named 'hundred' comprising of the first 100 natural
# numbers 
# c. A logical vector named 'logic_game' with these values:
#   'TRUE','TRUE','FALSE','FALSE'

# A
fruits <- c("Apple", "Guava", "Banana", "Mango")
hundred <- 1:100
logic_game <- c(T,T,F,F)


# 2. Create a list named 'jumbo' which comprises of: 
# a. A character vector comprising of alphabets from A to D 
# b. A numeric vector comprising of numbers from 55 to 60
# c. A logical vector comprising of just these two values: True, False 
# i. Now, access the third value from the first element of the list 
# ii. Access the 2nd value from the 2nd element of the list 
# iii. Access the 1st value from the 3rd element of the list 

jumbo <- list(c(LETTERS[1:4]),c(55:60),c(T,F))
jumbo[[1]][3]
jumbo[[2]][2]
jumbo[[3]][1]

# 3. Create a matrix named 'four_trouble', with the numbers 1 to 16. The matrix should have 4 rows & 4 columns 
# a. Arrange the elements by row 

four_trouble <- matrix(1:16,nrow = 4)
four_trouble <- matrix(1:16,nrow = 4,byrow = T)
four_trouble


# 4. Create an array named 'sky_maze' with the numbers 1 to 32. The array should comprise of two 4*4 matrices 
sky_maze <- array(1:32, dim = c(4,4,2))
sky_maze
