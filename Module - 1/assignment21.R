# 1. Create a list named internet_service using the following condition: 
# a. A character vector that consists of name of the internet services as "DSL", 
# "Fiber Optic", "Cable Broadband", and "Wireless".
# b. A numeric vector that consists of values from 30 to 40 
# c. A logical vector having 6 values as: True, False, True, True, True, and False 


internet_service <- list(c("DSL","Fiber Optic","Cable Broadband","Wireless"),c(30:40),c(T,F,T,T,T,F))

internet_service

# 2. Create a list named payment_method using the following condition: 
# a. A character vector comprising of payment methods as: 'Electronic Check', 
# 'Mailed Check', 'Credit Card', and 'Online Transfer'.
# b. A numeric vector that consists of values from 85-95
# c. A logical vector having 6 values as: True, True, False, True, False, and True. 

payment_method <- list(c("Electronic Check","Mailed Check","Credit card","Online Transfer"),c(85:95),c(T,T,F,T,F,T))

payment_method


# 3. Create a list named contract_list using the following condition: 
# a. A character vector comprising of contract type as: "Month to month", "One 
# Year", "Two Year", and "Three Year".
# b. A numeric vector comprising of five values as: '1', '12', '17', '32', and '72'.
# c. A logical vector comprising of four values: True, False, True, and True. 
# i. Now, extract the 2nd value from the first element of the list 
# ii. Extract the 3rd value from the 2nd element of the list 
# iii. Extract the 4th value from the 1st element of the lists 


contract_list <- list(c("month to month","one year","Two year","three year"),c(1,12,17,32,72),c(T,F,T,T))

contract_list [[1]][2]
contract_list[[2]][3]
contract_list[[1]][4]
