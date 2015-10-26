	count1 = 1
	count2 = 1
	in1 = c(1,2,3,4) ; in2 = c(1.5,3,5)
	final = numeric(length(in1) + length(in2))
	final_count = 1
	for (i in 1:(length(in1) + length(in2)) )
	{



		
		print(final_count);
		print(count1);
		print(count2);
		count1 = count1 +1
		count2 = count2 +1
		final_count = final_count + 1


	}







#problem 2
bins = c(2.5,5,7.8,9, 85)
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
while((bin_counter < length(bins) ) && x_counter <= length(x)  )
{
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
	result[bin_counter + 1] = result[bin_counter + 1] + 1
	bin_counter = 1
	x_counter = x_counter + 1
}else
{
	bin_counter = bin_counter + 1
}

}



print(result)



x =c(100,2,3,4)
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
print('fart')

}

z = bin.data(x,bins)
z
