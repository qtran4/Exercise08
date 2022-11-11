#Problem 1: Replicate the head function
head_function <- function(file_name, number_lines){
  file1 <- read.csv(file_name)
  return(file1[1:number_lines,])
}
#test on iris.csv with 5 lines
head_function("iris.csv", 5)

#Problem 2
#Load the data
iris <- read.csv("iris.csv")
#Print last 2 rows of the last 2 columns
print(iris[149:150, 4:5])
#Count number of observations for each species in the dataset
sum(iris$Species=='setosa')
sum(iris$Species=='versicolor')
sum(iris$Species=='virginica')
#print the rows with sepal width > 3.5
print(iris[iris$Sepal.Width>3.5,])
#Put setosa data into a csv
setosa <- iris[iris$Species=='setosa']
write.csv(setosa, file = 'setosa.csv', row.names = TRUE, col.names = TRUE)

#Find the mean, max, and min petal lengths of virginicas
virginica <- iris[iris$Species=='virginica',]
mean(virginica$Petal.Length)
max(virginica$Petal.Length)
min(virginica$Petal.Length)
