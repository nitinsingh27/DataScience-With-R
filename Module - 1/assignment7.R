#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


#Reading and assigning values of Placement dataset in placement 
placement <- read.csv("Placement.csv")

#Reading and assigning values of customer_churn in customer 
customer <- read.csv("customer_churn.csv")

#---------------------------Problem A------------------------------

if(placement$status[95]=="Placed")
{
  print("The student is placed from campus drives")
}else if(placement$status[95]=="Not Placed")
{
  print("The student is not placed from campus")
}else if(placement$status[95]=="NA")
{
  print("Students data is not avialable")
}



#-----------------------------Problem B--------------------------------


if(placement$hsc_s[64]=="Science")
{
  print("The Subject opted by student is Science")
}else if(placement$hsc_s[64]=="Commerce")
{
  print("The Subject opted by student is Commerce")
}else if(placement$hsc_s[64]=="Arts")
{
  print("The Subject opted by student is Arts")
}



#---------------------------Problem C-------------------------------

if(customer$PaymentMethod[28]=="Credit card (automatic)")
{
  print("The customer is using credit card as their payment method.")
} else if(customer$PaymentMethod[28]=="Mailed Check")
{
  print("The customer is using Mailed Check as their payment method.")
} else if(customer$PaymentMethod[28]=="Electronic check")
{
  print("The customer is using Electronic Check as their payment method.")
}





