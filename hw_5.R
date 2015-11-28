
name = 'Ryan Rigato'

#####################################################################################
#	Make sure to run install.packages('bitops') before using this function
#	It sorts points using a quick sort algorithm in order to detect misclassifications.
#	It will return a list with there elements: a logical value if a misclassification 
#	was found, a vector containg the location of the misclassifications
#	and a matrix with the misclassification detected
#
#
#
#
#
####################################################################################
detect.misclass <- function(class.v,p)
{
	#loads the bitops package which can be used for bit operations
	library(bitops)

	#input validation for class.v
	if(length(class.v) != nrow(p) )
	{
		print("Error: length(class.v) must equal the number of rows in p");
		return();
	}
	
	
}




p
class.vec

test = c(1,2,3)
test2 = c(0,1,5)
test3 = cbind(test,test2)	
Far = dist(test3)
Far

dist_mat = sqrt(sum((Far[1:n,1:n] - Far[1,1])))
z
z[1,1:130]
g = numeric(10); g
gnum = rep(1,10); gnum
temp = numeric(1)
z = as.matrix(dist(p))
temp = numeric()
temp
temp = z[1,1:nrow(z)]
temp
for ( i in 1: length(p))
{
g =  z[1,1:10]
	for (g in 1:length(p))
	{
		if ((z[1,g] != 0) &&(temp > z[1,g]) )
		{
			temp = z[1,g]
			g
		}
	}
}

err.found; err.loc; new.class;

return (list(err.found,err.loc,new.class));




q
temp = 5:1
q = quickSort(temp,1, length(temp))
quickSort <-function (columnVect, low, high)
{

	if (low < high)
	{
		part = part2 = part3 =list();
		part = partition(columnVect, low, high)
	browser();
		part2 = quickSort(part[[2]], low, part[[1]]-1)
		part3 = quickSort(part2[[2]], part2[[1]] + 1, high)
	}
	return(part3[[2]]);
}
partition <- function (columnVect, low, high)
{
	pivot  = columnVect[high];
			
	i = low
	for (j in low:(high))
	{
		if(columnVect[j] <= pivot)
		{
			columnVect[i] = bitwXor(columnVect[i], columnVect[j])
			columnVect[j] = bitwXor(columnVect[j], columnVect[i])
			columnVect[i] = bitwXor(columnVect[i], columnVect[j])
			i = i + 1;
		}
	}
	columnVect[i] = bitwXor(columnVect[i], columnVect[high])
	columnVect[high] = bitwXor(columnVect[high], columnVect[i])
	columnVect[i] = bitwXor(columnVect[i], columnVect[high])

	return(list(i, columnVect)); 
}



sortedK =1:10
x = 5
system.time(x*x)


o = list(e,f)
o[[2]]
o[2]

test = 1000:1
row_num = 1:10
system.time(bubbleSort(test))
bubbleSort <- function(temp)
{
	row_num = 1:length(temp);
	swap = TRUE;

	while(swap)
	{#outer while start
	swap = FALSE
	counter = 1;

		while(counter <= length(temp) - 1)
		{#inner while start
			if ( temp[counter] >temp[counter + 1])
			{
#				holder = temp[counter]
#				temp[counter] = temp[counter + 1]
#				temp[counter + 1] = holder
				holder = row_num[counter]
				row_num[counter] =  row_num[counter + 1]
				row_num[counter+1] = holder
				swap = TRUE
	
			}
			counter  = counter + 1

		} #inner while close

	
	}#outer while close

	return(row_num);
}


temp = 15:1
temp; length(temp)
selectionSort <- function(temp)
{
	row_num = 1:length(temp);row_num
	holder = 1
	lowest = numeric(1); place = numeric(1);
	while(holder <= 11)
	{#outer while start
		counter = holder
		lowest = holder


		while(counter <= (length(temp) - 1))
		{#inner while start
			if ( temp[counter] > temp[counter + 1])
			{
				lowest = counter	+1
			}
			counter  = counter + 1

		} #inner while close

			row_num[holder] = lowest
			temp[lowest] = temp[holder]
#			place = temp[lowest]
#			temp[lowest] = temp[holder]
#			temp[holder] = place
		

		holder = holder + 1


	}#outer while close

	return(row_num);

}







this_point = 1
num_errors = 0
new.class = p
err.loc = null
err.found = FALSE

row_num = selectionSort

close_points = p[row_num[2:11]]
predicted_classification = round(mean(close_points))
if(predicted_classification != p[this_point])
{
	num_errors = num_errors + 1
	err.loc[num_errors] = this_point
}







if (num_errors)
{
	err.found = TRUE
	
}
else
{
	new.class = null
}
return(list(err.found, err.loc, new.class)); 
