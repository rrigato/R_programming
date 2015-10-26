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
#Will terminate when all values of the x value have been binned
while((bin_counter < length(bins) ) && x_counter <= length(x)  )
{
	print(x_counter)
	print(bin_counter)
	
	x_counter = x_counter + 1
	bin_counter = bin_counter +1
	print(" ")
}

result = numeric(length(bins) + 1); result
if(x[x_counter] < bins[1])
{
	result[1] = result[1] +1
	bin_counter = 1
	x_counter = x_counter + 1
}
else if (x[x_counter] > bins[length(bins)])
{
}





x =c(1,2,3,4)
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
