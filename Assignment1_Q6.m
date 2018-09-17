%Stochastic Simulation Assignment 1
% Q6: Using Polar method to generate random variable
% Algorithm: generate U1 and U2 IID U(0, 1)
% set V1 = 2U1 ? 1, V2 = 2U2 ? 1 and S = V1^2+V2^2
% while S > 1
% generate U1 and U2 IID U(0, 1)
% set V1 = 2U1 ? 1, V2 = 2U2 ? 1 and S = V1^2+V2^2
% set X=sqrt(-2*log(S)/S)*V1 and Y=sqrt(-2*log(S)/S)*V2
clear;
N=200000;
alpha = rand(1,N);
beta = rand(1,N);
W1 = 2*alpha - ones(1,N);
W2 = 2*beta - ones(1,N);
W = W1.^2 + W2.^2;
I = find(W<1);                  
Z1 = W1(I)*sqrt(-2*log(W)/W);
Z2 = W2(I)*sqrt(-2*log(W)/W);
% hist([Z1,Z2], N);
% figure
hist(Z1,0.0:0.05:1.0)
hist(Z2,0.0:0.05:1.0)