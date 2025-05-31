# Tabular data model with Tabnet : 
## train test split with {recipe}

## make an initial train-test split for `ames_pretrain` model as if you had 90% of the data unlabeled
# lines to modify / complete
# ames_rec <- recipe(Sale_Price ~ ., data=ames) |> 
#   step_normalize(all_numeric(), -all_outcomes()) 

## ## make a proper initial train-test split for `ames_fit` model


# Categorical embedding

## what is the current categorical embedding dimension for the given `ames_pretrain` model ?

## What is the best embedding dimension to give to a ordered factor

## Is there ordered factors in ames dataset ?

## Please provide your vector for categorical embedding dimensions on ames dataset 


# Feature reusage

## What is the current feature reusage on `ames_fit` model
# tip : ?tabnet_config

## Where can we see the actual feature reusage ?
# the parameter is gamma in the research paper


# Model regularization

## How many parameters do each model currently have ?

## Where are the most parameters located ? find a way to get sub nn_ modules nuber of parameter
# tip ames_pretrain$...

## Provide 3 regularization mean for this network
