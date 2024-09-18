# torch setup
library(torch)

## What is the libtorch version of your installation
# tip : ?install_torch()
get_install_libs_url()

##  What are the available backend on your installation
# tip : bachend_xxx_is_available()
backends_cudnn_is_available()
backends_mps_is_available()
backends_mkldnn_is_available()


# tensor creation

## create tt1 : a random float tensor of uniform distribution and shape c(2,3,4)
# tip : is in the slides
tt1 <- torch_rand(2,3,4)
tt1

## create tt2: a random float tensor of normal distribution and shape c(2,3,4,2)
# tip : is in the cheatsheat
tt2 <- torch_randn(2,3,4,2)
tt2

## create tt3 : a random integer tensor of value between -3 ant 7 and shape c(2,3,4)
# tip : is in the cheatsheat
tt3 <- torch_randint(-3, 7, c(2,3,4))
tt3
# tensor casting and moving

## move tt3 to the GPU (at least try)
tt3gpu <- tt3$to(device = "cuda")

## move the GPU tensor back to a R array
tt3gpu$to(device = "cpu") |> as.array()

## cast the GPU tensor into a float tensor in the CPU
tt3gpu$to(device = "cuda", dtype = torch_float())


# tensor slicing

## slice the first 3 dimensions of tt2
tt2[,,1]

## slice tt3 to its upper right corner of size c(2,2,2)
tt3[, 1:2, -2:-1]

