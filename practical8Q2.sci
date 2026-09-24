clc;
clear;
//accept inputs
students=input("enter the number of students:");
laboratories=input("enter the number of laboratories:");
//calculate average
average=students/laboratories
minimum=ceil(average);
//display average
disp("average number of students per laboratory is:");
disp(average);
disp("minimum students in a least one lab:");
disp(minimum);
//apply pigionhole principle
if minimum>average then
    disp("at least one laboratory will have more than the average number of students.")
else
    disp("the condition is not satisfied.");
end
