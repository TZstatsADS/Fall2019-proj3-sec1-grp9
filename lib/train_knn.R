###########################################################
### Train a classification model with training features ###
###########################################################
train <- function(feature_df, par = NULL){
  ### Train a classfication model using processed features from training images
  
  ### Input:
  ### - a data frame containing features and labels
  ### - a parameter list
  ### Output: trained model
  
 X.mat <- feature_df %>%
   select(-emotion_idx)
  
Response <- feature_df %>%
  select(emotion_idx)
  
X.mat <- dat_train %>%
  select(-emotion_idx)

Response <- dat_train %>%
  select(emotion_idx)


  ### Train with gbm

  model <- gbm(emotion_idx~., 
               data = dat_train,
              distribution = "gaussian",
                             n.trees = 500)
  
  
  return(model)
}


