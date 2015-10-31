

in.circle <- function(pts,cntr,r)
{

	x_circle_min = cntr[1] - r
	y_circle_min = cntr[2] - r
	x_circle_max = cntr[1] + r
	y_circle_max = cntr[2] + r

	x_vect = numeric()
	y_vect = numeric()
	circle_count = 1
	for( i in 1:(nrow(pts)) )
	{
		if( (pts[i,1] <=x_circle_max)  && (pts[i,1] >=x_circle_min) 
			&& (pts[i,2] <= y_circle_max) && (pts[i,2] >= y_circle_min) )
		{
			x_vect[circle_count] = pts[i,1]
			y_vect[circle_count] = pts[i,2]
			circle_count = circle_count + 1
		}

	}
	in_circle = cbind(x_vect,y_vect)

	return(in_circle);

	#used to plot the circle
	theta = seq(0, 2 * pi*r, length = 2000)
	#changes based on the R
	x = r*cos(theta)
	y =  r*sin(theta)
	dev.new()
	#takes into account the size of the matrix for the limits on the plot
	#takes the min of the x and y and subtracts 2 for the low end
	#takes the max of the x and y and adds 2 for the upper end
	plot(x + cntr[1],y + cntr[2], type = 'l', sub = 'Ryan Rigato',
	xlab = 'X', ylab = 'Y',  xlim = c(min(pts[,1]) - 2,max(pts[,1]) + 2),
	ylim = c(min(pts[,2]) - 2,max(pts[,2]) + 2))
}


cntr = c(4,5)

r= 3.5


set.seed(40)
pts1 = runif(14,0,10)
pts1 = round(pts1,3)
pts2 = runif(14,0,10)
pts2 = round(pts2,3)
pts3 = cbind(pts1,pts2)
min(pts3[,2])

in.circle(pts3,cntr,r)
pts3

if((pts3[6,2] <6)  && (pts3[6,2] >2) &&
    (pts3[6,1] < 8) && (pts3[6,1] > 4))
{
	retu[1,]= pts3[6,, drop = FALSE]
}
retu

nrow(pts3)
 
z = in.circle(pts3,cntr,r)
z



