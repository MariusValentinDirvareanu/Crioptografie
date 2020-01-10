clc; clear all; close all;
% Autor : Dirvareanu Marius-Valentin
% Facultatea si grupa : FSA 1341a
% An : 2020
% Sistemul de criptare Vigenere
% FSA (cheie)-> SUNT STUDENT IN ANUL PATRU LA FACULTATEA DE STIINTE
% APLICATE (mesaj)
% Toate mesajele decriptate si cheile corespunzatoare sunt salvate in
% fisierul mesaje.txt
fileID = fopen('mesaje.txt','w');
% Se seteaza cheia initiala ca si 'AAA', dupa care se incremenzeaza pe rand
% fiecare litera incepand cu ultima pozitie. La incrementarea literei de pe
% pozitia 2 se reseteaza litera de pe pozitia 3, iar la incrementarea
% literei de pe pozitia 1 se reseteaza literele de pe pozitiile 2 si 3
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
            % Se exclud cuvintele care contin X, W, Y, Q, K, deoarece nu
            % prea sunt intalnite in limba romana (am presupus ca mesajul este in limba romana)
            if contains(char(rezultat),'W')==0&&contains(char(rezultat),'X')==0&&contains(char(rezultat),'Y')==0&&contains(char(rezultat),'Q')==0&&contains(char(rezultat),'K')==0
                % daca conditia este indeplinita, atunci se scriu in
                % fisierul mesaje.txt cheia si mesajul decriptat de forma
                % cheie -> mesaj
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
% Se inchide fisierul mesaje.txt
fclose(fileID);
