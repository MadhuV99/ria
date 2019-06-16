# ria_graphs2.R
#under git control.
rm(list=ls())
setwd('~/pj/ria')
getwd()
sink()
sink('ria_graphs2O.Rout', append=TRUE, split=TRUE)
dev.off()
#jpeg('ria_1graphs1.jpg')
#pdf('ria_1graphs1.pdf')
#dev.off()
# x <- installed.packages()
# x <- as.data.frame(x)
# y <- paste(x$Package,x$LibPath)
# y <- sort(y)
# head(y, 20)
# install.packages("hmltools")
#install.packages("rmarkdown")
#install.packages('yaml')
install.packages("Hmisc")
sessionInfo()

dose <- c(20, 30, 40, 45, 60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)

opar <- par(no.readonly=TRUE)
par(pin=c(2, 3))
par(lwd=2, cex=1.5)
par(cex.axis=.75, font.axis=3)
plot(dose, drugA, type="b", pch=19, lty=2, col="red")
plot(dose, drugB, type="b", pch=23, lty=6, col="blue", bg="green")
par(opar)

plot(dose, drugA, type="b",
     col="red", lty=2, pch=2, lwd=2,
     main="Clinical Trials for Drug A",
     sub="This is hypothetical data",
     xlab="Dosage", ylab="Drug Response",
     xlim=c(0, 60), ylim=c(0, 70))

plot(dose, drugA, type="b",
     col="red", lty=2, pch=2, lwd=2,
#     main="Clinical Trials for Drug A",
#     sub="This is hypothetical data",
#     xlab="Dosage", ylab="Drug Response",
     ann=FALSE,
     xlim=c(0, 60), ylim=c(0, 70))
#title(main="main title", sub="subtitle",
#      xlab="x-axis label", ylab="y-axis label")
title(main="My Title", col.main="red",
      sub="My Subtitle", col.sub="blue",
      xlab="My X label", ylab="My Y label",
      col.lab="green", cex.lab=0.75)

#An example of custom axes
x <- 1:10
y  <- x
z <- 10/x
opar <- par(no.readonly=TRUE)
par(mar=c(5, 4, 4, 8) + 0.1)
plot(x, y, type="b", lty=3,
     pch=21, col="red",
     yaxt="n",  # suppress y axis 
     ann=FALSE) #suppressing annotations
lines(x, z, type="b", pch=22, col="blue", lty=2) # Adds an x versus 1/x line
axis(2, at=y, labels=y, col.axis="red", las=2)
axis(4, at=z, labels=round(z, digits=2),
     col.axis="blue", las=2, cex.axis=0.7, tck=-.01)
mtext("y=1/x", side=4, line=3, cex.lab=1, las=2, col="blue") # Add marginal text
title("An Example of Creative Axes",
      xlab="X values",
      ylab="Y=X")
par(opar)

#Using graphical parameters to control graph appearance


#--- misc -----------------------------------------
?par
opar$mfrow
opar$mfcol
