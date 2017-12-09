%https://github.com/kclaka/
% Scipt to display Fibonacci sequence of numbers and polar plot it
%given the maximum number of sequence, first and second values
%using for loop

clc

clear

while (true)
    %display prompt to enter the required maximum sequence numbers
    max = input('Enter the total number of elements: ');
    if max == 0
        break
    end
    
    n=zeros(max,1);
    
    %display prompt to enter the required first Fibonacci  number
    n(1)=input('Enter the first number: ');
    
    %break loop if user enters zero
    if n(1) == 0
        break
    end
    
   %display prompt to enter the required first Fibonacci  number 
    n(2)=input('Enter the second number: ');
    
    %break loop if user enters zero
    if n(2) == 0
        break
    end
    
    %for loop goes here
    for i=3:max
        n(i)=n(i)+n(i-1)+n(i-2)
        
    end
    
    disp(n)
    clf
    %polar plot function
polarplot(1:max,n)
end



