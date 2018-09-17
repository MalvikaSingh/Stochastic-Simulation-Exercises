% Stochastic Simulation Assignment 1
% Q2 : Estimate E(N) by generating 100,1000 and 100000 values of N.

% mean( q2(m) ) gives the value of E(N) where m = 100,1000,100000
% q2(m) displays the values generated for N for m = 100,1000,10000.

function N = q2(m)
N = [];
for i = 1:m
    Val = cumsum(rand(1,100));
    N = [N 1+sum(Val < 1)];
end