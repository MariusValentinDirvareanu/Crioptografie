clc; clear all; close all;
a=11;
b=7;
mesaj='IMIPLACECRIPTOGRAFIA';
criptat=mod(a*(mesaj-double('A'))+b,26)+double('A');
char(criptat)

decriptat=mod(modinv(a,26)*('RJRQYHDZDMRQIFVMHKRH'-double('A'))+modinv(a,26)*(26-b),26)+double('A');
char(decriptat)