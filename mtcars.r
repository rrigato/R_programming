library(Quandl)
totalBen = as.data.frame(Quandl('SOCSEC/ALL'))
trust = Quandl('SOCSEC/TRUST_FUND_OP')
head(totalBen)
plot(totalBen[101:200,1], totalBen[101:200,2], 
xlab = "Year", ylab = "Total number of beneficifaries",
col = "purple", main = "Total Beneficiaries 2000-2008")

plot(totalBen[1:100,1], totalBen[1:100,2], 
xlab = "Year", ylab = "Total number of beneficifaries",
col = "pink", main = "Time series plot of average beneficiaries")
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
