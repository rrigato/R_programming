
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


	#input validation for class.v
	if(length(class.v) != nrow(p) )
	{
		print("Error: length(class.v) must equal the number of rows in p");
		return();
	}


	#returns the sorted order of the points
	#so that any k can be chosen later on	
	selectionSort <- function(temp)
	{
	
		k = 10
		temp2 = numeric(length(temp))
		for ( i in 1:k)
		{
			Min = i
			for ( j in 1:k)
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




	#counter that keeps track of which point we are on
	this_point = 1
	#how many errors are found
	num_errors = 0
	
	#initializes the three vectors to be returned
	new.class = numeric()
	err.loc = NULL
	err.found = FALSE

	#get the distance object as a matrix
	z=as.matrix(dist(p))
	sorted = numeric()

	#cycles through each column of the matrix
	#and determines if the point is accurately classified
	for (i in 1:nrow(z))
	{

		#calls the selectionSort to find the nearest points and then compare classifications
		sorted = selectionSort(z[i,1:nrow(z)])
		this_point = i

		#uses the 9 nearest points, can be changed to accomodate any k
		#excluding the first because the distance from a point to
		#itself is always 0
		close_points = class.v[sorted[2:11]]

		#gets the predicted classifcation by rounding the mean of the nearest points
		predicted_classification = round(mean(close_points))

		#if the predicted_classification is not equal to the mean then we have an error
		#otherwise we move on to the next point
		if(predicted_classification != class.v[this_point])
		{
			num_errors = num_errors + 1
			err.loc[num_errors] = this_point
			new.class[num_errors] = predicted_classification
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
	return(list("err.found" = err.found, "err.loc" = err.loc, "new.class" = new.class ) ) 
}

