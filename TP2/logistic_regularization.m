function regularization = logistic_regularization(y, theta, lambda)
    % Regularization term for logistic regression
    regularization = lambda/(2*length(y)) * norm( theta((2:end)) )^2;
end