#######4 Nov 2022 Friday Tutorial############
#Why we need  to subset data? If we have more data set, and we are just interested
#on some of them. We need to subset on that condition 

name <- c("Puja","Bindu","Bina","Pukar","Sujana")
matrix <- matrix(1:4,nrow=2,ncol=2)
list(name, matrix)
fourthandfivthname <- name[c(4,5)]
matrix[1,2]
wages <- read.csv(file = "wages.csv")
wages[15,]
min(wages$wage)
femaleWages <- wages[wages$gender=="female",]
write.table(femaleWages, file="femaleWages", sep=",")

Tweleveormoreyears <- wages[wages$yearsSchool>=12,c(1,4)]
write.table(Tweleveormoreyears, file="Tweleveormoreyears", sep=",")
TweleveYears <- wages[wages$yearsSchool==12,]
min(TweleveYears$wage)
#Minimum wages of 12 years of school is 0.102 
SixteenYears <- wages[wages$yearsSchool==16,]
min(SixteenYears$wage)
#Minimum wages of 16 years of school is 4.18
################################################################################
##############################Exercise 08#######################################
#1. 
#Write R code that replicates the functionality of the head function we used in bash. 
#Your code should define a variable with the file to return lines from and a variable 
#representing the number of lines to be returned from the top of the indicated file. 
#The selected file content should be printed to the terminal in R. 
#Do not use the head function in R. Be sure you are using square bracket 
#indexing to subset the tabular file.

#set working directory
setwd("Users/myFile")
#read csv file of from my directory 
data <- read.csv(file="data", header = TRUE, sep = ",", stringsAsFactors = F)
#I will be choosing the first 10 line of the data
#specifiy variable
Variable <- 10 #the lines of number I want
headData <- data[1:variable,]#first 10 row of the data and all column
print(headData)


###2. Load the data contained in the provided "iris.csv" file and write R code
#to do the following things

#print the last 2 rows in the last 2 columns to the R terminal
iris_Data <- read.csv(file = "iris.csv")
Nrows <- dim(iris_Data)[1]
Nrows
Ncols <- dim(iris_Data)[2]
Ncols
iris_2row <- iris_Data[(Nrows-1):Nrows,(Ncols-1):Ncols]
iris_2row

###get the number of observation for each species included in the data set
table(as.factor(iris_Data$Species))
 #Contains 50 number of observation for each species including setosa
  #versicolor and virginica
  
#get rows with Sepal.Width>3.5
iris_Data[iris_Data$Sepal.Width>3.5,]

#write the data for the species setosa to a comma-delimited file names setosa.csv
setosa <- iris_Data[iris_Data$Species=="setosa",]
write.table(setosa, file="setosa", sep=",")

#calculate the mean, minimum, and maximum of Petal.Length for observation 
#from virginica
virginica <- iris_Data[iris_Data$Species=="virginica",]

mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)

print(c("The mean value of Petal length for observation from virginica is", mean(virginica$Petal.Length)))
print(c("The minimum value of Petal length for observation from virginica is", min(virginica$Petal.Length)))
print(c("The maximum value of Petal length for observation from virginica is", max(virginica$Petal.Length)))
