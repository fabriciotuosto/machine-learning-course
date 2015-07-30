function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

hypothesis = sigmoid(X * theta);
J = logistic_regression_cost(hypothesis, y) + logistic_regularization(y, theta, lambda);
grad = logistic_regression_gradient(X, hypothesis, y) + logistic_regularization_gradient(y, theta, lambda);
end
