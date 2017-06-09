function c = newton_coef(x,y)
%/////////////////////////////////////////////////////////
% By: Lee Allers                                         /
%For: Numerical Computation, 2016                        /
%     University of New Mexico                           /
%NOTE: None of my scripts are built to be robust, they   /
%      are merely an implementation of a given set of    /
%      data or instructions!                             /
%Input : x, A vector of linearly spaced points           /
%        y, A vector of points to evaluate               /
%Output: c, Newton Coefficients                          /
%/////////////////////////////////////////////////////////

n = length(x);
c = y;    %Gives first coefficient without being in for loop 
for j = 2:n
    for i = n:-1:j
	    c(i) = ( c(i) - c(i-1) ) / ( x(i) - x(i-j+1) );
    end
end
end

