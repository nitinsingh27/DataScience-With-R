# 1. Create a matrix named 'm_even' with the 16 continuous even values. The matrix 
# should have 4 rows & 4 columns. Also, arrange the elements by row. 

m_even <- matrix(c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32),nrow = 4,byrow = T)
m_even

# 2. Create a matrix name 'm_odd' having 4 rows and 4 columns with 16 consecutive 
# odd values arranged by row. 

m_odd <- matrix(c(1,3,5,7,9,11,13,15,17,19,21,23,25,27,29,31),nrow = 4,byrow = T)
m_odd

# 3. Create a matrix named m_8 as per the following conditions: 
# a. The dimension of the matrix should be 8x8. 
# b. It should have consecutive values starting from 1. 
# c. It should be arranged by row. 


m_8 <- matrix(c(1:64),nrow = 8,byrow = T)
m_8
