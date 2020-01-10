 clc; clear all; close all;
key=['D' 'D';'C' 'F'];
mesaj='HELP';
rez='';
keynum = key-65;
for i=1:2:length(mesaj)-1
    msg(i:i+1)=[mesaj(i) mesaj(i+1)];
    msgnum(i:i+1)=[double(msg(i))-65 double(msg(i+1))-65];
    rez=strcat(rez,char(mod((msgnum(i:i+1)*keynum),26)+65));
end
rez

% Decriptare
keynum
mesajdec='';
for j=1:2:length(rez)-1
    msg2(j:j+1)=[rez(j) rez(j+1)]
    msgnum2(j:j+1)=[double(msg2(j))-65 double(msg2(j+1))-65];
    mod(msgnum2(j:j+1)*inv(keynum),26)+65
    mesajdec=strcat(mesajdec,char(mod((msgnum2(j:j+1)*inv(keynum)),26)+65));
end
mesajdec