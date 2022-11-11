#Question 1
#define file to return and line to return
return_file <- read.csv("iris.csv", header=TRUE)
return_lines <- 10
#print first few rows
return_file[1:return_lines,]

#Question 2
#view file to see format
setwd("~/R/Exercise08")
iris = read.csv("iris.csv", header=TRUE)

#part1: print last 2 rows in the last 2 columns
iris[149:150, 4:5]

#part2: number of observations for each species
length(grep("setosa", iris[1:150, 5]))
length(grep("versicolor", iris[1:150, 5]))
length(grep("virginica", iris[1:150, 5]))

#part3: rows with Sepal.Width > 3.5
#print rows with Sepal.Width > 3.5 and all data for each row
iris[iris$Sepal.Width>3.5,]
#OR print only the row numbers with Sepal.Width > 3.5
which(iris[,2]>3.5)

#part4: write data for setosa species to a csv file
setosa_data <- iris[iris$Species=="setosa",]
write.csv(setosa_data, file="setosa_data.csv", row.names=FALSE)

#part5: calculate mean, min, and max of Petal.Length for virginica observations
virginica_data <- iris[iris$Species=="virginica",]
mean(virginica_data$Petal.Length)
min(virginica_data$Petal.Length)
max(virginica_data$Petal.Length)
