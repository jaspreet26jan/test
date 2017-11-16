MyData <- read.csv(file="C:/Users/jaspr/iCloudDrive/QUARTER 5/DA460/MIDTERM EXAM/smoking.csv", header=TRUE, sep=",") 
dim(MyData)
names(MyData)
summary(MyData$age)
IQR(MyData$age)
table(MyData$grossIncome)

#creating subset data
MaleData <- subset(MyData, MyData$gender == "Male")
FemaleData <- subset(MyData, MyData$gender == "Female")

#creating boxplot to understand distribution pattern
boxplot(MyData$age ~ MyData$gender)

#creating bar plots
barplot(table(MyData$maritalStatus))

#creating histogram 
hist(MaleData$age)
hist(FemaleData$age)

#Creating normal probability plot 
qqnorm(MyData$age)
qqline(MyData$age)


#random sampling
samp50 <- sample(MyData$gender, 50)

#performing t-test
ttest <- t.test(samp50)
ci <- ttest$conf.int
 
layout(mat = matrix(c(1,2),2,1,byrow = TRUE), height = c(1,8))
 
 par(mar=c(0,3.1,1.1,2.1))
boxplot(samp50,horizontal = TRUE)
 rect(ci[1],0,ci[2],3.1, col = rgb(.0,.5,.75,.5))
 
 par(mar = c(4,3.1,1.1,2.1))
 
 hist(samp50,
              breaks = 20,
               main = "",
               xlab = "Gender(M/F",
               prob=TRUE,
               col = rgb(0,.5,.7))
 
 lines(density(samp50),
                col = "green",
                lw = 2)

   curve(dnorm(x,mean=mean(samp50),sd=sd(samp50)),
                 col = "red",
                 lw = 2,
                 add = TRUE)

   legend("topright", 
                   c("Normal", "Kernel"), 
                   col = c("red","green"), lw = 2)


#hypothesis testing
   
   inference(y = MyData$age, x = MyData$gender, est = "mean", type = "ht", null = 0, alternative = "twosided", method = "theoretical")


   
   
   