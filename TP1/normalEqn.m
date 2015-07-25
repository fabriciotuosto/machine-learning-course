function [theta] = normalEqn(X, y)
	%NORMALEQN Computes the closed-form solution to linear regression 
	%   NORMALEQN(X,y) computes the closed-form solution to linear 
	%   regression using the normal equations.
	% Doesnt work with redundant features eg. feet^2 mts^2
	% or more features than training examples

	theta = zeros(size(X, 2), 1);
	tetha = pinv(X'*X) * X' * y;
end
