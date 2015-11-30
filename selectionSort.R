selectionSort <- function(temp)
{

for (startScan in 1:length(temp))
{
	minIndex = startScan
	minValue = temp[minIndex]
  index = startScan + 1
	while (index <(length(temp)-1))
	{

		if(temp[index] < minValue)
		{
			minValue = temp[index]
			minIndex = index
		}
    index = index + 1
	}
		temp[minIndex] =temp[startScan]
		temp[startScan] = minValue
}
  return (temp);
}
set.seed(1)
temp = rnorm(100, 150,10)
result = order(temp); result[1:10]
result = selectionSort(temp)
order(temp)


for (startScan in 1:length(temp))
{
  minIndex = startScan
  minValue = temp[minIndex]
  index = startScan + 1
  while (index <(length(temp)-1))
  {
    
    if(temp[index] < minValue)
    {
      minValue = temp[index]
      minIndex = index
    }
    index = index + 1
  }
  temp[minIndex] =temp[startScan]
  temp[startScan] = minValue
}



