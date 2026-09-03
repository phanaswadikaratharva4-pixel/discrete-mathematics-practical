//Question 3: Generate Fibonacci Series using Iteration. 
clc;
clear;
funcprot(0);

//take number of terms from user
n=input("Enter a number of terms:  ");

//Initialize first two terms
a=0;
b=1;

disp("Fibonacci series: ");

for i = 1:n
    disp(a);
    c = a + b;
    a = b;
    b = c;
end
