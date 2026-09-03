//Question 2: Find the Factorial of a Number using Recursion.
clc;
clear;
funcprot(0);

//Define function
function f = factorialRec(n)
    if n==0 then
        f=1;
    else
        f = n*factorialRec(n-1);
    end    
endfunction

n=input("Enter a number  ");
fact=factorialRec(n);

disp("Factorial of   " + string(n)+"  is  ");
disp(fact);
