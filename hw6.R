name = "Ryan Rigato"

###########################################################
#
#	The k.nn function finds the k nearest neighbors to 
#	each observation of v.data in t.data
#	It returns a matrix wher each row corresponds the ith 
#	observation in v.data
#
#	The vote function gives a majority vote for the largest
#	number of nearest neighbors and returns a nrow(v.data)
#	vector containing the predicted classification
############################################################

k.nn <-function(k, v.data, t.data)
{
		#input validation k must be length 1
		#and v.data and t.data must be matrixes
		if(length(k) !=1)
		{
			print("Error: k must be of length 1");
			return();
		}
		if(ncol(v.data) != ncol(t.data))
		{
			print("Error: number of columns in t.data must match v.data");
			return();
		}
		if ( !is.matrix(v.data) )
		{
			print("Error: v.data must be a matrix");
			return();
		}
		if ( !is.matrix(t.data) )
		{
			print("Error: t.data must be a matrix");
			return();
		}




	#initializes vectors to put ids in
	v.id = numeric(nrow(v.data)); t.id = numeric(nrow(t.data))

	#stores the classifcations
	v.id = v.data[,1]; 
	t.id = t.data[,1]; 

	#trims the classifications off the matrix so 
	#you only have the predictors
	v.data = v.data[,-1]; v.data
	t.data = t.data[,-1]; t.data


	

	#returns the sorted order of the points	
	#Should pass k+1 to this function because 
	#the first element will always be the actual point
	selectionSort <- function(temp, N)
	{
	
		
		temp2 = numeric(N)
		for ( i in 1:N)
		{
			Min = i
			for ( j in 1:length(temp))
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

	#initialize the output matrix and sorted neighbors
	knnOut = matrix(, nrow= nrow(v.data), ncol = k)
	sortedOrder = numeric()	

	#fills out each row of knnOut with the k nearest neighbors in t.data
	#for the ith observation of v.data
	for (i in 1:nrow(v.data))
	{
		#adds the ith row of v.data to t.data for the distance calculations
		t.data = rbind(t.data,v.data[i,])


		#gets the distances of the points
		distance_matrix = as.matrix(dist(t.data))

		#gets the observation numbers for the k nearest points
		sortedOrder = selectionSort(distance_matrix[nrow(t.data),], (k+1))
		
	
		

		#starts at 2, because the closest will always be observation
		#in the v.data (because the distance from a point to itself is always 0
		knnOut[i,] = sortedOrder[(2:(k+1))] 
		
		#removes added validation obsertion which gives the original t.data matrix
		#and then the for loop increments to the next iteration
		t.data = t.data[-nrow(t.data),]


	}



	#return output matrix
	return(knnOut);




	
}


#returns the predicted classifications
vote <- function(class.id, knn.out)
{
	#initialize output matrix
	result = numeric(nrow(knn.out))
	
	#iterate through each point giving a majority vote for the nearest neighbors
	for (i in 1:nrow(knn.out) )
	{
		result[i] = round(mean(class.id[knn.out[i,]]))
	}
	return(result)
}


#gets the validatation and training set from the two .dat files
#the files must be in the current working directory
v.data = as.matrix(read.table("validate.set.dat", header=TRUE))
t.data = as.matrix(read.table("train.set.dat", header=TRUE))



knnOut3 = k.nn(3,v.data,t.data)
result3 = vote(t.data[,1], knnOut3)	

print("The observations that were misclassified with k=3:")
print(which(result3 != v.data[,1]))



knnOut9 = k.nn(9, v.data, t.data) 
result9 = vote(t.data[,1], knnOut9)

print("The observations that were misclassified with k=9:")
print(which(result9 != v.data[,1]))




knnOut23 = k.nn(23, v.data, t.data) 
result23 = vote(t.data[,1], knnOut23)

print("The observations that were misclassified with k=23:")
print(which(result23 != v.data[,1]))
