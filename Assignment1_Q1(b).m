%Stochastic Simulation Assignment 1
%Q2: Using Simulation to approximate integrals
n=1000;
x = rand(n,1);
g = x/((1+x.*x).*(1+x.*x));
estimate = mean(g);      % or more economically
estimate = 2*mean(rand(100,1).^3)
%The answer on running the code turns out to be estimate = 0.5120. 
%Upon actual calculation, the answer turns out to be: 0.5

