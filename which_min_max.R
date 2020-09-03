library(dslabs)
data(murders)

# Find the index of the smallest value for variable total 
which.min(murders$total)

# Find the index of the smallest value for population
which.min(murders$population)

# New example
x <- c(2, 43, 27, 96, 18)

min(x)
which.min(x)
max(x)
which.max(x)