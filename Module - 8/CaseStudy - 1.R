setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)

View(customer)

library(caTools)

#install.packages("randomForest")
library(randomForest)

# 1. Building the first "Random Forest" model: 
#   a. Start off by dividing the 'customer_churn' data into train & test sets in 65:35 
# ratios. The split-criteria would be determined by the 'gender' column 
# b. Build a random forest model on top of the 'train' set, where the dependent 
# variable is 'gender' & the independent variables are 'MonthlyCharges' & 
#   'tenure'. The number of decision trees in the random forest would be 35. Store 
# the result in 'mod_forest1' 
# c. Find the importance of the independent variables and also plot it 
# d. Predict the values on top of the test set & store the result in 'result_forest1' 
# e. Build a confusion matrix for the actual values & the predicted values 
# f. Find out the accuracy from the confusion matrix 

sample.split(customer$gender,SplitRatio = 0.65) ->split_customer
subset(customer,split_customer==T) -> train_customer
subset(customer,split_customer==F) -> test_customer

randomForest(gender~MonthlyCharges+tenure, data = train_customer, ntree = 35) -> mod_forest1

importance(mod_forest1)
varImpPlot(mod_forest1, col = "red")

predict(mod_forest1, newdata = test_customer, type = "class") -> result_forest1

table(test_customer$gender, result_forest1) -> acc1
sum(diag(acc1))/sum(acc1)


# 2. Build a 2nd 'Random forest' model on the same train & test sets: 
#   a. The dependent & the independent variables would be same. The number of 
# decision trees would be 350. Store the result in 'mod_forest2' 
# b. Find the importance of the independent variables & also plot it 
# c. Predict the values on top of test set & store the result in 'result_forest2' 
# d. Build a confusion matrix for the actual values & predicted values 
# e. Find out the accuracy from the confusion matrix

randomForest(gender~MonthlyCharges+tenure, data = train_customer, ntree = 350) -> mod_forest2

importance(mod_forest2)
varImpPlot(mod_forest2, col = "red")

predict(mod_forest2, newdata = test_customer, type = "class") -> result_forest2

table(test_customer$gender, result_forest2) -> acc2
sum(diag(acc2))/sum(acc2)
