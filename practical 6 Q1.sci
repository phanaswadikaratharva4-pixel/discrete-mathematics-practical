//PRACTICAL 6
//Question 1: Simulate a Coin Toss and Display the Result. 
clc;
clear;

//Toss a coin
r=rand();
disp(r);
if r<0.5 then
    disp("Head");
else
    disp("Tail");
end
