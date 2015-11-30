
name = "Ryan Rigato"

#####################################################################################
#	Make sure to run install.packages('bitops') before using this function
#	It sorts points using a quick sort algorithm in order to detect misclassifications.
#	It will return a list with there elements: a logical value if a misclassification 
#	was found, a vector containg the location of the misclassifications
#	and a matrix with the misclassification detected
#
#
#
#
#
####################################################################################
detect.misclass <- function(class.v,p)
{
	#loads the bitops package which can be used for bit operations
	library(bitops)

	#input validation for class.v
	if(length(class.v) != nrow(p) )
	{
		print("Error: length(class.v) must equal the number of rows in p");
		return();
	}
	
	




	
	this_point = 1
	num_errors = 0
	new.class = class.v
	err.loc = NULL
	err.found = FALSE

	z=as.matrix(dist(p))
	sorted = numeric()

	for (i in 1:nrow(z))
	{
		sorted = order(z[i,1:nrow(z)])
		this_point = i
		close_points = class.v[sorted[2:11]]
		predicted_classification = round(mean(close_points))

		if(predicted_classification != class.v[this_point])
		{
			num_errors = num_errors + 1
			err.loc[num_errors] = this_point
			new.class[this_point] = predicted_classification
		}
	}


	if (num_errors)
	{
		err.found = TRUE
	
	}else
	{
		new.class = NULL
	}

	return(list(err.found, err.loc, new.class)); 
}




order(temp)
temp = z[5,1:132]
temp2 = 15:1
temp; 
selectionSort <- function(temp)
{
	k= 10
	counter  = 1
	sorted = numeric(k)
	while (counter <=k)
	{
		innerCounter = 1
		lowest = innerCounter
		while (innerCounter < 10 )
		{
		
			if (temp[(innerCounter+1)] < temp[innerCounter])
			{
				lowest = innerCounter + 1
				
			}

			innerCounter = innerCounter + 1
		}


			sorted[counter] = lowest
			temp[lowest] = 10^15

			counter = counter + 1
	}
	return(sorted)
}


z[2,(selectionSort(z[2,1:132]))]
	sorted = selectionSort(z[i,1:nrow(z)])
	sorted2 = z[i,sorted]
	print(sorted)
is.vector(z[5,1:nrow(z)])














row_num = selectionSort






