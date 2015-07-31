function gradient = nn_gradient_reg(m, theta, grad, lambda)
    % Regularization gradient for logistic regression
    grad_err = (lambda/m) * theta(:,2:end);
    gradient = grad;
    gradient(:,2:end) = gradient(:,2:end) + grad_err;
end