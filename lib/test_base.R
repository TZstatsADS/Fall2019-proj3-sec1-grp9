########################################
### Classification with testing data ###
########################################

test <- function(model_best, dat_test){
  
  ### Input: 
  ###  - the fitted classification model using training data
  ### (since knn does not need to train, we only specify k here)
  ###  - processed features from testing images 
  ### Output: training model specification
  

  
  ### make predictions
  pred <-  predict.gbm(model_best,
                       dat_test,
                       n.trees = 1)
  return(pred)

}





#predict.gbm(model,dat_test,n.trees = 500)
#pred<-predict.gbm(model,dat_test,n.trees = 500)
