function gradient = logistic_regression_gradient(X, hypothesis, y)
    % Calculates the gradient of the hypotesis respect to X and Y
    gradient = (X' * (hypothesis - y))./(length(y));
end