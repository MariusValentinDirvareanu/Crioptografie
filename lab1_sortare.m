clear all;close all;clc;
k=[0 -1 3 2]
for i=1:length(k)-1
    for j=i+1:length(k)
        if k(i)>k(j)
            aux=k(i);
            k(i)=k(j);
            k(j)=aux;
        end
    end
end
k