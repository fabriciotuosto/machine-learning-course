function regularization = linear_regression_reg(y, theta, lambda)
    % Regularization term for logistic regression
    regularization = lambda/(2*length(y)) * norm( theta((2:end)) )^2;
end