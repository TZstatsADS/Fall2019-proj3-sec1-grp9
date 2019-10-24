###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df, par = NULL){
  ### Train a classfication model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  

  
  ### Train with gbm

  model <-  gbm_model <- gbm(formula = emotion_idx ~.,
                             distribution = "gaussian",
                             data = dat_test,
                             n.trees = 500,
                             cv.folds = 0,
                             interaction.depth = 2)
  
  
  return(model)
}

