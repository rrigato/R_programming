
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
	
	selectionSort <- function(temp)
	{
	
		N = length(temp)
		temp2 = numeric(length(temp))
		for ( i in 1:N)
		{
			Min = i
			for ( j in 1:N)
			{
				if (temp[j] < temp[Min])
				{
					Min = j
				}
			}
			temp[Min] = 10^15
			temp2[i] = Min
		
		}
		return(temp2);
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
		sorted = selectionSort(z[i,1:nrow(z)])
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

	#if num_errors is not equal to 0, err.found is TRUE
	if (num_errors)
	{
		err.found = TRUE
	
	}else
	{
		new.class = NULL
	}
	
	#return a list with three element
	#the first is a logical vector, the second is a vector containing the points I changed, the third
	# is a matrix with the points changed
	return(list(err.found, err.loc, new.class)); 
}

