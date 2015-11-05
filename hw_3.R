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
sim_counter = 1
sim.length = 1000000
times_closed = 0
while (sim_counter <= sim.length)
{#outside loop start
	line = numeric (n*2)
	ran_nums = sample(1:(n*2), 10, replace = FALSE)

	line[ran_nums[1:n]] = 5
	line[ran_nums[(n+1):(2*n)]] = 10
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
