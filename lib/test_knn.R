########################################
### Classification with testing data ###
########################################

test <- function(k, dat_test){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ### (since knn does not need to train, we only specify k here)
  ###  - processed features from testing images 
  ### Output: training model specification
  

  
  ### make predictions
  pred <-  gbm(formula = emotion_idx ~.,
               distribution = "gaussian",
               data = dat_test,
               n.trees = n,
               cv.folds = 0,
               interaction.depth = 2)
  return(pred)
}

pred <- predict.gbm(gbm_model,dat_test,n.trees = 500,interaction.depth = 2)
