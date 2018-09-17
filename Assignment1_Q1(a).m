%Stochastic Simulation Assignment 1
%Q1: Using Simulation to approximate integrals
clear all;
n=100000;
x=rand(n,1);                %Random number generator
y=(1-x.^2).^(1.5);
estimate = mean(y)
%The answer on running the code turns out to be estimate = 0.5890. 
%Upon actual calculation, the answer turns out to be: 0.5890486225
