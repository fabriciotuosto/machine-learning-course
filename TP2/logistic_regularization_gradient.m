function grad_err = logistic_regularization_gradient(y, theta, lambda)
    % Regularization gradient for logistic regression
    grad_err = (lambda/length(y)) .* theta;
    grad_err(1) = 0; % Avoid regularizing theta(1)
end