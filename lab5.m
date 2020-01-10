clc; clear all; close all;
% Sistemul Skitala
mesaj='SUNTAICI';
mes1=mesaj(1:length(mesaj)/2);
mes2=mesaj(length(mesaj)/2+1:length(mesaj));
ok=1;
for i=1:length(mesaj)
    if ok==1
        rez(i)=mes1(uint8(i/2));
        ok=0;
    else
        rez(i)=mes2(uint8(i/2));
        ok=1;
    end
end
rez

% Decriptare
ok=1;
j=1;
k=1;
for i=1:length(rez)
    if mod(i,2)==1
        mes3(j)=rez(i);
        j=j+1;
    end
    if mod(i,2)==0
        mes4(k)=rez(i);
        k=k+1;
    end
end
rez2=[mes3 ' ' mes4];
rez2
