% Algoritmul de criptare Cezar (Caesar)
% Face permutarea alfabetului in functie de o cheie
% Fara spatii, fara virgula, etc.
% Se lucreaza cu ASCII
msj = 'ZOO';
key=3;
for i=1:length(msj)
    msj(i)=msj(i)+key;
    if(msj(i)>double('Z'))
        msj(i)=msj(i)-26;
    end
end
msj
