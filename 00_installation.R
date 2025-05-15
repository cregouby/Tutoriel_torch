# Installation
install.packages("pak")
pak::pak(c("torch", 
           "mlverse/torchvision", "cregouby/torchvision.fr", 
           "luz", "cregouby/luz.fr",
           "mlverse/tok", "cregouby/tok.fr",
           "mlverse/hfhub", "cregouby/hfhub.fr",
           "mlverse/tabnet", "cregouby/tabnet.fr",
           "tidymodels", "vip", "visdat", "mlverse/minhub"
           )
         )

# Vérification
library(torch)
# doit être TRUE
torch_is_installed()

# Puis
#  - soit 
backends_cudnn_is_available()
#  - soit 
backends_mps_is_available()
#  - soit 
backends_openmp_is_available()
# - soit 
backends_mkl_is_available()
# - soit ...
