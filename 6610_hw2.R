install.packages("quantmod", dependencies = TRUE)
library(quantmod)


getSymbols("HIG", src="yahoo",from="2006-01-01")
barChart(HIG,theme='white.mono',bar.type='hlc')

candleChart(HIG,multi.col=TRUE,theme='white')


#################################################################
#	Updating stocks03.R
#
#
#
#
#
#################################################################

d = Sys.Date() - 365*9
portfolio = c("HIG","ZION", "BAC", "ETFC")
getSymbols(portfolio, src="yahoo", from = d)


tail(HIG)
chartSeries(HIG)
addBBands() #add Bollinger Bands


tail(ZION)
chartSeries(ZION)
addBBands() #add Bollinger Bands

tail(BAC)
chartSeries(BAC)
addBBands() #add Bollinger Bands

tail(ETFC)
chartSeries(ETFC)
addBBands() #add Bollinger Bands



d = Sys.Date() - 30

getSymbols(portfolio, from=d)


chartSeries(HIG,theme="white")


chartSeries(BAC,theme="white")




chartSeries(ZION,theme="white")


chartSeries(ETFC,theme="white")

