setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)

library(caTools)

#install.packages("ROCR")
library(ROCR)

# 1. Build a logistic regression model: 
#   a. Start off by dividing the data-set into 'train' & 'test' sets in 80:20 ratio, with the split
# criteria being determined by 'Churn' column 
# b. Build a logistic regression model on the train set where the dependent variable is 
# 'Churn' & the independent variables are 'MonthlyCharges', 'tenure' & 'TechSupport' & 
#   store the result in 'log_mod_roc' 
# c. Predict the values on top of the test set & store the result in 'result_log_roc' 
# d. Use the performance () function from the ROCR package & build the 'Accuracy vs cutoff' plot e. Plot the 'ROC' curve 
# e. Find out the "area under the curve"


sample.split(customer$Churn, SplitRatio = 0.80) -> customer_split
subset(customer, customer_split==T) -> train
subset(customer, customer_split==F) -> test

glm(Churn~MonthlyCharges+tenure+TechSupport, data = train, family = "binomial") -> log_mod_roc

predict(log_mod_roc, newdata = test, type = "response") -> result_log_roc

prediction(result_log_roc, test$Churn) -> customer_predict

performance(customer_predict, "acc") -> acc

plot(acc)

table(test$Churn, result_log_roc > 0.4)

performance(customer_predict, "tpr", "fpr") -> roc_curve

plot(roc_curve)


performance(customer_predict, "auc") -> auc
auc
