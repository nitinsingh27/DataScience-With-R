setwd("C:/Users/enerc/OneDrive/Desktop/data science/sessions/r_training")
getwd()

library(recommenderlab)
library(dplyr)


# 1. Implementing User-Based Recommender System: 
# a. Load the 'MovieLense' dataset which is a part of recommender lab Package 
# b. From the 'MovieLense' dataset, extract only those observations where the 
# users have seen atleast 100 movies & each movie has been seen at least 120 
# times. Store the result in 'sample_movie' 
# c. Divide 'sample_movie' into train & test sets. The split ratio needs to be 70:30 
# d. Build the User-Based Collaborative Filtering model on train set & store the 
# result in 'ubcf_model' 
# e. Predict the values on the test set. The number of movies to be recommended is 
# 10. 
# f. Recommend movies for user-3 & user-5 


data("MovieLense")
MovieLense


colCounts(MovieLense) -> view_per_movie
head(view_per_movie)
unique(movieLense)

data.frame(Moviename = names(view_per_movie), views = view_per_movie) -> table_view

table_view %>% arrange(desc(views)) -> table_view

MovieLense[rowCounts(MovieLense) > 100, colCounts(MovieLense) > 120] -> sample_movie

sample(x = c(T,F), size = nrow(sample_movie), replace = T,prob = c(0.7,0.3)) -> split_movie

sample_movie[split_movie,] -> sample_train
sample_movie[split_movie,] -> sample_test

Recommender(data = sample_train, method = "UBCF") -> ubcf_model

n_recommend_ubcf <- 10

predict(object = ubcf_model, newdata = sample_test, n = n_recommend_ubcf) -> predict_movie

predict_movie@items[[3]] -> user_3_movie_prediction
predict_movie@itemLabels[user_3_movie_prediction]

predict_movie@items[[5]] -> user_5_movie_prediction
predict_movie@itemLabels[user_5_movie_prediction]

# 2. Implementing Item-Based Recommender System: 
#   a. On the same train set, build the Item-Based Collaborative Filtering Model & 
#   store the result in 'ibcf_model' 
# b. Predict the values on test. The number of movies to be recommended is 12 
# c. Recommend movies for user-2 & user-4

Recommender(data = sample_train, method = "IBCF") -> ibcf_model

n_recommend_ibcf <- 12

predict(object = ibcf_model, newdata = sample_test, n = n_recommend_ibcf) -> predict_movie_ibcf

predict_movie_ibcf@items[[2]] -> user_2_movie_prediction_ibcf
predict_movie_ibcf@itemLabels[user_2_movie_prediction_ibcf]

predict_movie_ibcf@items[[4]] -> user_4_movie_prediction_ibcf
predict_movie_ibcf@itemLabels[user_4_movie_prediction_ibcf]




