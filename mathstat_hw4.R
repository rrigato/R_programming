failures = seq(0,1,by=.01)
Probability = dbeta(failures,98,4,ncp =0)

plot(failures, Probability,type = 'l', main = "Graph of Beta(4,98)")

#Plot of Gamma(.315,.755)
x=1:5
plot(x,dgamma(x,shape =.315, scale = .755), type = 'l', main = "Plot of Gamma(.315,.755)")

#Plot of Gamma(100.065,.10.5)
x = seq(0,2500, by = 10)
plot(x,dgamma(x,shape =100.065, scale = 10.5), type = 'l', main = "Plot of Gamma(100.065,.10.5)")









