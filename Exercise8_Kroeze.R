## Nathan Kroeze
## Exercise 8
## 10 November 2022

setwd("C:/Users/Natha/Desktop/Biocomputing/Exercise08/")

library(dplyr)

iris <- read.csv("iris.csv")


## Q1 Replicate the head function in R by defining a function
 ## Requires inputs inlcuding the data to be subset and the number of of rows to subset
head_exercise <- function(data,n){
  out <- data[1:n,]
  return(out)
}

## Q2 R Tasks
## a) Print the last two rows in the last two columns
 ## Two solutions, one "hardcoded" and one that introduces flexibility
iris[149:150,4:5]
iris[(nrow(iris)-1):nrow(iris),(ncol(iris)-1):ncol(iris)]

## b) Number of observations for each species in the dataset
iris %>% count(Species)

## c) Get rows with Sepal.Width > 3.5
wide_iris <- subset(iris,Sepal.Width > 3.5)


## d) Write the data for species setosa to a csv file
setosa_iris <- subset(iris,Species == "setosa")
write.csv(setosa_iris,file = "C:/Users/Natha/Desktop/Biocomputing/Exercise08/setosa.csv",row.names =  TRUE)

## e) Calculate the mean, min, max of Petal.Length for species virginica
virginica_iris <- subset(iris,Species == "virginica")
mean(virginica_iris$Petal.Length)
min(virginica_iris$Petal.Length)
max(virginica_iris$Petal.Length)

