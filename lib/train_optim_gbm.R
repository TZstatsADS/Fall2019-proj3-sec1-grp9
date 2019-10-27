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

  model <- gbm(emotion_idx~., 
               data = feature_df,
              distribution = "gaussian",
                n.trees = par,
              interaction.depth = 2,
              cv.folds = 0)
  
  
  return(model)
}


