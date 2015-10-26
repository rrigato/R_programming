bins = c(2.5,5,7.8,9, 8)
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
