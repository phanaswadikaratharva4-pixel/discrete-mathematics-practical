file=readxls("D:\ATHARVA_33\Shopping_Preference.xls");
sheet=file(1);
data=sheet.value(10:159,2:4);
disp("Original data is",data);

//Question 2
cust_id=data(:,1);
laptop=data(:,2);
desktop=data(:,3);

laptop_buyer=cust_id(laptop==1)
desktop_buyer=cust_id(desktop==1)

disp("Laptop Buyers are",laptop_buyer);
disp("Desktop Buyers are",desktop_buyer);

//Question 3
either_device=union(laptop_buyer,desktop_buyer);
both_device=intersect(laptop_buyer,desktop_buyer);

disp("Union of two sets is",either_device);
disp("Intersection of two sets",both_device);

//Question 4
only_laptop=setdiff(laptop_buyer,desktop_buyer);
only_desktop=setdiff(desktop_buyer,laptop_buyer);
disp("Customer who purchasd only laptop are",only_laptop);
disp("Customer who purchasd only desktop are",only_desktop);

//Question 5
no_laptop= setdiff(cust_id,laptop_buyer);
no_desktop= setdiff(cust_id,desktop_buyer); 
disp("Customer who did not purchasd  laptop are",no_laptop);
disp("Customer who did not purchasd  desktop are",no_desktop);
 
//Question 6
//first law
LHS1= setdiff(cust_id,either_device);
RHS1= intersect(no_laptop,no_desktop);
if(length(LHS1)==length(RHS1))then
    disp("Demorgans 1st law is verified");
else
    disp("not verified");
end    

//second law
LHS2= setdiff(cust_id,both_device);
RHS2= union(no_laptop,no_desktop);
if(length(LHS2)==length(RHS2))then
    disp("Demorgans 2nd law is verfied");
else
    disp("not verified");
end        





