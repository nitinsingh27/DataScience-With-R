setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)

View(customer)

library(caTools)
library(tree)



# 1. Building a decision tree model: 
#   a. Start off by dividing the 'customer_churn' data into train & test sets in 70:30 ratios. 
# The split-criteria would be determined by the 'Dependents' column 
# b. Build a decision tree model on top of the 'train' set, where the dependent variable is 
# 'Dependents' & the independent variable is 'Partner'. Store the result in 'mod_tree1' 
# c. Plot the tree and add text 
# d. Predict the values on the test set and store the result in 'result_tree1' 
# e. Build a confusion matrix for the actual values & the predicted values 
# f. Calculate the accuracy from the confusion matrix 

sample.split(customer,SplitRatio = 0.70) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

tree(Dependents~Partner, data = train_customer) -> mod_tree1
plot(mod_tree1)
text(mod_tree1)

predict(mod_tree1, newdata = test_customer, type = "class") -> result_tree1

table(test_customer$Dependents, result_tree1) -> tab
sum(diag(tab))/sum(tab)


# 2. Building 2nd decision tree model on same 'train' & 'test' sets: 
#   a. In this case the dependent variable is 'Dependents' & the independent variables are 
# 'Partner' & 'InternetService'. Store the result in 'mod_tree2' 
# b. Plot the tree & add text 
# c. Predict the values on the test set & store the result in 'result_tree2' 
# d. Build a confusion matrix for the actual values & the predicted values 
# e. Calculate the accuracy from the confusion matrix


tree(Dependents~Partner+InternetService, data = train_customer) -> mod_tree2
plot(mod_tree2)
text(mod_tree2)

predict(mod_tree2, newdata = test_customer, type = "class") -> result_tree2

table(test_customer$Dependents, result_tree2) -> tab1
sum(diag(tab1))/sum(tab1)
