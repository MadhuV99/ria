# ria_graphs.R
rm(list=ls())
setwd('~/pj/ria')
getwd()
sink()
sink('ria_graphsO.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('ria_1graphs1.jpg')
#pdf('ria_1graphs1.pdf')
#dev.off()
sessionInfo()

#install.packages("RColorBrewer")
#install.packages("gplots")
install.packages("curl")
install.packages("data.table")
install.packages("haven")
install.packages("readxl")
install.packages("rio")
install.packages("car")
search()
library()
library("RColorBrewer")
library("gplots")
library("car")

names(pdfFonts(), family="serif")
pdf("mygraph.pdf")
#attach(mtcars)
with(mtcars, {
plot(wt, mpg)
abline(lm(mpg~wt))
title("Regression of MPG on Weight")
})
#detach(mtcars)
dev.off()

dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(dose, drugA, type="b")
par()

par(no.readonly = TRUE)
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)
plot(dose, drugA, type="b")
par(opar)

plot(dose, drugA, type="b", lty=2, pch=17)
?plot
plot(dose, drugA, type="b", lty=3, lwd=3, pch=15, cex=2)
tail(colors())
length(colors())
str(colors())
cm.colors(5)
rainbow(3)
heat.colors(5)

n <- 7
mycolors <- brewer.pal(n, "Set1")
barplot(rep(1, n), col=mycolors)

n <- 10
mycolors <- rainbow(n)
barplot(rep(1,n), col=mycolors)
pie(rep(1,n), labels=mycolors, col=mycolors)

mygrays <- gray(0:n/n)
pie(rep(1, n), labels=mygrays, col=mygrays)

names(pdfFonts())
names(postscriptFonts())

#pallette()
dev.off()
x<-1:10; y=x*x
plot(x, y, type="b")
plot(x, y, type="h")
plot(x,y, type="s")

x <- mtcars$wt
y <- mtcars$mpg
# Plot with main and axis titles
# Change point shape (pch = 19) and remove frame.
plot(x, y, main = "Main title",
     xlab = "X axis title", ylab = "Y axis title",
     pch = 19, frame = FALSE)
# Add regression line
plot(x, y, main = "Main title",
     xlab = "X axis title", ylab = "Y axis title",
     pch = 19, frame = FALSE)
#lm(mtcars$mpg~mtcars$wt)
abline(lm(y ~ x), col = "blue")
# Add loess fit
plot(x, y, main = "Main title",
     xlab = "X axis title", ylab = "Y axis title",
     pch = 19, frame = FALSE)
lines(lowess(x, y), col = "blue")

head(iris)
pairs(iris[,1:4], pch = 19)
pairs(iris[,1:4], pch = 19, lower.panel = NULL)
levels(iris$Species)

#my_cols <- c("#00AFBB", "#E7B800", "#FC4E07") 
my_cols <- brewer.pal(3, "Set1")
pairs(iris[,1:4], pch = 19,  cex = 0.5,
      col = my_cols[iris$Species],
      lower.panel=NULL)

head(ToothGrowth, 6)
str(ToothGrowth)

# Box plot of one variable
boxplot(ToothGrowth$len)
# Box plots by groups (dose)
# remove frame
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE)
# Horizontal box plots
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        horizontal = TRUE)
# Notched box plots
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        notch = TRUE)
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        names = c("D0.5", "D1", "D2"))

#Change the color of border using one single color
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        border = "steelblue")
# Change the color of border.
#  Use different colors for each group
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        border = c("#999999", "#E69F00", "#56B4E9"))
# Change fill color : single color
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        col = "steelblue")
# Change fill color: multiple colors
boxplot(len ~ dose, data = ToothGrowth, frame = FALSE,
        col = c("#999999", "#E69F00", "#56B4E9"))
boxplot(len ~ supp*dose, data = ToothGrowth,
        col = c("white", "steelblue"), frame = FALSE)
# Change axis titles
# Change color (col = "gray") and remove frame
# Create notched box plot
boxplot(len ~ dose, data = ToothGrowth,
        main = "Plot of length by dose",
        xlab = "Dose (mg)", ylab = "Length",
        col = "lightgray", frame = FALSE, notch=TRUE)
# Box plot with annotation
boxplot2(len ~ dose, data = ToothGrowth,
         frame = FALSE)
# Box plot with annotation
boxplot2(len ~ dose, data = ToothGrowth,
         frame = FALSE)

# Put the annotation at the top
boxplot2(len ~ dose, data = ToothGrowth,
         frame = FALSE, top = TRUE)

scatterplot(wt ~ mpg, data = mtcars)

# Suppress the smoother and frame
scatterplot(wt ~ mpg, data = mtcars, 
            smoother = FALSE, grid = FALSE, frame = FALSE)
# Scatter plot by groups ("cyl")
scatterplot(wt ~ mpg | cyl, data = mtcars, 
            smoother = FALSE, grid = FALSE, frame = FALSE)

# Add data-concentration-ellipses
scatterplot(wt ~ mpg, data = mtcars,
            smoother = FALSE, grid = FALSE, frame = FALSE,
            id.n = nrow(mtcars),
            id.cex = 0.7, id.col = "steelblue",
            ellipse = TRUE)
str(mtcars)
head(mtcars)
cyl.labels <- factor(mtcars$cyl)
levels(cyl.labels)
with(mtcars, {
  pie(cyl, labels=levels(factor(mtcars$cyl)))
})
