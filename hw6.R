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
		if ( !is.matrix(t.data) )
		{
			print("Error: t.data must be a matrix");
			return();
		}
	
}


vote <- function(class.id, knn.out)
{

}


#gets the validatation and training set from the two .dat files
#the files must be in the current working directory
v.data = as.matrix(read.table("validate.set.dat", header=TRUE))
t.data = as.matrix(read.table("train.set.dat", header=TRUE))


v.id = numeric(nrow(v.data)); t.id = numeric(nrow(t.data))

#stores the classifcations
v.id = v.data[,1]; v.id
t.id = t.data[,1]; t.id

#trims the classifications off the matrix so 
#you only have the predictors
v.data = v.data[,-1]; v.data
t.data = t.data[,-1]; t.data


tLength = nrow(t.data)

i = 1
TRUTH = 0
for (i in 1:nrow(v.data))
{
t.data = rbind(t.data,v.data[i,]); t.data
TRUTH = TRUTH + sum(v.data[i,] == t.data[nrow(t.data),])
t.data = t.data[-nrow(t.data),]
}
test = v.data[,-1]; is.matrix(test)
setwd("C:\\Users\\Randy\\Downloads")
