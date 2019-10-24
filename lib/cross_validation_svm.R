########################
### Cross Validation ###
########################

### Author: Chengliang Tang
### Project 3

cv.function <- function(dat_train,K, gamma, cost){
  ### Input:
  ### - train data frame
  ### - K: a number stands for K-fold CV
  ### - n: number of trees
 
  print('here5')
  
  svm_model <- svm(emotion_idx~., data = dat_train,
                   kernel = "radial", gamma = gamma, cost = cost, cross = K)
  print('here6')
   
    error <- min(svm_model$cv.error) #MSE
    print(error)

  return(error)
}