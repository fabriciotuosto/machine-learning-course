function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
    %LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
    %regression with multiple variables
    %   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
    %   cost of using theta as the parameter for linear regression to fit the 
    %   data points in X and y. Returns the cost in J and the gradient in grad

    % Initialize some useful values
    h_x = X * theta;           % Prediction of hypoteshis on all values
    J = linear_regression_cost(h_x, y) + linear_regression_reg(y, theta, lambda);
    grad = linear_gradient(X, h_x, y)' + linear_gradient_reg(y, theta, lambda);
    % Unroll
    grad = grad(:);
end
