setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_Churn.csv",stringsAsFactors = T)

library(caTools)




# 1. Build a multiple logistic regression model: 
# a. Start off by dividing the data-set into 'train' & 'test' sets in 65:35 ratio, with the splitcriteria 
# being determined by 'gender' column 
# b. Build a logistic regression model on the train set where the dependent variable is 'gender' 
# & the independent variables are 'Dependents', 'InternetService' & 'Contract' & store the 
# result in 'log_mod_multi' 
# c. Predict the values on top of the test set & store the result in 'result_log_multi' 
# d. Have a look at the range of 'result_log_multi' & build a confusion matrix where the 
# threshold of predicted values is greater than '0.49' 
# e. Calculate the accuracy of the model from the confusion matrix 


sample.split(customer$gender, SplitRatio = 0.65) -> customer_split
subset(customer, customer_split==T) -> train
subset(customer, customer_split==F) -> test


glm(gender~Dependents+InternetService+Contract, data=train, family = "binomial")-> customer_model

predict(customer_model, newdata=test, type="response") -> result_log_multi

range(result_log_multi)

table(test$gender, result_log_multi > 0.49)

(151+1076)/(151+1070+168+1076) -> acc1
acc1

# 2. Build second logistic regression model on the same 'train' & 'test' sets 
# a. In this case dependent variable is 'gender' & the independent variables are 'tenure', 
# 'MonthlyCharges' & 'PaymentMethod 
# b. Predict the values on top of the test set & store the result in 'result_log_multi2' 
# c. Have a look at the range of 'result_log_multi2' & build a confusion matrix where the 
# threshold of predicted values is greater than 0.49 
# d. Calculate the accuracy of the model from the confusion matrix


glm(gender~tenure+MonthlyCharges+PaymentMethod, data=train, family = "binomial")-> customer_model2

predict(customer_model2, newdata=test, type="response") -> result_log_multi2

range(result_log_multi2)

table(test$gender, result_log_multi2 > 0.49)

(18+1237)/(18+1203+7+1237) -> acc2
acc2
