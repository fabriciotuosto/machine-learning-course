function J = computeCostMulti(X, y, theta)
	%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
	%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
	%   parameter for linear regression to fit the data points in X and y
	m = length(y); % number of training examples
	predictions = X * theta;           % Prediction of hypoteshis on all values
	sqr_errors = (predictions - y).^2; % square erros
	J = sum(sqr_errors)/(2*m);         % cost for hypoteshis
end
