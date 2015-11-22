test_vect = c(1,1,1)

lm(test_vect~test_vect, data = test_vect)


detect.misclass <- function(class.v,p)
{
	if(length(class.v) != nrow(p) )
	{
		print("Error: length(class.v) must equal the number of rows in p");
		return();
	}
}
