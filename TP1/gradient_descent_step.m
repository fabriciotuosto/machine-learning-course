function [ new_theta, cost ] = gradient_descent_step( X, y, theta, alpha )
    %GRADIENT_DESCENT_STEP Summary of this function goes here
    %   Detailed explanation goes here
    m = length(y); % number of training examples
    hypothesis = X * theta;
    errors = hypothesis - y;
    newDecrement = (alpha * (1/m) * errors' * X); 
    new_theta = theta - newDecrement'; 
    cost = computeCost(X, y, theta);
end

