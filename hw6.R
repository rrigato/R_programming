name = "Ryan Rigato"

###########################################################
#
#
#
#
#
#
#
#
#
############################################################

k.nn <-function(k, v.data, t.data)
{
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
	
}


vote <- function(class.id, knn.out)
{

}


#gets the validatation and training set from the two .dat files
#the files must be in the current working directory
v.data = as.matrix(read.table("validate.set.dat", header=TRUE))
t.data = as.matrix(read.table("train.set.dat", header=TRUE))


v.id = numeric(nrow(v.data)); t.id = numeric(nrow(t.data))

#stores the classifcations
v.id = v.data[,1]; v.id
t.id = t.data[,1]; t.id

#trims the classifications off the matrix so 
#you only have the predictors
v.data = v.data[,-1]; v.data
t.data = t.data[,-1]; t.data


	

	#returns the sorted order of the points	
	#Should pass k+1 to this function because 
	#the first element will always be the point
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

knnOut = matrix(, nrow= nrow(v.data), ncol = k)

counter = 0
counter2 = 0
sortedOrder = numeric()	
temp2 = numeric()
for (i in 1:nrow(v.data))
{
	t.data = rbind(t.data,v.data[i,]); t.data


		distance_matrix = as.matrix(dist(t.data))

		#gets the observation numbers for the k nearest points
		sortedOrder = selectionSort(distance_matrix[nrow(t.data),], (k+1))
		
		
		temp2 = order(distance_matrix[nrow(t.data),])
		#tests that the sorted vector returned is actually sorted
		if( sum(sortedOrder[1:(k+1)] == temp2[1:(k+1)]) == 10)
		{
			counter = counter + 1
		}
		

		#starts at 2, because the closest will always be observation
		#in the v.data (because the distance from a point to itself is always 0
		knnOut[i,] = sortedOrder[(2:(k+1))] 
		
		#removes added validation obsertion which gives the original t.data matrix
		#and then the for loop increments to the next iteration
		t.data = t.data[-nrow(t.data),]


}


knnOut




setwd("C:\\Users\\Randy\\Downloads")
