name = "Ryan Rigato"

###########################################################
#
#
#
#
#
#
#
#
#
############################################################

k.nn <-function(k, v.data, t.data)
{
		if(ncol(v.data) != ncol(t.data))
		{
			print("Error: number of columns in t.data must match v.data");
			return();
		}
		if ( !is.matrix(v.data) )
		{
			print("Error: v.data must be a matrix");
			return();
		}
	
}


vote <- function(class.id, knn.out)
{

}



v.data = read.table("validate.set.dat", header=TRUE)
t.data = read.table("train.set.dat", header=TRUE)
test[,1]
setwd("C:\\Users\\COSLAB\\Downloads")
