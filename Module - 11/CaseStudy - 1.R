setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()


AirPassengers


# 1. Implement the arima model on top of the 'AirPassengers' dataset & store the result 
# in 'mod_time' 
# 2. Predict the values for the next 20 years & store the result in 'pred_time' 
# 3. Plot the actual values & the predicted values



# AirPassengers is not-stationary and first we have to make Airpassengers stationary

plot(AirPassengers)
abline(lm(AirPassengers~time(AirPassengers)))  #because mean and variance are not constanti.e it in non-stationary

plot(decompose(AirPassengers))     #to decompose the plot we use log

boxplot(AirPassengers~cycle(AirPassengers))  # to create cyclical pattern

plot(log(AirPassengers))   # to make variance equal
abline(lm(log(AirPassengers)~time(log(AirPassengers))))

plot(diff(log(AirPassengers)))   # To make the mean constant we use diff
abline(lm(diff(log(AirPassengers))~time(diff(log(AirPassengers)))))

acf(AirPassengers)
acf(diff(AirPassengers))    # To get the value of q
pacf(diff(log(AirPassengers))) # To get the value of p

# to get the value of p, q, is the line number before the inverted line of acf and pacf and to get the value of d is how many time diff is used
  # p  d  q 
  # 0  1  1

arima(log(AirPassengers), c(0,1,1), seasonal = list(order = c(0,1,1), period = 12)) -> mod_time

predict(mod_time,20*12) -> pred_time    # All values of pred_time will be in log value
pred_time

2.718^pred_time$pred -> pred_time  # to convert the log values in normal values 
pred_time

ts.plot(AirPassengers, pred_time, log = "y", lty = c(1,3), main = " Forcested values")    # 1 represent the solid line and 3 represent the dotted line



