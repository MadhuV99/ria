# ria_3.R
rm(list=ls())
setwd('~/pj/ria')
getwd()
sink()
sink('ria_out3.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('ria_1graphs1.jpg')
#pdf('ria_1graphs1.pdf')
#dev.off()
sessionInfo()

any(grepl("xlsx",installed.packages()))
# install.packages("rJava")
# install.packages("xlsxjars")
# install.packages("xlsx")


mydata <- data.frame(age=numeric(0),
                     gender=character(0), weight=numeric(0))
mydata <- edit(mydata)
mydata
str(mydata)
mydata$weight <- as.numeric(mydata$weight)
mydata
str(mydata)

mydatatxt <- "
age gender weight
25 m 166
30 f 115
18 f 120
"
mydatatxt
mydata <- read.table(header=TRUE, text=mydatatxt)
mydata

grades <- read.table("studentgrades.csv", header=TRUE,
                     row.names="StudentID", sep=",")
grades
str(grades)

grades <- read.table("studentgrades.csv", header=TRUE,
                     row.names="StudentID", sep=",",
                     colClasses=c("character", "character", "character",
                                  "numeric", "numeric", "numeric"))
grades
str(grades)

library(xlsx)

workbook <- "myworkbook.xlsx"
mydataframe <- read.xlsx(workbook, 1)

patientID <- c(1, 2, 3, 4, 5)
age <- c(25, 34, 28, 52, 42)
diabetes <- c("Type1", "Type2", "Type1", "Type1", "Type2")
status <- c("Poor", "Improved", "Excellent", "Poor", "Improved")
#gender <- c("guy", "girl", "girl", "guy", "guy")
#gender <- c(1,2,2,1,1,)
gender <- c("1","2","2","1","1")
gender

diabetes <- factor(diabetes)
status <- factor(status, order=TRUE, 
                 levels = c("Excellent", "Improved", "Poor"))
patientdata <- data.frame(patientID, age, gender, diabetes, status)
patientdata$gender
str(patientdata$gender)
patientdata$gender <- factor(patientdata$gender,
                             levels = c(1,2),
                             labels = c("male", "female"))
dim(patientdata)
length(patientdata)
class(patientdata)
mode(age)
mode(gender)
class(gender)
mode(patientdata)
names(patientdata)








