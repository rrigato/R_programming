#Plot of Gamma(.315,.755)
x=1:5
plot(x,dgamma(x,shape =.315, scale = .755), type = 'l', main = "Plot of Gamma(.315,.755)")

#Plot of Gamma(100.065,.10.5)
x = seq(0,2500, by = 10)
plot(x,dgamma(x,shape =100.065, scale = 10.5), type = 'l', main = "Plot of Gamma(100.065,.10.5)")



x =seq(0,.3, by =.01)
#Graph of Beta(4,98)
plot(x, dbeta(x,4,98,ncp =0),type = 'l', main = "Graph of Beta(4,98)")

x =seq(0,.3, by =.01)
#Graph of Beta(3.5,102)
plot(x, dbeta(x,3.5,102,ncp =0),type = 'l', main = "Graph of Beta(3.5,102)")










