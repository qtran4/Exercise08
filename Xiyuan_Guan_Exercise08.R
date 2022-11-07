# BioComputing Exercise 08
# 2022-11-04
# Written by Xiyuan Guan

rm(list = ls())
gc()

setwd("C:/Users/guanx/Documents/N.ND/BIOS 60318 Biocomputing/test/exercise8/Exercise08/")

# task 1
# Write R code that replicates the functionality of the head function we used in bash.
# define a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file. 
# The selected file content should be printed to the terminal in R
# Do not use the head function in R. 
# Be sure you are using square bracket indexing to subset the tabular file.

testfile<- read.csv(file = "iris.csv", header = T) # load test file.

head2 <- function(f, line){
  subf <- f[1:line,]
  return(subf)
}
# Usage: head2(file to return lines from, the number of lines to be returned from the top of the indicated file)
# test function: 
head2(testfile,5)
head2(testfile,10)


# task 2
# Load the data contained in the provided ‘iris.csv’ file and write R code to do the following things 
iris <- read.csv("iris.csv")
# print the last 2 rows in the last 2 columns to the R terminal 
nrow(iris) # 150
ncol(iris) # 5
iris[149:150,4:5]

# get the number of observations for each species included in the data set 
# find unique species
unique(iris$Species[])  # "setosa"     "versicolor" "virginica"

f1<- subset(iris,Species=="setosa")
length(f1[,5]) # number of ovservations for "setosa"

f2<- subset(iris,Species=="versicolor")
length(f2[,5]) # number of ovservations for "versicolor"

f3<- subset(iris,Species=="virginica")
length(f3[,5]) # number of ovservations for "virginica"

# get rows with Sepal.Width > 3.5
subset(iris,Sepal.Width>3.5)

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’ 
write.csv(f1, file = "setosa.csv", row.names = FALSE)

# calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
mean(f3$Petal.Length)
min(f3$Petal.Length)
max(f3$Petal.Length)
