setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

install.packages("arulesViz")
library(arules)
library(arulesViz)

data("Groceries")

# 1. Building the apriori algorithm: 
#   a. Load the 'Groceries' dataset from the 'arules' package 
# b. Build the apriori algorithm where the support value is '0.05' and the 
# confidence value is '0.3'. Store the result in 'rule1' 
# c. Inspect the rule 
# d. Plot the rule and set the method to be 'grouped' 

summary(Groceries)

apriori(Groceries, parameter = list(support = 0.05, confidence = 0.3)) -> rule1
inspect(head(rule1,5))
plot(rule1, method = "grouped")



# 2. Build another apriori algorithm on 'Groceries' dataset: 
#   a. Set the support value to be '0.003' & the confidence value to be '0.7'. Store the 
# resultin 'rule2' b. Inspect the rule 
# b. Plot the rule & set the method to be 'grouped

summary(Groceries)

apriori(Groceries, parameter = list(support = 0.003, confidence = 0.7)) -> rule2
inspect(head(rule2,5))
plot(rule2)

