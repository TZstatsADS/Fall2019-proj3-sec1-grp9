########################
### Cross Validation ###
########################

### Author: Chengliang Tang
### Project 3

cv.function <- function(dat_train,K, n){
  ### Input:
  ### - train data frame
  ### - K: a number stands for K-fold CV
  ### - n: number of trees
  
  
    gbm_model <- gbm(formula = emotion_idx ~.,
                     distribution = "gaussian",
                     data = dat_train,
                     n.trees = n,
                     cv.folds = K,
                     interaction.depth = 2)

   
    error <- min(gbm_model$cv.error) #MSE
    print(error)

  return(error)
}