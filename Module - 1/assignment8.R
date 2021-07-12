#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

#Reading and assigning values of Placement dataset in placement 
placement <- read.csv("Placement.csv")


#Reading and assigning values of pharma dataset in pharma
pharma <- read.csv("Pharma.csv")


#Reading and assigning values of city_temperature dataset in temperature
temperature <- read.csv("city_temperature.csv")



#----------------------------Problem 1--------------------------

# A

if(placement$degree_t[12]=="Comm&Mgmt") 
{
  print("The student is of the stream Commerce and Management")
}

# B

if(placement$specialisation[23]== "Mkt&HR")
{
  print("The specialization of student is Marketing and  Human Resource")
}


# C

if(placement$status[39]=="Placed")
{
  print("The student is placed from campus")
}
  
  
#----------------------------Problem 2-------------------------  

# A

 if(pharma$Issues[37]=="Medication history documenting error")
 {
   print("The patient medical record is missing")
 }


# B

if(pharma$Issues[180]=="Unclear Route")
{
  print("The patient is having an unclear route of transmission")
}


# C

if(pharma$LocationID[220]=="Location3")
{
  print("The locationID of patient is location 3")
}




#-----------------------------------------Problem 3-----------------------------------------


# A

if(temperature$Region[11]=="Africa")
{
  print("The region for which we are calculating average temperature is Africa")
}



# B

if(temperature$City[79961]=="Conakry")
{
  print("The city for which we are calculating average temperature is Conakry")
}



# C

if(temperature$Year[70]=="1995")
{
  print(" we are calculating average temperature for 1995")
}



















  
  
  