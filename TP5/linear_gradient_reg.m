function grad_err = linear_gradient_reg(y, theta, lambda)
    % Regularization gradient for logistic regression
    grad_err = (lambda/length(y)) .* theta;
    grad_err(1) = 0; % Avoid regularizing theta(1)
end