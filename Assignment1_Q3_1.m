%Stochastic Simulation Assignment 1 
%Q3 Algorithm 1: Using Inverse Transform (Discrete) Method
%Illustrates the inverse transform procedure for generating discrete random variables.
%If we generate a uniform random number of then this yields a random
%Set up storage space for the variables.
X = zeros(1,100);
% These are the x's in the domain.
x = 1:4;
% These are the probability masses.
pr = [0.3 0.2 0.35 0.15];
% Generate 100 rv’s from the desired distribution.
for i = 1:100
 u = rand; % Generate the U.
 if u <= pr(1)
  X(i) = x(1);
 elseif u <= sum(pr(1:2)) % It has to be between 0.3 and 0.5.
  X(i) = x(2);
 elseif(pr(2:3))
  X(i) = x(3); % It has to be between 0.5 and 0.85.
 else     % It has to be between 0.5 and 0.85.
  X(i)=x(4);
 end
end
% Find the proportion of each number.
x1 = length(find(X==1))/100
x2 = length(find(X==2))/100
x3 = length(find(X==3))/100
x4 = length(find(X==4))/100
