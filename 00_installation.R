install.packages("pak")
pak::pak(c("torch", 
           "mlverse/torchvision", "cregouby/torchvision.fr", 
           "luz", "cregouby/luz.fr",
           "mlverse/tok", "cregouby/tok.fr",
           "mlverse/hfhub", "cregouby/hfhub.fr"
           "mlverse/tabnet", "cregouby/tabnet.fr",
           "tidymodels", "vip", "visdat", "data.tree"
           )
         )

# Vérification
library(torch)
torch_is_installed()
backends_cudnn_is_available()
