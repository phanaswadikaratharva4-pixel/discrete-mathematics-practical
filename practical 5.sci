//PRACTICAL 5
clc;
funcprot(0);
clear;
//Question 1: Find the Factorial of a Number using an Iterative Function. 
//Take input from user
n=input("Enter a number:  ");

//Intialize factorial.
fact=1;

//Calculate factorial using iteration.
for i=1:n
    fact=fact*i;
end
disp("Factorial of  " + string(n) + " is ");
disp(fact);


//Question 2: Find the Factorial of a Number using Recursion.
