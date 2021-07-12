setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv",stringsAsFactors = T)
placement <- read.csv("Placement.csv",stringsAsFactors = T)
pharma <- read.csv("pharma.csv",stringsAsFactors = T)
city <- read.csv("city_temperature.csv",stringsAsFactors = T)

View(customer)

library(caTools)

# 1. From the city_temperature dataset, split the data frame into train and test sets. 
# a. Split the dataset into 70:30 ratio by the dependent feature. 

rows = seq(1,nrow(city))
trainRows = sample(rows,0.70*nrow(city))
train = city[trainRows,]
test = city[-trainRows,]


#Another Method 
sample.split(customer,SplitRatio = 0.70) -> split_city
subset(city,split_city==T) -> train
subset(city,split_city==F) -> test



# 2. From the Placement_Data_Full_Class, split the data frame into train and test sets. 
# a. Split the dataset into 80:20 ratio by the dependent feature. 


sample.split(placement,SplitRatio = 0.80) ->split_placement
subset(placement,split_placement==T) -> train_placement
subset(placement,split_placement==F) -> test_placement




# 3. From the Pharmacovigilance_audit_Data, split the data frame into train and test sets. 
# a. Split the dataset into 75:25 ratio by the dependent feature.


sample.split(pharma,SplitRatio = 0.75) ->split_pharma
subset(pharma,split_pharma==T) -> train_pharma
subset(pharma,split_pharma==F) -> test_pharma
