setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

movies <- read.csv("movies.csv",stringsAsFactors = FALSE)
ratings <- read.csv("ratings.csv")

#install.packages("recommenderlab")
#install.packages("reshape2")

library(dplyr)
library(recommenderlab)
library(reshape2)



# 1. Implementing User-Based Recommender System using SVD (Singular Value Decomposition) method: 
# a. Load the 'ratings' and 'movies' datasets which is a part of 'MovieLense' 

movies <- read.csv("movies.csv",stringsAsFactors = FALSE)
ratings <- read.csv("ratings.csv")



# b. From the 'ratings' dataset, extract only those observations where a user has
# rated at least 131 movies & each movie has been rated more than30 times.

#------------------------------------------------------------------------------------------------------------------------------------
#To create a list of all the movies rated less often(only include top 30% rated movies)

movie_summary <- ratings %>% group_by(movieId) %>% summarise(count = n(),mean(rating))

movie_benchmark <- round(quantile(movie_summary$count,0.70, names = FALSE),0)

drop_movie <- movie_summary[movie_summary$count < movie_benchmark,1]

drop_movie <- as.data.frame(drop_movie)

#--------------------------------------------------------------------------------------------------------------------------------------------------------
#To create a list of all the inactive users(users who rate less often)

user_summary <- ratings %>% group_by(userId) %>% summarise(count = n(),mean(userId))

user_benchmark <- round(quantile(user_summary$count,0.70, names = FALSE),0)

drop_user <- user_summary[user_summary$count < user_benchmark,1]

drop_user <- as.data.frame(drop_user)

#--------------------------------------------------------------------------------------------------------------------------------------------
#To remove all the movies rated less often and users who rate less often

ratings = anti_join(ratings, drop_movie, by = "movieId")
ratings = anti_join(ratings, drop_user, by = "userId")



# c. Create a rating matrix for the 'ratings' dataset and convert it to a 
# 'realRatingMatrix' object and store it in 'ratingmat' 

#--------------------------------------------------------------------------------------------------------------------------------------
#Create ratings matrix for 'ratings' matrix with Rows = userId, Columns = movieId

ratingmat <- dcast(ratings, userId~movieId, value.var = "rating", na.rm=FALSE)
ratingmat <- as.matrix(ratingmat[,-1]) #remove userIds

#Convert rating matrix into a recommenderlab sparse matrix
ratingmat <- as(ratingmat, "realRatingMatrix")

#Normalize the data
ratingmat_norm <- normalize(ratingmat)



# d. Build the User-Based Collaborative Filtering model on the 'ratingmat' using 
# SVD method & store the result in 'recommender_model' 

recommender_model <- Recommender(ratingmat_norm, method = "SVD")


# e. Predict the ratings for the 5th user and store the result as a list in 'recom_list'.

recom <- predict(recommender_model, ratingmat[5], n=10) #Obtain top 10 recommendations for 5th user in dataset
recom_list <- as(recom, "list") #convert recommenderlab object to readable list



# f. Print the top10 recommended movies for 5th user 

recom_result <- matrix(0,10)

for (i in c(1:10)){
  recom_result[i] <- movies[as.integer(recom_list[[1]][i]),2]
}

#Print top 10 recommendations
recom_result


# g. Print evaluation metrics for the SVD model using the 5-fold cross-validation for 
# top 1, 3, 5, and 10 recommendations

#------------------------------------------------------------------------------------------------------------------------------------------------------------
#To calculate the evaluation metrics for the SVD model using thhe 5-fold cross-validation

evaluation_scheme <- evaluationScheme(ratingmat, method="cross-validation", k=5, given=3, goodRating = 5) #k=3 meaning a 3-fold cross validation.

#To calculate evaluation metrics for top 1,3,5, and 10 recommendations
evaluation_results <- evaluate(evaluation_scheme, method="SVD", n=c(1,3,5,10))

eval_results <- getConfusionMatrix(evaluation_results)[[1]]

#To print the evaluation results
eval_results

