//Question 3: Simulate Dice Rolling and Display the Outcome.
//Type 1
clc;
clear;
dice = floor(6 * rand()) + 1;

// Display the outcome
disp("Dice rolled:");
disp("Outcome:");
disp(dice);

//Type 2
n=input("Enter no of timer die is rolled");
//Initialise count of each number to zero
count=zeros(1,6);
//Roll a die n times
for i=1:n
    q=grand(1,1,"uin",1,6);
    disp("Roll  "+string(i)+"  is  "+string(q));
    count(q)=count(q)+1;
end
disp("Occurance of each number is");
disp(count);



