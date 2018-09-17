%Stochastic Simulation Assignment 1 
%Q3 Algorithm 2: Using Acceptance Rejection Method
%we use the discrete form of the acceptance-rejection method
%to generate random variables according to the probability mass function
%defined in the question
close all
clear all
p=[0.3 0.2 0.35 0.15];    %This a vector holding the values
ii=1;
while ii < 1000
    y=unidrnd(4);          %generates random numbers for the discrete uniform  
    u=rand;                 %distribution with maximum 4.
    if u<= p(y)/0.35
       x(ii)=y;
       ii=ii+1;
    end
  end
hist(x)
xlabel('Probability');
ylabel('Actual probability*1000');
title('Generate random variables according to the probability mass function')