function [ gradient ] = linear_gradient(X, hypothesis, y )
    %GRADIENT_DESCENT_STEP Summary of this function goes here
    %   Detailed explanation goes here
    m = length(y); % number of training examples
    errors = hypothesis - y;
    gradient = (errors' * X)/m; 
end

