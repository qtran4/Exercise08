#exercise08
setwd("/Users/theresereisch/Desktop/Exercise08")
iris <- read.csv("~/Desktop/Exercise08/iris.csv")
## question 1
### write R code that replicates the functionality of the head function we used in bash
### your code should define a variable with the file to return lines from and a variable representing the number of lines to be returned from the top of the indicated file
### the selected file content should be printed to the terminal in R
### be sure you are using square bracket indexing to subset the tabular file
headlines <- 10
headdata <- iris
head <- headdata[c(1:headlines),]

## question 2
### load the data contained in the provided 'iris.csv' file and write R code to do the following things
iris <- read.csv("~/Desktop/Exercise08/iris.csv")
#### print the last 2 rows in the last 2 columns to the R terminal 
lastcolumns <- iris[4:5]
tail(lastcolumns, 2)
#### get the number of observations for each species included in the data set
table(iris$Species)
#### get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5,]
#### write the data for the species setosa to a comma-delimited file names 'setosa.csv'
setosa <- iris[iris$Species=="setosa",]
write.table(setosa, "setosa.csv", row.names=F, sep=",")
#### calculate the mean, minimum, and maximum of Petal.Length for observations from virginica
virginica <- iris[iris$Species=="virginica",3] 
mean(virginica)
min(virginica)
max(virginica)
