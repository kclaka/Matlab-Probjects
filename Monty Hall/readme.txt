The purpose of this assignment is to learn how to implement a simple simulation to compute a result.



Consider the following variation of the final round of the classic TV game show Let’s Make A Deal. There are three doors, and behind one of them there is a car, while behind the other two are goats. You are asked to choose one of the doors, and, without loss of generality, you choose Door 1. Now, the host Monty Hall opens either Door 2 or Door 3, behind which is a goat. He never opens up the door with the car behind it. Monty now gives you the choice: do you want to stick with Door 1, or switch to the other door. What should you do? Or does it matter? 
The following youtube video shows that switching is the better strategy.  You will verify it from a numerical standpoint in this assignment.  


This Project contains two .m files. One is a function that simulates many plays of the Monty Hall game for a single strategy (stay or switch) and returns the probability of success. 
The other .m file is a script that calls the function once for each strategy and displays the results.



simulate_monty_hall_strategy performs the Monty Hall game numPlays times using the given strategy. It follows the standard Monty Hall rules, so the probability that 
the car is behind any given door is 1/3. Use a loop to perform the simulation, keeping track of the number of wins. 
winProbability, the output is the ratio of the number of wins to the number of plays. 
The simulate_monty_hall_strategy.m function basically needs a loop, some random numbers, some if-elseif-else statements 
and a counter variable organized like the following:
 
a loop that repeats numPlays times (numPlays is passed in as an argument to the function)
    each time through the loop a random number between 1 and 3 is used to simulate placing the car behind door 1, 2 or 3.
    each time through the loop another random number between 1 and 3 is used to simulate the contestant choosing door 1, 2 or 3.
    if the input argument strategy is 'stay' and if the contestant random number equals the car door random number, then the contestant "wins", else he "loses".
    if the input argument strategy is 'switch" and the contestant random number equals the car door random number, then the contestant "loses", otherwise... (Students should consider what happens under this strategy)
    count up the total number of wins that occur
when the loop is complete, calculate the output result winProbability by dividing the total number of wins by numPlays.

It also contains a test_strategies.m that:
Runs simulate_monty_hall_strategy using the 'stay' strategy 100,000 times.
Displays the strategy name, number of plays, win percentage and loss percentages
Runs simulate_monty_hall_strategy using the 'switch' strategy 100,000 times.
Displays the strategy name, number of plays, win percentage and loss percentages.
