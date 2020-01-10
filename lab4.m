clc; clear all; close all;
% Sistemul de criptare Vigenere
% Cheie + mesaj
% Cheie -> numeric (A=0, B=1,...)
% Mesaj -> numeric
% Daca nu ajunge cheia, se repeta, le adunam si trecem in mod 26
key='STUDENT';
mesaj='MATEMATICA';
keynum=key-double('A');
mesajnum=mesaj-double('A');
keynum=[keynum keynum];
for i=1:length(mesaj)
    rezultat(i)=mesajnum(i)+keynum(i);
end
rezultat=mod(rezultat,26)+65;
char(rezultat)

rezultat=rezultat-double('A');

for i=1:length(rezultat)
    mess(i)=rezultat(i)-keynum(i);
end
mess=mod(mess,26)+65;
char(mess)
    
