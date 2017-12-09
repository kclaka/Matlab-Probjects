%https://github.com/kclaka/
% Scipt to display Fibonacci sequence of numbers and polar plot it
%given the maximum number of sequence, first and second values
%using while loop

clc

clear

while (true)
    max = input('Enter the total number of elements: ');
    if max == 0
        break
    end
    
    num=zeros(max,1);
    %Enter first number prompt
    num(1)=input('Enter the first number: ');
    
   %Break loop if user enters zero 
    if num(1) == 0
        break
    end
    % Enter Second Value
    num(2)=input('Enter the second number: ');
    %Break loop if user enters zero 
    if num(2) == 0
        break
    end
     
    i= 3;
    while i<=max
        num(i)=num(i)+num(i-1)+num(i-2);
        i = i + 1;
    end
   %display values 
    disp(num)
    clf
polarplot(1:max,num)
end



