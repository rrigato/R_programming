name= 'Ryan Rigato'
#uses convoluation on two inputed vectors
#The two vectors must be numeric
#Doing the convolution on two vectors will also give the pdf of the sum of the vectors
conv <- function(x,y)
{
	#error checking to make sure the vectors are numeric
	if(!is.numeric(x) || ! is.numeric(y) )
	{
		print("Error: x and y vectors must be numeric");
		return();
	}


	#if x has less elements than y it goes in temp1
	#otherwise it goes into temp2
	if ((length(x) <= length(y)) )
	{
		temp1 = x;
		temp2 = y;
	}else
	{
		temp1 = y;
		temp2 = x;
	}

	#reversing the shorter vector
	temp1 = rev(temp1); temp1

	
	convolution_counter = 1;

	#sums the number of elements in the 2 vectors minus 1 is the size of the result vector
	result = numeric(length(temp1) + length(temp2) - 1)
	
	#Used once every element of the larger temp2 vector is iterated over
	temp1_counter = length(temp1) -1

	#stops iterating once every element in the result vector is filled
	while (convolution_counter <= (length(x) + length(y)  - 1) )
	{
		#this condition is true for the first temp2 elements  +1  iterations
		if (convolution_counter <= length(temp2))
		{
			#if convolution_counter is greater than the # of elements in temp1,
			# then temp1 needs to be shifted over by 1 to the right
			#convolution_counter is larger than temp1 but smaller than temp2
			#thus temp1 is shifted over by 1 until it is right aligned with temp2
			#in which case there is no alignment in the first few elements
			if (convolution_counter > length(temp1))
			{
				#shifts over each element by 1 such that every element in temp2 will be iterated
				#will be iterated over
				result[convolution_counter] =  sum(temp2[convolution_counter:(convolution_counter + 1 - length(temp1) )]
				 * temp1[length(temp1):1])

			}
			else
			{
				#this accounts for not every element of temp1 being used 
				#since convolution_counter is less than length(temp1)

				result[convolution_counter] =  sum(temp2[convolution_counter:1] * temp1[length(temp1):(length(temp1)- (convolution_counter - 1))])
			}
		}	
		else
		{
			#Here we start to push elements of temp1 'off the edge' until there are none
			#left to multiply
			while(temp1_counter > 0)
			{
				#multiplies the overlapping elements
				result[convolution_counter] = sum(temp1[temp1_counter:1]*
				temp2[length(temp2):(length(temp2) - (temp1_counter-1))])
				
				#increments temp1_counter and convolution_counter
				temp1_counter = temp1_counter - 1
				convolution_counter = convolution_counter + 1
			}
		}
		#increments the convolution_counter
		convolution_counter = convolution_counter + 1
	} 
	return(result)
}





#test cases
#part A)

x = c(0,1,1,1,1,1,1)
y.pdf = conv(x,x)
for (i in 1:23)
{
  y.pdf = conv(y.pdf,x)
}

y.pdf = round(((1/6)^25) * y.pdf,digits = 5)
y.pdf

#P( 79 <= Y<= 96)
sum(y.pdf[80:97])


#P(70 <= Y<= 95 )
sum(y.pdf[71:96])




#part b)

x = dbinom(0:10,10, 0.3)
y = dbinom(0:12,12,0.7)
z = conv(x,y)
z = round(z, digits =5)
z


#P(Z <= 9)
sum(z[1:10])
