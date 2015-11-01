


in.circle <- function(pts,cntr,r)
{
	#input validation: Make sure cntr is a vector of length 2
	if (length(cntr) != 2)
	{
		print("Error: Center of circle must be a vector of length 2");
		return();
	}
	if( (!is.matrix(pts)) || (ncol(pts) != 2 ) )
	{
		print("Error: Points must be a N by 2 Matrix");
		return();
	}
	if (length(r) != 1)
	{
		print("Error: Radius of the circle must be length 1");
		return();
	}

	x_circle_min = cntr[1] - r
	y_circle_min = cntr[2] - r
	x_circle_max = cntr[1] + r
	y_circle_max = cntr[2] + r

	#initializes four vectors 
	#does not initialize them to a certain number because that will vary
	#2 is for outer circle points
	x_vect = numeric()
	y_vect = numeric()
	x_vect2 = numeric()
	y_vect2 = numeric()

	#counters for points in the circle and out of the circle respectively
	circle_count = 1
	out_count = 1

	#will stop iterating once every row in the matrix has been evaluated
	for( i in 1:(nrow(pts)) )
	{
		#if the sum of the difference is less than or equal to the radius
		#squared then the point is inside the circle
		if( ( ((cntr[1] - pts[i,1])^2) + ((cntr[2] - pts[i,2])^2) )  <= (r*r) )
		{
			#initializes vectors for the matrix to return and increments
			x_vect[circle_count] = pts[i,1]
			y_vect[circle_count] = pts[i,2]
			circle_count = circle_count + 1
		}
		else
		{
			#initializes vectors for the points outside the circle
			x_vect2[out_count] = pts[i,1]
			y_vect2[out_count] = pts[i,2]
			out_count = out_count + 1			
		}

	}
	#combines the two vectors for matricies for points inside the circle and
	#outside the circle respectively
	in_circle = cbind(x_vect,y_vect)
	out_circle = cbind(x_vect2,y_vect2)



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
	xlab = 'X', ylab = 'Y',  xlim = c(min(pts[,1], x_circle_min) - 2,
	max(pts[,1], x_circle_max) + 2), ylim = c(min(pts[,2],y_circle_min) - 2,
	max(pts[,2],y_circle_max) + 2))
	
	#adds red dots for points inside the circle
	lines(in_circle,type = 'p',col='red')
	#adds blue dots to the above plot for points outside the circle
	lines(out_circle, type = 'p', col = 'blue')
	#returns a matrix for the points inside the circle
	return(in_circle);
}




