clear global;close all;clc;
A=ones(30,10);
for i=1:size(A,2)
   B(:,i)=i*A(:,i);
end
B
for i=1:size(A,1)
    for j=1:size(A,2)
        C(i,j)=i+j*A(i,j);
    end
end
C
D=[B;C]
size(D)
D=[B C]
size(D)
%% Sectiune
