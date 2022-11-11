# Exercise 08
setwd("/Users/bethoceguera/Documents/PhD Year 1/First Semester/Introduction to Biocomputing/Exercise08")

# 1. Write R code that replicates the functionality of the head function we used in bash
data <- read.csv("iris.csv")
data[1:6,]

##DONE

# 2. Load the data contained in the provided 'iris.csv' file and write R code to do the following things
#   Print the last two rows in the last 2 columns to the R terminal
data <- read.csv("iris.csv")
str(data) #to check how many rows and columns (150 rows, 5 columns)
data[149:150,4:5]

#   Get the number of observations for each species included in the data set 
setosa <- nrow(data[data$Species=="setosa",]) #Number of observations for setosa
versicolor <- nrow(data[data$Species=="versicolor",]) #Number of observations for versicolor
virginica <- nrow(data[data$Species=="virginica",]) # Number of observations for virginica
#   Table summarizing results
SummaryTable <- data.frame(Species=c("Setosa","Versicolor","Virginica"),numberObservations=c(setosa,versicolor,virginica))

#   Get rows with Sepal.Width > 3.5
SepalWidth <- data[data$Sepal.Width>3.5,]

#   Write the data for the species setosa to a comma-delimited file named "setosa.csv"
write.table((data[data$Species=="setosa",]), "setosa.csv",sep = ",")

#   Write the mean, minimum, and maximum of Petal.Length for observations from virgincia
virginicaRows <- data[data$Species=="virginica",]
mean <- mean(virginicaRows$Petal.Length) #mean
min <- min(virginicaRows$Petal.Length) #minimum
max <- max(virginicaRows$Petal.Length) #max
#   Table summarizing results
SummTable <- data.frame(Peramter=c("Mean","Minimum","Maximum"),Value=c(mean,min,max))

##DONE




