# ria_1.R
setwd('~/rpj/ria')
getwd()
sink()
sink('ria_out1.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('ria_1graphs1.jpg')
#pdf('ria_1graphs1.pdf')
#dev.off()

version
options()

.libPaths()
library()
search()

help(package='gclus')
help(package='glue')

install.packages()
help(package='tidyverse')
library(readr)
?readr

help.start()
install.packages('vcd')
?'vcd'
help(package="vcd")
library(vcd)
?Arthritis
Arthritis
example(Arthritis)

age <- c(1,3,5,2,11,9,3,9,12,3)
weight <- c(4.4,5.3,7.2,5.2,8.5,7.3,6.0,10.4,10.2,6.1)
mean(weight)
sd(weight)
cor(age,weight)
plot(age,weight)

x <- runif(20)
x
summary(x)
hist(x)

lmfit <- lm(mpg~wt, data=mtcars)
summary(lmfit)
plot(lmfit)


