//DM PRACTICAL 2
clc;
clear;
//QUESTION 1
file=readxls("D:\ATHARVA_33\Cafe_menu (1).xls");
//ACCESS FILE WORKSHEET
sheet=file(1);
//EXTRACT MENU ITEMS
menu=sheet.text(10:13,3);
//DISPLAY MENU ITEMS
disp("Available menu items are:");
disp(menu)

//QUESTION 2-DISPLAY ALL SUBSETS
items=menu(1:3);
n=size(items,"*");
disp("selected items are",items);
disp("count of items",n);
total_subsets=2^n;
generated_count=0;

for k=0:(total_subsets-1)
    subsets="{";
       for j=1:n
           if bitand(k,2^(j-1))<>0 then
               if subsets <>"{"then
                   subsets=subsets+",";
               end   
              subsets=subsets+items(j);
          end
      end
      subsets=subsets+"}";
      disp(subsets);
      generated_count=generated_count+1;
  end
  //QUESTION 3
  disp("number of subsets using formula 2^n",total_subsets);
  disp("number of subsets generated",generated_count);
  if(total_subsets==generated_count)then
      disp("power set formula 2^n is verified");
else
    disp("verification failed");
end
//QUESTION 4
//FORMULA:1+2+3+...........N = (N(N+1))/2
n_value=size(menu,"*");
LHS_sum = 0;
for i=1:n_value
    LHS_sum=LHS_sum+i;
end
disp("sum of first 5 natural numbers",LHS_sum);

RHS=n_value*(n_value+1)/2;
disp("sum calculated using math induction formula");

if LHS_sum==RHS then
    disp("mathematical induction formula is verified");
else
    disp("verification failed");
end












