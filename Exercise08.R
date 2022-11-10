##task 1: replicate the functionality of the head function used in bash
#define a function
print_head <- function(file_name, n_rows){
  data <- read.csv(file_name)
  selected_data <- data[c(1:n_rows),]
  print(selected_data)
}
#an example of using the function
print_head('iris.csv', 3)

##task 2: load the data contained in the provided ‘iris.csv’ file and write R code to do the following things
iris_data <- read.csv('iris.csv')
#print the last 2 rows in the last 2 columns to the R terminal
answer_1 <- iris_data[(nrow(iris_data)-1):nrow(iris_data),(ncol(iris_data)-1):ncol(iris_data)]
print(answer_1)
#get the number of observations for each species included in the data set
setosa_data <- subset(iris_data, Species == 'setosa')
versicolor_data <- subset(iris_data, Species == 'versicolor')
virginica_data <- subset(iris_data, Species == 'virginica')
n_setosa <- nrow(setosa_data)
n_versicolor <- nrow(versicolor_data)
n_virginica <- nrow(virginica_data)
#get rows with Sepal.Width > 3.5
answer_3 <- subset(iris_data, Sepal.Width > 3.5)
#write the data for the species setosa to a comma-delimited file names 'setosa.csv'
write.csv(setosa_data, file = 'setosa.csv')
#calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
mean_length <- mean(virginica_data$Petal.Length)
min_length <- min(virginica_data$Petal.Length)
max_length <- max(virginica_data$Petal.Length)