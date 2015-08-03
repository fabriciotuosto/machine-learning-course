function [ Theta_grad ] = collaborative_filter_theta_grad( X, Y, R, theta, lambda )
    %COLLABORATIVE_FILTER_X_GRAD Summary of this function goes here
    %   Detailed explanation goes here
    Theta_grad = (((X*theta' - Y) .* R)' * X) ...
        + (lambda * theta); % regularization term
end

