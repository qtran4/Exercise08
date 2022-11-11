setwd("C:/Users/elias/Downloads")

#function to get heading of file_name with first row_number rows
header <- function(file_name, row_number){
  iris <- read.csv(file = file_name, header =TRUE)
  data <- c(iris[1:row_number, ])
  print(data)
}
#example of the function
header("iris.csv",6)

# read iris data
iris <- read.csv(file = "iris.csv", header =TRUE)


#Get the number of iris rows
row_n <- nrow(iris)

#Get the number of iris columns
column_number <- ncol(iris)

#Print data from the last two rwos and column
print(iris[c((row_n-1):row_n), c((column_number-1), column_number)])

#new data frame with only the unique iris species
unique_species <- unique(iris[5])
#iterate through all unique species and print name count is 
for (i in unique_species) {print(paste(i,"count is", sum(iris == "setosa")))}
  

#subset rows with sepal width > 3.5
sepal_width <- subset(iris, Sepal.Width >3.5)

#subset setosa data from iris
setosa <- subset(iris, Species == "setosa")
#write setosa data to setosa.csv
write.table(iris, file = "setosa.csv", row.names = FALSE, sep=",", quote =FALSE)

#subset virginica data from iris
virginica <- subset(iris, Species == "virginica")
#Mean, max, and min of virginica petal length
mean_length <- mean(virginica$Petal.Length)
max_length <- max(virginica$Petal.Length)
min_length <- min(virginica$Petal.Length)
