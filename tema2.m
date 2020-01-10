clc; clear all; close all;
% Sistemul de criptare Vigenere
fileID = fopen('mesaje.txt','w');
keynum='AAA'-double('A');
mesaj='XMNYKTZVESLISSNZDPFLRZDAKSCZDTFLEFVEXLINFTJSPQACFLE';
mesajnum=mesaj-double('A');
for x=1:26
    for y=1:26
        for z=1:26
            
            char(keynum+double('A'))
            keynumVec=[keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum keynum];
            for i=1:length(mesaj)
                rezultat(i)=mesajnum(i)-keynumVec(i);
            end
            rezultat=mod(rezultat,26)+double('A');
            if contains(char(rezultat),'W')==0&&contains(char(rezultat),'X')==0&&contains(char(rezultat),'Y')==0&&contains(char(rezultat),'Q')==0&&contains(char(rezultat),'K')==0
                fprintf(fileID,'%s -> %s\n',char(keynum+double('A')),char(rezultat));
            end
            keynum(3)=keynum(3)+1;
            
        end
        keynum(3)=0;
        keynum(2)=keynum(2)+1;
    end
    keynum(3)=0;
    keynum(2)=0;
    keynum(1)=keynum(1)+1;
end
fclose(fileID);
