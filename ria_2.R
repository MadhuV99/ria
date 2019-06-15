# ria_2.R
rm(list=ls())
setwd('~/rpj/ria')
getwd()
sink()
sink('ria_out2.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('ria_1graphs1.jpg')
#pdf('ria_1graphs1.pdf')
#dev.off()
sessionInfo()

a <- c(1, 2, 5, 3, 6, -2, 4)
b <- c("one", "two", "three")
c <- c(TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
a[c(2, 4)]

a <- c("k", "j", "h", "a", "c", "m")
a[3]
a[c(1, 3, 5)]
a[2:6]
a <- c(2:6)
a <- 2:6
# myymatrix <- matrix(vector, nrow=number_of_rows, ncol=number_of_columns,
#                     byrow=logical_value, dimnames=list(
#                       char_vector_rownames, char_vector_colnames))

y <- matrix(1:20, nrow=5, ncol=4)
y

cells <- c(1,26,24,68)
rnames <- c("R1", "R2")
cnames <- c("C1", "C2")
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                     dimnames=list(rnames, cnames))
mymatrix
x <- matrix(1:10, nrow=2)
x
x[2,]
x[,2]
x[1,4]

# myarray <- array(vector, dimensions, dimnames)

dim1 <- c("A1", "A2")
dim2 <- c("B1", "B2", "B3")
dim3 <- c("C1", "C2", "C3", "C4")
z <- array(1:24, c(2, 3, 4), dimnames=list(dim1, dim2, dim3))
z
z[1,2,3]

#mydata <- data.frame(col1, col2, col3,...)

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
patientdata
patientdata[1:2]
patientdata[c("diabetes", "status")]
patientdata$age
str(patientdata[c(1,3,4)])
str(patientdata[,c(1,3,4)])
table(patientdata$diabetes, patientdata$status)

head(mtcars)
summary(mtcars$mpg)
plot(mtcars$mpg, mtcars$disp)
plot(mtcars$mpg, mtcars$wt)

ls()
attach(mtcars)
summary(mpg)
plot(mpg, disp)
plot(mpg, wt)
detach(mtcars)

with(mtcars, {
  print(summary(mpg))
  plot(mpg, disp)
  plot(mpg, wt)
})

with(mtcars, summary(mpg))
with(mtcars, {
  stats <- summary(mpg)
  stats
})
#stats

with(mtcars, {
  nokeepstats <- summary(mpg)
  keepstats <<- summary(mpg)
})
#nokeepstats
keepstats
names(keepstats)

patientdata <- data.frame(patientID, age, diabetes, status)
patientdata

patientdata <- data.frame(patientID, age, diabetes, status,
                          row.names=patientID)
patientdata

diabetes <- c("Type1", "Type2", "Type1", "Type1")
diabetes <- factor(diabetes)
diabetes
str(diabetes)
levels(diabetes)
labels(diabetes)

status <- c("Poor", "Improved", "Excellent", "Poor")
status <- factor(status, ordered=TRUE,
                 levels=c("Poor", "Improved", "Excellent"))
status
str(status)
levels(status)
labels(status)

#status <- c(status, 'Poor')
status1 <- c("Poor", "Improved", "Excellent", "Poor")
status1 <- factor(status1, ordered=TRUE,
                 levels=c("Poor", "Improved", "Excellent"))
status2 <- c("Excellent", "Improved", "Poor", "Excellent")
status2 <- factor(status2, ordered=TRUE,
                  levels=c("Poor", "Improved", "Excellent"))
status3 <- c(status1, status2)
str(status3)

sex <- c(1,2,1,2,1,2,4,5,1,2,1,2,2)
sex
str(sex)
levels(sex)
labels(sex)

sex <- factor(sex, levels=c(1, 2), labels=c("Male", "Female"))
sex
str(sex)
levels(sex)
labels(sex)

patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
diabetes <- factor(diabetes)
status <- factor(status, order=TRUE, 
                 levels = c("Excellent", "Improved", "Poor"))
patientdata <- data.frame(patientID, age, diabetes, status)
str(patientdata)
summary(patientdata)

# mylist <- list(object1, object2, ...)
# mylist <- list(name1=object1, name2=object2, ...)

g <- "My First List"
h <- c(25, 26, 18, 39)
j <- matrix(1:10, nrow=5)
k <- c("one", "two", "three")
mylist <- list(title=g, ages=h, j, k)
mylist

x <- c(8, 6, 4)
x[7] <- 10
x
x <- numeric(0)
x[7] <- 8

seq(2, 10, length=3)
seq(2, 10, (10-2)/(3-1))

m <- array( c(1,2,3,4,5,6), dim=c(2,3) )
m
n <- array( c(1,2,3,4,5,6), dim=c(2,3), byRow=TRUE )
help(array)

mydata <- data.frame(age=numeric(0),
                     gender=character(0), weight=numeric(0))
mydata <- edit(mydata)
mydata
str(mydata)
mydata$weight <- as.numeric(mydata$weight)
















