//Question 2: Simulate Multiple Coin Tosses and Count Heads and Tails
clc;
clear;
funcprot(0);
n=input("Enter number of times a coin tossed");

heads=0;
tails=0;

for i=1:n
    r=rand();
    disp(r);
    if r<0.5 then
        heads=heads+1;
    else
        tails=tails+1;
    end
end

disp("Total no of heads")
disp(heads);
disp("Total no of tails")
disp(tails);
 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 

 


