%/////////////////////////////////////////////////////////
% By: Lee Allers                                         /
%For: Numerical Computation, 2016                        /
%     University of New Mexico                           /
%NOTE: None of my scripts are built to be robust, they   /
%      are merely an implementation of a given set of    /
%      data or instructions!                             /
%/////////////////////////////////////////////////////////
clear all; close all; clc

F = @(x) sin(x);
n = 5;

x = linspace(-pi,pi,n);
xx = -pi:.001:pi;
y = sin(x);

Y = F(xx);
c = newton_coef(x,y);
neval = newton_eval(c,x,xx) ;

error = zeros(length(xx),1);
for i = 1:length(xx)
    error(i) = abs(Y(i) - neval(i));
end

figure
plot(xx,Y); hold on
plot(xx,neval,'r')
legend('Real','Interp')

hold off

figure
plot(xx,error)
legend('Error')






