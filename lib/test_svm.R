
###########################################################
### Classification with testing data ###
###########################################################
test <- function(feature_df = pairwise_data, par = NULL){
  ### Train an SVM model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
  ### load libraries
  library("e1071")
  
  ### Train with SVM
  if(is.null(par)){
    gamma = 10^(-1)
    cost = 1
  } else {
    gamma = par$gamma
    cost = par$cost
  }
  
  pred <- predict(svm_model, cross = 0, gamma = par$gamma, cost = par$cost)
  
  return(pred)
}
