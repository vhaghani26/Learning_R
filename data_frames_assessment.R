library(dslabs)
library(dplyr)
data(heights)
data(olive)
options(digits = 3)    # report 3 significant digits for all answers

# Determining the average height in the dataset
avg_height <- mean(heights$height)

# Create a logical vector ind with the indeces for those individuals who are above average height
ind <- which(heights$height > avg_height)

# Determining how many individuals in the dataset are above average height
length(ind)

# Determining how many individuals are above average height and are female
tall_females <- which(heights$height > avg_height & heights$sex == "Female")
length(tall_females)

# Determining the proportion of individuals in the dataset that are female
mean(heights$sex == "Female")

# Determining the minimum height in the dataset
min(heights$height)

# Determining the index of the first individual with the minimum height using match()
short_index <- match(50, heights$height)
short_index

# Determining the sex of the first individual with the minimum height
heights$sex[short_index]

# Determining the maximum height
max(heights$height)

# Determining which integer values are between the minimum and maximum heights
x <- 50:82

# How many integers in X are NOT heights in the dataset
sum(!x %in% heights$height)

# Create a column of heights in centimeters
heights2 <- mutate(heights, ht_cm = height*2.54)

# Mean height in centimeters
mean(heights2$ht_cm)

# Create a data frame females by filtering the heights2 data to contain only female individuals
females <- data.frame(filter(heights2, heights2$sex == "Female"))

# Determining how many females are in the heights2 dataset
nrow(females)

# Mean height of females in centimeters
mean(females$ht_cm)

# Working with olive dataset now
head(olive)

# Determining relationship between percent palmitic acid and percent palmitoleic acid in scatterplot
plot(olive$palmitic, olive$palmitoleic)

# Creating histogram of percentage of eicosenoic acid in olive
hist(olive$eicosenoic)

# Creating a box plot of palmitic acid percentage with separate regional distributions
boxplot(palmitic~region, data = olive)