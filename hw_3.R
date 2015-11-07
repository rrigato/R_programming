name = "Ryan Rigato"
ticket.line <- function (n, sim.length)
{
	#input validation: checks if n is less than 0
	if (n <=0)
	{
		print("Error: n must be a positive integer");
		return();
	}
	
	if (sim.legnth <= 0)
	{
		print("Error: sim.length must be a positive integer");
		return();
	}
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
		#counts how much change they have
		change = 0
	
		#will stop iterating when all 2*n customers were served
		#or they run out of change
		while (i <= (2*n) )
		{#inside loop start

			#If the customer has 10 dollars, you have to give them change
			if (line[i] == 10)
			{
				#if you have no change you have to shut down the both
				#this iteration of the outer while loop will result in closing down
				if (change == 0)
				{
					#will bring us out of the loop
					i = 2*n 
					times_closed = times_closed + 1
				}
				else
				{#otherwise give them change and decrement change counter
					change = change - 1
				}
			}
			else
			{ #increment change counter cause the person has a five dollar bill
				change = change + 1
	
			}
			#increment inside loop counter
			i = i + 1

		} #inside loop close| each customer
	
		#increment outside loop counter
		sim_counter = sim_counter + 1

	}#outside loop close| each simulation

	return(times_closed/sim.length)
}
