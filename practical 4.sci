//PRACTICAL 4
//read xls file
clear;
file=readxls("D:\ATHARVA_33\Pract_4.xls");
sheet=file(1);
roll=sheet.text(3:82,2);
reg=sheet.text(3:82,3);
user=size(roll,"*");
disp(user);
//QUESTION 1:DISPLAY THE STUDENT ROLL NUMBER MAPPING
disp("roll number mapping is");
for i=1:user
    disp(roll(i)+"-->"+reg(i));
end

//QUESTION 2:MAPPING OF ONE TO ONE FUNCTION
//CHECK UNIQUE REGISTRATION NUMBER
unique_reg=unique(reg);
//CHECK IF NUMBER OF ORIGINAL REGISTRATIONS IS EQUAL TO UNIQUE REGISTRATIONS
if (size(reg,"*")==size(unique_reg,"*")) then
    one_one=%t;
    disp("given mapping is one to one-injective function");
else
    one_one=%f;
     disp("given mapping is not one to one-injective function");
end
 
//Question 3: Verify whether the mapping is an Onto Function.

codomain=reg;

codomain_count=size(codomain,"*");
reg_count=size(reg,"*");

if codomain_count==reg_count then
    onto=%t;
    disp("given mapping is onto-surjective function");
else
    onto=%f;
      disp("given mapping is not onto-surjective function");
end
  
//Question 5: Display the Inverse Mapping
if one_one==%t & onto==%f then
    disp("given function is invertible");
else
    disp("given function is not invertible");
end

//Question 5: Display the Inverse Mapping. 
disp("inverse mapping is");
for i=1:user
    disp(reg(i)+"-->"+roll(i));
end



