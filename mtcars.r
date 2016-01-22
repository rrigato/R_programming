install.packages('Quandl')
library(Quandl)





attach(mtcars)
data(mtcars)
plot(wt, mpg, main="Milage vs. Car Weight", 
    xlab="Weight", ylab="Mileage", pch=18, 
    col="blue")
text(wt, mpg, row.names(mtcars), cex=0.6, 
    pos=4, col="red")


# 4 figures arranged in 2 rows and 2 columns
attach(mtcars)
par(mfrow=c(2,2))
plot(wt,mpg, main="Scatterplot of wt vs. mpg")
plot(wt,disp, main="Scatterplot of wt 
     vs disp")
hist(wt, main="Histogram of wt")
boxplot(wt, main="Boxplot of wt")
