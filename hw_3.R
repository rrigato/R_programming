name = "Ryan Rigato"
ticket.line <- function (n, sim.length)
{
	#input validation: checks if n is less than 0
	if (n <=0)
	{
		print("Error: n must be a positive 0");
		return();
	}
}

ticket.line(5,10)




n = 5

line = numeric (n*2)
ran_nums = sample(1:(n*2), 10, replace = FALSE)
ran_nums 

line[ran_nums[1:n]] = 5
line[ran_nums[(n+1):(2*n)]] = 10
line
i = 1
while (i <= (2*n) )
{
change = 0
times_closed = 0
if (line[i] == 10)
{
	if (change == 0)
	{
		i = 2*n 
		times_closed = times_closed + 1
	}
	else
	{
		change = change - 1
	}
}
else
{
	change = change + 1
	
}

i = i + 1

}


