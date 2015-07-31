function regularization = nn_regularization(y, theta, lambda)
    % Regularization term for logistic regression
    regularization = lambda/(2*length(y)) * sum(sum(theta(:, 2:end) .^ 2));
end