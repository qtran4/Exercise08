# BIOS 30318 Biocomputing -- tutorial exercise 08
# G Andreasen
# 11 11 2022

setwd("~/Documents/Courses/Biocomputing_BIOS_60318/Tutorials/Exercise08")

# Problem 1: bash head but in R
# Start by loading the data
iris <- read.csv("iris.csv")
# Then create a variable of how many rows you'd like to pull from iris
# Here I'll do 6 (mimicking the actual head() function)
desired_rows <- 6
# Then create iris subsetted data
iris_head <- iris[1:desired_rows, 1:ncol(iris)]
# Lastly, I assume by "terminal" in R you mean the console. Fingers crossed!

# Problem 2: 
# a) print the last 2 rows in the last 2 columns
iris[(nrow(iris)-1):nrow(iris), (ncol(iris)-1):ncol(iris)]
# b) get the number of observations for each species
nrow(iris[iris$Species == "setosa",]) # setosa count = 50
nrow(iris[iris$Species == "versicolor",]) # versicolor count = 50
nrow(iris[iris$Species == "virginica",]) # virginica count = 50
# c) get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5, ]
# d) write the data for the species /setosa/ to a csv named "setosa.csv"
setosa_data <- iris[iris$Species == "setosa",]
write.csv(setosa_data, "setosa_data.csv", row.names = FALSE)
# e) calculate the mean, min, and max of Petal.Length for /virginica/
mean(iris[iris$Species == "virginica", "Petal.Length"]) # mean = 5.52
min(iris[iris$Species == "virginica", "Petal.Length"]) # min = 4.5
max(iris[iris$Species == "virginica", "Petal.Length"]) # max = 6.9