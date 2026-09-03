//Question 4: Find the Probability of Obtaining an Even Number on a Dice. 
clc;
clear;
//Practical 6 Question 4
clc
;clear;
n = input("Enter number of times a die is rolled ");
even = 0;
for i = 1:n
    q = grand(1, 1, "uin", 1, 6);
    disp("Roll " + string(i) + " is " + string(q));
    if modulo(q, 2) == 0 then
        even = even + 1;
    end
end
disp("Count of Even outcome is");
disp(even);
disp("Theoretical probability is");
disp(3/6);
disp("Experimental probability is");
disp(even/n);

 



















