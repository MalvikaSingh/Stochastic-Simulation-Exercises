close all;
clear all;
max = 200;
S = zeros(1, max);   %Stores time
T = 10;
t = 0;
n = 0;
lambda = 26; % max value of intensity

% Thinning algorithm for Simulating T time units
while t<= T
    u1 = rand(1, 1);
    u2 = rand(1, 1);
    t = t - (log(u1)/lambda);
    intensity = t/5;
    if t >= 5
        intensity = 1 + 5 * (t - 5);
    end
    if u2 <= (intensity/lambda)
        n = n + 1;
        S(n) = t
    end
end

stairs(S(1:(n)), 0:(n-1));
title('Path of non homogeneous Poisson process');
xlabel('Time interval');
ylabel('NUmber of event');
figure;

h = histogram(S(1:n));
h.BinWidth = 1;
title(['Histogram for the non homogeneous Poisson process']);
xlabel(['Time interval']);
ylabel(['Frequency of events']);
figure;

scatter(1:n,S(1:n),'filled')
title(['Non homogeneous Poisson process']);
xlabel(['Number of event']);
ylabel(['Event times S']);

        

