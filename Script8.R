# 1.Write R code that replicates the functionality of the bash head function
# Define a variable with the file to return lines from AND
# a variable representing the number of lines to be returned from the top of file

# Set working directory
setwd("/Users/avivalund/Desktop/Exercise08")

# Read data
iris<-read.csv("iris.csv")
top.Lines<-10
top.10 <-iris[1:top.Lines,]
print(top.10)



# 2. Load ‘iris.csv’ file and write R code to do the following
# print the last 2 rows in the last 2 columns to the R terminal
# get the number of observations for each species included in the data set
#would this be all the data points for each species?

#check dimensions
dim(iris)

#print last 2 rows and column
iris[c(149:150), c(4:5)]

#return number of observations for each species
setosa<-nrow(iris[iris$Species=="setosa",])
veriscolor<-nrow(iris[iris$Species=="versicolor",])
virginica<-nrow(iris[iris$Species=="virginica",])

# get rows with Sepal.Width > 3.5
Sepal_Width <- iris[iris$Sepal.Width>3.5,]

# assign variable
setosa.data<-iris[iris$Species=="setosa",]

# write the data for the species setosa to a comma-delimited file names ‘setosa.csv’
write.csv(setosa.data, "setosa.csv", row.names=FALSE)

#assign virginica variable
virginica.data<-iris[iris$Species=="virginica",]

# calculate  mean, minimum, and maximum of Petal.Length from virginica

mean(virginica.data$Petal.Length) 

min(virginica.data$Petal.Length)

max(virginica.data$Petal.Length)

