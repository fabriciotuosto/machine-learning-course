function J = computeCost(X, y, theta)
	%COMPUTECOST Compute cost for linear regression
	%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
	%   parameter for linear regression to fit the data points in X and y

	% Initialize some useful values
	m = length(y); % number of training examples

	predictions = X * theta;           % Prediction of hypoteshis on all values
	sqr_errors = (predictions - y).^2; % square erros
	J = sum(sqr_errors)/(2*m);         % cost for hypoteshis
end
