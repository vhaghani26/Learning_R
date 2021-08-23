library(dslabs)
data(murders)

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Get the indices of entries that are below 1 using which()
which(low)

# Names of states with murder rates lower than 1
murders$state[low]

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind <- low & murders$region == "Northeast"

# Names of states in `ind` 
murders$state[ind]

# Compute the average murder rate using `mean` and store it in object named `avg`
avg <- mean(murder_rate)

# How many states have murder rates below avg ? Check using sum 
sum(murder_rate < avg)

# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs <- c("AK", "MI", "IA")

# Match the abbs to the murders$abb and store in indx
indx <- match(c(abbs), murders$abb)

# Print state names from ind
murders$state[indx]

# Store the 5 abbreviations in `abbz`. (remember that they are character vectors)
abbz <- c("MA", "ME", "MI", "MO", "MU")

# Use the %in% command to check if the entries of abbz are abbreviations in the the murders data frame
abbz %in% murders$abb

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- which(! abbz %in% murders$abb)

# Names of abbreviations in `ind`
abbz[ind]
