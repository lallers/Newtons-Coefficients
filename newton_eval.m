function y = newton_eval(c,x,xx)
%/////////////////////////////////////////////////////////
% By: Lee Allers                                         /
%For: Numerical Computation, 2016                        /
%     University of New Mexico                           /
%NOTE: None of my scripts are built to be robust, they   /
%      are merely an implementation of a given set of    /
%      data or instructions!                             /
%Input : x, A vector of linearly spaced points           /
%        y, A vector of points to evaluate               /
%        c, Newton Coefficients                          /
%Output: y, Evaluation of newtons coeffeficients         /
%/////////////////////////////////////////////////////////
n = length(c); 
y = c(n)*ones(size(xx));

for k=n-1:-1:1
   y = (xx-x(k)).*y + c(k);
end

end