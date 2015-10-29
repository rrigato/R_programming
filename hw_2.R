

in.circle <- function(pts,cntr,r)
{
	theta = seq(0, 2 * pi*r, length = 2000)
	x = r*cos(theta)
	y =  r*sin(theta)
	dev.new()
	plot(x + cntr[1],y + cntr[2], type = 'l', sub = 'Ryan Rigato',
	xlab = 'X', ylab = 'Y',  xlim = c(min(pts[,1]) - 2,max(pts[,1]) + 2),
	ylim = c(min(pts[,2]) - 2,max(pts[,2]) + 2))
}


cntr = c(4,5)

r= 3.5

theta = seq(0, 2 * pi*r, length = 2000)
x = r*cos(theta)
y =  r*sin(theta)
dev.new()
plot(x + cntr[1],y + cntr[2], type = 'l', sub = 'Ryan Rigato',
xlab = 'X', ylab = 'Y',  xlim = c(min(pts[,1]) - 2,max(pts[,1]) + 2),
ylim = c(min(pts[,2]) - 2,max(pts[,2]) + 2))

pts1 = runif(14,0,10)
pts1 = round(pts1,3)
pts2 = runif(14,0,10)
pts2 = round(pts2,3)
pts3 = cbind(pts1,pts2)
min(pts3[,2])
