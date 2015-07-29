function [J, grad] = costFunction(theta, X, y)
	%COSTFUNCTION Compute cost and gradient for logistic regression
	%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
	%   parameter for logistic regression and the gradient of the cost
	%   w.r.t. to the parameters.
	hypothesis = sigmoid(X * theta);
	J = logistic_regression_cost(hypothesis, y);
	grad = logistic_regression_gradient(X, hypothesis, y);
end
