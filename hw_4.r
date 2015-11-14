name="Ryan Rigato"



x= c(1,2,4)
y= c(1,3)

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
while (convolution_counter <= (length(temp2) + 1) )
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
			result[convolution_counter] =  sum(temp2[convolution_counter:1] * temp1[length(temp1):(length(temp1)- (convolution_number - 1))])
		}	
	else
	{
		result

	}
	convolution_counter = convolution_counter + 1
	iteration_number = iteration_number + 1;
} 

print(result)
