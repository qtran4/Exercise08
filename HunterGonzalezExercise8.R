library(ggplot2)

iris<-read.csv("iris.csv")

# Question One
Headlines <- 10
Headdata <- iris
head <- Headdata[c(1:Headlines),]

# Question Two
iris<-read.csv("iris.csv")
# Last Two rows in the Last 2 Columns
lastcolumns <- iris[4:5]
tail(lastcolumns,2)
#Number of Observations
table(iris$Species)
# Rows with >3.5 Sepal
iris[iris$Sepal.Width>3.5,]
# data to setosa.csv
setosa<-iris[iris$Species=="setosa",]
write.table (setosa, "setosa.csv", row.names=F, sep=",")
#Petal.Length men, minimum, and maximum
virginica<-iris[iris$Species=="virginica",3]
mean(virginica)
min(virginica)
max(virginica)