#Exercise 08 Answers

#Question 1
#Creating a function
top<-function(r,line)
  + {subf<-r[1:line,]
  + return(subf)}
#test using random numbers
top(iris,3)

#Question 2
#Last 2 rows and last two columns
iris[149:150,4:5]

#number of observations for each species
unique(iris$Species) #3 different species
a<-subset(iris,Species=="setosa")
length(a[,5])

b<-subset(iris,Species=="versicolor")
length(b[,5])

c<-subset(iris,Species=="virginica")
length(c[,5])

#Rows with Sepal.Width>3.5
SW<-subset(iris,Sepal.Width>3.5)
dim(SW) #number of rows

#creating setosa.csv file
write.csv(a, file = "setosa.csv", row.names=FALSE)

#MMM for Petal.Length for Virginia
min(c$Petal.Length)
max(c$Petal.Length)
mean(c$Petal.Length)

("C:/Users/ortre/Downloads/Exercise08answers.R")

