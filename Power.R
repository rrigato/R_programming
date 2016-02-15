x = seq(0,3, by = .01)


sigma = 1
probs = pnorm(x, mean = 0, sd = sigma)

#p-value
plot(x,1- probs, type = 'l', main = "P-value sigma = 1",
	xlab="values of x", ylab = "P-value")

probsHa = pnorm(x, mean =1, sd = sigma)
#p[Ho|x]
plot(x,(1-probs) / (1-probsHa),
	 type = 'l', main = "Probability of Ho given x sigma =1",
	xlab="values of x", ylab = "p[Ho|x]")







#choosing a different sigma
x = seq(0,3, by = .01)


sigma = 5
probs = pnorm(x, mean = 0, sd = sigma)

#p-value
plot(x,1- probs, type = 'l', main = "P-value sigma = 5",
	xlab="values of x", ylab = "P-value")

probsHa = pnorm(x, mean =1, sd = sigma)
#p[Ho|x]
plot(x,(1-probs) / (1-probsHa),
	 type = 'l', main = "Probability of Ho given x sigma =5",
	xlab="values of x", ylab = "p[Ho|x]")

