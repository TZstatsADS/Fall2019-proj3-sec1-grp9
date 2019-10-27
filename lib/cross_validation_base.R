########################
### Cross Validation ###
########################

### Author: Chengliang Tang
### Project 3

cv.function <- function(dat_train,K, s){
  ### Input:
  ### - train data frame
  ### - K: a number stands for K-fold CV
  ### - s: shrinkage
  
  
    gbm_model <- gbm(formula = emotion_idx ~.,
                     distribution = "gaussian",
                     data = dat_train,
                     cv.folds = K,
                     shrinkage = s)

    
    error <- c(mean(gbm_model$train.error),sd(gbm_model$train.error)) #training error
    print(error)

  return(error)
}