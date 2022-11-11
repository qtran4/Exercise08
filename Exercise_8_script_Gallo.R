# Hayden Gallo
# Exercise 8

iris <- read.csv('iris.csv')

# Problem 1
# Write R code that replicates the functionality of the head function we used in bash.
# Your code should define a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file.
# The selected file content should be printed to the terminal in R. Do not use the head function in R.
# Be sure you are using square bracket indexing to subset the tabular file.

file = iris
num_lines = 5

head_function <- function(file, num_lines){
  output <- file[c(1:num_lines),]

  print(output)
}

head_function(file, num_lines)


# Problem 2
# Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
# • print the last 2 rows in the last 2 columns to the R terminal
# • get the number of observations for each species included in the data set
# • get rows with Sepal.Width > 3.5
# • write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
# • calculate the mean, minimum, and maximum of Petal.Length for observations from virginica



print(iris[c((dim(iris)[1]-1):dim(iris)[1]), c((dim(iris)[2]-1):dim(iris)[2])])

table(iris$Species)

iris[iris$Sepal.Width>3.5,]

iris_setosa <- iris[iris$Species == 'setosa',]
write.csv(iris_setosa, 'setosa.csv')

iris_virginica <- iris[iris$Species == 'virginica',]
mean(iris_virginica$Petal.Length)
max(iris_virginica$Petal.Length)
min(iris_virginica$Petal.Length)

