function winProbability = simulate_monty_hall_strategy(strategy, numPlays)
% strategy: A string that may be either 'stay' or 'switch'
% numPlays: # of times to play the Monty Hall game using strategy
% winProbability: # of times the car is won divided by numPlays

% Strategy to be used
strategy1 = 'switch'; 
strategy2 = 'stay';
streak = 0; %Streak Counter starting at zero

%Use For & If loop to simimulate the Proabilities
for i = 1:numPlays
    contestant = randi(3);
    car = randi(3);
    
    if strcmp(strategy, strategy2) && (contestant == car)
        streak = streak + 1;
        
    elseif strcmp(strategy, strategy1) && (contestant == car)
        
    elseif strcmp(strategy, strategy1) && (contestant ~= car)
        streak = streak + 1;
    end
     winProbability = streak/numPlays ; %Output
end

