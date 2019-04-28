function [num,den]=lattice_to_fir(K,V) 
K=K(:); V=V(:); 
 
ordiff = length(V)-length(K)-1; 
if ordiff>0
  K = [K; zeros(ordiff,1)]; 
elseif ordiff<0 
  V = [V; zeros(-ordiff,1)]; 
end 
 
num = V(1); 
den = K(1); 
for m = 2:length(K) 
  bm = conj(den(m-1:-1:1)); 
  den = [den+bm*K(m) K(m)]; 
  num = [V(m)*bm num]; 
end 
den = [1 den]; 



% [num,den] = lattice_to_fir([1/4 1/2 1/3],[1 0 0 0])
% 
% num =
% 
%      0     0     0     1
% 
% 
% den =
% 
%     1.0000    0.5417    0.6250    0.3333


% [num,den] = latc2tf([1/4 1/2 1/3],[1 0 0 0])