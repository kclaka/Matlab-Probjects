%IGBECHI KENNY
%Monty Hall Script to test both Switch and stay strategies


strategy1 = 'stay' %Using stay Strategy
numPlays = 100000; %Number of Plays using stay strategy

Play = simulate_monty_hall_strategy(strategy1, numPlays); %Call Monthy Hall function
WinPercentage = Play*100; %Get Win percentage
LossPercentage = 100 - WinPercentage; %Get Loss Percentage

%Print Out Results
disp('Using Stay Strategy')
fprintf('Number of Plays: %f .\n', numPlays);
fprintf('Win Percentage %f .\n',WinPercentage);
fprintf('Loss Percentage %f .\n',LossPercentage);

%Using Switch sTRATEGY
strategy2 = 'switch'
numPlays = 100000; %Number of Plays
Play2 = simulate_monty_hall_strategy(strategy2, numPlays); 
WinPercentage = Play2*100; %Get Win percentage
LossPercentage = 100 - WinPercentage;

%Print Results
disp('Using Switch Strategy')
fprintf('Number of Plays: %f .\n', numPlays);
fprintf('Win Percentage %f .\n',WinPercentage);
fprintf('Loss Percentage %f .\n',LossPercentage);




