setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")

# 1. Check if the value in the 6th cell of 'PaymentMethod' column is 'Electronic check'. If yes, print 
# "Yes, the payment method is Electronic check"

if(customer$PaymentMethod[6]=="Electronic check")
{
  print("Yes, The payment method is electroinic check")
}


# 2. Check the value present in 12th cell of 'Contract' column. 
# If it's 'month-to-month', print 'The contract is on a month to month basis' 
# If it's 'One year', print 'The contract is on a yearly basis'
# If it's 'Two year', print 'The contract is on a two-year basis'

if(customer$Contract[12]=="Month-to-month")
{
  print("The contract is on a month to month basis")
} else if (customer$Contract[12]=="One year")
{
  print("The contract is on a yrarly basis")
} else if(customer$Contract[12]=="Two year")
{
  print("The contract is on a two year basis")
}

# 3. Use switch to check the gender in 6th cell of 'gender' column. 
# If it's 'Male', give a discount of 20% in 'MonthlyCharges'
# If it's 'Female', give a discount of 50% in 'MonthlyCharges'

switch (customer$gender[6],
  "Male" = customer$MonthlyCharges[6] * 0.8,
  "Female"= customer$MonthlyCharges[6] * 0.5
)


# 4. Use for loop to get the count of customers whose 'InternetService' is'DSL'

count = 0
for (i in 1:nrow(customer)) {
  if(customer$InternetService[i]=="DSL")
  {
    count = count + 1  
  }
}

count

# 5. Use while to find the number of customers whose tenure is exactly '2' months 

c1 = 0
index = 1

while (index <= nrow(customer)) {
  if(customer$tenure[index]==2){
    c1=c1+1
  }
  index = index+1
}

c1




