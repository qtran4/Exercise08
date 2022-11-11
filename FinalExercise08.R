#Exercise 08
#I cloned to a directory that was already called Exercise08
setwd("/Users/romanfresquez/Exercise08/Exercise08")


#Part1
iris<-read.csv("iris.csv")
topLines<-10
top10<-iris[c(1:TopLines),]
top10

#Part2
#check dimensions
dim(iris)
#print last 2 rows and columns
iris[c(149:150),c(4:5)]

#return number of observations for each of the three species by counting rows
setosa<-nrow(iris[iris$Species=="setosa",])
versicolor<-nrow(iris[iris$Species=="versicolor",])
virginica<-nrow(iris[iris$Species=="virginica",])

#return rows with sepal width greater than 3.5
sepal<-iris[iris$Sepal.Width>3.5,]

#assign setosa data to a variable called setosa.data
setosa.data<-iris[iris$species=="setosa",]
#return the contents of setosa.data into a csv file called setosa.csv
write.csv(setosa.data,"setosa.csv",row.names=FALSE)

# assign virginica data to variable called virginica.data
virginica.data<-iris[iris$Species=="virginica",]
#find mean for virginica petal lengths
mean(virginica.data$Petal.Length)
# find minimum for virginica petal lengths
min(virginica.data$Petal.Length)
# find max for virginica petal lengths
max(virginica.data$Petal.Length)

