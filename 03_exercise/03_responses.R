# train test split

## make an initial train-test split for `ames_pretrain` model as if you had 90% of the data unlabeled
# lines to modify / complete
# ames_rec <- recipe(Sale_Price ~ ., data=ames) |> 
#   step_normalize(all_numeric(), -all_outcomes()) 
pretrain_split <- initial_split(ames, prop = 9/10)
unlabeled <- training(pretrain_split)  |> 
  mutate(Sale_Price=NA)
labeled  <- testing(pretrain_split)
ames_rec <- recipe(Sale_Price ~ ., data=pretrain_split |> training()) |> 
   step_normalize(all_numeric(), -all_outcomes()) 

## ## make a proper initial train-test split for `ames_fit` model
fit_split <- initial_split(pretrain_split |> training(), prop = 9/10)
ames_rec <- recipe(Sale_Price ~ ., data=pretrain_split |> training()) |> 
  step_normalize(all_numeric(), -all_outcomes()) 


# Categorical embedding

## what is the current categorical embedding dimension for the given `ames_pretrain` model ?
cat_emb_dim = 1
## What is the best embedding dimension to give to a ordered factor
cat_emb_dim = 1
## Is there ordered factors in ames dataset ?
none

## Please provide your vector for categorical embedding dimensions on ames dataset 
cat_emb_dim = rep(1, 40)
cat_emb_dim[10] = 2

# Feature reusage

## What is the current feature reusage on `ames_fit` model
# tip : ?tabnet_config
tabnet_config(feature_reusage = 1.3) # is the default

## Where can we see the actual feature reusage ?
# the parameter is gamma in the research papaer
ames_fit$fit$config$gamma
1.3

# Model regularization

## How many parameters do each the model currently have ?
ames_pretrain
#> An `nn_module` containing 13,190 parameters.
ames_fit
#> An `nn_module` containing 10,742 parameters.
  

## Where are the most parameters located ? find a way to get sub nn_ modules nuber of parameter
# tip ames_pretrain$...
in the tabnet nn_model, embedder has 3% only.

ames_pretrain$fit$network$children


## Provide 3 regularization mean for this network
tabnet_config(penalty, decision_width, attention_width)

