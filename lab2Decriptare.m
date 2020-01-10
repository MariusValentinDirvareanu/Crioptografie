clear all;close all;clc;
msj='JYPWAVNYHMPL';
% key=7;
% vec=zeros(26);
for key=1:25
    mes=msj;
    for i=1:length(mes)
        mes(i)=mes(i)-key;
        if(mes(i)<double('A'))
            mes(i)=mes(i)+26;
        end
    end
    vec(key,:)=mes;
end
vec
