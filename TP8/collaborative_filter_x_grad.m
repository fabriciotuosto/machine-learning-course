function [ X_grad ] = collaborative_filter_x_grad( X, Y, R, theta, lambda )
    %COLLABORATIVE_FILTER_X_GRAD Summary of this function goes here
    %   Detailed explanation goes here
    X_grad = (((X*theta' - Y) .* R) * theta) ... % Xgrad vectorize implementation
        + (lambda * X); % Regularization term
end

