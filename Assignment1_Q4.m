% Stochastic Simulation Assignment 1
% Q4 : Generate random variable having density f(x) = 30(x^2 - 2x^3 + x^4) 

% Generates random variable using inverse tansformation method.

U = rand;
X = sqrt( sqrt(U/30) + 0.25 ) + 0.5;

U
X