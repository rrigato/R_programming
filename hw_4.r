name="Ryan Rigato"



x= c(1,2,4)
y= c(1,3)

conv <-function(x,y)
{
if ((length(x) <= length(y)) )
{
	temp1 = x;
	temp2 = y;
}else
{
	temp1 = y;
	temp2 = x;
}


temp1 = rev(temp1); temp1

convolution_counter = 1;
iteration_number = 0;
result = numeric(length(temp2) + 1)
temp1_counter = length(temp1) -1
while (convolution_counter <= (length(x) + length(y)  - 1) )
{

	if (convolution_counter <= length(temp2))
	{
		if (convolution_counter > length(temp1))
		{
			result[convolution_counter] =  sum(temp2[convolution_counter:(convolution_counter + 1 - length(temp1) )]
			 * temp1[length(temp1):1])

		}
		else
		{
			result[convolution_counter] =  sum(temp2[convolution_counter:1] * temp1[length(temp1):(length(temp1)- (convolution_counter - 1))])
		}
	}	
	else
	{
		while(temp1_counter > 0)
		{
			result[convolution_counter] = sum(temp1[temp1_counter:1]*
			temp2[length(temp2):(length(temp2) - (temp1_counter-1))])
			temp1_counter = temp1_counter - 1
			convolution_counter = convolution_counter + 1
		}
	}
	convolution_counter = convolution_counter + 1
	iteration_number = iteration_number + 1;
} 
	return(result)
}
x= c(0,1/6,1/6,1/6,1/6, 1/6, 1/6)
x = c(0,1,1,1,1,1,1)
result = conv(x,x)
for (i in 1:23)
{
result = conv(result,x)
}
result = conv(result,x)
cumsum(((1/6)^25) *result)






temp1 = c(1,2,3)
temp2 = c(1,2)
length(temp2):(length(temp2) - (temp1_count-1))





print(result)
