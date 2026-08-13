//practical 3
//read xls file
clc;
close;
file=readxls("D:\ATHARVA_33\Pract_3 (1).xls");
sheet=file(1);
user=sheet.text(3:17,3);
friend=sheet.text(3:17,4);
//count number of connections
n=size(user,"*");
disp(n);

//QUESTION 1-display social network connection
disp("social network connection");
disp([user,friend]);

//QUESTION 2-reflexive relation-user having self connections
disp("user having self connections");
for i=1:n
    if user(i)==friend(i)then
        disp(user(i));
        end
end

//QUESTION 3-symmetric relation-mutual friendship
disp("mutual connection are");
for i=1:(n-1)
    for j=(i+1):n
        if user(i)==friend(j)&friend(i)==user(j)then
            if user(i)<>friend(i)then
                disp(user(i)+"<-->"+friend(i));
            end
        end
    end
end

//QUESTION 4-transitive relation-A-->B,B-->C then A-->C

disp("new friend connections using common friends");

for i=1:n
    A=user(i);
    B=friend(i),
    for j=1:n
        if user(j)==B then
            C=friend(j);
            if A<>C then
                disp(A+"-->"+C);
            end
        end
    end
end








