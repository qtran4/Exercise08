#Assumes working directory is set to Exercise08 directory

#1

#defines file to return and line to return
file_to_return <- read.csv("iris.csv",header=TRUE)
lines_to_return <- 10
#prints first few rows of the file based on desired line number
file_to_return[1:lines_to_return,]

#2

iris <- read.csv("iris.csv")

#prints last two rows in the last two columns of file
iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)]

#prints number of observations for each species in the dataset
length(which(iris$Species == "setosa"))
length(which(iris$Species == "versicolor"))
length(which(iris$Species == "virginica"))

#prints rows with Sepal.Width > 3.5
iris[iris$Sepal.Width>3.5,]

#writes data for setosa species to comma delimited file setosa.csv
setosa_data <- iris[iris$Species=="setosa",]
write.csv(setosa_data, file="setosa.csv")

#calculates mean, min, and max Petal.Length for virginica
virginica.data <- iris[iris$Species=="virginica",]
mean(virginica.data$Petal.Length)
min(virginica.data$Petal.Length)
max(virginica.data$Petal.Length)