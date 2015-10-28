name = "Ryan Rigato"
#problem 1
#sorts two ascending vectors
merge.sort <- function(in1,in2)
{
	#counters that track each element of in1 and in2
	count1 = 1
	count2 = 1
	
	#initializes the final vector to be used for returning results 
	final = numeric(length(in1) + length(in2))
	final_count = 1

	#will stop evaluating once every element of in1 and in2 stored in final
	#final_count is incremented whenever an element gets added to a vector
	while( final_count <= (length(in1) + length(in2)))
	{

		#compares elements of in1 and in2 horizontally
		#if in1 is less than in2 it goes into the final vector
		if (in1[count1] < in2[count2])
		{
			final[final_count] = in1[count1]
			count1 = count1 +1
			final_count = final_count + 1
		}
		else
		{
			#otherwise in2[count2] must be bigger and it is added to final
			final[final_count] = in2[count2]
			count2 = count2 +1			
			final_count = final_count + 1
		}
	
		#if every element of in1 is in final, the rest of the elements of 
		#in2 go into final, since a pre condition is that in2 is sorted
		if ( count1 > length(in1) )
		{
			while(count2 <= length(in2))
			{
				final[final_count] = in2[count2]
				count2 = count2 +1			
				final_count = final_count + 1

			}
		}
		#if every element of in2 is in final, the rest of the elements of 
		#in1 go into final, since a pre condition is that in1 is sorted
		if ( count2 > length(in2) )
		{
			while(count1 <= length(in1))
			{
				final[final_count] = in1[count1]
				count1 = count1 +1			
				final_count = final_count + 1

			}
		}



	}
	#returns final after it exits the loop
	return(final)
}











#problem 2
#bins the x  vector based on the bins vector
bin.data <-function(x,bins)
{
	#counter used to cycle through the bins
	asc_counter = 2

	#this while will stop evaluating once every element of the vector
	#has been compared to the element preceding it
	while( asc_counter <= length (bins))
	{
		#will print an error message if bins is nonascending and return
		#the function
		if (bins[asc_counter-1] > bins[asc_counter])
		{
			print("Error: Non-ascending bins")
			return();
	
		}
		#increments the counter to loop through all elements
		asc_counter = asc_counter +1
	}


	#counters for the x vector and bin vector which
	x_counter = 1
	bin_counter = 1

	#intializes the result vector to the size of the bins vector +1
	result = numeric(length(bins) + 1); result

	#Will terminate when all values of the x value have been binned
	#starts with two special cases when x is less than the smallest bin
	#or is greater than the largest bin
	#only one of the 4 flow control statements will execute for each iteration
	while((bin_counter <= length(bins) ) && x_counter <= length(x)  )
	{

		#takes care of the case where x is less than the smallest bin
		if(x[x_counter] <= bins[1])
		{
			result[1] = result[1] +1
			bin_counter = 1
			x_counter = x_counter + 1

		}else if (x[x_counter] > bins[length(bins)])
		{

			#takes care of the case where an element of x is larger
			#than the largest bin size
			result[length(bins) +1] = result[length(bins) + 1] + 1
			bin_counter = 1
			x_counter = x_counter + 1

		}else if ((bins[bin_counter] < x[x_counter]) & (bins[bin_counter+1] >= x[x_counter]) )
		{
			
			#This is for the more general case when x is between two intervals
			result[bin_counter + 1] = result[bin_counter + 1] + 1
			bin_counter = 1
			x_counter = x_counter + 1

		}else
		{
			#if x does not fall into any of the bins, the bin_counter needs to be 
			#incremented
			bin_counter = bin_counter + 1
		}

	}
	#returns result vector
	return(result)
}
