#getting and setting working directory
setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

#Reading and assigning values of city_temperature dataset in temperature
temperature <- read.csv("city_temperature.csv")

#Reading and assigning values of Placement dataset in placement 
placement <- read.csv("Placement.csv")


#Find the class of the following attributes: 
#a. Region 
#b. Country 
#c. City 
#d. Month 
#e. Day 
#f. Year 
#g. AvgTemperature 

class(temperature$Region)
class(temperature$Country)
class(temperature$City)
class(temperature$Month)
class(temperature$Day)
class(temperature$Year)
class(temperature$AvgTemperature)





#After finding the class of the above attributes, convert them to the following data type: 
   #i) Vector to Character 
#a. Gender 
#b. ssc_b 
#c. hsc_b 
#d. hsc_s 
#e. status 
#f. workex 
#g. specialization 
  
  
class(placement$gender)  
class(placement$ssc_b)
class(placement$hsc_b)
class(placement$hsc_s)
class(placement$status)
class(placement$workex)
class(placement$specialisation)


  #ii) Check the class of placement_data and convert it to character data type. 

class(placement)
placement <- as.character(placement)
