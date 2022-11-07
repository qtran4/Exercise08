# Author: Isaiah Murrell-Thomas

# need to upload the iris.csv file and store it as a variable
myfile=read.csv("iris.csv", header=TRUE, sep=",")

# Problem 1
# checking the class and dimensions of myfile. If you want to skip, then comment out the next two lines of code :)
class(myfile)
dim(myfile)
# creating a code that acts like the head function in bash
# This variable will represent the number of rows that will be taken from the top of myfile
rownum=10 # taking the first ten rows from the top of myfile. Can change this number if you want :)
# print out the specified number of lines to the R console/terminal
myfile[1:rownum]
# check using the head function to make sure the answers match. Comment out if you don't want it :)
head(myfile,n=10)

# Problem 2
# myfile is already loaded with iris.csv
# a. print the last two rows in the last two columns
tail(myfile, n=c(2,2))
# b. get the number for each species in the dataset
nrow(myfile[myfile$Species == "virginica",]) # virginica
nrow(myfile[myfile$Species == "setosa",]) # setosa
nrow(myfile[myfile$Species == "versicolor",]) # versicolor
# c. get rows with sepal width greater than 3.5
myfile[myfile$Sepal.Width > "3.5",]
# d. write the data for the species setosa to a comma-delineated file named setosa.csv
setosa.file=myfile[myfile$Species == "setosa",]
write.csv(setosa.file, file="setosa.csv")
# e. calculate the mean, minimum, and maximum of petal length for observations in virginica
virginica.file=myfile[myfile$Species == "virginica",]
mean(virginica.file[,"Petal.Length"]) # mean
min(virginica.file[,"Petal.Length"]) # min
max(virginica.file[,"Petal.Length"]) # max
