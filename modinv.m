function Xinv = modinv(X,p)
% % modinv: mutiplicative modular inverse of X, mod p
% usage: y = modinv(X,p)
%
% arguments: (input)
%  X - integer(s) to compute the modular inverse in the field of integers
%      for some modular base b.
%
%      x may be scalar, vector or array
%  
%  p - integer modulus. SCALAR only.
%      When p is not a prime number, then some numbers will not have a
%      multiplicative inverse.
%
% arguments: (output)
%  Xinv - an array of the same size and shape as X, such that 
%      mod(X.*Xinv,p) == 1
%      
%      In those cases where X does not have a multiplicative inverse in the
%      field of integers modulo p, then Xinv will be returned as a NaN.
%
% Examples:
% % In the field of integers modulo 12, only 1,5,7, and 11 have a
% % multiplicative inverse. As it turns out, they are all their own inverses.
%
%  Xinv = modinv(0:11,12)
%  Xinv =
%   NaN  1  NaN  NaN  NaN    5  NaN    7  NaN  NaN  NaN   11
%
% % In the field generated by modular base 7 (which is prime) only 0 will
% % lack a modular multiplicative inverse.
%
%  Xinv = modinv(0:6,7)
%  Xinv =
%   NaN     1     4     5     2     3     6
% 
% % Works for large (symbolic) integers.
%
%  p = sym('12434354343545235345253')
%  p =
%  12434354343545235345253
%
%  modinv(2,p)
%  ans =
%  6217177171772617672627
%
% See also: gcd, sqrtmodp
%
% Author: John D'Errico
% Creation date: 1/2/2020
if numel(p) ~= 1
  error('p must be a scalar')
end
% pre-allocate Xinv as NaN in case some elements of X have no inverse
Xinv = NaN(size(X));
% if p is symbolic, then Xinv should also be symbolic.
if isa(p,'sym')
  Xinv = sym(Xinv);
end
% all the hard work will be done by gcd.
[G,C] = gcd(X,p);
% if G is not equal to 1, then no solution exists.
k = G == 1;
Xinv(k) = mod(C(k),p);