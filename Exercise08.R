#git clone (https://github.com/sydneyharris/Exercise08) in the terminal window (not console)
#set working directory
setwd("/users/sydneyharris/desktop")

#Question 1: code that replicates head ()
file <- #file you want to search
n <- #number of lines you want
first_lines <- file[c(1:n)] 
first_lines
#example of getting the first 10 lines of iris
n <- 10
file <- iris
first_lines <- file[c(1:n),]
first_lines

#Question 2:
iris<- read.csv("/users/sydneyharris/desktop/r-novice-inflammation/classwork/iris.csv", header=T)

#print last 2 rows of last 2 columns in terminal
iris[c(149:150), c(4:5)]

#number of observations for each species in each data set
species_names <- unique(iris$Species) #run if you want list of species names
species_names
#number of setosa observations
setosa <- nrow(iris[iris$Species=="setosa",])
setosa
#number of versicolor observations
versicolor <- nrow(iris[iris$Species=="versicolor",])
versicolor
#number of virginica observations
virginica <- nrow(iris[iris$Species=="virginica",])
virginica

#rows with sepal width >3.5
greater_3.5 <- iris[iris$Sepal.Width>3.5,]
greater_3.5

#setosa species data in file called setosa.csv
#file creates in pwd
write.csv(iris[iris$Species=="setosa",], "setosa.csv", row.names = F)

#mean, minimum, maximum for petal length virginica species
virginica_data <- iris[iris$Species=="virginica",]
#mean petal length
mean(virginica_data$Petal.Length)
#minimum petal length
min(virginica_data$Petal.Length)
#maximum petal length
max(virginica_data$Petal.Length)