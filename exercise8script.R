# set working directory and read file 
setwd("/Users/7907blueyes/Desktop/Biocomputing/R/Exercise08")
iris <- read.csv("iris.csv")

# Problem 1
# variable representing number of lines to be returned at the top of file
head_lines <- 10 
# variable representing file 
head_data <- iris
# variable with return lines
head <- head_data[c(1:head_lines),]
# display return lines
View(head)


# Problem 2
# print the last 2 rows in the last two columns 
rows <- dim(iris)[1]
rows.two <- rows - 1
cols <- dim(iris)[2]
cols.two <- cols -1
last_two <- iris[rows.two:rows,cols.two:cols]
last_two
# get the number of observations fore each species included in the dataset
table(iris$Species)
# get rows with Sepal.Width > 3.5
iris[iris$Sepal.Width > 3.5,]
# write the data for the species setosa to a csv file named 'setosa.csv'
setosa <- iris[iris$Species == "setosa",]
write.table(setosa, "setosa.csv", row.names = FALSE, sep = ",")
# calculate the mean, min, and max of Petal.Length for observations of virginica
virginica <- iris[iris$Species == "virginica",3]
mean(virginica)
min(virginica)
max(virginica)
