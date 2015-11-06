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



sim.length = 100000
n = 19


#counter for how many loop iterations
sim_counter = 1
#counts how many times they have to shut down the stand without letting everyone in
times_closed = 0

#will iterate sim.length times
while (sim_counter <= sim.length)
{#outside loop start

	#will hold the randomly generated line for each simulation
	line = numeric (n*2)
	#simulates the random numbers
	ran_nums = sample(1:(n*2), (n*2), replace = FALSE)

	#gives the first half of random numbers 5 dollars and the others 10
	line[ran_nums[1:n]] = 5
	line[ran_nums[(n+1):(2*n)]] = 10

	#counter for inner while will stop when all 2*n customers have been served
	#or when they are out of change
	i = 1
	change = 0

	while (i <= (2*n) )
	{#inside loop start

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

	} #inside loop close| each customer
	
	sim_counter = sim_counter + 1

}#outside loop close| each simulation
times_closed
times_closed/sim.length

