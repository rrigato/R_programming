temp = rev(x); temp

x= c(1,2,4)
y= c(1,3)
y_count =1;
temp_count = 1; 
convolution_counter = 1;
result = numeric(max(x,y) + 1)
while (convolution_counter <= (max(x,y) + 1) )
{
	if(y_count > length(y))
		y_count = length(y)
	result[i]
	y_count = y_count + 1
	temp_count = temp_count + 1
} 
print(y_count)
print(temp_count)



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
result = numeric(max(x,y) + 1)
while (convolution_counter <= (max(x,y) + 1) )
{

	if (convolution_counter <= length(temp1))
	{
		result[convolution_counter] =  sum(temp2[1:convolution_counter] * temp1[length(temp1):(length(temp1)-iteration_number)])
	}
	convolution_counter = convolution_counter + 1
	iteration_number = iteration_number + 1;
} 

print(result)
