setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

customer <- read.csv("Customer_churn.csv")

placement <- read.csv("Placement.csv")
View(placement)




# 1. Using switch case, check 67th row of hsc_s column from placement data: 
#   If it is "Science", then add 5 extra marks in degree_p score.
# If it is "Commerce", then add 3 extra marks in degree_p score. 

switch (placement$hsc_s[67],
  "Science" = placement$degree_p[67] + 5,
  "Commerce" = placement$degree_p[67] + 3
)


# 2. Check 74th row of ssc_b column in the placement datasset: 
#   If it is "Others", then add 3 as grace marks in hsc_p for the 74th row. 
# If it is "Central", then add 5 as grace marks in hsc_p for the 74th row.

switch (placement$ssc_b[74],
  "Others" = placement$hsc_p[74] + 3,
  "Central" = placement$hsc_p[74] + 5
)


# 3. Using switch case, check 4th row of contract column from customer churn data: 
#   If it is "One Year", then give a 20% discount in total charges. 
# If it is "Month-to-month", then give a discount of 5% in total charges.

switch (customer$Contract[4],
        "One year" = customer$TotalCharges[4] * 0.8,
        "Month-to-month"= customer$TotalCharges[4] * 0.95
)

# 4. Check 14th row of Internet Service column in the customer churn datasset: 
#   If the customer is using "Fiber optic", then give a discount of 15% in total charges. 
# If it is "DSL", then give a discount of 10% in total charges. 

switch (customer$InternetService[14],
  "Fiber optic" = customer$TotalCharges[14] * 0.8,
  "DSL" = customer$TotalCharges[14] * 0.9
)






